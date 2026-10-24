# Brief: HomiLabs original practice questions (all O Level subjects)

Goal: original exam-style practice questions, published under each topic on the website and in the app. They must be
**HomiLabs' own work**, never copied or paraphrased from Cambridge papers. Students rely on the answers: correctness
comes first.

## Hard rules
- Do NOT open, read or quote anything in `/mnt/storage/projects/O_Level/papers/`. Write from your own knowledge of the
  syllabus. You may read the subject's analysis in `research/topic-analysis/<guide>.md` for style only (command words,
  mark sizes, kinds of task per subtopic, paper formats).
- New contexts, new numbers, new wording. No "Cambridge", no paper or session references.
- No diagrams or images. Where a diagram would be used, give coordinates, a data table, a list of readings, or describe
  the figure in words with named points/labels. Circuits: describe components and connections in words.
- Plain Unicode: x², √, π, ×, ÷, −, ≤, ≥, °, Ω, µ, →, ⇌, subscripts in formulas (H₂O, CO₂, SO₄²⁻). No LaTeX, no HTML.
- Facts must be correct for the current syllabus (2025 onward). If unsure of a fact, write a different question.
- Every numeric answer must be computed with Python before you write it down. Every question with a numeric answer gets
  a `check` field: one Python expression that is True only if your answers are right (allowed names: math, Fraction,
  abs, round, min, max, sum, sorted, len — no other builtins such as range/all/any, no imports). It must actually test
  the stated answer (not `2+2 == 4`). Questions with no numeric answer have no `check`.
- State rounding/units where needed ("Give your answer correct to 3 significant figures", "in kJ/mol").

## Question styles
- `paper` = the paper whose style it imitates (a digit string from the subject's paper list).
- Multiple-choice papers (Paper 1 in sciences, Economics, Accounting): at most ~25 % of a topic's questions may be
  MCQ. Write an MCQ as one part: the `text` holds the question and then the four options on new lines as
  "A …\nB …\nC …\nD …"; `marks` 1; `answer` is the letter plus the option text; `working` explains why it is right and
  why the main distractor is wrong. Exactly one option is correct; distractors are plausible.
- Structured/theory questions: 1–6 marks per part, 2–8 per question, command words as in the analysis (State, Describe,
  Explain, Calculate, Suggest…). For "explain"/"describe" answers, give the mark points the answer must contain
  (`working`: "1 mark each for any two of: …").
- Practical / alternative-to-practical styles (papers 3/4): describe the apparatus and give results in a table; ask for
  readings, calculations, conclusions, sources of error, improvements.
- Mix difficulty in each subtopic: about 1/3 core, 1/3 standard, 1/3 challenge (one question = one difficulty).

## Format
JSON list. One object per question:
{"id": "<prefix>-<NNN>", "topic": "<exact topic>", "subtopic": "<exact subtopic>",
 "paper": "2", "difficulty": "core" | "standard" | "challenge",
 "stem": "<optional shared context/data; \n for new lines>",
 "parts": [{"label": "a", "text": "...", "marks": 2, "answer": "<final answer>", "working": "<method / mark points>"}],
 "check": "<python expression, only if numeric>", "author": "HomiLabs", "reviewed": false}
- Topic/subtopic names exactly as in the plan file. Part labels a, b, c … or a(i), a(ii).
- `working` is the mark scheme: method steps / mark points (M1, A1, B1 style is fine), concise.
- ids: the prefix you are given plus a 3-digit counter, unique in your file(s).

## Finish
Validate with `python3 pipeline/practice_check.py --file <your file> --code <code>` (it checks names, format and that
every `check` is True). Fix every ERROR. Return a short summary.
