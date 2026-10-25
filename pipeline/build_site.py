#!/usr/bin/env python3
"""Build the static site and the app data packs from the topic CSVs.

Input:  pipeline/subjects.json, pipeline/release.json,
        research/topic-analysis/<code>-questions.csv and <guide>.md
Output: site/  (plain HTML + one stylesheet + one script, uploaded to Hostinger)
        site/data/manifest.json and site/data/<code>.json (read by the Android app)

No question text or images are published: entries name the session, paper, question
and marks, and send students to the official Cambridge past-paper page.

Run:  python3 pipeline/build_site.py
"""
import csv
import html
import json
import re
import shutil
from collections import defaultdict
from datetime import date
from pathlib import Path

import markdown

ROOT = Path(__file__).resolve().parent.parent
PIPE = ROOT / "pipeline"
RESEARCH = ROOT / "research" / "topic-analysis"
STATIC = PIPE / "static"
OUT = ROOT / "site"

CFG = json.loads((PIPE / "subjects.json").read_text())
RELEASE = json.loads((PIPE / "release.json").read_text())
SITE_NAME = RELEASE["site_name"]
BASE_URL = RELEASE["base_url"].rstrip("/")
OFFICIAL = "https://www.cambridgeinternational.org/programmes-and-qualifications"
LEVELS = {lv["id"]: lv for lv in CFG["levels"]}


def _ready(subj):
    return (RESEARCH / f"{subj['code']}-questions.csv").exists() and (RESEARCH / subj["guide"]).exists()


# A subject goes live once its question CSV and its guide exist; the rest show as "coming soon".
LIVE = [s for s in CFG["subjects"] if _ready(s)]
SOON = [{"code": s["code"], "level": s["level"], "name": s["name"]} for s in CFG["subjects"] if not _ready(s)]
SESSION_NAMES = {"MJ": "May/June", "ON": "Oct/Nov"}
esc = html.escape


# ---------- data ----------

def slugify(text):
    text = re.sub(r"^\d+\s+", "", text)  # "1 Physical quantities" -> "Physical quantities"
    text = text.replace("&", " and ")
    return re.sub(r"[^a-z0-9]+", "-", text.lower()).strip("-")


def clean_topic(text):
    return re.sub(r"^\d+\s+", "", text).strip()


def format_part(raw):
    """Normalise part labels written as 'a', '(a)(i)', 'b(ii)' or 'a.i' to 'a(i)'."""
    tokens = re.findall(r"[a-z]+|\d+", raw.lower())
    return tokens[0] + "".join(f"({t})" for t in tokens[1:]) if tokens else ""


def session_key(s):
    year, code = s.split("-")
    return (int(year), 1 if code == "ON" else 0)


def session_label(s):
    year, code = s.split("-")
    return f"{year} {SESSION_NAMES.get(code, code)}"


PRACTICE = ROOT / "research" / "practice"
DIFF_ORDER = {"core": 0, "standard": 1, "challenge": 2}


def load_practice(code):
    """HomiLabs original practice questions for a subject, grouped by (cleaned) topic name."""
    f = PRACTICE / f"{code}.json"
    if not f.exists():
        return {}
    out = defaultdict(list)
    for q in json.loads(f.read_text()):
        out[clean_topic(q["topic"])].append(q)
    return out


