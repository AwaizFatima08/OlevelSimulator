#!/usr/bin/env bash
#
# publish.sh — rebuild site/ and push it to the `deploy` branch of the GitHub repo.
# Hostinger's Git auto-deployment for questionsimulator.homilabs.org pulls that branch into the
# subdomain's web root. Afterwards flush the CDN cache in hPanel.
#
# Run:  bash /mnt/storage/projects/O_Level/scripts/publish.sh

set -euo pipefail
cd /mnt/storage/projects/O_Level

python3 pipeline/build_site.py
if [ -n "$(git status --porcelain -- site pipeline research)" ]; then
  echo "site/ or its sources changed: commit them first (git add site pipeline research && git commit), then rerun."
  exit 1
fi
if git ls-tree -r --name-only HEAD -- site | grep -qiE '\.pdf$'; then
  echo "A PDF is inside site/: refusing to publish."; exit 1
fi
SPLIT="$(git subtree split --prefix site HEAD)"
git push --force origin "$SPLIT:refs/heads/deploy"
echo "Pushed site/ ($SPLIT) to the deploy branch. Flush the CDN cache in hPanel if pages look stale."
