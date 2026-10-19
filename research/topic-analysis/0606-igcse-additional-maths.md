# Cambridge IGCSE Additional Mathematics (0606): topic analysis, 2022–2026

This analysis covers nine exam sessions, from May/June 2022 to May/June 2026. It uses the local question papers, mark schemes, examiner reports and grade threshold sheets. Every question part in the sample is tagged in `0606-questions.csv` (423 rows), which sits next to this file.

## Method and sample

- **Sessions:** 9 in total: May/June and Oct/Nov for 2022–2025, plus May/June 2026.
- **Sample:** variant 2 of both written papers (components 12 and 22) in every session. That makes 18 papers and 1,440 marks. Variant 2 exists in every session, so the sample is the same all the way through.
- **Marks:** read from the `[n]` brackets on each question paper. The parts of every paper add up to exactly 80, the total printed on its cover.
- **Same papers as O Level 4037:** I compared the text of every sampled 0606 paper with the 4037 paper of the same session and variant. All 18 pairs have the same questions, the same part structure and the same marks. The only differences are cover codes, bar codes and margin text. So this CSV uses the same topic and subtopic names as `4037-questions.csv`, and its rows line up one-to-one with it. I re-checked every tag against the 0606 question text before reusing it.
- **Classification:** each part goes under **one** topic, the skill that earns most of its marks. For example, finding where a normal meets a curve again counts as *Factors of polynomials* (solving a cubic). A log-linear graph (lg y against x²) counts as *Straight-line graphs*. A partial-fraction "show that" that leads into an integral counts as *Integration*. Treat the figures as good estimates, accurate to about ±3 marks per topic per paper.
- **Topic names** follow the syllabus. The one change: the big syllabus topic *Differentiation and integration* is split into Differentiation, Integration and Kinematics so you can see the weight of each.
- **Examiner reports** exist locally for June 2022, Nov 2022, June 2023 and June 2025. The June 2025 report is the first one on the new non-calculator Paper 1.
- **Grade thresholds** exist for all 9 sessions. The 0606 thresholds for components 12 and 22 are the same numbers as the 4037 ones in every session.
- **Not analysed:** component 50 (90 marks). It appears on the June 2022 and June 2026 threshold sheets, but there is no question paper for it in the folder.
- **Caveat:** one variant per session is only a sample. Variants 1 and 3 have different questions, so a topic that is "missing" from one session may simply have been in another variant. The June 2026 files are PapaCambridge copies with trace IDs. Their content and mark totals check out.

## 1. Paper structure

| | 2022 – Nov 2024 | From 2025 (2025–2027 syllabus) |
|---|---|---|
| Paper 1 | 2 hours, 80 marks, calculator allowed. A few questions said "do not use a calculator in this question". | **"Paper 1 Non-calculator"**, 2 hours, 80 marks. No calculator for the whole paper. |
| Paper 2 | 2 hours, 80 marks, calculator allowed | 2 hours, 80 marks, scientific calculator allowed |
| Formula list | Quadratic formula, binomial theorem, AP and GP sums, trig identities, sine and cosine rules, triangle area | The same, **plus** the equation of a circle, the curved surface area of a cone, the surface area of a sphere, and the volumes of a cone/pyramid and of a sphere |
| Overall | 160 raw marks, and the two papers count equally | 160 raw marks |

- Every question is compulsory, and you write your answers on the question paper.
- Each paper has 10–13 questions and 18–29 marked parts. The average part is worth about 3.4 marks.
- Most papers have at least one long question of 8–13 marks. These are usually an area, a binomial expansion or a tangent/normal problem.
- Variants: May/June uses 11/21, 12/22 and 13/23, and so does Oct/Nov. Your time zone decides which variant you sit. Grades are A* to E.
- **What changed in 2025:** Paper 1 became fully non-calculator, and *Coordinate geometry of the circle* was added to the syllabus. The time and marks stayed the same.

## 2. Topic weights

This is the share of the 1,440 sampled marks. "Sessions" counts how many of the 9 sessions had marks for the topic in the sample.

