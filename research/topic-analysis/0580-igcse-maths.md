# Cambridge IGCSE Mathematics (0580): topic-frequency analysis, 2022–2026

Built from local files only (`papers/igcse/mathematics-0580/`), 19 Oct 2026.
Per-part data: `0580-questions.csv` (1,016 rows: session, paper, variant, question, part, topic, subtopic, marks).

## 1. Method and sample

- **Sessions:** 9 (May/June and Oct/Nov 2022 to 2025, plus May/June 2026).
- **Main sample (Extended):** variant 2 of Paper 2 and Paper 4 (components 22 and 42) in every session. That is 18 question papers and 1,800 marks (200 per session). All variant-2 papers exist locally, so no substitutes were needed. The local 2026 folder has no component 41 (question paper or mark scheme). This does not affect the sample.
- **Core sample (lighter):** components 12 and 32 for June 2023, June 2025 and June 2026. That is 6 papers and 480 marks.
- **Text extraction:** `pdftotext -layout`. The text was written to the session scratchpad, not to `papers/`. The PDFs were not changed.
- **Marks:** read from the `[n]` markers on each question paper. **For all 24 papers, the parts add up exactly to the total printed on the cover** (56, 70, 80, 100, 104 or 130). The question count of each paper was also checked against its mark scheme.
- **Classification:** each part is assigned to **one** syllabus topic and subtopic, by the skill that earns most of its marks. For example, an equation with algebraic fractions that becomes a quadratic is filed under *Algebraic fractions*. A field problem solved with the sine rule and then an area is filed under *Sine & cosine rules*. Similar-solid volumes are filed under *Similarity*. Treat the figures as good estimates (±2–3 marks per topic per paper), not exact counts.
- **Examiner reports:** six exist locally: June 2022, Nov 2022, June 2023, Nov 2023, June 2024 and June 2025. **There is none for Nov 2024, Nov 2025 or June 2026.** June 2025 is the only report on the new non-calculator format.
- **Grade thresholds:** available for all 9 sessions.
- **Caveat on the new format:** only 3 new-format sessions exist (June 2025, Nov 2025, June 2026). Trends from 2025 onwards rest on 6 papers.
- **2026 files:** they come from a re-hosting site (each page carries a trace ID and watermark). Their content matches the Cambridge layout.

## 2. Paper structure (checked against the cover pages)

| Component | 2022 – Nov 2024 (old syllabus) | 2025 onwards (syllabus 2025–2027) |
|---|---|---|
| Paper 1 (Core) | "Paper 1 (Core)", **calculator**, **1 h, 56 marks**, 21–25 short questions | **"Paper 1 Non-calculator (Core)"**, **1 h 30 min, 80 marks**, 25–29 short questions |
| Paper 2 (Extended) | "Paper 2 (Extended)", **calculator**, **1 h 30 min, 70 marks**, 23–26 short questions | **"Paper 2 Non-calculator (Extended)"**, **2 h, 100 marks**, 24–25 questions (42–47 parts) |
| Paper 3 (Core) | "Paper 3 (Core)", calculator, **2 h, 104 marks**, **9 long structured questions** | **"Paper 3 Calculator (Core)"**, **1 h 30 min, 80 marks**, 24–26 short and medium questions |
| Paper 4 (Extended) | "Paper 4 (Extended)", calculator, **2 h 30 min, 130 marks**, **10–12 long structured questions** (43–55 parts) | **"Paper 4 Calculator (Extended)"**, **2 h, 100 marks**, **21–27 questions** (36–41 parts) |
| Formulae | Given inside the question in brackets (e.g. cone, sphere) | A **list of formulas** page at the front of every paper: areas, volumes, quadratic formula, sine rule, cosine rule, ½ab sin C |
| Totals | Core 56 + 104 = 160; Extended 70 + 130 = 200 | Core 80 + 80 = 160; Extended 100 + 100 = 200 |

Notes:
- The non-calculator change from 2025 is confirmed on the covers. Papers 1 and 2 say "Calculators must not be used in this paper". Papers 3 and 4 say "You should use a scientific calculator where appropriate".
- **Extended candidates now face equal halves:** 50 % of marks without a calculator. Before 2025, every Extended paper allowed a calculator.
- Core grades run from C to G and Extended grades from A\* to E, so Core caps a candidate at grade C.
- The threshold sheets also list Component 50 (90 marks), a separate route. There is no local paper for it, so it is not analysed here.
- Old Paper 4 asked long themed questions with 4–7 parts each, such as a car-purchase money question or a field with trigonometry. New Paper 4 looks more like old Paper 2: many 1–6-mark questions, with a few multi-part ones (graph plotting, field trigonometry, functions).

## 3. Syllabus topic list used for tagging

