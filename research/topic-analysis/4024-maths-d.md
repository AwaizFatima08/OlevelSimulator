# Cambridge O Level Mathematics D (4024): topic-frequency analysis, 2022–2026

Built from local files only (`papers/o-level/mathematics-d-4024/`), 19 Oct 2026.
Per-part data: `4024-questions.csv` (805 rows: session, paper, variant, question, part, topic, subtopic, marks).

## 1. Method and sample

- **Sessions:** 9 (May/June and Oct/Nov 2022 to 2025, plus May/June 2026).
- **Main sample:** variant 2 of each paper (components 12 and 22) in every session, so the sample is the same across all 9 sessions. That makes 18 question papers, about 1,700 marks in total. In May/June 2025 and 2026 only variants 2 and 3 exist locally (no 11/21).
- **Marks:** read from the `[n]` markers on each question paper. Every paper's parts add up exactly to its stated total (80 or 100). The mark schemes were not needed for totals. `4024_w22_ms_22` is missing.
- **Classification:** each part is assigned to **one** syllabus topic and subtopic, by its main skill. Mixed parts go to the skill that earns most of the marks. For example, a shaded area that needs circle theorems first is filed under *Arcs & sectors*, and finding a vertex with vectors is filed under *Vectors*. Treat the figures as good estimates of weight (±2–3 marks per topic per paper), not exact counts.
- **Spot checks:** I compared keyword-indicator counts across all 36 question papers. I also skimmed the question openings of 2025-ON P11, 2024-MJ P21 and 2026-MJ P23. The other variants cover the same topic areas with similar weights and the same structure, so variant choice does not change the conclusions.
- **Examiner reports:** only three exist locally: June 2022 (`4024_s22_er`, kept in the 2022-oct-nov folder), Nov 2022 and June 2023.
- **Grade thresholds:** available for every session except Nov 2022.
- **Matrices:** at topic level, matrices are filed under *Transformations & vectors*. They appear only in the old syllabus.

## 2. Paper structure (checked against the cover pages)

| | 2022 – Nov 2024 (old format) | 2025 onwards (current syllabus 2025–2027) |
|---|---|---|
| Paper 1 | **No calculator, 2 hours, 80 marks**, 24–26 short questions (1–5 marks per part) | **"Paper 1 Non-calculator", 2 hours, 100 marks**, 23–24 questions |
| Paper 2 | **Calculator, 2 h 30 min, 100 marks**, **10–11 long structured questions**, each built around a context (shopping, journeys, a field, a solid, and so on) | **"Paper 2 Calculator", 2 hours, 100 marks**, **24–25 short and medium questions** in the same style as Paper 1 |
| Formulae | Given inside the question, in brackets (sphere, cone) | A **list of formulas** page at the front of both papers: areas, volumes, quadratic formula, sine rule, cosine rule, ½ab sin C |
| Total | 180 raw marks (overall threshold out of 200, weighted) | 200 raw marks |

Correction to the brief: old Paper 1 was **2 hours** (not 1 h 30) for 80 marks, and old Paper 2 was 2 h 30. The 2026 threshold sheet also lists a **Component 50 (90 marks)** route. There is no local paper for it, so it is not analysed here.

## 3. Topic weights

### 3a. Marks per topic per session (variant 2; P1 + P2)

| Topic | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ | % share, all |
|---|---|---|---|---|---|---|---|---|---|---|
| Number | 36 | 39 | 41 | 36 | 36 | 42 | 48 | 54 | 49 | **22.7** |
| Algebra (incl. graphs, functions, sequences) | 45 | 51 | 47 | 55 | 48 | 54 | 55 | 50 | 58 | **27.6** |
| Coordinate geometry | 14 | 5 | 7 | 6 | 10 | 5 | 8 | 14 | 9 | 4.6 |
| Geometry | 19 | 22 | 18 | 15 | 15 | 21 | 18 | 20 | 17 | 9.8 |
| Mensuration | 15 | 15 | 11 | 16 | 18 | 14 | 18 | 10 | 24 | 8.4 |
| Trigonometry | 14 | 9 | 12 | 8 | 5 | 5 | 9 | 14 | 6 | 4.9 |
| Transformations & vectors (incl. matrices to 2024) | 12 | 16 | 17 | 19 | 18 | 12 | 19 | 14 | 11 | 8.2 |
| Probability | 9 | 8 | 6 | 6 | 11 | 6 | 8 | 10 | 6 | 4.2 |
| Statistics | 16 | 15 | 21 | 19 | 19 | 21 | 17 | 14 | 20 | 9.6 |
| **Total** | 180 | 180 | 180 | 180 | 180 | 180 | 200 | 200 | 200 | |