| Topic | Share of marks | Sessions examined | Where it usually sits |
|---|---:|---|---|
| Differentiation | 13.4 % | 9 / 9 | mostly Paper 2 (122 of 193 marks) |
| Series (binomial, AP, GP) | 12.9 % | 9 / 9 | both papers |
| Integration | 10.5 % | 9 / 9 | both papers |
| Trigonometry | 9.5 % | 9 / 9 | both papers |
| Straight-line graphs (incl. log-linear) | 6.1 % | 8 / 9 | both papers |
| Vectors in two dimensions | 6.0 % | 9 / 9 | both papers |
| Functions | 6.0 % | 8 / 9 | mostly Paper 1 (57 of 86) |
| Permutations and combinations | 5.3 % | 9 / 9 | both papers |
| Factors of polynomials | 4.9 % | 9 / 9 | both papers |
| Circular measure | 4.7 % | 9 / 9 | mostly Paper 1 (53 of 68) |
| Logarithmic and exponential functions | 4.6 % | 8 / 9 | both papers |
| Equations, inequalities and graphs | 4.5 % | 9 / 9 | both papers |
| Kinematics | 3.8 % | 7 / 9 | mostly Paper 2 (38 of 55) |
| Indices and surds | 3.3 % | 6 / 9 (none since 2025) | both papers |
| Quadratic functions | 2.4 % | 7 / 9 | mostly Paper 2 |
| Coordinate geometry of the circle | 1.5 % | 3 / 3 since it was added | both papers |
| Simultaneous equations (stand-alone) | 0.6 % | 2 / 9 | Paper 2 |

Marks per session (Papers 12 + 22, out of 160). J = May/June, N = Oct/Nov.

| Topic | 22 J | 22 N | 23 J | 23 N | 24 J | 24 N | 25 J | 25 N | 26 J | Total |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Differentiation | 25 | 16 | 30 | 15 | 20 | 41 | 21 | 9 | 16 | 193 |
| Series | 21 | 25 | 22 | 17 | 20 | 16 | 25 | 19 | 21 | 186 |
| Integration | 24 | 9 | 13 | 11 | 19 | 12 | 19 | 30 | 14 | 151 |
| Trigonometry | 12 | 27 | 10 | 20 | 13 | 14 | 13 | 14 | 14 | 137 |
| Straight-line graphs | 7 | 12 | 9 | 12 | 20 | 0 | 6 | 13 | 9 | 88 |
| Vectors in two dimensions | 12 | 8 | 8 | 9 | 10 | 9 | 9 | 8 | 14 | 87 |
| Functions | 0 | 10 | 10 | 10 | 8 | 13 | 12 | 11 | 12 | 86 |
| Permutations and combinations | 7 | 9 | 8 | 8 | 10 | 8 | 8 | 8 | 10 | 76 |
| Factors of polynomials | 5 | 5 | 8 | 15 | 5 | 8 | 10 | 7 | 7 | 70 |
| Circular measure | 7 | 7 | 7 | 7 | 9 | 7 | 8 | 8 | 8 | 68 |
| Logarithmic and exponential functions | 13 | 9 | 6 | 9 | 3 | 8 | 0 | 11 | 7 | 66 |
| Equations, inequalities and graphs | 5 | 4 | 7 | 5 | 6 | 10 | 11 | 10 | 7 | 65 |
| Kinematics | 11 | 6 | 6 | 9 | 0 | 6 | 10 | 0 | 7 | 55 |
| Indices and surds | 6 | 4 | 9 | 8 | 13 | 8 | 0 | 0 | 0 | 48 |
| Quadratic functions | 5 | 4 | 7 | 5 | 4 | 0 | 0 | 4 | 5 | 34 |
| Coordinate geometry of the circle | – | – | – | – | – | – | 8 | 4 | 9 | 21 |
| Simultaneous equations | 0 | 5 | 0 | 0 | 0 | 0 | 0 | 4 | 0 | 9 |