The topics follow the nine 0580 syllabus areas, and the subtopics follow the syllabus sections.

| Topic | Subtopics |
|---|---|
| Number | Types of number; factors, multiples & primes (HCF/LCM); sets & Venn diagrams; powers & roots; fractions, decimals & recurring decimals; four operations & order of operations; ordering; indices (numerical); standard form; estimation & rounding; limits of accuracy (bounds); ratio & proportion; rates (speed, density); percentages; using a calculator; time; money & interest; exponential growth & decay; surds |
| Algebra & graphs | Expanding, factorising & simplifying; substitution, formulae & rearranging; algebraic fractions; algebraic indices; linear equations & forming equations; simultaneous equations (incl. linear–quadratic); quadratics (factorise, formula, completing the square); inequalities (incl. graphical regions); sequences; direct & inverse proportion; graphs in practical situations (speed–time, conversion); graphs of functions (tables, plotting, tangents, solving with a line, asymptotes); sketching curves; differentiation; functions (inverse, composite, domain/range) |
| Coordinate geometry | Coordinates & drawing linear graphs; gradient; length & midpoint; equation of a straight line; parallel lines; perpendicular lines & bisectors |
| Geometry | Geometrical terms & shape properties (incl. nets); constructions & loci; scale drawings & bearings; similarity & congruence (incl. area/volume scale factors); symmetry; angles, parallel lines & polygons; circle theorems |
| Mensuration | Units of measure; area & perimeter; circles, arcs & sectors; surface area & volume (incl. compound solids) |
| Trigonometry | Pythagoras; right-angled trigonometry (incl. bearings in triangles); exact values, trig graphs & equations; sine & cosine rules, ½ab sin C; 3D Pythagoras & trigonometry |
| Transformations & vectors | Transformations; vectors (column, magnitude); vector geometry (position vectors, parallel/collinear) |
| Probability | Single-event probability; relative & expected frequency; combined events (trees, tables, Venn); conditional probability |
| Statistics | Classifying data; averages & range (incl. grouped mean, quartiles/IQR from a list); charts, tables & diagrams (stem-and-leaf, pie, bar); scatter diagrams; cumulative frequency & box plots; histograms |

## 4. Topic weights — Extended (Papers 22 + 42)

### 4a. Marks per topic per session (out of 200 each)

| Topic | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ | % share, all |
|---|---|---|---|---|---|---|---|---|---|---|
| Number | 36 | 32 | 33 | 33 | 32 | 30 | 34 | 43 | 37 | **17.2** |
| Algebra & graphs | 61 | 71 | 61 | 61 | 61 | 70 | 72 | 59 | 71 | **32.6** |
| Coordinate geometry | 12 | 7 | 7 | 9 | 14 | 5 | 5 | 11 | 4 | 4.1 |
| Geometry | 19 | 8 | 23 | 19 | 16 | 20 | 22 | 20 | 16 | 9.1 |
| Mensuration | 16 | 14 | 16 | 15 | 21 | 18 | 11 | 13 | 14 | 7.7 |
| Trigonometry | 17 | 23 | 23 | 25 | 24 | 18 | 21 | 22 | 22 | **10.8** |
| Transformations & vectors | 15 | 18 | 11 | 16 | 10 | 13 | 13 | 12 | 14 | 6.8 |
| Probability | 10 | 9 | 9 | 9 | 7 | 11 | 11 | 6 | 6 | 4.3 |
| Statistics | 14 | 18 | 17 | 13 | 15 | 15 | 11 | 14 | 16 | 7.4 |
| **Total** | 200 | 200 | 200 | 200 | 200 | 200 | 200 | 200 | 200 | |

**Algebra & graphs alone is about one third of every Extended exam (59–72 marks out of 200).** Algebra and Number together make up about half. Trigonometry is the third-largest area, at about 22 marks per session.

### 4b. By paper, per session

Paper 2 (70 marks to 2024, 100 marks from 2025):

| Topic | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ |
|---|---|---|---|---|---|---|---|---|---|
| Number | 19 | 18 | 13 | 18 | 20 | 12 | 15 | 24 | 19 |
| Algebra & graphs | 25 | 28 | 19 | 30 | 18 | 23 | 39 | 25 | 34 |
| Coordinate geometry | 0 | 0 | 7 | 0 | 2 | 5 | 0 | 11 | 4 |
| Geometry | 2 | 8 | 4 | 12 | 6 | 11 | 10 | 15 | 10 |
| Mensuration | 7 | 4 | 3 | 5 | 0 | 13 | 6 | 9 | 9 |
| Trigonometry | 5 | 0 | 5 | 0 | 7 | 0 | 4 | 8 | 2 |
| Transformations & vectors | 6 | 0 | 11 | 3 | 10 | 0 | 13 | 0 | 12 |
| Probability | 4 | 3 | 5 | 0 | 4 | 1 | 2 | 3 | 6 |
| Statistics | 2 | 9 | 3 | 2 | 3 | 5 | 11 | 5 | 4 |