def load_subject(subj):
    rows = list(csv.DictReader((RESEARCH / f"{subj['code']}-questions.csv").open()))
    sessions = sorted({r["session"] for r in rows}, key=session_key)
    total_marks = sum(float(r["marks"]) for r in rows)

    # One entry per question (session + paper + variant + question number) per topic.
    questions = defaultdict(lambda: {"parts": [], "marks": 0.0, "subtopics": set()})
    topics = defaultdict(lambda: {"marks": 0.0, "sessions": set(), "papers": set(),
                                  "subtopics": defaultdict(lambda: {"marks": 0.0, "sessions": set(), "qids": []})})
    for r in rows:
        topic = clean_topic(r["topic"])
        sub = r["subtopic"].strip() or topic
        m = float(r["marks"])
        year, code = r["session"].split("-")
        qid = f"{subj['code']}_{'s' if code == 'MJ' else 'w'}{year[2:]}_{r['paper']}{r['variant']}_q{r['question']}"
        key = (topic, qid)
        q = questions[key]
        q.update(id=qid, session=r["session"], year=int(year), paper=r["paper"],
                 variant=r["variant"], number=r["question"])
        part = format_part(r["part"])
        if part and part not in q["parts"]:
            q["parts"].append(part)
        q["marks"] += m
        q["subtopics"].add(sub)
        t = topics[topic]
        t["marks"] += m
        t["sessions"].add(r["session"])
        t["papers"].add(r["paper"])
        st = t["subtopics"][sub]
        st["marks"] += m
        st["sessions"].add(r["session"])
        if qid not in st["qids"]:
            st["qids"].append(qid)

    by_topic = defaultdict(list)
    for (topic, _), q in questions.items():
        by_topic[topic].append(q)

    topic_list = []
    used_slugs = set()
    for name, t in sorted(topics.items(), key=lambda kv: -kv[1]["marks"]):
        slug = slugify(name)
        while slug in used_slugs:
            slug += "-2"
        used_slugs.add(slug)
        # Newest session first; within a session, paper order then question order.
        qs = sorted(by_topic[name], key=lambda q: (tuple(-k for k in session_key(q["session"])),
                                                   int(q["paper"]), int(q["variant"]), int(q["number"])))
        subs = []
        for sname, st in sorted(t["subtopics"].items(), key=lambda kv: -kv[1]["marks"]):
            subs.append({"name": sname, "marks": st["marks"], "sessions": len(st["sessions"]), "qids": st["qids"]})
        topic_list.append({
            "name": name, "slug": slug, "marks": t["marks"],
            "share": 100 * t["marks"] / total_marks if total_marks else 0,
            "sessions": len(t["sessions"]), "papers": sorted(t["papers"], key=int),
            "subtopics": subs, "questions": qs,
        })
    variants = defaultdict(set)
    for r in rows:
        variants[(r["session"], r["paper"])].add(r["variant"])
    all_variants = sum(len(v) > 1 for v in variants.values()) > len(variants) / 2
    practice = load_practice(subj["code"])
    for t in topic_list:
        order = {st["name"]: i for i, st in enumerate(t["subtopics"])}
        t["practice"] = sorted(practice.get(t["name"], []),
                               key=lambda q: (order.get(q["subtopic"], 99), DIFF_ORDER.get(q["difficulty"], 9), q["id"]))
    return {"rows": len(rows), "sessions": sessions, "topics": topic_list, "all_variants": all_variants,
            "practice_count": sum(len(t["practice"]) for t in topic_list),
            "question_count": len({q["id"] for qs in by_topic.values() for q in qs})}


def badge(sessions_seen, total):
    if sessions_seen >= total - 1 and total >= 4:
        return '<span class="badge banker" title="Tested in almost every session">Banker</span>'
    if sessions_seen <= 2:
        return '<span class="badge rare" title="Tested in two sessions or fewer">Rare</span>'
    return ""


# ---------- page shell ----------

def page(path, title, description, body, crumbs=()):
    """Write one page. path is the URL path ('/' or '/igcse/0625/')."""
    canonical = BASE_URL + path
    crumb_html = ""
    if crumbs:
        items = "".join(f'<li><a href="{esc(h)}">{esc(t)}</a></li>' for t, h in crumbs)
        crumb_html = f'<nav class="crumbs" aria-label="Breadcrumb"><ol>{items}</ol></nav>'
    doc = f"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{esc(title)}</title>
<meta name="description" content="{esc(description)}">
<link rel="canonical" href="{esc(canonical)}">
<meta property="og:title" content="{esc(title)}">
<meta property="og:description" content="{esc(description)}">
<meta property="og:type" content="website">
<meta name="theme-color" content="#1f6f5c">
<link rel="icon" href="/favicon.svg" type="image/svg+xml">
<link rel="stylesheet" href="/style.css?v={RELEASE['version']}">
<script src="/app.js?v={RELEASE['version']}" defer></script>
</head>
<body>
<a class="skip" href="#main">Skip to content</a>
<header class="top"><div class="wrap top-row">
  <a class="brand" href="/"><img src="/favicon.svg" alt="" width="28" height="28"><span>{esc(SITE_NAME)}</span></a>
  <nav class="nav" aria-label="Main">
    <a href="/#o-level">O Level</a><a href="/#igcse">IGCSE</a><a href="/#a-level">A Level</a><a href="/about/">About</a>
  </nav>
