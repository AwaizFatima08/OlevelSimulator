# Cambridge International AS & A Level Mathematics (9709): topic-frequency analysis, 2022–2026

Built from local files only (question papers, mark schemes, examiner reports, grade thresholds) in `papers/a-level/mathematics-9709/`. The tagging data is in `9709-questions.csv`, next to this file.

## 1. Method and sample

- **Sample:** variant 2 of each paper. P1, P3, P4 and P5 for all 9 sessions (June and November 2022–2025, June 2026), which is 36 papers. P2 and P6 for 5 sessions only (J23, N23, J25, N25, J26), 10 papers, as a lighter check. In total 828 question parts.
- **Tagging:** I tagged every question part by hand, using one main topic and one subtopic from the 9709 syllabus. When a part mixes topics (for example a normal to a curve that also needs a perpendicular bisector), it goes under the topic that carries most of the marks. Marks come from the `[n]` brackets in the question paper. Question and part labels come from the mark scheme, checked by hand where the two did not match.
- **Mark check:** every paper adds up to its cover total (75 for P1 and P3, 50 for P2, P4, P5 and P6). All 46 papers pass.
- **Labels in tables:** J = May/June, N = Oct/Nov, so J22 is June 2022. "2022–23" means the four sessions from J22 to N23, and "2025–26" means J25, N25 and J26. For P2 and P6 the early column is 2023 only.
- **Caveats.** One variant per session is a sample. Variants 1 and 3 of the same session contain different questions. With 9 sessions, a topic that is "missing" once may simply have fallen into another variant. The June 2026 files are copies with PapaCambridge trace IDs, not direct Cambridge downloads. Their content and mark totals check out. An earlier project note (`research/04-app-groundwork.md`) records a press report that an AS 9709 paper leaked in May 2026 and that Cambridge replaced it. The local files do not show which component was affected.

## 2. Paper structure (checked against the cover pages)

| Paper | Title | Time | Marks | Questions (v2) | Parts (v2) |
|---|---|---|---:|---|---|
| P1 (9709/1x) | Pure Mathematics 1 | 1 h 50 min | 75 | 10–11 | 19–27 |
| P2 (9709/2x) | Pure Mathematics 2 (AS only, an alternative to P3 at AS) | 1 h 15 min | 50 | 7–8 | 12–16 |
| P3 (9709/3x) | Pure Mathematics 3 | 1 h 50 min | 75 | 10–11 | 19–22 |
| P4 (9709/4x) | Mechanics | 1 h 15 min | 50 | 7 | 11–15 |
| P5 (9709/5x) | Probability & Statistics 1 | 1 h 15 min | 50 | 6–7 | 16–19 |
| P6 (9709/6x) | Probability & Statistics 2 | 1 h 15 min | 50 | 6–8 | 15–19 |

All questions are compulsory, and answers are written in the booklet. Calculators are allowed, and the MF19 formula list is provided. The last digit of the code is the variant (time zone). Raw marks add straight to 250 for A Level (P1 75 + P3 75 + two 50-mark papers) and to 125 for AS (P1 + one of P2/P4/P5).

**Common routes:**
- AS: P1 + P2, P1 + P4 or P1 + P5.
- A Level: P1 + P3 + P4 + P5 (option letter A), or P1 + P3 + P5 + P6 (option letter C).
- Staged A Level: P3 + two papers + a carried-forward AS result. Codes 8x and 9x in the threshold tables are carried-forward results.

**The new variant 5 (from June 2025).** Every paper gains a `x5` version: 15, 25, 35, 45, 55, 65. What the local files show:
- The cover pages carry the same title, time and mark total as the other variants. The cover does not say which zone variant 5 is for.
- It is a separate paper, not a copy. In June 2025 the P1 variants have different question and mark patterns: variant 5 has 21 marked parts against 24 for variant 2.
- It has its own component thresholds and its own option codes. A Level uses **AC** (15/35/45/55) and **CC** (15/35/55/65), staged uses DN/EN/GN/HN/IN/KN, and AS uses **SA** (15/25), **SB** (15/45) and **SC** (15/55).
- In short, variant 5 is a fourth time-zone variant added in 2025 with its own grade boundaries. Its boundaries sit slightly above the variant 1 and 2 levels (AC grade A 201–204/250 in J25–J26, against 197–198 for AX and 178–198 for AY). Your school can confirm which zone it serves; the local files do not say.

## 3. Topic weights per component (variant 2, raw marks)

### P1 Pure Mathematics 1 (9 papers, 675 marks)