Paper 4 (130 marks to 2024, 100 marks from 2025):

| Topic | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ |
|---|---|---|---|---|---|---|---|---|---|
| Number | 17 | 14 | 20 | 15 | 12 | 18 | 19 | 19 | 18 |
| Algebra & graphs | 36 | 43 | 42 | 31 | 43 | 47 | 33 | 34 | 37 |
| Coordinate geometry | 12 | 7 | 0 | 9 | 12 | 0 | 5 | 0 | 0 |
| Geometry | 17 | 0 | 19 | 7 | 10 | 9 | 12 | 5 | 6 |
| Mensuration | 9 | 10 | 13 | 10 | 21 | 5 | 5 | 4 | 5 |
| Trigonometry | 12 | 23 | 18 | 25 | 17 | 18 | 17 | 14 | 20 |
| Transformations & vectors | 9 | 18 | 0 | 13 | 0 | 13 | 0 | 12 | 2 |
| Probability | 6 | 6 | 4 | 9 | 3 | 10 | 9 | 3 | 0 |
| Statistics | 12 | 9 | 14 | 11 | 12 | 10 | 0 | 9 | 12 |

Topics such as transformations and vectors, coordinate geometry and statistics move between the two papers from session to session. When one paper is light on a topic, the other usually covers it.

### 4c. % share by paper, old format against new format

| Topic | P2 old (calc, 70) | **P2 new (non-calc, 100)** | P4 old (130) | **P4 new (100)** |
|---|---|---|---|---|
| Number | 23.8 | 19.3 | 12.3 | **18.7** |
| Algebra & graphs | 34.0 | 32.7 | 31.0 | 34.7 |
| Coordinate geometry | 3.3 | 5.0 | 5.1 | 1.7 |
| Geometry | 10.2 | 11.7 | 7.9 | 7.7 |
| Mensuration | 7.6 | 8.0 | 8.7 | **4.7** |
| Trigonometry | 4.0 | 4.7 | 14.5 | **17.0** |
| Transformations & vectors | 7.1 | 8.3 | 6.8 | 4.7 |
| Probability | 4.0 | 3.7 | 4.9 | 4.0 |
| Statistics | 5.7 | 6.7 | 8.7 | 7.0 |

## 5. Bankers — Extended subtopics in all 9 sessions

Average marks per session (P2 + P4) and the usual paper.

| Subtopic | Avg marks | Usually on | Typical style (own words) |
|---|---|---|---|
| Sine & cosine rules, ½ab sin C | **10.3** | P4 only (98 %) | A field or quadrilateral split by a diagonal: find a side, then an angle, then the area, then a shortest (perpendicular) distance or a bearing. 3–6 marks per part, often a "show that" first. |
| Surface area & volume | 9.9 | both | Compound solids (cone + hemisphere, cylinder + hemisphere), water depth after a solid is removed, density from volume, π-form answers on P2 |
| Functions | 7.0 | both | f(a), composite gf(x), inverse, solve an equation in f and g. Domain and range are new in 2025. |
| Averages & range | 6.7 | P4 | Estimated mean from a grouped table (4 marks), mode, median and range from a frequency table, IQR from a list |
| Expanding, factorising & simplifying | 6.2 | both | Expand three brackets (3 marks, almost every session), factorise by grouping, difference of two squares |
| Algebraic fractions | 6.0 | both | Write as a single fraction, simplify by factorising, solve an equation with fractions (5 marks) |
| Money & interest | 5.9 | P4 | Compound interest including finding the rate, simple interest, exchange rates, finance plans |
| Similarity & congruence | 5.2 | both | Missing side, then area or volume scale factor. Congruence proofs with a named criterion. |
| Circle theorems | 5.1 | both | Find 2–3 angles **with geometric reasons** (tangent–radius, same segment, cyclic quadrilateral, alternate segment) |
| Angles, parallel lines & polygons | 5.0 | both | Interior and exterior angles of regular polygons (find n), parallel lines, isosceles triangles |
| Combined events | 4.9 | P4 | Two items without replacement, "different colours" or "exactly one", tree diagrams |
| Sequences | 4.7 | P2 | nth term of linear, quadratic, geometric and cubic sequences; quadratic an² + bn + c (5 marks) |
| Percentages | 4.4 | P4 | Reverse percentage (original price), percentage change, successive changes |
| Fractions, decimals & recurring decimals | 4.2 | P2 | Fraction arithmetic **with all working shown** (mixed numbers); recurring decimal to fraction (3 marks) |
| Perpendicular lines & bisectors | 4.1 | both | Equation of the perpendicular bisector of AB, y = mx + c (4–5 marks) |
| Linear equations & forming equations | 3.8 | both | Form an equation from a context (ticket prices, perimeter), then solve |
| Direct & inverse proportion | 3.6 | P2 | y ∝ (x+1)², y ∝ 1/√x; "what happens when x is multiplied by …" |
| Limits of accuracy (bounds) | 3.1 | P4 | Upper or lower bound of a width, speed, density or perimeter |