</div></header>
<main id="main" class="wrap">
{crumb_html}
{body}
</main>
<footer class="foot"><div class="wrap">
  <p><strong>{esc(SITE_NAME)}</strong> is a free, non-profit study aid by <a href="https://homilabs.org">HomiLabs</a>.
  No ads, no sign-up, no tracking.</p>
  <p class="small">Independent project. Not affiliated with, endorsed by or connected to Cambridge University Press &amp; Assessment.
  “Cambridge”, “IGCSE” and “O Level” are trademarks of Cambridge University Press &amp; Assessment, used here only to describe
  which exams the material relates to. Past papers belong to Cambridge; get them from
  <a href="https://www.cambridgeinternational.org/">cambridgeinternational.org</a> or your school.</p>
  <p class="small">Content release {esc(RELEASE['version'])} · {esc(RELEASE['label'])} ·
  <a href="/about/#privacy">Privacy</a> · <a href="/about/#contact">Contact</a></p>
</div></footer>
</body>
</html>
"""
    dest = OUT / path.lstrip("/") / "index.html" if path.endswith("/") else OUT / path.lstrip("/")
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_text(doc)


def official_url(subj):
    lv = LEVELS[subj["level"]]
    return f"{OFFICIAL}/{lv['official_prefix']}-{subj['slug']}-{subj['code']}/past-papers/"


def subj_path(subj):
    return f"/{subj['level']}/{subj['code']}/"


def subj_title(subj):
    return f"{LEVELS[subj['level']]['short']} {subj['name']} ({subj['code']})"


OFFICIAL_PAPERS = json.loads((PIPE / "official_papers.json").read_text()) if (PIPE / "official_papers.json").exists() else {}


def official_paper(subj, q):
    """Direct link to Cambridge's own copy of this question paper, when Cambridge publishes it (tools/fetch_official_links.py)."""
    papers = OFFICIAL_PAPERS.get(subj["code"], {})
    return papers.get(f"{q['session']}-{q['paper']}{q['variant']}") or papers.get(f"{q['session']}-0{q['paper']}")


def paper_ref(q):
    return f"Paper {q['paper']}{q['variant']}"


def question_li(subj, q):
    parts = ", ".join(q["parts"]) if q["parts"] else ""
    label = f"Q{q['number']}" + (f" ({parts})" if parts else "")
    marks = f"{q['marks']:g} mark" + ("" if q["marks"] == 1 else "s")
    paper_name = subj["papers"].get(q["paper"], f"Paper {q['paper']}")
    subs = " · ".join(sorted(q["subtopics"]))
    return (f'<li class="q" data-year="{q["year"]}" data-paper="{q["paper"]}" id="{esc(q["id"])}">'
            f'<span class="q-ref"><strong>{esc(session_label(q["session"]))}</strong> · '
            f'<abbr title="{esc(paper_name)}">{esc(paper_ref(q))}</abbr> · {esc(label)}</span>'
            f'<span class="q-marks">{esc(marks)}</span>'
            + (f'<a class="q-official" href="{esc(link)}" rel="noopener" target="_blank">Official paper ↗</a>'
               if (link := official_paper(subj, q)) else "") +
            f'<span class="q-subs">{esc(subs)}</span></li>')


# ---------- pages ----------