| Topic | J22 | N22 | J23 | N23 | J24 | N24 | J25 | N25 | J26 | Total | Share | 2022–23 | 2025–26 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Series | 13 | 9 | 12 | 10 | 12 | 11 | 14 | 14 | 17 | 112 | 16.6% | 15% | 20% |
| Functions | 7 | 13 | 12 | 14 | 12 | 10 | 11 | 9 | 13 | 101 | 15.0% | 15% | 15% |
| Differentiation | 13 | 6 | 8 | 9 | 18 | 11 | 11 | 8 | 7 | 91 | 13.5% | 12% | 12% |
| Coordinate geometry | 8 | 6 | 13 | 10 | 8 | 10 | 3 | 11 | 17 | 86 | 12.7% | 12% | 14% |
| Integration | 9 | 9 | 7 | 9 | 9 | 9 | 12 | 10 | 11 | 85 | 12.6% | 11% | 15% |
| Trigonometry | 10 | 10 | 11 | 11 | 6 | 5 | 12 | 9 | 4 | 78 | 11.6% | 14% | 11% |
| Quadratics | 9 | 14 | 6 | 6 | 0 | 13 | 6 | 5 | 6 | 65 | 9.6% | 12% | 8% |
| Circular measure | 6 | 8 | 6 | 6 | 10 | 6 | 6 | 9 | 0 | 57 | 8.4% | 9% | 7% |

- P1 is very even: no topic goes above 17%. Series (binomial expansion plus AP/GP) and Functions together are almost a third.
- Every topic appears in at least 8 of 9 sessions. Quadratics got no part of its own in J24, and circular measure was missing in J26.

### P3 Pure Mathematics 3 (9 papers, 675 marks)

| Topic | J22 | N22 | J23 | N23 | J24 | N24 | J25 | N25 | J26 | Total | Share | 2022–23 | 2025–26 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Differentiation | 15 | 7 | 14 | 9 | 12 | 13 | 6 | 8 | 18 | 102 | 15.1% | 15% | 14% |
| Integration | 5 | 13 | 10 | 10 | 11 | 9 | 11 | 15 | 6 | 90 | 13.3% | 13% | 14% |
| Vectors | 10 | 8 | 9 | 9 | 12 | 11 | 9 | 9 | 12 | 89 | 13.2% | 12% | 13% |
| Complex numbers | 11 | 8 | 10 | 13 | 10 | 9 | 10 | 5 | 9 | 85 | 12.6% | 14% | 11% |
| Algebra | 10 | 11 | 9 | 10 | 8 | 7 | 7 | 15 | 7 | 84 | 12.4% | 13% | 13% |
| Differential equations | 8 | 7 | 8 | 9 | 8 | 10 | 7 | 9 | 7 | 73 | 10.8% | 11% | 10% |
| Numerical solution of equations | 7 | 9 | 7 | 7 | 6 | 3 | 7 | 7 | 9 | 62 | 9.2% | 10% | 10% |
| Trigonometry | 5 | 8 | 5 | 8 | 3 | 6 | 13 | 3 | 3 | 54 | 8.0% | 9% | 8% |
| Logarithms & exponentials | 4 | 4 | 3 | 0 | 5 | 7 | 5 | 4 | 4 | 36 | 5.3% | 4% | 6% |

- Calculus dominates: differentiation, integration and differential equations add up to **39%**. Vectors and complex numbers are about 13% each, usually as two of the last long questions, worth 5–13 marks per paper.
- Logarithms are the smallest topic (about 5%), but a short log/exponential equation opens most papers. Logs were absent only in N23.

### P4 Mechanics (9 papers, 450 marks)

| Topic | J22 | N22 | J23 | N23 | J24 | N24 | J25 | N25 | J26 | Total | Share | 2022–23 | 2025–26 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Kinematics | 18 | 12 | 11 | 18 | 5 | 19 | 20 | 17 | 15 | 135 | 30.0% | 30% | 35% |
| Newton's laws of motion | 7 | 11 | 13 | 4 | 5 | 11 | 12 | 11 | 20 | 94 | 20.9% | 18% | 29% |
| Energy, work & power | 8 | 9 | 10 | 13 | 15 | 9 | 10 | 6 | 11 | 91 | 20.2% | 20% | 18% |
| Forces & equilibrium | 12 | 9 | 12 | 13 | 14 | 6 | 4 | 11 | 0 | 81 | 18.0% | 23% | 10% |
| Momentum | 5 | 9 | 4 | 2 | 11 | 5 | 4 | 5 | 4 | 49 | 10.9% | 10% | 9% |

- Kinematics is the largest topic (30%), mostly variable acceleration with calculus. Newton's laws, energy and forces share most of the rest. Momentum is a small question worth 2–11 marks, sometimes a collision followed by later motion.