**Near-bankers (8 of 9 sessions):**
- transformations (6.7 marks; missing only in Nov 2024 P22/P42);
- **differentiation** (6.1; missing only in Nov 2025);
- simultaneous equations, usually a linear–quadratic pair, 5–6 marks;
- quadratics;
- arcs and sectors (including sector → cone);
- vector geometry (position vector of an intersection point, 2–3 marks);
- 3D trigonometry (the angle between a diagonal and the base);
- histograms.

**Frequent (6–7 of 9):** trig graphs and equations (sketch sin or cos, solve), column vectors and magnitude, sets and Venn diagrams, algebraic indices, HCF/LCM, scale drawing and bearings. Then (6 of 9) graphs of functions (complete a table, plot, draw a tangent, solve with a line), inequality regions, cumulative frequency, length and midpoint, speed–time graphs, rearranging formulae and exponential growth and decay.

**Topic level:** all 9 topic areas appear in every session.

## 6. Rarely tested in the Extended sample (≤ 3 of 9 sessions)

- **Surds:** 3 sessions, **all new format** (P2: rationalise a denominator, expand (a + √b)(c + √d)). 4 marks per session since 2025, none before.
- **Scatter diagrams:** 2 sessions (Nov 2024 P2 and June 2026 P2: plot a point, correlation, line of best fit, estimate).
- **Sketching curves** as a separate skill (cubic with roots, sketch after differentiation): 3 sessions, all old format.
- Standard form, estimation to 1 s.f., calculator use, units (m² to cm²), types of number (natural, irrational, reciprocal), time: each worth ≤ 1 mark per session on average.
- **Constructions and loci:** once (June 2026 P4, ruler-and-compasses triangle). Geometrical terms and names of shapes: once (June 2025 P4: name the quadrilateral, name the solid from its net).
- **Conditional probability:** 5 sessions, but **none since 2025** in the sample.

## 7. Trends since the 2025 non-calculator change (Extended)

Per-session averages, old (6 sessions) against new (3 sessions):

| Subtopic | Old | New | Comment |
|---|---|---|---|
| Graphs of functions | 4.8 | **10.0** | Every new P4 has a cubic table + plot + "draw a suitable line to solve" (≈ 10 marks). P2 adds asymptotes and reading roots. |
| Surds | 0.0 | **4.0** | New, P2 only |
| Indices (numerical, fractional) | 0.5 | **3.7** | Non-calculator evaluation, e.g. 125^(2/3), 3² ÷ 3⁻², 27ⁿ = 9^x |
| Factors, primes, HCF/LCM | 1.7 | **3.7** | Prime factorisation in index form, smallest multiplier to make a cube |
| Algebraic fractions | 5.2 | 7.7 | Up |
| Simultaneous equations | 4.2 | 6.3 | Linear–quadratic on both papers (2 d.p. answers on P4) |
| Linear equations / forming | 3.2 | 5.0 | Up |
| Money & interest | 5.5 | 6.7 | Up (P4) |
| Surface area & volume | 11.3 | 7.0 | Down, partly because the papers lost 30 marks of long contexts |
| **Differentiation** | 7.3 | **3.7** | Down sharply, and absent from Nov 2025 |
| Cumulative frequency & box plots | 4.5 | 1.7 | Down (only June 2025) |
| Sets & Venn diagrams | 3.5 | 1.0 | Down |
| Conditional probability | 1.7 | 0.0 | Not seen since 2025 |
| Graphs in practical situations | 3.2 | 1.0 | Speed–time graphs less frequent |

What the change means:

