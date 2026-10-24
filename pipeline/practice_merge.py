#!/usr/bin/env python3
"""Merges writer files research/practice/parts/<code>-*.json into research/practice/<code>.json.

A question whose id is already in the subject file replaces it (so a re-checked part file can be merged again).
Merged part files move to research/practice/parts/merged/. Run practice_check.py afterwards.

Run:  python3 pipeline/practice_merge.py 5070 [5054 ...]      (every parts file of those subjects)
      python3 pipeline/practice_merge.py 0620-g1 0580          (a single writer file, while others are still being written)
"""
import json
import sys
from pathlib import Path

PRACTICE = Path(__file__).resolve().parent.parent / "research" / "practice"


def merge(arg):
    code = arg.split("-")[0]
    target = PRACTICE / f"{code}.json"
    qs = json.loads(target.read_text()) if target.exists() else []
    index = {q["id"]: i for i, q in enumerate(qs)}
    pattern = f"{arg}.json" if "-" in arg else f"{code}-*.json"
    parts = sorted((PRACTICE / "parts").glob(pattern))
    added = replaced = 0
    for f in parts:
        for q in json.loads(f.read_text()):
            if q["id"] in index:
                qs[index[q["id"]]] = q
                replaced += 1
            else:
                index[q["id"]] = len(qs)
                qs.append(q)
                added += 1
    target.write_text(json.dumps(qs, ensure_ascii=False, indent=1) + "\n")
    done = PRACTICE / "parts" / "merged"
    done.mkdir(exist_ok=True)
    for f in parts:
        f.rename(done / f.name)
    print(f"{code}: {len(parts)} files, {added} added, {replaced} replaced, {len(qs)} in total")


if __name__ == "__main__":
    for c in sys.argv[1:]:
        merge(c)
