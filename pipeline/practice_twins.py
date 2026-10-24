#!/usr/bin/env python3
"""Copies practice questions from an O Level syllabus to its identical IGCSE twin.

The twins share topics, subtopics and paper numbering (e.g. 0606 = 4037), so a question is copied when its
(topic, subtopic) exists in the twin's question CSV. The O Level file stays the master: rerun after editing it.
Subtopics only the twin has are left for writers (see the plan file, which this updates).

Run:  python3 pipeline/practice_twins.py
"""
import csv
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
PRACTICE = ROOT / "research" / "practice"
TWINS = {"0606": "4037", "0478": "2210", "0455": "2281", "0452": "7707", "0450": "7115", "0448": "2059", "0493": "2058"}


def taxonomy(code):
    pairs = set()
    for r in csv.DictReader((ROOT / "research" / "topic-analysis" / f"{code}-questions.csv").open()):
        pairs.add((r["topic"], r["subtopic"]))
    return pairs


def main():
    for twin, master in TWINS.items():
        pairs = taxonomy(twin)
        src = json.loads((PRACTICE / f"{master}.json").read_text())
        copied = [q for q in src if (q["topic"], q["subtopic"]) in pairs]
        own = []  # questions written for the twin itself (ids carry the twin's code)
        target = PRACTICE / f"{twin}.json"
        if target.exists():
            own = [q for q in json.loads(target.read_text()) if q["id"].startswith(twin)]
        (target).write_text(json.dumps(copied + own, ensure_ascii=False, indent=1) + "\n")
        plan_f = PRACTICE / "plan" / f"{twin}.json"
        plan = json.loads(plan_f.read_text())
        have = {}
        for q in copied + own:
            have[(q["topic"], q["subtopic"])] = have.get((q["topic"], q["subtopic"]), 0) + 1
        for t in plan["topics"]:
            for st in t["subtopics"]:
                st["existing"] = have.get((t["topic"], st["name"]), 0)
                st["to_write"] = max(0, st["target"] - st["existing"])
        plan_f.write_text(json.dumps(plan, ensure_ascii=False, indent=1))
        left = sum(st["to_write"] for t in plan["topics"] for st in t["subtopics"])
        print(f"{twin} <- {master}: {len(copied)} copied, {len(own)} own, {left} still to write")


if __name__ == "__main__":
    main()