**Number and Algebra together make up about half of all marks (≈ 50 %).** This holds in every session.

### 3b. % share by paper, old format against new format

| Topic | P1 old (80) | **P1 new (100)** | P2 old (100) | **P2 new (100)** |
|---|---|---|---|---|
| Number | 24.4 | **25.7** | 18.8 | **24.7** |
| Algebra | 31.0 | **25.7** | 25.2 | **28.7** |
| Coordinate geometry | 3.1 | 6.0 | 5.3 | 4.3 |
| Geometry | 14.6 | 9.7 | 6.7 | 8.7 |
| Mensuration | 3.8 | **8.0** | 11.8 | 9.3 |
| Trigonometry | 0.2 | 1.3 | 8.7 | 8.3 |
| Transformations & vectors | 11.5 | 11.7 | 6.5 | **3.0** |
| Probability | 3.1 | 3.3 | 5.2 | 4.7 |
| Statistics | 8.3 | 8.7 | 11.8 | 8.3 |

Per-paper marks for each session are in the CSV. Paper 1 Number ranges from 17 to 28 marks, and Paper 2 Algebra from 19 to 33.

## 4. Bankers: subtopics tested in all 9 sessions

These were examined in **every** session in the sample. Figures are average marks per session (P1 + P2), with where they usually appear.

| Subtopic | Avg marks | Usually on | Typical style |
|---|---|---|---|
| Graphs of functions (tables, plotting, tangents, extra line to solve an equation, sketches) | 9.1 | both, mostly P2 | Complete a table for a cubic, reciprocal or exponential, plot it, then draw a line to solve a related equation. On P1, use a printed graph with a tangent for the gradient. |
| Surface area & volume | 8.4 | P2 | Composite solids (cone + hemisphere, frustum, bowl), "show that" a volume or area, then use similar solids |
| Vectors | 6.9 | P1 | Triangle or parallelogram with a ratio on a side: express a vector, find a position vector, show lines are parallel or collinear. Some column-vector work and magnitude. |
| Money & interest | 6.6 | P2 | Simple and compound interest (often working back to find the rate), exchange rates, bills, discounts |
| Transformations | 5.2 | P1 | "Describe fully" a single transformation, draw a reflection, rotation or enlargement, find a centre of enlargement |
| Sine & cosine rules (incl. ½ab sin C) | 5.0 | P2 only | Field or triangle problems, often linked to bearings or a perpendicular distance. 4–6-mark parts. |
| Combined probability | 4.6 | both | Without replacement (tiles, counters, cards), tree diagrams, probability from a Venn diagram |
| Algebraic fractions | 4.6 | P1 | Add or subtract to a single fraction, simplify by factorising (4 marks) |
| Functions | 4.2 | P1 | Find f⁻¹(x), composite functions, solve an equation in f(x) |
| Linear equations | 4.1 | both | Brackets, fractions, forming an equation from words |
| Arcs & sectors | 4.0 | both | Sector area or arc length in terms of π, reverse problems, shaded regions (5 marks) |
| Perpendicular & parallel lines | 4.0 | both | Gradient of a perpendicular line, equation of a perpendicular bisector (4–5 marks) |
| Circle theorems | 3.8 | both | Find angles with **reasons**. Cyclic quadrilateral, tangent–radius, alternate segment. |
| Fractions & decimals (non-calculator) | 3.7 | P1 | Mixed-number arithmetic, decimal multiplication and division, recurring decimals (new format) |
| Sets & Venn diagrams | 3.4 | both | Complete a 2- or 3-set Venn diagram from clues, shade or describe regions in set notation, n(...) |
| Powers, roots & surds | 3.3 | P1 | Negative and fractional indices, simplify surds and rationalise denominators (growing since 2025) |
| Bounds | 3.2 | P2 | Upper or lower bound of a speed, a difference or a total (3 marks) |
| Standard form | 3.1 | both | Convert, calculate, population density |
| Scale drawing & bearings | 2.6 | P1 | Measure a distance or bearing, locate a point from two bearings |