### P5 Probability & Statistics 1 (9 papers, 450 marks)

| Topic | J22 | N22 | J23 | N23 | J24 | N24 | J25 | N25 | J26 | Total | Share | 2022–23 | 2025–26 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Normal distribution | 12 | 13 | 12 | 13 | 11 | 12 | 14 | 12 | 14 | 113 | 25.1% | 25% | 27% |
| Permutations & combinations | 10 | 10 | 10 | 10 | 10 | 10 | 9 | 10 | 10 | 89 | 19.8% | 20% | 19% |
| Representation of data | 10 | 7 | 7 | 8 | 7 | 10 | 10 | 7 | 8 | 74 | 16.4% | 16% | 17% |
| Probability | 9 | 12 | 6 | 9 | 7 | 3 | 8 | 7 | 7 | 68 | 15.1% | 18% | 15% |
| Binomial & geometric distributions | 3 | 5 | 6 | 5 | 8 | 9 | 9 | 7 | 8 | 60 | 13.3% | 10% | 16% |
| Discrete random variables | 6 | 3 | 9 | 5 | 7 | 6 | 0 | 7 | 3 | 46 | 10.2% | 12% | 7% |

- Permutations and combinations get **exactly 10 marks in 8 of 9 sessions** (9 in J25).
- The normal distribution is the largest topic at a quarter of the paper, including a 5-mark normal approximation to the binomial in every session.

### P2 Pure Mathematics 2 (5 papers, 250 marks; summary)

| Topic | J23 | N23 | J25 | N25 | J26 | Total | Share | 2023 | 2025–26 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Differentiation | 16 | 7 | 11 | 13 | 15 | 62 | 24.8% | 23% | 26% |
| Integration | 9 | 13 | 7 | 10 | 11 | 50 | 20.0% | 22% | 19% |
| Trigonometry | 11 | 11 | 13 | 5 | 4 | 44 | 17.6% | 22% | 15% |
| Algebra | 2 | 11 | 12 | 10 | 6 | 41 | 16.4% | 13% | 19% |
| Numerical solution of equations | 7 | 5 | 4 | 5 | 6 | 27 | 10.8% | 12% | 10% |
| Logarithms & exponentials | 5 | 3 | 3 | 7 | 8 | 26 | 10.4% | 8% | 12% |

- P2 is the AS-only alternative to P3, covering the P3 topics minus vectors, complex numbers and differential equations. Calculus is 45% of it. A polynomial factor/remainder question, a sec/cosec/cot equation and an iteration appear in every paper; a modulus inequality in 4 of 5.

### P6 Probability & Statistics 2 (5 papers, 250 marks; summary)

| Topic | J23 | N23 | J25 | N25 | J26 | Total | Share | 2023 | 2025–26 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Hypothesis testing | 10 | 13 | 14 | 19 | 14 | 70 | 28.0% | 23% | 31% |
| Poisson distribution | 15 | 15 | 14 | 8 | 10 | 62 | 24.8% | 30% | 21% |
| Continuous random variables | 8 | 9 | 9 | 9 | 10 | 45 | 18.0% | 17% | 19% |
| Sampling & estimation | 6 | 6 | 8 | 8 | 11 | 39 | 15.6% | 12% | 18% |
| Linear combinations of random variables | 11 | 7 | 5 | 6 | 5 | 34 | 13.6% | 18% | 11% |

- Hypothesis testing (binomial, Poisson and normal mean, plus Type I and Type II errors) is the largest block at 28%. It grew from 23% in 2023 to 31% in 2025–26, while Poisson questions as such shrank.

## 4. Bankers: subtopics tested in (almost) every session

**P1** (in 8 or 9 of 9 sessions):

| Subtopic | Topic | Sessions | Marks |
|---|---|---:|---:|
| Curve from gradient | Integration | 9/9 | 41 |
| Inverse function | Functions | 9/9 | 30 |
| Arc length & sector area | Circular measure | 8/9 (not J26) | 57 |
| Geometric progression | Series | 8/9 (not N24) | 43 |
| Binomial expansion | Series | 8/9 (not N22) | 35 |
| Tangents & normals | Differentiation | 8/9 (not N22) | 33 |

Close behind, in 7 of 9 sessions: trig equations, transformations of graphs, AP, stationary points, composite functions, domain/range.

**P3:**

| Subtopic | Topic | Sessions | Marks |
|---|---|---:|---:|
| Separable differential equation | Differential equations | 9/9 | 66 |
| Iteration | Numerical solution of equations | 9/9 | 30 |
| Locating a root (graphs/sign change) | Numerical solution of equations | 9/9 | 28 |
| Stationary points (product/chain/quotient) | Differentiation | 8/9 (not N25) | 45 |