Calculus (differentiation, integration and kinematics together) is worth about **28 %** of the marks. Add series and trigonometry, and you have just over half the exam.

## 3. Bankers

These earned marks in every session of the sample, or in almost every one:

- **Binomial expansion** (9/9, about 8 marks per session). Typical tasks: the first three terms, finding unknown constants or n, the term independent of x, and products of two brackets.
- **Arithmetic and geometric progressions** (9/9). The terms are often built from logs or trig, for example lg x, lg x⁵, lg x⁹, or a GP in sin θ where you find the angles that give a sum to infinity.
- **Trigonometric equations** (9/9). These use sec, cosec, cot or tan with compound angles, in degrees or radians, and are often 5–6 marks each.
- **Trig identities** (9/9): a short "show that", usually followed by "hence solve".
- **Circular measure** (9/9, 7–9 marks): a radian diagram where you find a perimeter and an area. It is almost always on Paper 1.
- **Permutations and combinations** (9/9, about 8 marks): digit or password counts with conditions, and committees or teams with "at least" or "must not be separated" conditions.
- **Factor and remainder theorems with a cubic** (9/9): find the constants, factorise fully, then solve a related equation (in eˣ, u², sin θ and so on).
- **Vectors** (9/9): either ratio geometry (find m and n), or position and velocity vectors (show that two particles collide, or never collide).
- **Differentiation:** tangents and normals (8/9), the chain, product and quotient rules (8/9), and small changes or connected rates of change (6/9).
- **Area between a curve and a line** (7/9, usually 8–11 marks). This is often the biggest single question on the paper.
- **Functions** (8/9): least value of a for an inverse to exist, range, f⁻¹(x), and sketching f with f⁻¹. The function is often a log, such as 2 ln(3x − 4), or a quadratic on a restricted domain.
- **Modulus and cubic graphs and inequalities** (9/9): sketch with intercepts, then read off an inequality or a value of k.

## 4. Rarely tested

- **Simultaneous equations** as a question of their own (2 of 9 sessions). You still use the skill inside line-and-curve questions all the time.
- **Practical maximum and minimum problems** (a solid object or an open tank): only in 2022-N and 2024-N, but worth 6–10 marks when they come up.
- **Sine and cosine rules with exact values:** only 2022-N, but that was a single 11-mark question.
- **Sketching eˣ or ln x graphs on their own,** with an asymptote: 2 sessions.
- **Quadratic inequalities** on their own: 1 session. Completing the square and the discriminant appear in 4 sessions each.
- **Kinematics** was missing from the sampled variant in 2024-J and 2025-N. It is still on most papers, so don't drop it.
- **Indefinite integration** on its own is rare. It is usually part of a longer question.

## 5. Trends

- **Paper 1 has no calculator at all from 2025.** The topics are the same, but answers are exact: surds, multiples of π, ln forms and fractions. The 2025 examiner report praises candidates who **simplify numbers early**, for example by dividing out common factors, instead of multiplying out large numbers.
- **Circle geometry is new and already regular:** 8, 4 and 9 marks in the three new-syllabus sessions. The tasks so far: show that a line is a tangent (with the discriminant), find the point of contact, find a circle through three points (with right-angle gradients), and a common chord of two circles (9 marks in 2026-J).
- **Indices and surds have disappeared as stand-alone questions** since 2025 (before that, 4–13 marks per session). You still need the skills, especially on the non-calculator paper.
- **Integration has grown.** Area questions of 10–11 marks appeared in every session from 2025. 2025-N had an 11-mark question that rebuilt a curve from its gradient information. "Differentiate, then hence integrate" pairs are common.
- **Short ⁿCᵣ algebra** (solve an equation in n, or prove an identity) is new: it appeared in all three sessions from 2025.
- **The share of Functions is rising** (about 5 % in 2022–23, about 7 % in 2025–26), and so is the share of modulus and cubic graphs.
- **Differentiation swings a lot** (9 to 41 marks per session), and integration and series fill the gap. Revise all three.
- **Grade thresholds have risen.** The overall A for 12 + 22 went from 90/160 (June 2022) to 115–117/160 (June 2025 and June 2026). The papers have not become easier, so careless lost marks now cost you more.

