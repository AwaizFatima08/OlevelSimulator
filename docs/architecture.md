# Architecture

Agreed 20 Oct 2026. Non-profit, no ads, no accounts, no tracking.

## Shape
```
homi-nas (private)                                   Hostinger (public)                  Students
papers/ (PDFs, never published)
   │
pipeline: fetch → extract → tag → link similar → review → build ──► cambridgesimulator.homilabs.org ──► Web
                                                                    /data/manifest.json + <code>.json ──► Android app (offline)
```
- Static site only: plain HTML, one stylesheet, one small script. Cheap, fast on mobile data, nothing to patch.
- The Android app (Flutter, planned) downloads `data/manifest.json`, compares `version`, and fetches changed packs.
- Progress, bookmarks and filters stay on the student's device.

## What is published (current phase)
- Per question part: session, paper, variant, question number, part label, topic, subtopic, marks.
- Topic statistics (share of marks, sessions examined, banker/rare badges) and the subject exam guides
  (student-facing sections of `research/topic-analysis/*.md`; method notes and file references are stripped at build).
- Links to the official Cambridge past-paper page for each syllabus.

**Not published:** question text or images, complete papers, mark schemes, examiner reports. Cambridge owns the
copyright in every question. Showing question images needs Cambridge's written permission (to be requested as a
non-profit); the data model already has room for them (`image` per question) so it is one build switch later.

## Data model (packs in `site/data/<code>.json`)
```
subject   code, level, name, papers{number: name}, official_url, sessions[]
topic     name, slug, share %, sessions examined
 subtopic name, marks, sessions, questions[ids]       ← the "similar questions" groups
 question id 0625_s24_42_q7, session 2024-MJ, paper, variant, number, parts[], marks, subtopics[]
manifest  schema, version (YYYY-MM), label, sessions[], packs[{code, file, bytes, questions}]
```

## Similar questions
Phase 1 (now): questions sharing a subtopic across sessions. Phase 2: refine with text similarity on homi-nas and
a human check; add original HomiLabs practice questions written in the same style (fully ours, can be shown in full).

## Next steps
1. Tag all variants, not only one per paper (more questions per topic).
2. Extend to the 16 extra subjects already downloaded (essay subjects get theme/question-type pools).
3. Android app reading the packs.
4. Ask Cambridge for non-profit permission to show question images.
