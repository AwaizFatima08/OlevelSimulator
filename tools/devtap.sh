#!/usr/bin/env bash
# Small device helper for app testing and store/reel captures (adb over Wi-Fi).
#   DEV=<adb transport id> tools/devtap.sh tap_text "Physics"   # tap the first element whose label contains the text
#   DEV=<id> tools/devtap.sh shot out.png                      # screenshot
A=~/Android/Sdk/platform-tools/adb
T=${DEV:-1}
TMP=${TMPDIR:-/tmp}/devtap-ui.xml
dump(){ $A -t $T shell uiautomator dump /sdcard/ui.xml >/dev/null 2>&1; $A -t $T shell cat /sdcard/ui.xml > "$TMP"; }
tap_text(){ dump; read -r x y < <(python3 - "$1" "$TMP" <<'PY'
import re, sys
want, f = sys.argv[1].lower(), sys.argv[2]
xml = open(f, encoding="utf-8", errors="ignore").read()
for m in re.finditer(r'<node [^>]*>', xml):
    n = m.group(0)
    label = " ".join(re.findall(r'(?:text|content-desc)="([^"]*)"', n)).lower()
    if want in label:
        x1, y1, x2, y2 = map(int, re.search(r'bounds="\[(\d+),(\d+)\]\[(\d+),(\d+)\]"', n).groups())
        print((x1 + x2) // 2, (y1 + y2) // 2); break
PY
); if [ -n "$x" ]; then $A -t $T shell input tap "$x" "$y"; echo "tapped '$1' at $x,$y"; else echo "NOT FOUND: $1"; fi; }
shot(){ $A -t $T exec-out screencap -p > "$1"; echo "shot $1"; }
"$@"