## 6. Question styles

- **Find** is by far the most common command (about 200 times in 18 papers). Then come **Solve** (about 40), **Show that** (about 30), **Hence** (about 27) and **Write down** (about 19).
- **Exact answers** are asked for about 57 times, as "exact value", "in exact form", "in the form a + b√c", "in terms of π" or "in the form ln p". A rounded decimal normally loses the last mark.
- **Sketch / draw … stating the intercepts** (about 27 times): cubics, modulus graphs, trig graphs, log and exponential graphs, f with f⁻¹, and displacement, velocity and acceleration graphs.
- **"Hence"** means you must use the previous part. A different method may score nothing.
- **"Show that"** gives you the answer, so every step has to be on the page.
- **Linked chains of parts:** constants → factors → a related equation; dy/dx → stationary points → their nature; f → range → f⁻¹ → sketch.
- **Typical contexts:** a particle moving in a straight line, boats or particles with i/j vectors, passwords and digit codes, teams and committees, and badges or shaded regions in radians.
- **Long questions with no hints** (7–11 marks in one part): area, binomial and normal-line problems. Plan the route before you start writing.

## 7. Common mistakes

From the examiner reports for June 2022, Nov 2022, June 2023 and June 2025 (papers 12 and 22):

- **Missing working.** This covers no-calculator questions, quadratics or integrals solved on a calculator, and "show that" steps that are skipped. Wrong answers with no method shown get no marks.
- **Not simplifying on the non-calculator paper** (June 2025). Candidates multiplied out large numbers, then could not take square roots or finish a GP. Cancel common factors first.
- **Rejecting a valid root.** Examples: throwing away a negative solution when using a substitution, or discarding the negative value of r in a sum to infinity. A rejected answer cannot score, so check before you cross it out.
- **Sketches with missing details:** no intercepts, decimals where exact intercepts were asked for, curves bending the wrong way, curves with no asymptote, or f and f⁻¹ graphs that do not meet when the question says they do.
- **Trig graphs:** working out b (the period) wrongly from the diagram, and forgetting values such as cos π = −1.
- **Notation:** confusing p′(−1) with p(−1); writing ambiguous products such as sec²x e⁴ˣ; using dy/dx when the variables are S and r.
- **Log laws misused,** for example treating log(x − y) as a quotient of logs, or getting the change of base wrong.
- **Remainder theorem:** not seeing that "divided by x" means substituting x = 0.
- **Calculus slips:** a missing chain-rule factor, differentiating a function that was already the gradient (June 2025), and making simple derivatives harder by not simplifying first.
- **Circle questions** (June 2025): rearranging the circle equation and getting stuck, when the quick route was to substitute the line and use the discriminant.
- **Brackets and signs,** especially when subtracting expressions or raising a whole term to a power in a GP.
- **Untidy work,** such as writing over pencil in pen. This leads to miscopied numbers.

## 8. Grade thresholds

These are minimum raw marks. The components are out of 80. The option is 12 + 22 (option AY up to 2025), out of 160.

| Session | Paper 12: A / C / E | Paper 22: A / C / E | 12 + 22 (out of 160): A* / A / B / C / D / E |
|---|---|---|---|
| 2022 MJ | 48 / 17 / 8 | 42 / 17 / 8 | 118 / 90 / 62 / 34 / 25 / 16 |
| 2022 ON | 50 / 18 / 9 | 51 / 18 / 8 | 130 / 101 / 68 / 36 / 26 / 17 |
| 2023 MJ | 53 / 21 / 9 | 50 / 20 / 10 | 131 / 103 / 72 / 41 / 30 / 19 |
| 2023 ON | 62 / 26 / 14 | 64 / 23 / 12 | 143 / 126 / 87 / 49 / 37 / 26 |
| 2024 MJ | 53 / 25 / 13 | 57 / 31 / 19 | 135 / 110 / 83 / 56 / 44 / 32 |
| 2024 ON | 58 / 20 / 10 | 52 / 17 / 9 | 135 / 110 / 73 / 37 / 28 / 19 |
| 2025 MJ | 60 / 30 / 17 | 55 / 29 / 16 | 137 / 115 / 87 / 59 / 46 / 33 |
| 2025 ON | 57 / 20 / 11 | 56 / 19 / 9 | 136 / 113 / 76 / 39 / 29 / 20 |
| 2026 MJ | 61 / 31 / 18 | 56 / 28 / 15 | 138 / 117 / 88 / 59 / 46 / 33 |

