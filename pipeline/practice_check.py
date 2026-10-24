#!/usr/bin/env python3
"""Validates HomiLabs original practice questions: research/practice/<code>.json.

Format (a JSON list; one object per question):
  {
    "id": "4024-alg-quad-01",              unique, stable
    "topic": "Algebra",                    must match a topic in <code>-questions.csv
    "subtopic": "Quadratic equations",     must match a subtopic of that topic
    "paper": "1" | "2",                    exam style it imitates (4024: 1 = non-calculator, 2 = calculator)
    "difficulty": "core" | "standard" | "challenge",
    "stem": "optional shared text / data for all parts",
    "parts": [ {"label": "a", "text": "...", "marks": 2, "answer": "...", "working": "..."} , ... ],
    "check": "optional python expression(s) that must evaluate True, proving the numeric answers",
    "author": "HomiLabs", "reviewed": false
  }
Text uses plain Unicode maths (x², √, π, ×, ÷, ≤, °). No diagrams: give coordinates, tables or named points.

Run:  python3 pipeline/practice_check.py 4024                        (the merged subject file, plus progress vs plan)
      python3 pipeline/practice_check.py --file parts/x.json --code 5070   (one writer's file)
"""
import csv
import json
import math  # noqa: F401  (available to "check" expressions)
import sys
from fractions import Fraction  # noqa: F401
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
LABEL_OK = __import__("re").compile(r"^[a-z](\((i|ii|iii|iv|v|vi)\))?$")


def main(code, path=None):
    merged = path is None
    path = Path(path) if path else ROOT / "research" / "practice" / f"{code}.json"
    qs = json.loads(path.read_text())
    tax = {}
    for r in csv.DictReader((ROOT / "research" / "topic-analysis" / f"{code}-questions.csv").open()):
        tax.setdefault(r["topic"], set()).add(r["subtopic"])
    errors, ids = [], set()
    for q in qs:
        qid = q.get("id", "?")
        def err(m):
            errors.append(f"{qid}: {m}")
        if qid in ids:
            err("duplicate id")
        ids.add(qid)
        if q.get("topic") not in tax:
            err(f"unknown topic {q.get('topic')!r}")
        elif q.get("subtopic") not in tax[q["topic"]]:
            err(f"unknown subtopic {q.get('subtopic')!r}")
        if q.get("paper") not in {"1", "2", "3", "4", "5", "6"}:
            err("paper must be a digit string")
        if q.get("difficulty") not in {"core", "standard", "challenge"}:
            err("bad difficulty")
        parts = q.get("parts") or []
        if not parts:
            err("no parts")
        for p in parts:
            if not LABEL_OK.match(str(p.get("label", ""))):
                err(f"bad part label {p.get('label')!r}")
            if not isinstance(p.get("marks"), int) or not 1 <= p["marks"] <= 40:
                err(f"part {p.get('label')}: marks must be an int 1–40")
            for k in ("text", "answer"):
                if not str(p.get(k, "")).strip():
                    err(f"part {p.get('label')}: missing {k}")
        if q.get("check"):
            try:
                if eval(q["check"], {"__builtins__": {}, "math": math, "Fraction": Fraction, "abs": abs, "round": round, "min": min, "max": max, "sum": sum, "sorted": sorted, "len": len}) is not True:
                    err("check expression is not True")
            except Exception as e:  # noqa: BLE001
                err(f"check failed: {e}")
        if q.get("author") != "HomiLabs":
            err("author must be HomiLabs")
    subs = {(q.get("topic"), q.get("subtopic")) for q in qs}
    missing = [f"{t} / {s}" for t, ss in tax.items() for s in ss if (t, s) not in subs]
    print(f"{code}: {len(qs)} questions, {sum(len(q.get('parts', [])) for q in qs)} parts, "
          f"{sum(p.get('marks', 0) for q in qs for p in q.get('parts', []))} marks, "
          f"{len(subs)} subtopics covered; with check: {sum(1 for q in qs if q.get('check'))}")
    if missing and merged:
        print("subtopics without questions:", "; ".join(sorted(missing)))
    plan = ROOT / "research" / "practice" / "plan" / f"{code}.json"
    if merged and plan.exists():
        have = {}
        for q in qs:
            have[(q.get("topic"), q.get("subtopic"))] = have.get((q.get("topic"), q.get("subtopic")), 0) + 1
        short = [(t["topic"], st["name"], st["target"] - have.get((t["topic"], st["name"]), 0))
                 for t in json.loads(plan.read_text())["topics"] for st in t["subtopics"]]
        short = [x for x in short if x[2] > 0]
        print(f"plan: {sum(x[2] for x in short)} questions still to write in {len(short)} subtopics")
    for e in errors:
        print("ERROR", e)
    return 1 if errors else 0


if __name__ == "__main__":
    a = sys.argv[1:]
    if "--file" in a:
        sys.exit(main(a[a.index("--code") + 1], a[a.index("--file") + 1]))
    sys.exit(main(a[0] if a else "4024"))