**Near-bankers (8 of 9 sessions):** sequences (nth term, pattern problems, 5.3 marks per session), congruence and similarity (proofs with reasons, area and volume scale factors), factorising and expanding, angles in polygons, histograms, length, midpoint and gradient, speed and rates, area and perimeter, ratio, constructions and loci (always P1), and 1 s.f. estimation (always P1).

**High weight but not every session:** quadratic equations (6.6 marks per session in 7 of 9). These are usually "form an equation and show it simplifies to …, then solve" (6–7 marks), by factorising on P1 or the formula to 2 d.p. on P2. Since 2025 they also include completing the square plus the turning point. Cumulative frequency and box plots average 4.2 marks per session.

**Topic-level banker:** all 9 topic areas appear in every session.

## 5. Rarely tested (≤ 3 of 9 sessions in the sample)

- Scatter diagrams (3 sessions). Correlation, line of best fit, and why extrapolation is unreliable.
- 3D trigonometry and angle of elevation (3 sessions, **all old format**). The new format has a 3D Pythagoras pyramid with a surd answer instead (Nov 2025 P1).
- Exponential growth and decay (2 sessions, **both new format**: Nov 2025 and June 2026).
- Units conversion, area units, time, types of number, symmetry, nets.
- Trig graphs and exact values (one 1-mark item in 2022). Box plots: none in the sample.
- **Not on the current syllabus:** **matrices**. They appeared in 6 of 6 old-format sessions (≈ 5 marks per session: multiplication, inverse, determinant, transformation matrices, matrix equations) and in **none** of the 2025–26 papers, any variant. Ignore matrices in older past papers.

## 6. Trends since the 2025 format change

1. **Paper 2 is no longer a set of 10 long context questions.** It is now 24–25 shorter questions, so far more topics are sampled per paper. Long multi-step contexts are rarer, but 5–6-mark problems remain (trigonometry in a field, composite solids, forming quadratics).
2. **Paper 1 grew from 80 to 100 marks in the same 2 hours.** The extra marks went to surds and indices (≈ 7 marks per paper in 2025–26, against ≈ 2 before), composite mensuration in terms of π (e.g. hemisphere and cylinder of equal volume, 5–6 marks), quadratic graphs and sketching, and coordinate geometry.
3. **Number rises on Paper 2** (19 % → 25 %). Interest, exchange and bounds stay, and **exponential growth and decay** is new.
4. **Transformations & vectors fall on Paper 2** (6.5 % → 3 %), almost entirely because matrices were dropped. Vectors are now mainly on Paper 1.
5. **New-style items** not seen in 2022–24: completing the square plus turning point, sketching cubic and exponential curves with an asymptote, recurring decimal to fraction, rationalising denominators (P1), exponential growth (P2), and the given formula sheet.
6. **Calculator-paper trigonometry is steady** (≈ 8–9 % of P2). It is now more often combined with a perpendicular-distance or speed step, worth 5–6 marks.
7. **Grade boundaries rose** after the change (see §8). A, B and C on the 100-mark papers sit at about 71–78 %, 50–57 % and 30–38 %.

## 7. Examiner-report findings: common mistakes and hardest areas

Sources: Principal Examiner reports for June 2022, Nov 2022 and June 2023, all old-format components. They are the only reports stored locally, so findings for 2025+ are inferred.