1. **Number moves onto P4 and changes character on P2.** P4 Number rose from 12 % to 19 % (interest, reverse percentage, exponential depreciation, bounds). P2 Number is now non-calculator arithmetic: fractions, surds, fractional indices, recurring decimals, prime factors.
2. **Non-calculator P2 keeps "calculator-free" topics:** angles, circle theorems, transformations, vectors, sequences, Venn diagrams, exact trig values (tan 60°, cos 45°), arcs and volumes in terms of π, cubic graphs with exact roots, and completing the square with the turning point. Trigonometry on P2 is limited to exact values and solving sin x = k with a sketch.
3. **Trigonometry is concentrated on P4** (17 % of new P4). The sine/cosine/area field question is the single most reliable big-mark item.
4. **Style shift on P4.** There are fewer long themed questions and more stand-alone 2–6-mark items, so more subtopics are sampled each session. "Show that" parts stay common (forming a quadratic, showing an angle).
5. **Question styles new in 2025–26:** domain and range of a function; asymptotes of a reciprocal graph; "use the formula sheet" items (cone, sphere, sine and cosine rules given); finding the date or the number of days for exponential decay; the angle in a cube with no lengths given (P4 2025).
6. **Examiners' view of the change (June 2025):** most candidates "adapted well". Weaker candidates lost marks on basic arithmetic without a calculator, such as place-value slips when multiplying tens. Some converted exact answers like √3 to decimals unnecessarily.
7. **Grade boundaries did not drop.** The BY A\* stayed at 169–177 / 200 (see §10).

## 8. Core sample (P12 + P32: June 2023, June 2025, June 2026) — differences from Extended

| Topic | 23 P1 (56) | 23 P3 (104) | 25 P1 (80) | 25 P3 (80) | 26 P1 (80) | 26 P3 (80) | **Core %** | Extended %, same 3 sessions |
|---|---|---|---|---|---|---|---|---|
| Number | 22 | 24 | 28 | 26 | 24 | 28 | **31.7** | 17.3 |
| Algebra & graphs | 4 | 35 | 20 | 19 | 18 | 22 | 24.6 | 34.0 |
| Coordinate geometry | 0 | 4 | 1 | 2 | 4 | 0 | 2.3 | 2.7 |
| Geometry | 12 | 5 | 4 | 9 | 9 | 2 | 8.5 | 10.2 |
| Mensuration | 4 | 11 | 13 | 8 | 8 | 14 | **12.1** | 6.8 |
| Trigonometry | 6 | 0 | 0 | 5 | 0 | 6 | 3.5 | 11.0 |
| Transformations & vectors | 3 | 8 | 9 | 0 | 7 | 0 | 5.6 | 6.3 |
| Probability | 2 | 2 | 0 | 4 | 4 | 4 | 3.3 | 4.3 |
| Statistics | 3 | 15 | 5 | 7 | 6 | 4 | 8.3 | 7.3 |

- **Core is Number-heavy** (about one third): place value, rounding, fractions and percentages, money, time, ratio, HCF/LCM, standard form, bounds. It also has more **mensuration** (area of composite shapes, nets, cuboid volume, circumference, sphere surface area).
- **Core's top subtopics:**
  - graphs of functions (a quadratic table and plot, the line of symmetry and roots from the graph: about 10 marks in each new P1 or P3);
  - transformations;
  - area and perimeter;
  - sequences (including pattern diagrams);
  - fractions;
  - percentages;
  - linear equations.
- **Not in Core:** differentiation, functions notation, sine and cosine rules, 3D trigonometry, vector geometry, histograms, cumulative frequency, surds, algebraic fractions, and linear–quadratic simultaneous equations. Trigonometry is right-angled only (Pythagoras and SOHCAHTOA).
- **Format effect:** old P3 was 9 long themed questions (104 marks). The new P3 has 24–26 short questions (80 marks). The new non-calculator P1 is the paper with the most marks of 1 each (1.6–1.7 marks per part): brackets to make a calculation true, reciprocals, place value.
- **Examiner notes (June 2025 Core):** on P12, many candidates used long, inefficient written methods and ran short of time, with weak decimals, fractions, percentages and order of operations. On P32, they rounded too early and did not read the required answer form.

## 9. Common mistakes and hardest areas (examiner reports, P22/P42 sections)

Sources: Principal Examiner reports for June 2022, Nov 2022, June 2023, Nov 2023, June 2024 and June 2025.

**Named most often as weak areas:**
- **Geometric reasoning:** giving one reason when "reasons" are asked, informal wording, assuming an angle is 90° or that lines are parallel (2022, Nov 2023, 2025).
- **Bounds:** rounding the answer first and then applying bounds, or the wrong bound combination for a difference or quotient (June 2022, Nov 2023 P22).
- **Combined and conditional probability:** multiplying when they should add, ignoring the earlier branch (2025: 0.9 × 0.2 instead of using the weather branches), and missing the reduced denominator (Nov 2022, Nov 2023, June 2023).
- **Vectors and position vectors:** subtracting instead of adding routes, giving a displacement when a position vector is asked (2025 Q9, Q23), and finding an intersection by similar triangles (Nov 2022, Nov 2023, June 2024 Q24).
- **Sets and set notation:** shading or n( ) of compound regions (Nov 2023, June 2024 Q23).
- **Calculus:** finishing a stationary-point or tangent problem; differentiating dy/dx instead of y (June 2023, Nov 2023, June 2025 Q26).
- **Mensuration problem solving:** volume of cones, unit conversion of volumes, surface area of a compound solid where one face is hidden (June 2022, June 2023, June 2025 Q16).
- **Fractional indices:** applying the power to the letter only, e.g. (64u³⁶)^(1/6) (June 2023, June 2025 Q21).
- **Interquartile range, reverse percentage and exponential change** (Nov 2023).
- **Area and volume scale factors** (Nov 2023; June 2024 Q20: cube root of the volume ratio).
- **Algebra in context:** setting up an equation from words, e.g. time = distance ÷ speed with x and x + 1 (June 2025 P42 Q24), or successive 10 % increases (Q17b).
- **New in 2025:** asymptotes (Q15b, the most-omitted part), roots and turning points of a cubic, and domain/range (some read "range" as the statistical range).

