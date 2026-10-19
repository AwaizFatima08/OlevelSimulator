#!/usr/bin/env python3
"""Download Cambridge past papers from pastpapers.co into papers/<level>/<subject>/<session>/.

Scope (agreed 19 Oct 2026): Maths/Physics/Chemistry/Biology at O Level, IGCSE and
A Level, 2022-2026, May/June + Oct/Nov, every variant and file type on the page.
`--extra` downloads EXTRA_SUBJECTS (other O Level and A Level subjects) instead;
`--igcse-extra` downloads IGCSE_EXTRA_SUBJECTS (IGCSE versions of those subjects).
Re-running skips files already on disk; every file is logged to papers/manifest.csv.
"""
import csv
import re
import sys
import time
import urllib.request
from pathlib import Path

BASE = "https://pastpapers.co"
UA = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 Chrome/130 Safari/537.36"
ROOT = Path(__file__).resolve().parent.parent / "papers"
YEARS = range(2022, 2027)
SESSIONS = ("may-june", "oct-nov")
DELAY = 0.7  # seconds between requests

SUBJECTS = [
    ("o-level", "mathematics-d-4024"), ("o-level", "physics-5054"),
    ("o-level", "chemistry-5070"), ("o-level", "biology-5090"),
    ("igcse", "mathematics-0580"), ("igcse", "physics-0625"),
    ("igcse", "chemistry-0620"), ("igcse", "biology-0610"),
    ("a-level", "mathematics-9709"), ("a-level", "physics-9702"),
    ("a-level", "chemistry-9701"), ("a-level", "biology-9700"),
]

# Added 19 Oct 2026; run with --extra. A third item overrides the local folder name.
EXTRA_SUBJECTS = [
    ("o-level", "mathematics-additional-4037"), ("o-level", "computer-science-2210"),
    ("o-level", "economics-2281"), ("o-level", "accounting-7707"),
    ("o-level", "business-studies-7115"), ("o-level", "english-language-1123"),
    ("o-level", "pakistan-studies-2059"), ("o-level", "islamiyat-2058"),
    ("o-level", "urdu-first-language-3247"), ("o-level", "urdu-second-language-3248"),
    ("a-level", "mathematics-further-9231"),
    ("a-level", "computer-science-(for-first-examination-in-2021)-(9618)", "computer-science-9618"),
    ("a-level", "economics-9708"), ("a-level", "accounting-9706"),
    ("a-level", "business-9609"), ("a-level", "psychology-9990"),
]

# IGCSE versions of the extra subjects (added 20 Oct 2026); run with --igcse-extra.
IGCSE_EXTRA_SUBJECTS = [
    ("igcse", "mathematics-additional-0606"), ("igcse", "computer-science-0478"),
    ("igcse", "economics-0455"), ("igcse", "accounting-0452"), ("igcse", "business-studies-0450"),
    ("igcse", "english-first-language-0500"), ("igcse", "english-second-language-oral-endorsement-0510"),
    ("igcse", "information-and-communication-technology-0417"), ("igcse", "pakistan-studies-0448"),
    ("igcse", "islamiyat---0493", "islamiyat-0493"), ("igcse", "urdu-second-language-0539"),
]


def get(url, referer=None):
    headers = {"User-Agent": UA}
    if referer:  # the file endpoint serves the PDF only when opened from its session page
        headers["Referer"] = referer
    req = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(req, timeout=60) as r:
        return r.read()


def session_slugs(level, subject):
    html = get(f"{BASE}/caie/{level}/{subject}").decode("utf-8", "replace")
    slugs = set(re.findall(rf'href="/caie/{level}/{re.escape(subject)}/([^"/?#]+)"', html))
    keep = []
    for s in sorted(slugs):
        m = re.match(r"(\d{4})-(.+)$", s)
        if m and int(m.group(1)) in YEARS and m.group(2) in SESSIONS:
            keep.append(s)
    return keep


def main():
    ROOT.mkdir(parents=True, exist_ok=True)
    manifest = ROOT / "manifest.csv"
    new = not manifest.exists()
    with manifest.open("a", newline="") as mf:
        w = csv.writer(mf)
        if new:
            w.writerow(["level", "subject", "session", "file", "bytes", "status", "url"])
        totals = {"ok": 0, "skip": 0, "fail": 0}
        subjects = (EXTRA_SUBJECTS if "--extra" in sys.argv
                    else IGCSE_EXTRA_SUBJECTS if "--igcse-extra" in sys.argv else SUBJECTS)
        for level, subject, *folder in subjects:
            try:
                sessions = session_slugs(level, subject)
            except Exception as e:  # keep going with the other subjects
                print(f"FAIL list {level}/{subject}: {e}", flush=True)
                continue
            print(f"== {level}/{subject}: {', '.join(sessions)}", flush=True)
            for s in sessions:
                time.sleep(DELAY)
                try:
                    page = f"{BASE}/caie/{level}/{subject}/{s}"
                    html = get(page).decode("utf-8", "replace")
                except Exception as e:
                    print(f"FAIL page {subject}/{s}: {e}", flush=True)
                    continue
                links = sorted(set(re.findall(r'href="(/api/file/[^"]+?\.pdf)\?download=1"', html)))
                outdir = ROOT / level / (folder[0] if folder else subject) / s
                outdir.mkdir(parents=True, exist_ok=True)
                got = 0
                for path in links:
                    name = path.rsplit("/", 1)[1]
                    dest = outdir / name
                    url = f"{BASE}{path}?download=1"
                    if dest.exists() and dest.stat().st_size > 0:
                        totals["skip"] += 1
                        continue
                    time.sleep(DELAY)
                    try:
                        data = get(url, referer=page)
                        if not data.startswith(b"%PDF"):
                            raise ValueError("not a PDF")
                        tmp = dest.with_suffix(".part")
                        tmp.write_bytes(data)
                        tmp.rename(dest)
                        w.writerow([level, subject, s, name, len(data), "ok", url])
                        totals["ok"] += 1
                        got += 1
                    except Exception as e:
                        w.writerow([level, subject, s, name, 0, f"fail: {e}", url])
                        totals["fail"] += 1
                    mf.flush()
                print(f"   {s}: {len(links)} files listed, {got} downloaded", flush=True)
        print(f"DONE ok={totals['ok']} skipped={totals['skip']} failed={totals['fail']}", flush=True)
    return 0 if totals["fail"] == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