In 7 of 9 sessions: trig equations with double angles, and log/exponential equations. In 6 of 9: partial fractions, Argand loci, vector lines, scalar product. Vectors, complex numbers, differential equations and numerical methods each appear in **all 9** papers at topic level.

**P4:**

| Subtopic | Topic | Sessions | Marks |
|---|---|---:|---:|
| Variable acceleration (calculus) | Kinematics | 9/9 | 85 |
| Work-energy principle | Energy, work & power | 9/9 | 53 |
| Power & driving force | Energy, work & power | 8/9 (not J25) | 34 |

At topic level, kinematics, Newton's laws, energy and momentum appear in all 9 papers. Forces & equilibrium is in 8 of 9: it had no separate question in J26, because its friction-on-a-slope work sat inside Newton's-law questions. In 7 of 9 sessions: a collision with conservation of momentum. In 6 of 9: connected particles over a pulley.

**P5:**

| Subtopic | Topic | Sessions | Marks |
|---|---|---:|---:|
| Normal approximation to binomial | Normal distribution | 9/9 | 46 |
| Arrangements with conditions | Permutations & combinations | 9/9 | 41 |
| Binomial probabilities | Binomial & geometric distributions | 9/9 | 40 |
| Normal probabilities | Normal distribution | 9/9 | 38 |
| Probability distribution table | Discrete random variables | 8/9 (not J25) | 29 |
| Geometric distribution | Binomial & geometric distributions | 8/9 (not J22) | 20 |

In 7 of 9 sessions: finding μ or σ from given probabilities. In 6 of 9: stem-and-leaf/quartiles, selections, E(X)/Var(X), conditional probability.

**P2 (5 sessions):**

| Subtopic | Topic | Sessions | Marks |
|---|---|---:|---:|
| Product/quotient/chain rule & stationary points | Differentiation | 5/5 | 27 |
| Trig equations (sec/cosec/cot) | Trigonometry | 5/5 | 21 |
| Polynomials (factor/remainder) | Algebra | 5/5 | 16 |
| Iteration | Numerical solution of equations | 5/5 | 15 |
| Locating a root (graphs/sign change) | Numerical solution of equations | 5/5 | 12 |
| Integration of trig functions | Integration | 4/5 (not J25) | 22 |
| Modulus equations & inequalities | Algebra | 4/5 (not J23) | 19 |
| Log & exponential equations/inequalities | Logarithms & exponentials | 4/5 (not J23) | 16 |

**P6 (5 sessions):**

| Subtopic | Topic | Sessions | Marks |
|---|---|---:|---:|
| Linear combinations of normals | Linear combinations of random variables | 5/5 | 34 |
| Hypothesis test (normal mean) | Hypothesis testing | 5/5 | 27 |
| Confidence intervals | Sampling & estimation | 5/5 | 23 |
| Normal approximation to Poisson | Poisson distribution | 5/5 | 20 |
| Type I / Type II errors | Hypothesis testing | 5/5 | 18 |
| Median / mean of a pdf | Continuous random variables | 4/5 (not J23) | 25 |
| Poisson distribution | Poisson distribution | 4/5 (not J26) | 21 |
| Hypothesis test (binomial) | Hypothesis testing | 4/5 (not J26) | 20 |
| Probability density functions | Continuous random variables | 4/5 (not J26) | 20 |
| Unbiased estimates / sample mean | Sampling & estimation | 4/5 (not N25) | 12 |

## 5. Rarely tested (variant 2, ≤ 3 of 9 sessions)