**Recurring technical errors:**
- **Premature rounding** on calculator papers, mentioned in every P42 report. Keep 4+ s.f. and round only at the end. Two-significant-figure working does not imply a method.
- Answers not in the requested form: not in simplest form, π included or left out wrongly, a decimal given for an exact value, or 3 s.f. not used.
- "Show that" answers with skipped steps. Ignoring "by drawing a suitable line" or "you must show all your working" scores 0.
- More than one transformation given for "single transformation". Plotted points joined with straight lines instead of a smooth curve.
- Illegible digits (1/7, 4/9) and overwritten answers, mentioned in 2022, 2023 and 2025.
- On non-calculator papers, place-value slips (50 × 40 = 200) and decimals substituted for fractions.
- Misquoting formulas that are on the formula sheet (cone volume, cosine rule) in 2025.

## 10. Grade thresholds (raw marks)

### 10a. Extended options (max 200): A\* / A / B / C / D / E

| Session | BX (21 + 41) | **BY (22 + 42), main sample** | BZ (23 + 43) |
|---|---|---|---|
| June 2022 | 133 / 106 / 79 / 52 / 38 / 25 | 159 / 127 / 95 / 63 / 46 / 30 | 154 / 126 / 98 / 71 / 53 / 35 |
| Nov 2022 | 154 / 127 / 100 / 74 / 59 / 45 | 170 / 140 / 110 / 80 / 67 / 54 | 148 / 121 / 94 / 67 / 52 / 37 |
| June 2023 | 158 / 132 / 106 / 81 / 62 / 44 | 174 / 148 / 113 / 78 / 61 / 44 | 173 / 146 / 117 / 88 / 66 / 45 |
| Nov 2023 | 173 / 146 / 118 / 91 / 74 / 57 | 173 / 146 / 118 / 91 / 76 / 62 | 171 / 143 / 112 / 81 / 65 / 49 |
| June 2024 | 152 / 125 / 98 / 72 / 56 / 40 | 175 / 150 / 117 / 85 / 66 / 48 | 172 / 144 / 114 / 85 / 65 / 45 |
| Nov 2024 | 168 / 140 / 112 / 84 / 66 / 49 | **180 / 160 / 130 / 100** / 82 / 64 | 174 / 149 / 115 / 81 / 63 / 45 |
| June 2025 | 156 / 131 / 106 / 81 / 68 / 55 | 176 / 152 / 119 / 86 / 68 / 51 | 178 / 157 / 127 / 97 / 74 / 52 |
| Nov 2025 | 172 / 144 / 114 / 84 / 66 / 48 | 169 / 140 / 111 / 82 / 66 / 50 | 177 / 155 / 122 / 90 / 71 / 52 |
| June 2026 | 162 / 138 / 114 / 90 / 73 / 56 | 177 / 154 / 120 / 87 / 68 / 49 | 177 / 154 / 124 / 94 / 71 / 49 |

Component thresholds for the main sample (A / B / C):

| Session | P22 | P42 |
|---|---|---|
| June 2022 | 47 / 36 / 26 (of 70) | 80 / 59 / 37 (of 130) |
| Nov 2022 | 50 / 40 / 31 | 90 / 70 / 49 |
| June 2023 | 55 / 44 / 33 | 93 / 69 / 45 |
| Nov 2023 | 59 / 50 / 42 | 87 / 68 / 49 |
| June 2024 | 56 / 44 / 33 | 94 / 73 / 52 |
| Nov 2024 | 58 / 50 / 43 | 102 / 80 / 57 |
| June 2025 | 76 / 59 / 43 (of 100) | 76 / 60 / 43 (of 100) |
| Nov 2025 | 69 / 55 / 41 | 71 / 56 / 41 |
| June 2026 | 75 / 58 / 41 | 79 / 62 / 46 |

### 10b. Core options (max 160): C / D / E / F / G