**Areas named as most challenging:**
- **Vectors.** Named in all three reports. Candidates mix vector and number notation, get routes in the wrong order, and misread ratios such as OC : CR (finding 5c or 0.6c instead of 2.5c). "Show that it is a trapezium" or collinear parts are often left blank.
- **Standard form problems.** Reverse problems where the mantissa must be between 1 and 10 (a = 20 accepted wrongly), and powers with n.
- **Ratio combining.** Merging two ratios with a common part (red : blue and green : blue) was "very challenging".
- **Combined probability without replacement.** Candidates do not reduce the denominator, add instead of multiply, or forget to multiply by 2 for "either order".
- **Proportionality** (two linked relationships), **perpendicular lines and bisectors** (using an end point instead of the midpoint), **graphical inequalities** and **functions** (first step of the inverse, composite notation).
- **Set notation.** Describing a shaded region, n( ) against listing the elements.
- **Geometric proof.** Congruence or similarity with reasons. Correct three-letter angle names and correct vocabulary (alternate, vertically opposite) are needed; "Z-angles" and "X-angles" get no credit.
- **Bounds.** Choosing the right bound combination for a difference or a quotient.
- **Histograms.** Using frequency instead of frequency density, and estimating a count from part of an interval.

**Recurring technical errors:**
- Premature rounding on the calculator paper. Keep at least 4 s.f. in the working and give 3 s.f. or the requested accuracy at the end. In "show that" questions, show one more decimal place than asked.
- Ignoring "by drawing a suitable line" or "by drawing a tangent". An algebraic answer scores nothing.
- Confusing significant figures and decimal places. Rounding 63.7 to 64 instead of 60 when estimating to 1 s.f.
- Converting area units with ÷10 instead of ÷100 (mm² to cm²).
- Giving the total amount instead of the interest, and reducing by the percentage when the question asks for the original price.
- Polygon angle-sum errors, and treating a pentagon as if it were regular.
- Sign errors when expanding −(…) and with negatives in general. Squaring a bracket and getting 2 terms instead of 4.
- Not knowing terms: irrational, congruent, mixed number, plane of symmetry, correlation, relative frequency, HCF.

## 8. Grade thresholds (raw marks)

Component thresholds for the main-sample variant 2 papers (A / B / C / D / E). Components have no A*.

| Session | P1 max | P1 A / B / C | P2 max | P2 A / B / C |
|---|---|---|---|---|
| June 2022 | 80 | 49 / 35 / 21 | 100 | 67 / 46 / 26 |
| Nov 2022 | – | *no gt file locally* | – | – |
| June 2023 | 80 | 57 / 42 / 27 | 100 | 68 / 48 / 28 |
| Nov 2023 | 80 | 60 / 45 / 31 | 100 | 77 / 56 / 34 |
| June 2024 | 80 | 61 / 45 / 29 | 100 | 69 / 49 / 30 |
| Nov 2024 | 80 | 62 / 48 / 35 | 100 | 70 / 52 / 33 |
| June 2025 | 100 | 72 / 52 / 32 | 100 | 78 / 57 / 36 |
| Nov 2025 | 100 | 71 / 54 / 36 | 100 | 71 / 51 / 32 |
| June 2026 | 100 | 71 / 50 / 30 | 100 | 76 / 54 / 32 |

Overall syllabus thresholds for the option matching the sample (components 12 + 22), out of 200:

| Session | A* | A | B | C | D | E |
|---|---|---|---|---|---|---|
| June 2022 (Y) | 164 | 128 | 90 | 52 | 37 | 23 |
| June 2023 (Y) | 169 | 139 | 100 | 62 | 49 | 36 |
| Nov 2023 (Y) | 176 | 152 | 112 | 73 | 52 | 31 |
| June 2024 (Y) | 172 | 145 | 105 | 66 | 52 | 39 |
| Nov 2024 (Y) | 174 | 148 | 112 | 77 | 56 | 36 |
| June 2025 (AY) | 175 | 150 | 109 | 68 | 54 | 40 |
| Nov 2025 (Y) | 171 | 142 | 105 | 68 | 51 | 35 |
| June 2026 (12, 22) | 173 | 147 | 104 | 62 | 49 | 37 |

Other options, for reference: X (11 + 21) in June 2022 was 168 / 137 / 97 / 58. AZ (13 + 23) in June 2025 was 177 / 154 / 110 / 66, and in June 2026 175 / 150 / 109 / 68.

