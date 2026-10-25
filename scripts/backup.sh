#!/usr/bin/env bash
#
# backup.sh — three-layer backup for Question Simulator
#
#   Layer 1: local copy    -> /mnt/storage/project_backups/Olevel_Simulator/
#   Layer 2: Google Drive  -> https://drive.google.com/drive/folders/14NEUa8owGT5R1R7RFuGvbIgUPalARd8g
#   Layer 3: GitHub        -> https://github.com/AwaizFatima08/OlevelSimulator (PUBLIC repo)
#
# Run:  bash /mnt/storage/projects/O_Level/scripts/backup.sh [--with-papers]
#
# papers/ (≈4 GB of Cambridge PDFs, about 6,000 files) is kept out of the timestamped snapshots.
# Layer 1 keeps one mirror of it (papers_mirror/) instead of ten copies. Layer 2 copies it only with
# --with-papers, because Drive throttles thousands of files and the papers can be re-downloaded with
# tools/fetch_papers.py. Layer 3 never contains papers/ (public repo; .gitignore).
#
# Layer 2 skips .git/: Drive throttles thousands of tiny object files, and GitHub plus Layer 1 hold the history.
# Layer 3 refuses to push if it finds untracked or uncommitted files, so stray files never reach the public repo.

set -uo pipefail

PROJECT_DIR="/mnt/storage/projects/O_Level"
LOCAL_BACKUP_ROOT="/mnt/storage/project_backups/Olevel_Simulator"
GDRIVE_REMOTE="gdrive"
GDRIVE_FOLDER_ID="14NEUa8owGT5R1R7RFuGvbIgUPalARd8g"
GIT_REMOTE_URL="https://github.com/AwaizFatima08/OlevelSimulator.git"
KEEP_LOCAL_BACKUPS=10
WITH_PAPERS=0
[ "${1:-}" = "--with-papers" ] && WITH_PAPERS=1

TIMESTAMP="$(date +%Y-%m-%d_%H-%M-%S)"
LOG_FILE="$PROJECT_DIR/scripts/backup.log"
EXCLUDES="$PROJECT_DIR/scripts/backup_exclude.txt"

log(){ echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG_FILE"; }

log "=== Starting Question Simulator backup: $TIMESTAMP ==="
cd "$PROJECT_DIR" || { log "FATAL: $PROJECT_DIR not found"; exit 1; }

# ---- Layer 1: local ----
log "Layer 1: local backup"
mkdir -p "$LOCAL_BACKUP_ROOT"
DEST="$LOCAL_BACKUP_ROOT/olevelsim_$TIMESTAMP"
if rsync -a --exclude-from="$EXCLUDES" "$PROJECT_DIR/" "$DEST/"; then
  log "  OK — copied to $DEST"
else
  log "  ERROR — local rsync failed"
fi
if rsync -a "$PROJECT_DIR/papers/" "$LOCAL_BACKUP_ROOT/papers_mirror/"; then
  log "  OK — papers mirrored to $LOCAL_BACKUP_ROOT/papers_mirror"
else
  log "  ERROR — papers mirror failed"
fi
( cd "$LOCAL_BACKUP_ROOT" && ls -1dt olevelsim_*/ 2>/dev/null | tail -n +$((KEEP_LOCAL_BACKUPS + 1)) | while read -r old; do
    log "  pruning old local backup: $old"; rm -rf "${old:?}"; done )

# ---- Layer 2: Google Drive ----
log "Layer 2: Google Drive backup"
if ! command -v rclone >/dev/null 2>&1 || ! rclone listremotes 2>/dev/null | grep -q "^${GDRIVE_REMOTE}:"; then
  log "  SKIPPED — rclone or the '$GDRIVE_REMOTE' remote is not configured"
else
  if rclone copy "$PROJECT_DIR" "${GDRIVE_REMOTE}:" \
      --drive-root-folder-id "$GDRIVE_FOLDER_ID" \
      --exclude ".git/**" --exclude-from "$EXCLUDES" \
      --update --checksum --tpslimit 4 --retries 5 --low-level-retries 20 --log-file="$LOG_FILE" --log-level INFO; then
    log "  OK — project synced to Google Drive folder ($GDRIVE_FOLDER_ID)"
  else
    log "  ERROR — rclone sync failed (see log)"
  fi
  if [ "$WITH_PAPERS" = 1 ]; then
    if rclone copy "$PROJECT_DIR/papers" "${GDRIVE_REMOTE}:papers" \
        --drive-root-folder-id "$GDRIVE_FOLDER_ID" \
        --update --size-only --tpslimit 4 --transfers 4 --retries 5 --low-level-retries 20 --log-file="$LOG_FILE" --log-level INFO; then
      log "  OK — papers synced to Google Drive (papers/)"
    else
      log "  ERROR — papers sync failed (see log)"
    fi
  else
    log "  papers/ not sent to Drive (run with --with-papers to include it)"
  fi
fi

# ---- Layer 3: GitHub ----
log "Layer 3: GitHub push"
git remote get-url origin >/dev/null 2>&1 || git remote add origin "$GIT_REMOTE_URL"
UNTRACKED="$(git ls-files --others --exclude-standard)"
if [ -n "$UNTRACKED" ]; then
  log "  SKIPPED — untracked files present; commit or gitignore them first:"
  echo "$UNTRACKED" | sed 's/^/      /' | tee -a "$LOG_FILE"
elif ! git diff --quiet || ! git diff --cached --quiet; then
  log "  SKIPPED — uncommitted changes present; commit them with a descriptive message first"
elif git ls-files | grep -qiE '\.pdf$|^papers/'; then
  log "  SKIPPED — a PDF or papers/ file is tracked; remove it before pushing to the public repo"
else
  BRANCH="$(git rev-parse --abbrev-ref HEAD)"
  if git push -u origin "$BRANCH" >>"$LOG_FILE" 2>&1; then
    log "  OK — pushed $BRANCH to $GIT_REMOTE_URL"
  else
    log "  ERROR — git push failed (check gh auth / network)"
  fi
fi

log "=== Backup finished: $TIMESTAMP ==="