| Session | AX (11 + 31) | **AY (12 + 32)** | AZ (13 + 33) |
|---|---|---|---|
| June 2022 | 73 / 58 / 44 / 30 / 16 | 79 / 63 / 48 / 33 / 18 | 80 / 67 / 54 / 41 / 28 |
| Nov 2022 | 82 / 65 / 48 / 32 / 16 | 105 / 86 / 68 / 50 / 32 | 85 / 67 / 50 / 33 / 16 |
| June 2023 | 71 / 58 / 46 / 35 / 24 | 94 / 76 / 59 / 43 / 27 | 84 / 70 / 56 / 43 / 30 |
| Nov 2023 | 91 / 74 / 57 / 40 / 23 | 109 / 90 / 71 / 52 / 33 | 90 / 73 / 57 / 41 / 25 |
| June 2024 | 77 / 63 / 50 / 36 / 22 | 89 / 72 / 55 / 38 / 21 | 93 / 79 / 65 / 51 / 37 |
| Nov 2024 | 88 / 70 / 53 / 35 / 17 | 103 / 87 / 72 / 57 / 42 | 108 / 90 / 73 / 56 / 39 |
| June 2025 | 86 / 72 / 59 / 46 / 33 | 86 / 68 / 51 / 34 / 17 | 92 / 77 / 62 / 48 / 34 |
| Nov 2025 | 92 / 76 / 60 / 44 / 28 | 89 / 73 / 58 / 43 / 28 | 112 / 96 / 80 / 64 / 48 |
| June 2026 | 82 / 68 / 55 / 42 / 29 | 83 / 67 / 52 / 37 / 22 | 83 / 69 / 55 / 42 / 29 |

Core component C thresholds: P12 was 29–40 / 56 up to 2024 and 42–44 / 80 from 2025. P32 was 50–72 / 104 up to 2024 and 41–45 / 80 from 2025.

**Reading the numbers:**
- For the main Extended option (BY), from 2023 onwards **A\* needs about 85–90 % (169–180 / 200), A about 70–80 %, B about 55–65 % and C about 39–50 %**. June 2022 was lower (post-pandemic grading), so do not use it as a target.
- In the new format the **non-calculator P22 has needed about the same marks as the calculator P42** (A: 76 v 76, 69 v 71, 75 v 79). Being non-calculator has not made P2 easier to score on, nor much harder.
- Core grade C needs about 52–68 % (83–109 / 160). Since 2025 it has been steadier, at 83–92 / 160.
- Variants differ by up to 20 marks in a session, so compare thresholds within the same option.

## 11. Revision priorities for Extended candidates (Nov 2026 / 2027, syllabus 2025–2027)

The order weighs average marks, how often a subtopic appears, the post-2025 trend, and the difficulty examiners flag.

1. **Graphs of functions and curves** (≈ 10 marks per session since 2025). Complete a table of a cubic, plot a smooth curve, draw a tangent and estimate its gradient, rearrange so that a straight line solves a new equation, and read off 3 roots. On P2: intercepts of a cubic as exact values, asymptotes of y = a/x + b, quadratic turning points by completing the square.
2. **Trigonometry on P4** (≈ 20 marks). Sine rule, cosine rule and ½ab sin C in a field or quadrilateral, the perpendicular (shortest) distance, bearings, right-angled and 3D work (the angle between a diagonal and a base, including in a cube with no lengths given). Keep 4+ s.f. On P2: exact values, and sketching sin and cos to solve sin x = k in 0–360°.
3. **Algebraic manipulation** (≈ 15 marks). Expand three brackets, factorise (grouping, difference of two squares, quadratics), single algebraic fractions, simplify by factorising, fractional indices on both the number and the letter.
4. **Equations** (≈ 15 marks). Form and solve linear equations from a context, linear–quadratic simultaneous equations (substitute, then factorise or use the formula to 2 d.p.), quadratics from an area or speed–time context ("show that … = 0").
5. **Functions** (≈ 7 marks). Composite and inverse functions, solving f(x) = g(x), and domain and range (new).
6. **Mensuration** (≈ 14 marks with arcs). Compound solids using the formula sheet, π-form answers on P2, a sector rolled into a cone, density and mass.
7. **Money, percentages and growth** (≈ 12 marks, P4). Compound interest including finding the rate or the number of years, reverse percentage, successive changes, exponential decay (the day or date when the value first drops below a level).
8. **Non-calculator number** (≈ 12–15 marks, P2). Fractions and mixed numbers with full working, recurring decimals, **surds** (rationalise, expand), fractional and negative indices, prime factors (HCF, LCM, smallest multiplier for a square or cube number), standard form arithmetic.
9. **Geometry with reasons** (≈ 15 marks). Circle theorems with every reason named, polygons (find n), similar triangles and area/volume scale factors, congruence criteria.
10. **Statistics** (≈ 15 marks). Grouped mean, histograms (frequency density both ways), cumulative frequency and box plots, scatter diagrams (now on P2).
11. **Probability** (≈ 9 marks). Without replacement, "exactly one" or "different colours", trees with linked events, Venn-based probability. Conditional probability has not appeared since 2025 but remains on the syllabus.
12. **Vectors and transformations** (≈ 13 marks). Describe single transformations fully, enlargement with a negative or fractional scale factor, reflection in y = x + c; vector routes, position vectors, collinearity.
13. **Coordinate geometry** (≈ 6 marks). Perpendicular bisector equations, midpoint and length (as a surd on P2).
14. **Differentiation** (≈ 4–6 marks). Fewer marks than before, but it was still in 2 of 3 new sessions: gradient at a point, stationary points and their nature, finding constants from dy/dx.
15. **Lower priority:** sets notation, bounds (but they still appear every session, 3 marks), proportion (≈ 3–4 marks, P2), sequences (still a banker at ≈ 4–5 marks: quadratic and geometric nth terms).