def build_home(data):
    total_q = sum(d["question_count"] for d in data.values())
    sections = []
    for lv in CFG["levels"]:
        cards = []
        for subj in LIVE:
            if subj["level"] != lv["id"]:
                continue
            d = data[subj["code"]]
            cards.append(
                f'<a class="card" href="{subj_path(subj)}"><span class="code">{subj["code"]}</span>'
                f'<h3>{esc(subj["name"])}</h3><p>{len(d["topics"])} topics · {d["question_count"]} questions indexed</p></a>')
        for cs in SOON:
            if cs["level"] == lv["id"]:
                cards.append(f'<div class="card soon"><span class="code">{cs["code"]}</span>'
                             f'<h3>{esc(cs["name"])}</h3><p>Coming soon</p></div>')
        sections.append(f'<section class="level" id="{lv["id"]}"><h2>{esc(lv["name"])}</h2>'
                        f'<div class="grid">{"".join(cards)}</div></section>')
    body = f"""
<section class="hero">
  <p class="eyebrow">Free · Non-profit · For every student</p>
  <h1>Past paper questions, sorted by topic and year</h1>
  <p class="lede">Pick your subject, open a topic, and see every time it was examined from 2022 to {esc(RELEASE['latest_session'])}:
  which paper, which question, how many marks, and the similar questions that test the same skill.</p>
  <ul class="stats">
    <li><strong>{len(LIVE)}</strong> subjects</li>
    <li><strong>{total_q:,}</strong> questions indexed</li>
    <li><strong>{len(RELEASE['sessions'])}</strong> exam sessions</li>
  </ul>
</section>
{''.join(sections)}
<section class="how">
  <h2>How it works</h2>
  <ol class="steps">
    <li><strong>Topic pool.</strong> Every question part is tagged with its syllabus topic and subtopic.</li>
    <li><strong>Year by year.</strong> Each topic lists its questions from the newest session back to 2022, with paper, question number and marks.</li>
    <li><strong>Similar questions.</strong> Questions on the same subtopic are grouped, so you can practise one skill across many years.</li>
    <li><strong>Updated twice a year.</strong> New questions are added after each May/June and Oct/Nov exam series.</li>
  </ol>
</section>
"""
    page("/", f"{SITE_NAME} – topic-wise past paper questions",
         "Free, non-profit topic-wise index of Cambridge O Level, IGCSE and A Level past paper questions, sorted by topic and year, "
         "with similar questions for practice.", body)


def build_subject(subj, d):
    total = len(d["sessions"])
    variant_note = ("Questions are indexed from every version (variant) of each paper; Cambridge sets different variants "
                    "for different time zones." if d["all_variants"] else
                    "Questions are indexed from one version (variant) of each paper per session. Other variants of the "
                    "same session test very similar topics.")
    rows = []
    for t in d["topics"]:
        rows.append(
            f'<tr><td><a href="{subj_path(subj)}{t["slug"]}/">{esc(t["name"])}</a> {badge(t["sessions"], total)}</td>'
            f'<td class="num">{t["share"]:.0f}%<span class="bar" style="--w:{min(t["share"] * 3, 100):.0f}%"></span></td>'
            f'<td class="num">{t["sessions"]}/{total}</td><td class="num">{len(t["questions"])}</td></tr>')
    papers = "".join(f"<li>{esc(v)}</li>" for v in subj["papers"].values())
    body = f"""
<header class="page-head">
  <p class="eyebrow">{esc(LEVELS[subj['level']]['name'])} · {subj['code']}</p>
  <h1>{esc(subj['name'])}</h1>
  <p class="lede">{len(d['topics'])} topics and {d['question_count']} questions from {esc(session_label(d['sessions'][0]))} to
  {esc(session_label(d['sessions'][-1]))}. Open a topic to see its questions year by year.</p>
  <p class="actions"><a class="btn" href="{subj_path(subj)}guide/">Exam guide</a>
  <a class="btn ghost" href="{official_url(subj)}" rel="noopener">Official past papers ↗</a></p>
</header>
<label class="filter"><span>Find a topic</span><input type="search" data-filter-table="topics" placeholder="e.g. {esc(d['topics'][0]['name'])}"></label>
<div class="table-wrap"><table id="topics" class="topics">
<thead><tr><th>Topic</th><th class="num">Share of marks</th><th class="num">Sessions</th><th class="num">Questions</th></tr></thead>
<tbody>{''.join(rows)}</tbody></table></div>
<p class="note"><span class="badge banker">Banker</span> tested in almost every session ·
<span class="badge rare">Rare</span> tested in two sessions or fewer.</p>
<section><h2>Papers</h2><ul class="papers">{papers}</ul>
<p class="note">{variant_note}</p></section>
"""
    page(subj_path(subj), f"{subj_title(subj)} past paper questions by topic – {SITE_NAME}",
         f"{subj_title(subj)}: {len(d['topics'])} topics with every past paper question from 2022 to "
         f"{RELEASE['latest_session']} listed by year, marks and similar questions.",
         body, crumbs=[("Home", "/"), (subj_title(subj), subj_path(subj))])