- An overall A has needed between 90 and 126 out of 160 (**56–79 %**); since 2023 it has been 103–126 (64–79 %). An A* needs 118–143 (74–89 %). A C ranges widely, from 34 to 59 out of 160.
- Thresholds for the 11/21 and 13/23 routes are close to these but not the same. For example, in June 2026 the A for 11 + 21 was 122/160.

## 9. Revision priorities for Oct/Nov 2026 and 2027

1. **Calculus (about 28 %).** Be quick and accurate with the chain, product and quotient rules (including ln, eˣ and trig). Practise tangents and normals with exact coordinates, small changes and connected rates, and stationary points with the second-derivative test. Then do area between a curve and a line with exact answers, rebuilding a curve from its gradient, and "differentiate, then hence integrate".
2. **Series (about 13 %).** Binomial terms, including the term independent of x and products of two brackets. APs and GPs with log or trig terms, and the condition |r| < 1 for a sum to infinity.
3. **Trigonometry (about 10 %).** Equations in sec, cosec and cot with compound angles, in degrees and in radians. Identity proofs. Finding a, b and c from a graph, plus amplitude and period.
4. **Non-calculator skill for Paper 1.** Practise surds, exact trig values, ln forms, fractions, cubics by the factor theorem and quadratics by hand. Simplify early. Do at least a few full Paper 1s from 2025–2026 without a calculator.
5. **The circle topic.** Completing the square for the centre and radius, tangent tests with the discriminant, the point of contact, circles through three points, and common chords.
6. **Steady mid-weight marks.** Functions (domain, range, inverse, composites, f and f⁻¹ sketches), radian sectors, vector ratio and collision problems, permutations and combinations (including ⁿCᵣ algebra), log-linear graphs, and modulus equations and inequalities.
7. **Keep these warm.** Kinematics graphs, practical max/min, completing the square and quadratic inequalities, and simultaneous line-curve equations.
8. **Exam habits.** Give intercepts on every sketch, exact forms when asked, and full steps in "show that". Use "hence" when told to. Don't reject roots without a reason, and watch your brackets.

## Comparison with O Level Additional Mathematics (4037)

- **Same exam papers.** In this sample, every 0606 paper (variants 12 and 22, June 2022 to June 2026) is word-for-word the same as the 4037 paper with the same code. The only differences are the cover, the bar codes and the margins. Both syllabuses made the same 2025 changes: a non-calculator Paper 1 and the new circle topic.
- **Same topic weights.** The CSV rows line up one-to-one with `4037-questions.csv`, so every share and banker in this report also holds for 4037. See `4037-additional-maths.md`.
- **Same grade thresholds** for components 12 and 22 and for the 12 + 22 combination in every session from 2022 to 2026.
- **Differences:**
  - 0606 is an IGCSE, graded A*–E.
  - 0606 has three variants in both series (11/21, 12/22, 13/23). The local 4037 folder has two per series.
  - The local 0606 folder also has the **June 2025 examiner report**, the first comments on the non-calculator paper. Its advice (simplify early, don't reject valid roots, read circle questions carefully) applies equally to 4037 candidates.
- **In practice:** 0606 and 4037 past papers are the same practice material. A student preparing for either can use both sets, but the same session's paper will be a repeat, not new practice.
