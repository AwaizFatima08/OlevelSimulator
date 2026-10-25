#!/usr/bin/env python3
"""Records the question papers Cambridge itself publishes on each subject's public past-papers page.

Cambridge refused permission to reproduce its questions (Oct 2026), so the site may only *link* to official copies.
The public pages carry a small set (usually the latest June series, variant 1, plus specimens). This script reads each
page once and writes pipeline/official_papers.json: {code: {"2024-MJ-11": "https://…pdf", ...}}. Questions whose paper is
listed get a direct "Official paper" link; the rest keep the subject's past-papers page link.

Run before each release:  python3 tools/fetch_official_links.py
"""
import json
import re
import sys
import time
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "pipeline"))
from build_site import CFG, official_url  # noqa: E402

BASE = "https://www.cambridgeinternational.org"
MONTHS = {"june": "MJ", "may": "MJ", "november": "ON", "october": "ON"}
LINK = re.compile(r'href="(/Images/\d+-(june|may|november|october)-(\d{4})-question-paper-(\d{1,2})\.pdf)"')


def main():
    out = {}
    for subj in CFG["subjects"]:
        url = official_url(subj)
        req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0 (HomiLabs link check)"})
        try:
            page = urllib.request.urlopen(req, timeout=30).read().decode("utf-8", "replace")
        except Exception as e:  # noqa: BLE001
            print(f"{subj['code']}: could not read {url} ({e})")
            continue
        papers = {}
        for href, month, year, num in LINK.findall(page):
            num = num.zfill(2)  # "11" = paper 1 variant 1; "01" = paper 1 of a subject without variants
            papers[f"{year}-{MONTHS[month]}-{num}"] = BASE + href
        out[subj["code"]] = papers
        print(f"{subj['code']}: {len(papers)} papers ({', '.join(sorted(papers)) or 'none'})")
        time.sleep(1)
    (ROOT / "pipeline" / "official_papers.json").write_text(json.dumps(out, indent=1, sort_keys=True) + "\n")


if __name__ == "__main__":
    main()
