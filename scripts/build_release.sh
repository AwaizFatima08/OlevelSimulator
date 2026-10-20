#!/usr/bin/env bash
# Builds the signed release AAB (for Play) and APK (for sideload testing).
#
#   bash scripts/build_release.sh
#
# Signing comes from app/android/key.properties → .secrets/questionsimulator-upload.keystore
# (both gitignored). Refreshes the bundled data packs first, runs the tests, then checks the
# APK is signed with the upload key, not the debug key.
set -euo pipefail
cd "$(dirname "$0")/.."

[ -f app/android/key.properties ] || { echo "Missing app/android/key.properties (see .secrets/README.txt)"; exit 1; }
python3 pipeline/build_site.py
cd app
flutter test
VERSION="$(sed -n 's/^version: //p' pubspec.yaml)"   # e.g. 0.1.0+1
OUT="../releases/v${VERSION/+/-}"
flutter build appbundle --release
flutter build apk --release
mkdir -p "$OUT"
cp build/app/outputs/bundle/release/app-release.aab "$OUT/questionsimulator-${VERSION/+/-}.aab"
cp build/app/outputs/flutter-apk/app-release.apk "$OUT/questionsimulator-${VERSION/+/-}.apk"

APKSIGNER="$(ls -d "$HOME"/Android/Sdk/build-tools/*/ | tail -1)apksigner"
CERT="$("$APKSIGNER" verify --print-certs "$OUT/questionsimulator-${VERSION/+/-}.apk")"
grep -q "CN=HomiLabs" <<<"$CERT" || { echo "FAIL: release APK is not signed with the HomiLabs upload key"; exit 1; }
if grep -q "CN=Android Debug" <<<"$CERT"; then echo "FAIL: release APK is signed with the debug key"; exit 1; fi
(cd android && ./gradlew --stop >/dev/null 2>&1 || true)
ls -la "$OUT"
echo "Release ready in $OUT"