def build_topic(subj, d, t):
    total = len(d["sessions"])
    by_year = defaultdict(list)
    for q in t["questions"]:
        by_year[q["year"]].append(q)
    years = sorted(by_year, reverse=True)
    year_html = "".join(
        f'<section class="year" data-year-group="{y}"><h3>{y}</h3><ul class="qlist">'
        + "".join(question_li(subj, q) for q in by_year[y]) + "</ul></section>" for y in years)
    qindex = {q["id"]: q for q in t["questions"]}
    similar = []
    for st in t["subtopics"]:
        qs = [qindex[i] for i in st["qids"] if i in qindex]
        if len({q["session"] for q in qs}) < 2:
            continue
        qs.sort(key=lambda q: session_key(q["session"]), reverse=True)
        items = "".join(
            f'<li><a href="#{esc(q["id"])}">{esc(session_label(q["session"]))} · {esc(paper_ref(q))} Q{esc(q["number"])}</a></li>'
            for q in qs)
        similar.append(f'<details class="similar"><summary><span>{esc(st["name"])}</span> {badge(st["sessions"], total)}'
                       f'<span class="count">{len(qs)} questions · {st["sessions"]}/{total} sessions</span></summary>'
                       f'<ul class="chips">{items}</ul></details>')
    chips = "".join(f'<button type="button" class="chip" data-year-chip="{y}" aria-pressed="false">{y}</button>' for y in years)
    paper_opts = "".join(f'<option value="{p}">{esc(subj["papers"].get(p, "Paper " + p))}</option>' for p in t["papers"])
    practice_html = practice_section(subj, t)
    subs_rows = "".join(
        f'<tr><td>{esc(s["name"])} {badge(s["sessions"], total)}</td><td class="num">{s["marks"]:g}</td>'
        f'<td class="num">{s["sessions"]}/{total}</td></tr>' for s in t["subtopics"])
    body = f"""
<header class="page-head">
  <p class="eyebrow">{esc(subj_title(subj))}</p>
  <h1>{esc(t['name'])} {badge(t['sessions'], total)}</h1>
  <p class="lede">{len(t['questions'])} questions · about {t['share']:.0f}% of the marks we indexed · examined in {t['sessions']} of {total} sessions.</p>
</header>
<nav class="tabs" aria-label="Sections"><a href="#by-year">Questions by year</a>{'<a href="#practice">Practice questions</a>' if t["practice"] else ''}<a href="#similar">Similar questions</a><a href="#subtopics">Subtopics</a></nav>
<section id="by-year">
  <h2>Questions by year</h2>
  <div class="filters" data-filters>
    <div class="chips" role="group" aria-label="Filter by year"><button type="button" class="chip" data-year-chip="all" aria-pressed="true">All years</button>{chips}</div>
    <label class="select"><span>Paper</span><select data-paper-select><option value="all">All papers</option>{paper_opts}</select></label>
  </div>
  {year_html}
  <p class="empty" hidden>No questions match this filter.</p>
  <p class="note">Find the full paper on the <a href="{official_url(subj)}" rel="noopener">official Cambridge past-papers page</a>
  or ask your school. “Paper 42” means Paper 4, variant 2.</p>
</section>
{practice_html}<section id="similar">
  <h2>Similar questions</h2>
  <p>Questions that test the same subtopic in different years. Practise them together to master one skill.</p>
  {''.join(similar) or '<p class="note">No subtopic in this topic has appeared in more than one session yet.</p>'}
</section>
<section id="subtopics">
  <h2>Subtopics</h2>
  <div class="table-wrap"><table class="topics"><thead><tr><th>Subtopic</th><th class="num">Marks indexed</th><th class="num">Sessions</th></tr></thead>
  <tbody>{subs_rows}</tbody></table></div>
</section>
<p class="back"><a href="{subj_path(subj)}">← All {esc(subj['name'])} topics</a></p>
"""
    page(f"{subj_path(subj)}{t['slug']}/", f"{t['name']} – {subj_title(subj)} past paper questions – {SITE_NAME}",
         f"{subj_title(subj)} {t['name']}: {len(t['questions'])} past paper questions from 2022 to {RELEASE['latest_session']} "
         f"by year, with similar questions grouped by subtopic.",
         body, crumbs=[("Home", "/"), (subj_title(subj), subj_path(subj)), (t["name"], f"{subj_path(subj)}{t['slug']}/")])