**Reading the numbers:**
- A\* needs about **86–88 %** (≈ 171–176 / 200) in every session since 2023. A needs about 71–76 %, B about 52–56 %, and C about 31–39 %.
- In the new format (both papers out of 100), the Paper 2 A boundary has equalled or exceeded Paper 1's: 78 v 72, 71 v 71, 76 v 71. So the calculator paper is not the harder one to score on. Paper 1's C boundary (30–36) shows how hard non-calculator work is for weaker candidates.
- June 2022 boundaries were noticeably lower, probably reflecting post-pandemic grading. Do not use them as a target.

## 9. Revision priorities for Oct/Nov 2026 or 2027 (current 2025–2027 syllabus)

The order weighs average marks, how often a topic appears, and the difficulty flagged by examiners.

1. **Graphs of functions** (≈ 9 marks per session). Plot cubic, reciprocal and exponential curves accurately, use a tangent for the gradient, rearrange so a straight line solves a new equation, and sketch with intercepts and asymptotes. Since 2025: completing the square, turning point, and the range of k for which an equation has two solutions.
2. **Quadratics from context** (≈ 7 marks). Form an expression, show that it simplifies, solve by factorising (P1) or by the formula to 2 d.p. (P2), and reject the invalid root.
3. **Mensuration of composite solids and sectors** (≈ 12 marks combined). Cone, sphere, hemisphere, frustum, π-form answers on P1, arc length reversed into a cone, and similar solids (area and volume scale factors).
4. **Vectors** (≈ 7 marks, mainly P1). Ratio on a line, position vectors, prove parallel or collinear. This is examiners' most-flagged weak area, so it offers big gains.
5. **Non-calculator number** (≈ 10–12 marks on P1). Fractions and mixed numbers, decimals, **surds and rationalising**, negative and fractional indices, recurring decimals, prime factors / HCF / LCM, 1 s.f. estimation.
6. **Money, percentages and growth** (≈ 8–10 marks, mainly P2). Simple and compound interest including finding the rate, reverse percentages, exchange rates, and **exponential growth and decay** (new, already twice in 3 sessions).
7. **Trigonometry on P2** (≈ 8 marks). Sine rule, cosine rule, ½ab sin C, a perpendicular distance as a second step, bearings in triangles. Keep 4+ s.f. throughout.
8. **Algebraic fractions, functions and indices** (≈ 9 marks, mainly P1). Single fraction, simplify by factorising, f⁻¹, composite functions.
9. **Coordinate geometry** (≈ 9 marks). Gradient, midpoint, length as a surd, perpendicular bisector equation.
10. **Statistics** (≈ 17 marks across both papers). Histograms with frequency density, grouped mean, cumulative frequency (median, IQR, percentiles, "how many more than"), compare two distributions in context.
11. **Probability, sets and Venn diagrams** (≈ 10 marks). Without replacement, tree diagrams, 3-set Venn diagrams from clues, set notation for shaded regions.
12. **Geometry with reasons** (≈ 17 marks). Circle theorems with named reasons, polygon angles, similarity and congruence proofs, constructions and loci with arcs left visible, scale drawings and bearings (P1 every session).
13. **Bounds and standard form** (≈ 6 marks). Bounds of a speed or difference, standard form arithmetic, population density.
14. **Lower priority:** direct and inverse proportion (2–4 marks, but done badly), sequences (nth term including quadratic, pattern problems), simultaneous equations, transformations ("describe fully": name plus every parameter).
15. **Skip:** matrices. Revise them only if working from pre-2025 papers for practice.

**Exam habits that are worth marks:**
- Show every step in "show that" items.
- Do exactly what "by drawing a line" or "by drawing a tangent" asks.
- Use three-letter angle names and correct reason words.
- Do not round mid-calculation.
- Read what the final answer must be: interest or total, the pattern number or the counters left over.

---
*Limitations:*
- The analysis uses one variant per session. The other variants were spot-checked only.
- Topic tagging is judgement-based, and each part is assigned to one topic only.
- No examiner reports exist locally for Nov 2023 onwards, including any new-format session.
- The Nov 2022 grade thresholds are missing.
- The 2026 files come from a re-hosting site (each page carries its trace ID); their content matches the Cambridge layout.