**Exam habits that are worth marks:**
- Practise **arithmetic without a calculator** under time pressure (place value, fractions, surds).
- Use the formula sheet.
- Never round mid-calculation.
- Give every geometric reason.
- Follow "by drawing", "show all your working" and "simplest form".
- Write digits clearly.

## 12. Comparison with O Level Mathematics D (4024)

Source: `4024-maths-d.md` (same 9 sessions, variant 2, 1,700–1,800 marks).

| | IGCSE 0580 Extended (22 + 42) | O Level 4024 (12 + 22) |
|---|---|---|
| Format from 2025 | P2 non-calculator 2 h / 100 + P4 calculator 2 h / 100 | P1 non-calculator 2 h / 100 + P2 calculator 2 h / 100 |
| Format before 2025 | Calculator only: P2 1 h 30 / 70 (short) + P4 2 h 30 / 130 (long) | P1 non-calculator 2 h / 80 + P2 calculator 2 h 30 / 100 (long) |
| Tiering | Core (max C) / Extended (A\*–E) | Single tier |
| Number | 17.2 % | 22.7 % |
| Algebra & graphs | **32.6 %** | 27.6 % |
| Number + Algebra | ≈ 50 % | ≈ 50 % |
| Trigonometry | **10.8 %** | 4.9 % |
| Geometry / Mensuration | 9.1 / 7.7 % | 9.8 / 8.4 % |
| Transformations & vectors | 6.8 % | 8.2 % (incl. matrices to 2024) |
| Statistics / Probability | 7.4 / 4.3 % | 9.6 / 4.2 % |
| A\* / A threshold (since 2023) | ≈ 169–180 / 140–160 of 200 | ≈ 169–176 / 139–152 of 200 |

- **Since 2025 the two qualifications have almost the same shape:** two 2-hour, 100-mark papers, one without a calculator, with a formula list in front. The 2025 change moved 0580 towards the 4024 model. Before that, 0580 had no non-calculator paper at all.
- **Content only in 0580:** differentiation (stationary points, tangents; ≈ 4–7 marks per session), function domain and range, more weight on trig graphs, 3D trigonometry and sine/cosine problems. **Content only in old 4024:** matrices (dropped in 2025).
- **Shared bankers:** graphs of functions with a line to solve; compound solids; vectors and position vectors; money and compound interest; sine/cosine rules; circle theorems with reasons; algebraic fractions; functions; perpendicular bisectors; bounds; Venn diagrams. A Pakistani student who revises the 4024 bankers covers most of the 0580 Extended bankers (my judgement, not a measured figure). For 0580 they should add calculus, function domain and range, and more trigonometry.
- **Shared new-format items since 2025:** surds and rationalising, fractional indices without a calculator, completing the square and the turning point, exponential growth and decay, and asymptotes and sketches.
- **Shared examiner complaints:** vectors, bounds, probability without replacement, geometric reasons, premature rounding, set notation.
- **Thresholds are similar.** A\* sits at about 85–90 % in both. O Level P2 (calculator) has had the higher A boundary since 2025. In 0580 the two papers are about level.

---
*Limitations:*
- The analysis uses one variant per session. Other variants were not tagged; the threshold differences show variants vary in difficulty.
- Tagging is judgement-based, one topic per part.
- Only 3 new-format sessions exist, so the post-2025 trends are provisional.
- Examiner reports are missing for Nov 2024, Nov 2025 and June 2026. The only new-format report is June 2025.
- The Core analysis covers 3 sessions only.
- The 2026 files come from a re-hosting site.
- Part labels in the CSV were checked against the mark schemes where the text extraction was ambiguous (e.g. 2024-MJ P42, 2024-ON P42). A few labels for 1-mark sub-parts may differ slightly from the printed paper, but marks and topics are unaffected.