_URDU = re.compile(r"[\u0600-\u06FF]")
_LATIN = re.compile(r"[A-Za-z]{3}")
# Where a mixed line switches script: "…کیجیے۔ (Translate …)" or "… word. اردو …"
_SCRIPT_SWITCH = re.compile(r"(?<=[۔؟:])\s+(?=[(A-Za-z])|\s+(?=\([A-Za-z])|(?<=[.?!)])\s+(?=[\u0600-\u06FF])")


def bidi_lines(text):
    """Splits text into lines, and mixed Urdu/English lines into one piece per script."""
    out = []
    for ln in text.split("\n"):
        if _URDU.search(ln) and _LATIN.search(ln):
            out.extend(x for x in _SCRIPT_SWITCH.split(ln) if x)
        else:
            out.append(ln)
    return out


def _txt(text):
    """Each line gets its own direction, so Urdu and English lines in one block both read correctly."""
    lines = [esc(ln) for ln in bidi_lines(text)]
    if len(lines) == 1:
        return lines[0]
    # Blocks laid out with spaces (pseudocode indentation, accounts, tables) keep their columns in a fixed-width font.
    cls = "ln mono" if any(ln.startswith("  ") or "   " in ln for ln in lines) else "ln"
    return "".join(f'<span class="{cls}" dir="auto">{ln}</span>' for ln in lines)


def practice_section(subj, t):
    """Original HomiLabs questions for this topic, answers hidden until the student opens them."""
    if not t["practice"]:
        return ""
    cards = []
    for i, q in enumerate(t["practice"], 1):
        total = sum(p["marks"] for p in q["parts"])
        pname = subj["papers"].get(q["paper"], "")
        paper = f'Paper {q["paper"]} style' + (" · no calculator" if "non-calculator" in pname
                                               else " · calculator" if "calculator" in pname else "")
        parts = "".join(
            f'<li><span class="p-label">({esc(p["label"])})</span> <span class="p-text" dir="auto">{_txt(p["text"])}</span>'
            f' <span class="p-marks">[{p["marks"]}]</span></li>' for p in q["parts"])
        answers = "".join(
            f'<li dir="auto"><strong>({esc(p["label"])})</strong> {_txt(p["answer"])}'
            + (f'<div class="working" dir="auto">{_txt(p["working"])}</div>' if p.get("working") else "") + "</li>"
            for p in q["parts"])
        stem = f'<p class="stem" dir="auto">{_txt(q["stem"])}</p>' if q.get("stem") else ""
        cards.append(
            f'<article class="pq" id="{esc(q["id"])}"><header><span class="pq-n">Q{i}</span>'
            f'<span class="pq-meta">{esc(q["subtopic"])} · {esc(q["difficulty"].capitalize())} · {esc(paper)} · {total} marks</span>'
            f'</header>{stem}<ol class="pq-parts">{parts}</ol>'
            f'<details class="pq-ans"><summary>Show answer</summary><ol>{answers}</ol></details></article>')
    return f"""<section id="practice">
  <h2>Practice questions</h2>
  <p class="note">Original practice questions written by HomiLabs in the exam style. They are not Cambridge past paper
  questions. Try each one before opening the answer.</p>
  {''.join(cards)}
</section>
"""


SKIP_SECTION = re.compile(r"method|sample|caveat|how the sample", re.I)
SKIP_LINE = re.compile(r"papers/|pdftotext|scratch|\.csv|\bCSV\b|by script|spot-check|spot check", re.I)