These are mostly small items, or items that turned up in another variant. They are still examinable.
- **P1:** Sketching quadratics (Quadratics; 1/9, 3 marks); AP and GP combined (Series; 1/9, 3 marks); Gradient of chord / first principles (Differentiation; 1/9, 5 marks); Chain rule / 2nd derivative (Differentiation; 2/9, 5 marks); Inverse trig (Trigonometry; 2/9, 6 marks); Rates of change (Differentiation; 3/9, 10 marks); Area under curve (Integration; 3/9, 13 marks); Trig graphs (Trigonometry; 3/9, 14 marks); Line-curve intersection (Quadratics; 3/9, 15 marks).
- **P3:** Setting up the equation (Numerical solution of equations; 1/9, 4 marks); Integration (ln and tan^-1 forms) (Integration; 1/9, 6 marks); Polynomial with complex roots (Complex numbers; 1/9, 7 marks); Differentiating trig functions (Differentiation; 2/9, 3 marks); Forming a differential equation (Differential equations; 2/9, 7 marks); Perpendicular distance / foot of perpendicular (Vectors; 2/9, 9 marks); Linearisation (ln graphs) (Logarithms & exponentials; 2/9, 9 marks); Binomial expansion (any index) (Algebra; 2/9, 9 marks); R-formula (Trigonometry; 2/9, 10 marks); Polynomials (division) (Algebra; 3/9, 8 marks); Integration of trig functions (Integration; 3/9, 15 marks); Square roots of complex numbers (Complex numbers; 3/9, 15 marks); Parametric differentiation (Differentiation; 3/9, 22 marks).
- **P4:** Work done & power by a force (Energy, work & power; 1/9, 4 marks); Friction & limiting equilibrium (Forces & equilibrium; 2/9, 8 marks); Resultant of coplanar forces (Forces & equilibrium; 2/9, 12 marks); Connected particles (slope/towing) (Newton's laws of motion; 2/9, 12 marks); Equilibrium of a particle (forces at a point) (Forces & equilibrium; 2/9, 12 marks); Newton's 2nd law with friction (Newton's laws of motion; 2/9, 12 marks); Loss of kinetic energy in collisions (Momentum; 3/9, 7 marks); Constant acceleration (suvat) (Kinematics; 3/9, 13 marks); Newton's 2nd law on a slope (Newton's laws of motion; 3/9, 15 marks).
- **P5:** Two-way tables & independence (Probability; 2/9, 7 marks); Probability via arrangements (Permutations & combinations; 2/9, 10 marks); Arrangements with repeated letters (Permutations & combinations; 3/9, 3 marks); Summary statistics (coded sums) (Representation of data; 3/9, 8 marks); Box-and-whisker plots (Representation of data; 3/9, 9 marks); Probability via selections (Permutations & combinations; 3/9, 11 marks); Histograms / cumulative frequency (Representation of data; 3/9, 12 marks); Mean & sd from grouped data (Representation of data; 3/9, 12 marks); Probability without replacement (Probability; 3/9, 13 marks).

## 6. Trends, 2022–23 against 2025–26

**P1**
- Series grew (15% to 20%). J26 had 17 marks of binomial expansion plus AP/GP.
- Integration grew (11% to 15%): areas between a curve and a line or normal, and curves found from the second derivative (J25 Q9, J26 Q5).
- Quadratics fell (12% to 8%) as separate questions, because completing the square now often sits inside a functions question.
- Trig went down slightly. Trig *graphs* (sketch a sin/cos graph, then count solutions) appeared in N24, J25 and N25 after being absent in 2022–23.
- Coordinate geometry of circles is steady and large: line–circle intersection and tangency, exact distances. J26 Q8 alone was worth 11 marks.

**P3**
- Square roots of a complex number by forming a quartic is new and repeated (N24, J25, J26, 5 marks each).
- Exponential form re^{iθ} questions continue. The polynomial-with-a-complex-root question has not reappeared since J22.
- The binomial expansion with a general index came back (N24, J25) after being absent from 2022–23.
- Polynomial division is now used as a setup step before integration: quotient and remainder, then integrate (N24 Q10, J25 Q10).
- Differential equations from a context (a balloon, a water tank) appeared in N24 and N25. Before that they were purely abstract.
- Iteration questions now often ask you to show that the iteration converges to the root ("if it converges, it converges to α").

**P4**
- Forces & equilibrium fell from 23% to 10%, and Newton's laws rose from 18% to 29%. Recent papers ask for motion with friction more than static equilibrium.
- Kinematics questions keep growing (30% to 35%): piecewise accelerations, total distance when the velocity changes sign, and vertical motion of particles that meet or start at different times (N24, N25, J26).

**P5**
- The binomial/geometric share rose (10% to 16%). The "r-th success on the n-th trial" style (second goal on or before the 5th attempt; second success on the 6th or 7th throw) is new since J24.
- Discrete random variables fell (12% to 7%) and were absent in J25.
- Data questions moved from box plots (2022–24) to cumulative frequency/histograms with grouped mean and sd (N22, J25, N25), and to back-to-back stem-and-leaf with a changed-mean twist (J26).

**P2/P6 (5 sessions only)**
- P2: trig identities fell, logs and modulus inequalities rose. A two-stage modulus inequality ("solve, then substitute 7^{0.01N} or ln(N/2)") appeared in N25 and J26.
- P6: more confidence-interval reasoning (finding x from a given width, the probability that intervals contain μ), and fewer Poisson-approximation-to-binomial questions.

## 7. Typical question styles

**P1:**
- An opening binomial-coefficient question ("coefficient of x² in one expansion equals k times that in another").
- Curve from dy/dx through a point.
- AP/GP with trig or algebraic terms, often a GP sum to infinity.
- Sector/segment problem with a diagram, always answered to 3 s.f.
- Circle equation, then tangent or normal, then intersection with a line.
- A functions question near the end: inverse, composite, domain/range, "explain why the inverse does not exist".
- Describe a sequence of transformations "making clear the order".
- Area between a curve and a line or normal.
- A trig identity "prove … hence solve" pair.

**P3:**
- Log equations solved to 3 d.p.
- A double-angle or R cos(θ – α) equation.
- Implicit or parametric gradient leading to a tangent or normal condition.
- The three-part numerical-methods block: sketch two graphs, show a sign change, iterate to a given accuracy.
- Partial fractions, then integrate to an exact log form.
- Separable differential equation with a "state what happens as x → ∞" tail.
- Integration by parts or by substitution to an exact answer.
- Vectors: are the lines parallel, intersecting or skew; angle by scalar product; foot of a perpendicular or area of a triangle.
- Complex numbers: Argand loci with greatest arg z or least |z|; modulus-argument form.

**P4:**
- Variable acceleration with calculus (v given as a polynomial in t, often piecewise), worth 8–12 marks.
- Power = driving force × speed with resistance, plus a work-energy calculation.
- Resolving forces on a rough slope with a pull at an angle.
- A pulley system: tension, coefficient of friction, then motion after the string breaks.
- Collisions, sometimes with a wall or a third particle.

**P5:**
- Arrangements of a word with repeated letters under conditions (letters together, letters not adjacent, exactly k letters between), plus selections.
- Normal: "how many of a sample of n", and finding μ/σ from two percentages.
- Normal approximation to the binomial with a continuity correction.
- Geometric "first success" questions.
- Tree diagrams with conditional probability.
- A probability distribution table followed by E(X) and Var(X).
- Data from stem-and-leaf diagrams, box plots or cumulative frequency graphs.

## 8. Common mistakes (examiner reports J22, N22, J23, variant 2 sections)

All of these are taken from the reports for 9709/12, 32, 42 and 52 and put in my own words. No reports exist locally after June 2023.

**All papers**
- Answers taken from a calculator without working lose marks, especially for quadratics, simultaneous equations and definite integrals.
- An exact answer was asked for but a decimal was given.
- Wrong accuracy: not 3 s.f., or angles not to 1 d.p.
- Rounding too early in a multi-step calculation.
- Pencil work overwritten in ink, which makes it unreadable.

**P1**
- Mixing up "term" and "coefficient" in binomial questions.
- Ignoring "Given instead" and carrying part (a) values into part (b).
- Solving the discriminant equation by calculator.
- Using a chord length as if it were the arc length.
- Getting the triangle part of a segment or shaded-area question wrong.
- Assuming AB is a diameter of the circle.
- Stretch factors read the wrong way round: f(2x) is a stretch of factor ½, not 2.
- Explaining that g⁻¹ does not exist because of square roots of negatives, instead of saying g is not one-one.
- Not using a "show that" result in the next part.
- Weak "hence" chains in trig questions; missing the negative root such as tan θ = –√3.

**P3**
- Splitting ln(a + b) into ln a + ln b.
- Wrong sign or variable in the factor theorem, for example using x = 3 instead of –2.
- Leaving out the chain-rule factor (cos³x, sin 2x).
- Sketches in numerical questions missing an asymptote or through the wrong point.
- Too few iterations shown, or the final answer not given to the stated accuracy.
- Integrating e^{–y} wrongly, and taking logs before finding the constant in differential equations.
- In implicit differentiation, forgetting to differentiate the right-hand side, or substituting the gradient line into the curve.
- Using 6 instead of 6i in the quadratic formula; arguments placed in the wrong quadrant.
- Using the wrong pair of vectors for an angle.

**P4**
- No force diagram, so weight components or friction get left out of Newton's second law.
- Sine and cosine swapped when resolving.
- Using constant-acceleration (suvat) equations when v is a function of t, or when the power is constant and the acceleration therefore varies.
- ½m(v – u)² written instead of ½m(v² – u²).
- Signs of velocities in head-on collisions (–6 squared written as –36).
- Using the same time variable for two particles that start at different times.
- Using a = 0 for "instantaneous rest" instead of v = 0.
- Treating smooth and rough sections of a path as the same.

**P5**
- Reading "fewer than 10" as "10 or fewer".
- A continuity correction of ±0.5 used for continuous data.
- Rounding z-values too early.
- Confusing variance and standard deviation in N(μ, σ²).
- Assuming a symmetric normal area when it is not.
- Probability tables that do not sum to 1.
- Forgetting to square E(X) in Var(X).
- Drawing only one box plot when two are asked for.
- Dividing by 2!2! after letters have already been grouped.
- Misreading the success condition in geometric and binomial questions.
- Weak justification of approximation conditions; quoting npq > 5 as a condition.

## 9. Grade thresholds (raw marks)

### Variant 2 component thresholds, A / E (maximum 75 for P1 and P3, 50 for P4 and P5)

| Component | J22 | N22 | J23 | N23 | J24 | N24 | J25 | N25 | J26 |
|---|---|---|---|---|---|---|---|---|---|
| 12 (P1) | 54/10 | 61/16 | 49/10 | 55/13 | 60/12 | 52/15 | 61/16 | 60/16 | 61/10 |
| 32 (P3) | 57/21 | 58/21 | 52/17 | 54/24 | 48/14 | 51/19 | 55/16 | 45/17 | 54/19 |
| 42 (P4) | 37/12 | 34/12 | 38/13 | 39/12 | 36/12 | 33/9 | 43/29* | 35/11 | 38/10 |
| 52 (P5) | 36/9 | 35/11 | 38/12 | 40/14 | 36/11 | 40/15 | 39/11 | 38/10 | 41/13 |

\*J25 component 42 is an outlier: A 43, B 39, C 35, D 32, E 29 out of 50, a band about twice as tight as usual. The AY and S5 options that include it also have unusually high lower grades. The local files give no reason.

### A Level options (out of 250; A* / A / B / C / D / E)

| Session | AY 12-32-42-52 | AZ 13-33-43-53 | AX 11-31-41-51 | CY 12-32-52-62 | AC 15-35-45-55 |
|---|---|---|---|---|---|
| J22 | 214/184/154/120/86/52 | 217/190/163/134/105/77 | 208/181/154/125/96/67 | 216/186/156/122/89/56 | – |
| N22 | 214/188/162/128/94/60 | 207/180/153/124/96/68 | 215/188/161/131/101/72 | 216/191/166/132/98/64 | – |
| J23 | 208/177/146/114/83/52 | 223/197/169/134/100/66 | 197/173/149/119/89/60 | 206/178/150/119/88/58 | – |
| N23 | 214/188/162/129/96/63 | 234/219/197/165/133/101 | 213/185/157/126/95/64 | 211/184/157/125/93/61 | – |
| J24 | 212/180/148/115/82/49 | 222/195/164/129/94/60 | 199/174/149/116/83/51 | 215/183/151/118/85/53 | – |
| N24 | 203/176/149/118/88/58 | 220/191/160/128/96/64 | 209/184/159/126/94/62 | 210/185/160/127/95/63 | – |
| J25 | 224/198/171/138/105/72 | 223/197/170/131/93/55 | 224/198/171/133/95/57 | 224/198/169/132/95/59 | 225/201/175/136/97/59 |
| N25 | 205/178/151/118/86/54 | 225/200/171/137/103/70 | 223/197/169/134/99/64 | 204/179/154/122/90/59 | 227/204/176/140/104/69 |
| J26 | 222/194/161/124/88/52 | 231/212/186/149/113/77 | 223/197/163/128/94/60 | 223/196/166/131/96/61 | 226/202/175/136/98/60 |

- For the variant 2 route (AY), **A* has needed 203–224/250 (81–90%), A 176–198 (70–79%) and E 49–72**.
- The variant 3 route (AZ, the 13/33/43/53 combination) had a higher A boundary than AX, AY and CY in 7 of 9 sessions. N23 needed 219 for an A and 234 for an A*, so a strong variant 3 paper leaves little room for error.
- June A* boundaries since 2025 have been 222–231 on these routes, against 197–223 in June 2022–24.
- In J26 the AZ route needed A* 231, A 212. CZ (13/33/53/63) needed A* 234, A 218.

### AS Level options (out of 125; A / B / C / D / E)

| Session | S5 P1+M (12+42) | S6 P1+S1 (12+52) | S4 P1+P2 (12+22) | S8 (13+43) | S9 (13+53) | SB (15+45) | SC (15+55) |
|---|---|---|---|---|---|---|---|
| J22 | 91/74/56/39/22 | 90/73/55/37/19 | 89/72/54/36/19 | 96/81/66/51/36 | 96/81/65/50/35 | – | – |
| N22 | 95/82/64/46/28 | 96/84/65/46/27 | 101/89/69/49/29 | 85/71/57/43/30 | 93/79/64/49/34 | – | – |
| J23 | 87/70/54/38/23 | 87/71/54/38/22 | 89/70/53/36/19 | 100/84/65/46/28 | 102/87/67/48/29 | – | – |
| N23 | 94/81/62/43/25 | 95/82/63/45/27 | 94/81/62/44/26 | 107/96/78/61/44 | 108/98/81/64/48 | – | – |
| J24 | 96/79/60/42/24 | 96/79/60/41/23 | 100/82/63/44/25 | 97/80/60/41/22 | 102/87/68/49/30 | – | – |
| N24 | 85/71/55/39/24 | 92/80/63/46/30 | 92/79/61/44/27 | 96/81/63/46/29 | 95/81/65/49/33 | – | – |
| J25 | 104/91/75/60/45 | 100/85/65/46/27 | 99/83/64/45/27 | 103/88/67/46/25 | 104/90/69/49/29 | 105/89/68/47/27 | 105/91/70/50/30 |
| N25 | 95/80/62/44/27 | 98/84/64/45/26 | 102/88/68/48/29 | 97/82/65/48/31 | 106/94/74/55/36 | 101/86/67/48/29 | 106/94/75/56/37 |
| J26 | 99/80/60/40/20 | 102/86/65/44/23 | 101/87/67/47/27 | 100/85/66/47/29 | 107/94/72/50/29 | 102/86/67/49/31 | 105/92/70/48/27 |

- An AS grade A needs about **85–108 of 125 (68–86%)**, depending on the variant and session.
- For an A, the mechanics route (S5) needed less than or the same as the statistics route (S6) in 7 of 9 sessions. J25 is the clearest exception (see the 42 note above).
- S9 (13+53) had the highest or joint-highest A boundary of the listed AS routes in 6 of the 9 sessions.

## 10. Revision priorities (variant 2 evidence, for the 2026–27 syllabus)

**P1** (most marks come from a handful of repeatable question types):
1. Binomial coefficients and AP/GP, about 17% and rising. Practise GP sums to infinity and APs with trig or algebraic terms.
2. Functions: inverse, composite, domain/range, the one-one argument, and transformation sequences described in the correct order.
3. Circles: equation from given facts, tangent/normal at a point, line–circle intersection with the discriminant, exact lengths.
4. Calculus: curve from the first or second derivative (every session), tangent/normal, stationary points with their nature, area between a curve and a line/normal, rates of change.
5. Sectors and segments to 3 s.f.
6. Trig: "prove … hence solve" pairs, equations that are quadratic in sin/cos/tan, and sketching a trig graph to count solutions.

**P3**:
1. The numerical-methods block (sketch, sign change, convergence, iteration), usually worth 7 marks (3–9) in every paper.
2. Separable differential equations with exact algebra, including setting them up from a context.
3. Implicit and parametric differentiation; stationary points with product or quotient rules.
4. Partial fractions, then integration to exact logs; integration by parts and by substitution.
5. Vectors: intersect or skew, angle, foot of the perpendicular, area.
6. Complex numbers: loci with greatest/least modulus or argument, exponential form, square roots by quartic.
7. Logs and the R-formula: short questions, so marks should not be dropped there.

**P4**:
1. Variable-acceleration calculus, about 19% of the whole paper on its own, including piecewise motion and total distance when v changes sign.
2. Power–resistance–work-energy questions.
3. Connected particles (pulley and slope, string breaking).
4. Resolving on rough slopes with an angled pull, always starting from a force diagram.
5. Momentum, including a third particle or a wall.

**P5**:
1. Permutations & combinations: 10 marks almost every time. Drill "together", "not adjacent", "exactly k between", and selections with at-least/at-most conditions.
2. Normal: probabilities, μ/σ from percentages, and the normal approximation with a continuity correction (every paper).
3. Binomial and geometric, including the r-th success on the n-th trial.
4. Conditional probability from tree diagrams.
5. Distribution tables with E(X) and Var(X).
6. Data: quartiles from stem-and-leaf, box plots, cumulative frequency, grouped mean/sd, coded sums.

**P2/P6** (if taken):
- P2: modulus inequalities, polynomials, sec/cosec/cot equations, iteration, ln-linearisation, implicit/parametric differentiation, trig integration via identities.
- P6: tests (binomial, Poisson, normal mean, Type I/II errors), confidence intervals, linear combinations, the normal approximation to Poisson, and the median/mean of a pdf.

## 11. Syllabus change, 2028–2030

None of the local files (papers, mark schemes, reports, thresholds) describe the content of the 2028–2030 syllabus. The project's sources index (`research/01-past-paper-sources-index.md`) records that Cambridge lists 9709 syllabus versions for 2023–25, 2026–27 (with an update) and **2028–30**, so a revised syllabus has been published. Its content changes have not been checked here. Before using this analysis for 2028 or later exams, compare the 2028–30 syllabus content list against the topic list above, and drop or add topics as needed.