def guide_markdown(text):
    """Keep the student-facing sections of an analysis report; drop method notes and file references."""
    out, skipping = [], False
    lines = text.splitlines()
    first_h2 = next((i for i, l in enumerate(lines) if l.startswith("## ")), len(lines))
    for line in lines[first_h2:]:
        if line.startswith("## "):
            skipping = bool(SKIP_SECTION.search(line))
        if skipping:
            continue
        if line.lstrip().startswith("|"):  # table rows are reworded, never dropped (a lost header breaks the table)
            line = re.sub(r"\s*\(CSV name\)|\s*used in the CSV|\s*in the CSV", "", line)
        elif SKIP_LINE.search(line):
            continue
        line = re.sub(r"\s+(locally|in the local files)\b", "", line)
        # Python-Markdown needs 4-space nesting and a blank line before a list that follows a paragraph.
        m = re.match(r"^( +)([-*+] |\d+\. )", line)
        if m:
            line = " " * (len(m.group(1)) // 2 * 4) + line.lstrip(" ")
        is_item = re.match(r"^\s*([-*+] |\d+\. )", line)
        prev = out[-1] if out else ""
        if is_item and prev.strip() and not re.match(r"^\s*([-*+] |\d+\. )", prev) and not prev.startswith("|"):
            out.append("")
        if line.lstrip().startswith("|") and prev.strip() and not prev.lstrip().startswith("|"):
            out.append("")
            line = line.lstrip()
        out.append(line)
    return "\n".join(out)


def build_guide(subj):
    src = (RESEARCH / subj["guide"]).read_text()
    md = markdown.Markdown(extensions=["tables", "sane_lists", "toc"], output_format="html")
    content = md.convert(guide_markdown(src))
    body = f"""
<header class="page-head">
  <p class="eyebrow">{esc(subj_title(subj))}</p>
  <h1>Exam guide</h1>
  <p class="lede">Paper structure, topic weights, banker topics, trends, common mistakes and grade thresholds, from our analysis of
  the {esc(RELEASE['first_session'])} to {esc(RELEASE['latest_session'])} papers.</p>
  <p class="note">Figures are estimates from one variant of each paper per session. Always check the current syllabus on
  <a href="{official_url(subj)}" rel="noopener">cambridgeinternational.org</a>.</p>
</header>
<article class="prose">{content}</article>
<p class="back"><a href="{subj_path(subj)}">← {esc(subj['name'])} topics</a></p>
"""
    page(f"{subj_path(subj)}guide/", f"{subj_title(subj)} exam guide – {SITE_NAME}",
         f"{subj_title(subj)} exam guide: paper structure, topic weights, banker topics, trends, common mistakes and grade thresholds.",
         body, crumbs=[("Home", "/"), (subj_title(subj), subj_path(subj)), ("Exam guide", f"{subj_path(subj)}guide/")])


def build_about():
    body = f"""
<header class="page-head"><h1>About {esc(SITE_NAME)}</h1>
<p class="lede">A free, non-profit study aid that helps students practise past paper questions topic by topic.</p></header>
<article class="prose">
<h2>What it is</h2>
<p>We tag every question part in recent Cambridge past papers with its syllabus topic, subtopic and marks. Each topic page lists the
questions year by year and groups similar questions, so students can see what is asked, how often, and practise one skill at a time.</p>
<h2>What it is not</h2>
<p>We do not publish complete question papers, mark schemes or examiner reports. For the papers themselves, use the
<a href="https://www.cambridgeinternational.org/">official Cambridge website</a> or your school.</p>
<p>This is an independent project. It is not affiliated with, endorsed by or connected to Cambridge University Press &amp; Assessment.</p>
<h2>Updates</h2>
<p>New questions are added twice a year, after the May/June and Oct/Nov exam series. Current release: <strong>{esc(RELEASE['version'])}</strong>
({esc(RELEASE['label'])}).</p>
<h2 id="privacy">Privacy</h2>
<p>No accounts, no ads, no analytics and no cookies. The site stores nothing about you. Filters you choose stay in your own browser.</p>
<h2 id="contact">Contact</h2>
<p>Found a wrong tag or a missing question? Email <a href="mailto:{esc(RELEASE['contact_email'])}">{esc(RELEASE['contact_email'])}</a>.
Rights holders can use the same address to ask for any content to be removed; we act within one working day.</p>
<p>Made by <a href="https://homilabs.org">HomiLabs</a>.</p>
</article>
"""
    page("/about/", f"About – {SITE_NAME}", f"About {SITE_NAME}: a free, non-profit topic-wise past paper question index.",
         body, crumbs=[("Home", "/"), ("About", "/about/")])


def build_404():
    body = '<header class="page-head"><h1>Page not found</h1><p class="lede">That page does not exist. ' \
           '<a href="/">Go to the home page</a> and pick your subject.</p></header>'
    page("/404.html", f"Page not found – {SITE_NAME}", "Page not found.", body)


def build_data(data):
    """App data packs: one JSON per subject plus a manifest the app checks for new releases."""
    ddir = OUT / "data"
    ddir.mkdir(parents=True, exist_ok=True)
    packs = []
    for subj in LIVE:
        d = data[subj["code"]]
        pack = {
            "code": subj["code"], "level": subj["level"], "name": subj["name"], "papers": subj["papers"],
            "official_url": official_url(subj), "sessions": d["sessions"],
            "web_url": BASE_URL + subj_path(subj), "guide_url": f"{BASE_URL}{subj_path(subj)}guide/",
            "topics": [{
                "name": t["name"], "slug": t["slug"], "share": round(t["share"], 1), "sessions": t["sessions"],
                **({"practice": [{k: q[k] for k in ("id", "subtopic", "paper", "difficulty", "stem", "parts") if k in q}
                                 for q in t["practice"]]} if t["practice"] else {}),
                "subtopics": [{"name": s["name"], "marks": s["marks"], "sessions": s["sessions"], "questions": s["qids"]}
                              for s in t["subtopics"]],
                "questions": [{"id": q["id"], "session": q["session"], "paper": q["paper"], "variant": q["variant"],
                               "number": q["number"], "parts": q["parts"], "marks": q["marks"],
                               "subtopics": sorted(q["subtopics"]),
                               **({"official": link} if (link := official_paper(subj, q)) else {})}
                              for q in t["questions"]],
            } for t in d["topics"]],
        }
        name = f"{subj['code']}.json"
        text = json.dumps(pack, ensure_ascii=False, separators=(",", ":"))
        (ddir / name).write_text(text)
        packs.append({"code": subj["code"], "level": subj["level"], "name": subj["name"], "file": f"/data/{name}",
                      "bytes": len(text.encode()), "questions": d["question_count"]})
    manifest = {"schema": 1, "version": RELEASE["version"], "label": RELEASE["label"], "sessions": RELEASE["sessions"],
                "built": date.today().isoformat(), "site": BASE_URL,
                "levels": [{"id": lv["id"], "name": lv["name"], "short": lv["short"]} for lv in CFG["levels"]],
                "coming_soon": SOON, "packs": packs}
    (ddir / "manifest.json").write_text(json.dumps(manifest, indent=1))
    # The Android app bundles the same packs so it works offline from the first launch.
    app_assets = ROOT / "app" / "assets" / "data"
    if app_assets.parent.exists():
        if app_assets.exists():
            shutil.rmtree(app_assets)
        shutil.copytree(ddir, app_assets)


def build_sitemap():
    urls = sorted(p.relative_to(OUT).parent.as_posix() for p in OUT.rglob("index.html"))
    entries = "".join(f"<url><loc>{BASE_URL}/{'' if u == '.' else u + '/'}</loc></url>" for u in urls)
    (OUT / "sitemap.xml").write_text(
        f'<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">{entries}</urlset>')
    (OUT / "robots.txt").write_text(f"User-agent: *\nAllow: /\nSitemap: {BASE_URL}/sitemap.xml\n")


def main():
    if OUT.exists():
        shutil.rmtree(OUT)
    shutil.copytree(STATIC, OUT)
    data = {s["code"]: load_subject(s) for s in LIVE}
    build_home(data)
    for subj in LIVE:
        d = data[subj["code"]]
        build_subject(subj, d)
        for t in d["topics"]:
            build_topic(subj, d, t)
        build_guide(subj)
    build_about()
    build_404()
    build_data(data)
    build_sitemap()
    pages = sum(1 for _ in OUT.rglob("*.html"))
    size = sum(p.stat().st_size for p in OUT.rglob("*") if p.is_file())
    print(f"Built {pages} pages, {sum(d['question_count'] for d in data.values())} questions, "
          f"{size / 1e6:.1f} MB -> {OUT}")


if __name__ == "__main__":
    main()
