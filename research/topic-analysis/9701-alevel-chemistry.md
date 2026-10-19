# Cambridge International AS & A Level Chemistry (9701): topic-frequency analysis, 2022 to June 2026

Compiled 19 Oct 2026 from local past papers only (`papers/a-level/chemistry-9701/`, nine sessions from May/June 2022 to May/June 2026). Question data: `9701-questions.csv` in this folder (1,492 rows: session, paper, variant, question, part, topic, subtopic, marks).

**Method**
- Every PDF used was converted with `pdftotext -layout` into a scratch folder; no file in `papers/` was changed.
- Part labels and `[n]` mark brackets were extracted by script and checked against each question's `[Total: n]` line and each paper's cover total.
- **Variant 2, all nine sessions:**
  - Paper 12: all 40 MCQs (360 items).
  - Papers 22, 42 and 52: every question part.
  - Each item or part was tagged by hand with one topic, one subtopic and its marks.
- **Paper 3:** variant 33 was tagged part by part for 2023-MJ, 2025-MJ and 2026-MJ. The experiments in all 18 Paper 33 and 34 papers (2022–2026) were also classified (§5).
- **Mark check:** all 39 tagged papers add up exactly to their cover totals (P1 = 40, P2 = 60, P3 = 40, P4 = 100, P5 = 30). Two label quirks were fixed by hand: in 33/2023-MJ, a stray line "3" had split Question 2; in 52/2025-MJ, part (i) had been read as a roman numeral.
- **Examiner reports** exist locally for 2022-MJ, 2022-ON, 2023-MJ and 2024-MJ only. Their comments on 12, 22, 42, 52 and 33 are summarised in §7.
- **Sessions** are written as `YYYY-MJ` (May/June) and `YYYY-ON` (Oct/Nov).

Caveats:
- Each part is filed under the chemistry that earns its marks. Examples:
  - a titration calculation in a P2 bleach question goes to *Stoichiometry*;
  - the Ksp part of a Group 2 question goes to *Equilibria*;
  - an amide-forming step inside a synthesis goes to *Nitrogen compounds*.

  Expect ±1–2 marks per topic per paper.
- **P5 and P3 parts** are tagged *Practical skills* (by skill) unless the marks depend on a specific chemistry calculation or idea. For example, the Ea from an Arrhenius-type gradient goes to *Kinetics*, and a ΔH from q = mcΔT goes to *Energetics*.
- MCQ diagrams and organic structures are lost in the text conversion. Some P1 items were classified from their wording and options.
- The 2026 files are watermarked third-party downloads with long names. Their content and layout match Cambridge papers. There is no 2026 examiner report.
- Question-style figures (§6) are keyword-based. Treat them as approximate.
- All percentages describe this sample (one variant per session). They are not official weightings.

---

## 1. Syllabus, topic list and paper structure

### 1a. Which syllabus

- **First examined in 2022.** These papers belong to the 9701 syllabus first examined in 2022 (2022–2024 version, then 2025–2027). AS topics are 1–22 and A Level topics 23–37.
- **The syllabus document is not in the local folder.** Everything below is inferred from the papers.

**Evidence of the 2022 syllabus in the papers**
- The papers regularly use content of the 2022 syllabus:
  - sp/sp²/sp³ hybridisation and σ/π overlap;
  - M+1 peaks to count carbon atoms;
  - partial pressures and Kp in kPa;
  - Kstab and Ksp;
  - partition coefficients;
  - electrophoresis and isoelectric points;
  - proton and carbon-13 NMR (with D2O exchange and TMS).
- **The MCQ order follows the syllabus in every session:**
  - Q1–15/16 are physical;
  - Q16/17–24 are inorganic (Period 3, Group 2, Group 17, N & S);
  - Q25–39 are organic;
  - **Q40 is always analysis** (mass spectrometry 6 times, IR 3 times).

**Visible changes between 2022–25 and 2026-MJ (all variant-2 papers)**
- **"Figure 1.1" replaces "Fig. 1.1".** Fig. appears 16–50 times per session up to 2025-ON and 0 times in 2026. "Figure" appears 59 times in 2026.
- **The standard symbol is now ⦵** (7 uses in 2026, none before).
- **"London dispersion forces" appears** in P1 2026 (Q22). Earlier papers say "instantaneous dipole–induced dipole".
- **Partition coefficient (Kpc) appears for the first time** in this sample: P4 2026 Q4, 6 marks. It may be a new emphasis or just rotation; the syllabus could not be checked.
- **The structure is unchanged.** Cover pages, durations and mark totals are identical from 2022 to 2026.

### 1b. Topics and subtopics used for tagging (27 topics)

The list follows the request (Physical / Inorganic / Organic / Analysis), with two additions:
- **Atoms, molecules & stoichiometry** (syllabus topic 2), which carries many marks;
- **Practical skills**, for P3/P5 skill marks.

AS and A Level parts of the same topic share one topic name; the subtopic shows the level (for example *Rate equations & orders* is A Level).

| Area | Topic (CSV name) | Subtopics used |
|---|---|---|
| Physical | Atomic structure | particles, isotopes & ions; electronic configuration; orbitals & sub-shells; ionisation energies; atomic & ionic radius |
| Physical | Atoms, molecules & stoichiometry | relative masses; mole calculations; reacting masses & gas volumes; empirical/molecular formula; water of crystallisation; equations & mole ratios; titration calculations; % yield |
| Physical | Chemical bonding | bonding types & properties; metallic bonding; giant covalent; dot-and-cross; dative bonds; VSEPR shapes; σ/π & hybridisation; intermolecular forces; hydrogen bonding |
| Physical | States of matter | ideal gas equation; ideal vs real gases; lattices; diffusion |
| Physical | Chemical energetics | definitions; Hess cycles; bond energies; calorimetry; reaction pathway diagrams |
| Physical | Chemical energetics (A Level) | lattice energy & Born–Haber; electron affinity; enthalpies of solution & hydration |
| Physical | Entropy & Gibbs free energy | entropy changes; ΔG & feasibility |
| Physical | Electrochemistry & redox | oxidation numbers & redox; balancing redox equations; electrolysis & Faraday; E° & cells; Nernst; ΔG–E°cell |
| Physical | Equilibria | dynamic equilibrium; Le Chatelier; Kc/Kp; industrial equilibria; Brønsted–Lowry; pH/Ka/Kw; buffers; Ksp & common ion; partition |
| Physical | Reaction kinetics | collision theory; Boltzmann & temperature; catalysis; rate measurement; rate equations & orders; half-life; mechanisms & RDS; homogeneous/heterogeneous catalysis |
| Inorganic | Periodicity (Period 3) | trends (radius, IE, electronegativity); structure & melting points; reactions with O2/Cl2; oxides & chlorides |
| Inorganic | Group 2 | reactions with water/O2; hydroxide & sulfate solubility; thermal decomposition; A Level solubility & thermal-stability explanations |
| Inorganic | Group 17 | halogen trends; halide tests & reactions with H2SO4; displacement; Cl2 with water/NaOH; water treatment |
| Inorganic | Nitrogen & sulfur | NH3/NH4+; NOx, smog & catalytic converters; SO2 & acid rain; nitric acid; N2 unreactivity |
| Inorganic | Transition elements | properties; d-orbitals & ion configurations; redox titrations (MnO4–, Cr2O7^2–) |
| Inorganic | Transition element complexes | ligands, shapes & coordination number; isomerism; colour & d-splitting; ligand exchange & Kstab |
| Organic | Organic introduction & isomerism | formulae; nomenclature & structural isomers; stereoisomerism (incl. A Level optical); mechanism terms |
| Organic | Hydrocarbons | free-radical substitution; cracking/combustion; electrophilic addition; KMnO4 oxidation; arenes (electrophilic substitution, side-chain oxidation) |
| Organic | Halogen compounds | reagents & conditions; SN1/SN2; elimination; preparation; halogenoarenes |
| Organic | Hydroxy compounds | alcohol oxidation, substitution, dehydration; phenol |
| Organic | Carbonyl compounds | HCN addition; 2,4-DNPH/Fehling's/Tollens'; tri-iodomethane |
| Organic | Carboxylic acids & derivatives | reactions; esters; LiAlH4 reductions; acyl chlorides; relative acidity |
| Organic | Nitrogen compounds | amines & nitriles; basicity; phenylamine & azo dyes; amides; amino acids, peptides & electrophoresis |
| Organic | Polymerisation | addition; condensation; degradability |
| Organic | Organic synthesis | distinguishing tests; multi-step routes; deducing structures from data |
| Analysis | Analytical techniques | mass spectrometry; IR; proton NMR; carbon-13 NMR; chromatography |
| Practical | Practical skills | planning, standard solutions, safety, variables; data processing, graphs, gradients, anomalies, % error, evaluation; titration, rates, thermochemistry, gas collection, qualitative analysis (P3) |

### 1c. Components, from the cover pages

The cover pages are **identical from 2022 to 2026**: same durations, same mark totals, all questions compulsory.

| Component | Level | Duration | Marks | Weight* | Format (variant 2) |
|---|---|---|---|---|---|
| **P1 Multiple Choice** | AS | 1 h 15 min | 40 | 31% AS / 15.4% A | 40 four-option MCQs in syllabus order; Q40 always analysis |
| **P2 AS Level Structured Questions** | AS | 1 h 15 min | 60 | 46% AS / 23.1% A | 3–6 questions of 5–22 marks (6, 3, 5, 4, 5, 4, 5, 4, 6 questions, 2022-MJ → 2026-MJ) |
| **P3 Advanced Practical Skills** | AS | 2 h | 40 | 23% AS / 11.5% A | always 3 questions of 9–18 marks: two quantitative experiments + one qualitative-analysis question |
| **P4 A Level Structured Questions** | A2 | 2 h | 100 | 38.5% A | 9 questions in 8 of 9 sessions (8 in 2024-ON), 5–20 marks each |
| **P5 Planning, Analysis & Evaluation** | A2 | 1 h 15 min | 30 | 11.5% A | always 2 questions (10–20 marks each), each built on one experiment |

\*Weights are inferred from the grade-threshold files.
- **AS** is weighted to 130 marks: P1 40 + P2 60 + 0.75 × P3.
- **Full A Level** is weighted to 260 marks: AS 130 + P4 100 + P5 30, with P4 and P5 unscaled.
- **Check (2026-MJ, route 12-22-33-42-52):**
  - A Level: the component A thresholds give 25 + 37 + 0.75 × 22 + 66 + 23 = 167.5, which matches the published A of 168.
  - AS: 25 + 37 + 16.5 = 78.5, which matches the published A of 79.

**Paper 3 sessions and variants**
- May/June has 31–35; Oct/Nov has 31 and 33–36. Each variant is a different laboratory session with different experiments.
- 31/33/35/37 are titled "Advanced Practical Skills 1" and the others "…2".

**New from 2025: a fourth variant (x4) of every written paper, plus Paper 3 codes 37 and 38**
- **The x4 papers are new papers, not copies.** Word-sequence similarity with variants 1–3 is only 0.31–0.46 (shared boilerplate). Cover, duration and marks are the same.
- **37 and 38 are copies of an existing practical** from the same session (similarity 1.00):
  - in May/June 2025 and 2026, 37 = 33 and 38 = 34;
  - in Oct/Nov 2025, 37 = 35 and 38 = 36.
- **The option codes show how they combine:**
  - From 2022–24 the first letter is the practical slot (**A** = 33-type, **H** = 34-type) and the second letter the written variant (**X** = 1, **Y** = 2, **Z** = 3). Variant-2 A Level candidates are **AY** (12, 22, 33, 42, 52) or **HY** (…34…).
  - 2025 adds a second letter **C** = variant 4: **AC** (14, 24, 37, 44, 54) and **HC** (14, 24, 38, 44, 54), plus AS options **S7** (14, 24, 37) and **S8** (14, 24, 38).
  - The 2026 threshold sheet lists combinations only, with no letter codes.
- **Inference:** variant 4 is a new administrative or time-zone variant with its own written papers, whose candidates sit an existing practical under a new code. The local files never name the zones, so this cannot be confirmed.
- **Its thresholds run higher than variant 2** (A Level A):
  - 2025-MJ: 177 vs 174;
  - 2025-ON: 179 vs 174;
  - 2026-MJ: 184 vs 168.
- Mixed options also appear in 2025-MJ: **AW** (12, 22, 33, 41, 52) and **HW**.

---

## 2. Topic weights per component (marks; variant 2)

### 2a. Paper 1 (MCQ, 40 marks × 9 = 360)

| Topic | 22MJ | 22ON | 23MJ | 23ON | 24MJ | 24ON | 25MJ | 25ON | 26MJ | Total | % | Sessions |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Periodicity (Period 3) | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 4 | 3 | 28 | 7.8 | 9/9 |
| Chemical bonding | 2 | 2 | 2 | 3 | 3 | 4 | 2 | 3 | 3 | 24 | 6.7 | 9/9 |
| Organic introduction & isomerism | 2 | 3 | 3 | 3 | 5 | 3 | 2 | 1 | 2 | 24 | 6.7 | 9/9 |
| Carbonyl compounds | 2 | 2 | 4 | 3 | 1 | 2 | 2 | 2 | 3 | 21 | 5.8 | 9/9 |
| Chemical energetics | 2 | 3 | 2 | 1 | 2 | 2 | 3 | 3 | 2 | 20 | 5.6 | 9/9 |
| Atomic structure | 2 | 2 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 19 | 5.3 | 9/9 |
| Group 2 | 2 | 2 | 2 | 3 | 2 | 2 | 2 | 2 | 2 | 19 | 5.3 | 9/9 |
| Carboxylic acids & derivatives | 3 | 1 | 2 | 3 | 2 | 2 | 2 | 2 | 2 | 19 | 5.3 | 9/9 |
| Equilibria | 2 | 1 | 2 | 3 | 2 | 2 | 2 | 2 | 2 | 18 | 5.0 | 9/9 |
| Atoms, molecules & stoichiometry | 2 | 2 | 2 | 3 | 2 | 1 | 2 | 1 | 2 | 17 | 4.7 | 9/9 |
| Electrochemistry & redox | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 17 | 4.7 | 9/9 |
| Nitrogen & sulfur | 2 | 2 | 3 | – | 2 | 2 | 2 | 2 | 2 | 17 | 4.7 | 8/9 |
| Group 17 | 2 | 2 | – | 2 | 2 | 2 | 2 | 2 | 2 | 16 | 4.4 | 8/9 |
| Hydrocarbons | 2 | 1 | 3 | 2 | 2 | – | 1 | 3 | 2 | 16 | 4.4 | 8/9 |
| Hydroxy compounds | 1 | 3 | 1 | 1 | 2 | 2 | 3 | 2 | 1 | 16 | 4.4 | 9/9 |
| Reaction kinetics | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 1 | 1 | 14 | 3.9 | 9/9 |
| Halogen compounds | 2 | 2 | 2 | – | 2 | 1 | 3 | 1 | 1 | 14 | 3.9 | 8/9 |
| States of matter | 2 | 2 | 1 | 3 | 1 | 1 | 1 | 1 | 1 | 13 | 3.6 | 9/9 |
| Analytical techniques | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 9 | 2.5 | 9/9 |
| Nitrogen compounds | 1 | – | – | – | – | 1 | 1 | 2 | 2 | 7 | 1.9 | 5/9 |
| Polymerisation | 1 | 1 | – | – | 1 | 1 | 1 | 1 | 1 | 7 | 1.9 | 7/9 |
| Organic synthesis | – | 1 | – | 1 | – | 2 | – | – | 1 | 5 | 1.4 | 4/9 |

- **P1 is extremely evenly spread.** No topic exceeds 8%, and 19 of 22 AS topics appear in at least 8 of 9 sessions.
- **The split by area is stable at Physical ≈ 39%, Inorganic ≈ 22%, Organic ≈ 36%, Analysis 2.5%.** Only 1–2 percentage points move between 2022–23 and 2025–26.
- **Most reliable single items** (subtopic present in ≥ 7 of 9 sessions):

| Subtopic | Sessions present | Marks (9 sessions) |
|---|---:|---:|
| Period 3 oxides & chlorides (reaction with water, pH, bonding) | 9/9 | 15 |
| Oxidation numbers & redox | 9/9 | 14 |
| Stereoisomer counting (cis/trans × chiral centres) | 9/9 | 14 |
| Ideal gas equation | 9/9 | 10 |
| Esters (formation & hydrolysis) | 8/9 | 10 |
| Alcohol oxidation | 8/9 | 9 |
| Ionisation energies | 8/9 | 8 |
| Kc/Kp calculations | 8/9 | 8 |
| Carbonyl tests | 7/9 | 9 |
| VSEPR shapes & bond angles | 7/9 | 8 |
| NH3/NH4+ | 7/9 | 8 |
| Le Chatelier | 7/9 | 7 |
| Group 2 thermal decomposition | 7/9 | 7 |
| Group 2 solubility | 7/9 | 7 |
| Addition polymers | 7/9 | 7 |

### 2b. Paper 2 (AS structured, 60 marks × 9 = 540)

| Topic | 22MJ | 22ON | 23MJ | 23ON | 24MJ | 24ON | 25MJ | 25ON | 26MJ | Total | % | Sessions |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Chemical bonding | 4 | 12 | 13 | 8 | 5 | 10 | 9 | 5 | 2 | 68 | 12.6 | 9/9 |
| Periodicity (Period 3) | – | 7 | 9 | 3 | 12 | 6 | 8 | 8 | 4 | 57 | 10.6 | 8/9 |
| Hydrocarbons | – | 1 | 6 | 4 | – | 5 | 8 | 10 | 9 | 43 | 8.0 | 7/9 |
| Atomic structure | 1 | 3 | – | 7 | 3 | 8 | 6 | 6 | 8 | 42 | 7.8 | 8/9 |
| Equilibria | 7 | 2 | 2 | 8 | 9 | – | – | 6 | 4 | 38 | 7.0 | 7/9 |
| Organic introduction & isomerism | 5 | 3 | 2 | 3 | 5 | 1 | 1 | 7 | 7 | 34 | 6.3 | 9/9 |
| Organic synthesis | 3 | 12 | 2 | 4 | 4 | 4 | – | – | 4 | 33 | 6.1 | 7/9 |
| Halogen compounds | 10 | 5 | 1 | 1 | 5 | 3 | 2 | 1 | 1 | 29 | 5.4 | 9/9 |
| Chemical energetics | 7 | – | 2 | 4 | 8 | 1 | 2 | 2 | – | 26 | 4.8 | 7/9 |
| Analytical techniques | 3 | 3 | 2 | 5 | 4 | – | 1 | 4 | 4 | 26 | 4.8 | 8/9 |
| Atoms, molecules & stoichiometry | 1 | 3 | 3 | – | – | 4 | 8 | – | 2 | 21 | 3.9 | 6/9 |
| Group 17 | 6 | 2 | 3 | – | – | – | – | – | 6 | 17 | 3.1 | 4/9 |
| Hydroxy compounds | – | – | 1 | 1 | 3 | 2 | 5 | 2 | 3 | 17 | 3.1 | 7/9 |
| Group 2 | 6 | – | – | 2 | 2 | 1 | – | 4 | 1 | 16 | 3.0 | 6/9 |
| Electrochemistry & redox | 2 | – | 1 | 2 | – | 2 | – | 4 | 2 | 13 | 2.4 | 6/9 |
| Nitrogen & sulfur | – | 1 | – | 5 | – | 7 | – | – | – | 13 | 2.4 | 3/9 |
| Carboxylic acids & derivatives | 2 | – | 5 | 2 | – | – | 2 | 1 | – | 12 | 2.2 | 5/9 |
| Reaction kinetics | – | – | 3 | 1 | – | – | 5 | – | 3 | 12 | 2.2 | 4/9 |
| Nitrogen compounds | 1 | – | 2 | – | – | 1 | 3 | – | – | 7 | 1.3 | 4/9 |
| Carbonyl compounds | – | – | 3 | – | – | 4 | – | – | – | 7 | 1.3 | 2/9 |
| Polymerisation | 2 | 3 | – | – | – | 1 | – | – | – | 6 | 1.1 | 3/9 |
| States of matter | – | 3 | – | – | – | – | – | – | – | 3 | 0.6 | 1/9 |

- **Area split:** Physical 41%, Organic 35%, Inorganic 19%, Analysis 5%.
- **Bonding + Period 3 + atomic structure = 31%** of all P2 marks.
- **The typical P2 has three kinds of question:**
  1. one "Period 3 / bonding / atomic structure" question (oxides and chlorides with water, melting points, dot-and-cross, electronic configuration, isotopes and Ar);
  2. one physical question (Kp/Kc and Le Chatelier, or a Hess/calorimetry calculation);
  3. one or two organic questions ending in IR or mass-spectrum deduction.
- **The analysis marks are effectively 9/9.** In 2024-ON the spectra sit inside a "deduce the structure" part, which was tagged *Organic synthesis*.
- **Halogenoalkanes appear in every session**, usually as reagents and conditions plus an SN1/SN2 mechanism (2022-MJ, 2022-ON, 2024-MJ).

### 2c. Paper 4 (A Level structured, 100 marks × 9 = 900)

| Topic | 22MJ | 22ON | 23MJ | 23ON | 24MJ | 24ON | 25MJ | 25ON | 26MJ | Total | % | Sessions |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Transition element complexes | 16 | 18 | 11 | 17 | 12 | 12 | 8 | 13 | 12 | 119 | 13.2 | 9/9 |
| Nitrogen compounds | 15 | 9 | 5 | 14 | 22 | 3 | 16 | 8 | 16 | 108 | 12.0 | 9/9 |
| Equilibria | 11 | 9 | 2 | 12 | 10 | 15 | 11 | 12 | 10 | 92 | 10.2 | 9/9 |
| Electrochemistry & redox | 8 | 11 | 9 | 14 | 6 | 3 | 4 | 8 | 11 | 74 | 8.2 | 9/9 |
| Reaction kinetics | – | 10 | 9 | 9 | 9 | 11 | 10 | 6 | 10 | 74 | 8.2 | 8/9 |
| Hydrocarbons (arenes) | 10 | 8 | 11 | 6 | 2 | 10 | 4 | 10 | – | 61 | 6.8 | 8/9 |
| Analytical techniques | 5 | 12 | 6 | 10 | 6 | 4 | 6 | 6 | 6 | 61 | 6.8 | 9/9 |
| Chem. energetics (A Level: lattice, Born–Haber, hydration) | 9 | 8 | 10 | – | 9 | 9 | – | 6 | – | 51 | 5.7 | 6/9 |
| Group 2 | 6 | 2 | 6 | 3 | 7 | 3 | 4 | 7 | 6 | 44 | 4.9 | 9/9 |
| Carboxylic acids & derivatives | 6 | 6 | 4 | 3 | 4 | 7 | 4 | 6 | 4 | 44 | 4.9 | 9/9 |
| Transition elements | 2 | 4 | 5 | 4 | 5 | 6 | 5 | 1 | 3 | 35 | 3.9 | 9/9 |
| Entropy & Gibbs free energy | 4 | 3 | 2 | 4 | 5 | 5 | 8 | – | – | 31 | 3.4 | 7/9 |
| Organic introduction & isomerism | 2 | – | 5 | – | 1 | 5 | 3 | 6 | 2 | 24 | 2.7 | 7/9 |
| Polymerisation | 5 | – | – | 4 | 2 | 3 | 4 | 3 | 3 | 24 | 2.7 | 7/9 |
| Organic synthesis | – | – | 7 | – | – | – | 3 | 2 | 10 | 22 | 2.4 | 4/9 |
| Hydroxy compounds (phenol) | – | – | 5 | – | – | – | 5 | – | 2 | 12 | 1.3 | 3/9 |
| Atoms, molecules & stoichiometry | – | – | – | – | – | – | 4 | – | 5 | 9 | 1.0 | 2/9 |
| Carbonyl compounds | 1 | – | – | – | – | – | – | 5 | – | 6 | 0.7 | 2/9 |
| Halogen compounds (halogenoarenes) | – | – | 2 | – | – | 3 | – | – | – | 5 | 0.6 | 2/9 |
| Chemical bonding | – | – | 1 | – | – | 1 | – | 1 | – | 3 | 0.3 | 3/9 |
| Group 17 | – | – | – | – | – | – | 1 | – | – | 1 | 0.1 | 1/9 |

- **Area split:** Physical 37%, Organic 34%, Inorganic 22%, Analysis 7%.
- **Transition elements + complexes together = 17%** (154 marks). They are present every session, usually as one complete question of 10–20 marks.
- **Combined A Level energetics (lattice/Born–Haber + entropy/Gibbs) is in 8 of 9 sessions**, 4–14 marks each. **2026-MJ has none at all**, the first gap.
- **Nitrogen compounds are the biggest organic block (12%):** basicity order with explanation, azo-dye synthesis, acyl chloride + amine mechanisms, amino acids and peptides.
- **A typical P4 has nine questions:**
  1. one Group 2 / lattice-energy question;
  2. one transition-metal question;
  3. one kinetics question;
  4. one acid–base / buffer / Ksp question;
  5. one electrochemistry question;
  6. two or three arene / phenol / nitrogen-compound questions;
  7. one NMR question;
  8. one polymer or synthesis question.

### 2d. Paper 5 (30 marks × 9 = 270)

| Topic | 22MJ | 22ON | 23MJ | 23ON | 24MJ | 24ON | 25MJ | 25ON | 26MJ | Total | % |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Practical skills | 25 | 23 | 19 | 21 | 23 | 24 | 26 | 22 | 23 | 206 | 76.3 |
| Atoms, molecules & stoichiometry | 3 | 5 | 6 | 2 | 1 | 6 | 1 | 4 | 5 | 33 | 12.2 |
| Equilibria | – | – | 4 | – | 3 | – | – | 4 | – | 11 | 4.1 |
| Chemical energetics | – | – | – | 4 | 3 | – | 3 | – | – | 10 | 3.7 |
| Reaction kinetics | 2 | – | – | 3 | – | – | – | – | 2 | 7 | 2.6 |
| States of matter / Carboxylic acids | – | 2 | 1 | – | – | – | – | – | – | 3 | 1.1 |

**Practical-skill marks by type (9 sessions):**

| Skill | Marks |
|---|---:|
| Planning: method & apparatus | 45 |
| Evaluation: errors, reliability & improvements | 30 |
| Making a standard solution / dilution | 25 |
| Data processing (tables, significant figures) | 25 |
| Graph plotting & line of best fit | 21 |
| Gradient/tangent and derived value | 17 |
| Anomalous point | 12 |
| Variables | 10 |
| Percentage error | 8 |
| Safety | 5 |
| Organic preparation techniques | 6 |

Chemistry marks come mainly from **mole/titration calculations (26 marks)**, then calorimetry, K and rate deductions.

### 2e. Paper 3 (variant 33; 40 marks × 3 = 120)

| Topic / skill | 2023-MJ | 2025-MJ | 2026-MJ | Total |
|---|---:|---:|---:|---:|
| Qualitative analysis (cations, anions, gases) | 15 | 16 | 11 | 42 |
| Titration: results table, accuracy, mean titre | 8 | 8 | 8 | 24 |
| Titration calculations (redox or acid–base, incl. deducing the equation) | 5 | 3 | 3 | 11 |
| Second experiment (rates / thermochemistry / gas collection), recording & processing | 6 | 5 | 3 | 14 |
| Chemistry from the second experiment (rate order, ΔH, gas-volume moles, ionic equation) | 2 | 3 | 3 | 8 |
| Evaluation, % error, significant figures | 4 | 5 | 5 | 14 |
| Organic qualitative tests (halide after hydrolysis, C=C test) | – | – | 5 | 5 |
| Other (Mr and identity of a group from titre + test) | – | – | 2 | 2 |
| **Total** | 40 | 40 | 40 | 120 |

---

## 3. Bankers (examined in every session, or nearly every session)

### AS (P1 + P2)

1. **Period 3 oxides and chlorides.**
   - In every P1 (1–2 items) and 8/9 P2s (41 marks).
   - The usual task: write the equation with water (SiCl4, PCl5, P4O10, Na2O, Al2O3/amphoteric), give the pH, and state the bonding and structure.
   - The best-tested AS item overall.
2. **Chemical bonding.**
   - 9/9 in both papers; 12.6% of P2.
   - What comes up: metallic bonding diagrams; melting points explained by structure; dot-and-cross (including dative bonds, e.g. Al2Cl6 and SCN–); hydrogen-bond diagrams with lone pairs and δ charges; σ/π overlap and hybridisation; VSEPR angles.
3. **Atomic structure.**
   - Every P1 (2 items) and 8/9 P2s.
   - What comes up: particle counts in ions; electrons-in-boxes and full configurations (4s lost before 3d); successive and first IE explanations; orbital shapes; atomic/ionic radius.
4. **Isomerism.**
   - Every P1 (counting stereoisomers is a near-certain MCQ) and every P2.
   - What comes up: structural isomer names, cis/trans condition, chiral centre.
5. **Redox and oxidation numbers.**
   - Every P1 (≈ 2 items: change of oxidation state, identify the oxidising/reducing agent, disproportionation).
   - 6/9 P2s: balancing from half-equations, Cl2 + NaOH.
6. **Equilibria.**
   - Kp/Kc or Le Chatelier in every P1 and 7/9 P2s.
   - P2 often asks for a Kp expression with partial pressures plus a moles calculation.
7. **Energetics.**
   - Every P1 (Hess cycle, bond energies, calorimetry, definitions).
   - 7/9 P2s (definition of ΔHf; q = mcΔT → kJ mol⁻¹ with sign; Hess using a given value).
8. **Halogenoalkanes.**
   - Every P2 and 8/9 P1s.
   - What comes up: reagent and conditions table (aq OH⁻ vs ethanolic OH⁻, KCN in ethanol, NH3 in ethanol), SN1 vs SN2 with mechanism, C–X bond strength and rate.
9. **Alkenes and alcohols.**
   - Electrophilic addition mechanism (HBr/Br2/steam) with Markovnikov explanation.
   - KMnO4 cold/hot.
   - Alcohol oxidation with K2Cr2O7 (orange → green; reflux vs distil).
10. **Analysis at AS:**
    - P1 Q40 every session (MS 6×, IR 3×);
    - P2 mass spectrum (M+, M+1 → number of carbons, fragments with + charge) and IR (which bond, which range) in every session.
11. **Group 2 and nitrogen at AS.**
    - Group 2 is in every P1 (hydroxide/sulfate solubility trend, carbonate/nitrate decomposition).
    - Nitrogen & sulfur is in 8 of 9 P1s (NH4+ test, NOx and catalytic converters, SO2 and acid rain).
12. **Stoichiometry.**
    - ≈ 2 MCQs per session (empirical formula from combustion data, gas volumes, ideal gas equation).
    - A titration or Ar calculation in 6/9 P2s.

### A Level (P4)

| Subtopic | Sessions | Marks (9 sessions) | Typical demand |
|---|---:|---:|---|
| Ligand exchange & stability constants | 9/9 | 53 | Co²⁺/Cu²⁺ with NH3, Cl⁻, OH⁻: formulae, colours, Kstab expression (charge inside the brackets) |
| Proton NMR | 9/9 | 47 | splitting, number of H, D2O/TMS/CDCl3, structure from spectrum |
| Group 2 solubility & thermal stability (explained) | 9/9 | 43 | ionic radius → polarisation of anion; ΔHlatt vs ΔHhyd for sulfates/hydroxides |
| Complex ions: ligands, shape, coordination number | 9/9 | 27 | define complex/bidentate ligand, 3-D diagrams |
| Arenes: electrophilic substitution | 8/9 | 51 | nitration / Friedel–Crafts / halogenation mechanism and directing effects |
| Standard electrode potentials & cells | 8/9 | 39 | cell diagram, E°cell, feasibility, electron flow |
| Rate equations & orders | 8/9 | 37 | initial-rates table → orders, rate equation, k with units |
| Phenylamine & azo dyes | 8/9 | 33 | Sn/HCl reduction, HNO2 below 10 °C, coupling in alkali |
| Ksp & common-ion effect | 8/9 | 31 | Ksp from solubility or pH; units; common-ion prediction |
| Isomerism in complexes | 8/9 | 24 | cis/trans and optical isomers of octahedral complexes |
| Buffers | 7/9 | 31 | definition, two equations, pH from Ka and ratio |
| Amides | 7/9 | 28 | acyl chloride + amine mechanism, amide hydrolysis, weak basicity |
| Gibbs free energy & feasibility | 7/9 | 27 | ΔG = ΔH – TΔS, temperature for feasibility, units (÷1000) |
| Condensation polymers | 7/9 | 20 | polyester/polyamide repeat units from monomers and back |
| Relative acidity | 7/9 | 19 | ethanol < water < phenol < carboxylic acid < chloro-acid, with reasons |
| Colour & d-orbital splitting | 7/9 | 15 | degenerate/non-degenerate, ΔE, complementary colour, why Ag⁺/Cu⁺/Zn²⁺ are colourless |
| Amino acids, peptides, electrophoresis | 6/9 | 25 | zwitterion/ionic forms vs pH, isoelectric point, dipeptide drawing |
| Redox titrations (MnO4⁻, Cr2O7²⁻) | 6/9 | 23 | multi-step titration with ratio 1:5 or 2:5 |
| Lattice energy & Born–Haber | 5/9 | 27 | definitions, cycle with 2× factors, trend with ionic radius/charge |

### P5

- **Two questions every session.** Q1 is usually quantitative (titration, gas or calorimetry), with a plan-style opening.
- **Making up a standard solution** (from a solid, or by dilution) is in 8 of 9 sessions, ≈ 3 marks each. It is the closest thing to a guaranteed P5 mark.
- **A graph task is in every session:**
  - plot with a line of best fit;
  - circle and explain the anomaly;
  - gradient from two line points, to 3 s.f.;
  - use the gradient to get Ea, ΔH, an order or a constant (in 7 of 9).
- **Percentage error** (single vs double reading) is in 7 of 9 sessions.

### P3

- **Q3 is always qualitative analysis**, in all 18 Paper 33/34 papers 2022–2026.
- **A titration is in at least one question of 13 of 18 papers** (12 titration experiments, plus a rate followed by quenching titration in 34/2024-ON).
- **A results table with burette readings to 0.05 cm³** (≈ 7–8 marks) is effectively certain when there is a titration.

---

## 4. Rarely tested, and trends

### Rarely tested in this sample (variant 2)

- **P2:**
  - **States of matter:** 3 marks in nine papers (the ideal gas equation lives in P1).
  - **Carbonyl compounds:** 2 sessions.
  - **Polymerisation and nitrogen & sulfur:** 3 sessions each.
  - **Kinetics, Group 17 and AS nitrogen compounds (amines, nitriles):** 4 sessions each.
  - **Carboxylic acids:** 5 sessions.
- **P4:**
  - **Partition coefficient:** 2026 only.
  - **Chromatography (TLC Rf, GC retention):** 2022-ON and 2023-ON only.
  - **Halogenoarenes vs halogenoalkanes:** 2023-MJ and 2024-ON.
  - **Enthalpies of solution & hydration:** 2022-ON and 2024-ON.
  - **Electron affinity:** 3 sessions.
  - **Nernst equation:** 4 sessions, 8 marks.
  - **ΔG–E°cell link:** 3 sessions.
  - **Phenol chemistry:** 3 sessions.
  - **Carbonyl chemistry at A Level:** 2 sessions.
  - **Never seen in variant-2 P4:** an Arrhenius-type calculation (it appears in P5 2022-MJ instead), a halogenoarene mechanism, and an addition polymer as a main question.
- **P1:**
  - **Organic synthesis:** 4 of 9 sessions.
  - **Nitrogen compounds (nitriles/amines):** 5 of 9 sessions.

### Trends from 2022 to 2026

**Earlier (2022–23, 4 sessions) vs later (2025–26, 3 sessions), share of each paper's marks:**

| Change | P1 | P2 | P4 |
|---|---|---|---|
| Atomic structure | 5.6 → 5.0% | **4.6 → 11.1%** | – |
| Chemical bonding | 5.6 → 6.7% | **15.4 → 8.9%** | – |
| Hydrocarbons | 5.0 → 5.0% | **4.6 → 15.0%** (free-radical substitution of alkanes, 12 marks in 2025-ON + 2026-MJ) | 8.8 → 4.7% (arenes absent in 2026-MJ) |
| Organic synthesis | 1.2 → 0.8% | **8.8 → 2.2%** | 1.8 → 5.0% |
| Halogen compounds | 3.8 → 4.2% | 7.1 → 2.2% | – |
| Nitrogen compounds | **0.6 → 4.2%** | 1.2 → 1.7% | 10.8 → 13.3% |
| Transition complexes | – | – | **15.5 → 11.0%** |
| Lattice / Born–Haber | – | – | **6.8 → 2.0%** (none in 2025-MJ or 2026-MJ) |
| Equilibria | 5.0 → 5.0% | 7.9 → 5.6% | 8.5 → 11.0% |
| Kinetics | 4.4 → 3.3% | 1.7 → 4.4% | 7.0 → 8.7% |

Other observations:
- **Area balance is stable.** Physical/Inorganic/Organic stays near 40/20/35 in every paper.
- **Fewer, longer questions in P2.** The count swings between 3 and 6, and from 2023 alternates 5 (May/June) and 4 (Oct/Nov), until 6 in 2026-MJ.
- **More numerical work at A Level.** Titration-style stoichiometry entered P4 in 2025-MJ (Sr(OH)2 titration) and 2026-MJ (ethanedioate mixture, 5 marks).
- **Both 2026 papers lean on synthesis:** P4 2026 has two "fill in the route" questions (10 marks).
- **Grade thresholds have risen steadily (§8).** The P4 A threshold went from 61 (2022-MJ) to 63–69 (2025–26), and the A Level A from 153 to 168–174. Papers did not obviously get easier, so this most likely reflects the return to pre-pandemic grading standards.
- **2026 format changes:** "Figure", ⦵ and "London dispersion forces" (§1a).

---

## 5. Practical papers: experiment types

### P5 contexts (variant 2)

| Session | Question 1 | Question 2 |
|---|---|---|
| 2022-MJ | molar gas volume from Mg + HCl (gas collection over water) | rate of KI-catalysed H2O2 decomposition vs temperature → log rate vs 1/T → Ea |
| 2022-ON | % CaCO3 in eggshell by back titration | diffusion rate of KMnO4 through a gel (tangent gradient; K2Cr2O7 comparison) |
| 2023-MJ | preparation of benzoic acid by hydrolysis of methyl benzoate (reflux, filtration, % yield, limiting reagent) | Kw vs temperature → log Kw vs 1/T → ΔH of water dissociation |
| 2023-ON | thermometric titration HCl/NaOH → concentration and ΔHneut | Zn + HCl rate vs concentration (1/t graph, order, surface area) |
| 2024-MJ | indirect ΔH for CaCO3 decomposition (calorimetry with extrapolation + Hess) | Fe³⁺/SCN⁻ equilibrium by colorimetry at different T → ΔH |
| 2024-ON | Na2CO3 standard solution, titration and evaporation to NaCl | mass of sulfur reacting with metal M → gradient → formula of sulfide |
| 2025-MJ | adsorption of ethanedioic acid on activated carbon (dilution, titration, curved graph, q0) | ΔHc of butane by calorimetry, heat loss, % error |
| 2025-ON | Kc for Ag⁺ + Fe²⁺ ⇌ Ag + Fe³⁺ (Volhard-type titration with KSCN) | conductometric titration of sulfate with Ba(OH)2, plus a gravimetric alternative |
| 2026-MJ | formula of a polyiodide (CH3)4NI(2n+1) (standard solution, crystallisation, titration) | order of a persulfate reaction from a log–log graph; error vs gradient |

- **Titration in some form: 6 of 9 sessions.**
- **A log/1/T graph** giving Ea or ΔH: 3 of 9 sessions.
- **Calorimetry: 3 of 9 sessions.**

### P3 variant 33 (tagged)

- **2023-MJ:**
  - Q1: redox titration, KMnO4 vs Fe²⁺ formed from hydroxylamine; deduce the reacting ratio.
  - Q2: thiosulfate/acid rate at several concentrations; order from data, % error, improvements.
  - Q3: qualitative analysis of a solid mixture of two salts and an N-containing ion.
- **2025-MJ:**
  - Q1: KMnO4/H2O2 titration.
  - Q2: the same H2O2 concentration found thermochemically (temperature rise, energy change, comparison of methods).
  - Q3: MnO2 as oxidant and catalyst; identification of ions in two solutions.
- **2026-MJ:**
  - Q1: H2 volume from Mg + a carboxylic acid (gas collection, moles, ionic equation, % error).
  - Q2: NaOH titration of a substituted carboxylic acid → Mr; halide test after hydrolysis → identity of the substituent.
  - Q3: C=C test on the acid, then cations/anions in two solutions.

### All 36 quantitative experiments in Papers 33 and 34, 2022–2026

Classified from the method text; Q3 is qualitative analysis in all 18 papers.

| Experiment type | Count | Where |
|---|---:|---|
| Titration (acid–base, KMnO4 redox, iodine/thiosulfate) | 12 | 33: 22MJ, 22ON, 23MJ, 23ON, 24MJ, 24ON (Q2), 25MJ, 26MJ (Q2); 34: 24MJ, 25MJ, 25ON (Q2), 26MJ |
| Thermochemistry (ΔH neutralisation, solution, Hess pair, thermometric titration) | 10 | 33: 23ON, 24MJ, 25MJ, 25ON; 34: 22MJ, 22ON, 23MJ, 23ON, 25MJ, 25ON |
| Gravimetric / thermal decomposition (MCO3, hydrated salts, basic carbonates) | 7 | 33: 22MJ, 22ON; 34: 22ON, 23MJ, 24MJ, 24ON, 26MJ |
| Rates (thiosulfate–acid, Fe³⁺ + I⁻, iodine–propanone with quenching) | 4 | 33: 23MJ, 25ON; 34: 23ON, 24ON |
| Gas evolution / mass loss (carbonate + acid, Mg + acid) | 3 | 33: 24ON, 26MJ; 34: 22MJ |

- **Organic tests appear in Q3 in several papers** (hot-water-bath tests for C=C, alcohols, carbonyls, halides), e.g. 34/2022-MJ, 34/2023-MJ, 33/2025-ON, 33/2026-MJ.

---

## 6. Question styles (P2, P4 and P5, by command word)

Keyword-based on the command phrase of each part. Each part is counted once, by its first matching style in the order shown.

| Style | P2 marks (%) | P4 marks (%) | P5 marks (%) |
|---|---:|---:|---:|
| Explain / suggest / compare / predict | 130 (24%) | 189 (21%) | 77 (29%) |
| State / name / identify (short recall) | 118 (22%) | 127 (14%) | 78 (29%) |
| Calculation | 49 (9%)\* | 152 (17%) | 88 (33%) |
| Equations | 64 (12%) | 78 (9%) | 4 (1%) |
| Reagents, conditions, synthesis routes | 56 (10%) | 89 (10%) | 1 |
| Drawing structures / 3-D diagrams / repeat units | 50 (9%) | 115 (13%) | 22 (8%, graphs) |
| Definitions ("define", "what is meant by") | 25 (5%) | 52 (6%) | – |
| Mechanisms with curly arrows | 25 (5%) | 50 (6%) | – |
| Spectra / chromatography interpretation | 23 (4%) | 48 (5%) | – |

\*Many P2 calculations sit inside "Use the data…" or "Deduce…" parts and are counted under other styles. By hand the P2 calculation share is nearer 15–20% (Kp, Hess, titration, Ar, ideal gas, ΔH from q).

**Mechanisms are examined in every P2 and every P4:**
- **P2:**
  - electrophilic addition: 4 times (steam/H3PO4, Br2, HBr);
  - SN1/SN2: 3 times;
  - free-radical substitution written as propagation equations: 2 times (2025-ON, 2026-MJ).
- **P4:**
  - electrophilic substitution on an arene: 6 of 9 (nitration, Friedel–Crafts methylation, chlorination, SOBr2 bromination);
  - nucleophilic addition–elimination of an acyl chloride with an amine/NH3: 3 of 9;
  - curly arrows on the carbonate ion decomposing: 2023-MJ and 2026-MJ;
  - radical or two-step mechanisms in kinetics: 2024-MJ, 2025-MJ and 2026-MJ.

**Recurring formats:**
- "Complete the table" of reagents and observations (2,4-DNPH, Tollens', Fehling's, alkaline I2, Br2, Na, Na2CO3) is in most P2s and many P4s.
- So is a three-step "fill in the route" synthesis.
- P4 almost always includes one 3-D diagram (complex isomers or optical isomers) and one condensation-polymer repeat unit.

---

## 7. Common mistakes (examiner reports for 2022-MJ, 2022-ON, 2023-MJ and 2024-MJ; variants 12, 22, 42, 52, 33)

Paraphrased from the reports.

### Paper 1 (MCQ)

- **Counting stereoisomers:**
  - candidates added (2 + 2 + 2) instead of multiplying (2 × 2 × 2) the cis/trans and chiral possibilities (2022-MJ Q26);
  - they missed optical isomers formed by elimination (Q28);
  - they missed positional isomers among the chloroethanes (2023-MJ Q28, nine products).
- **Ideal-gas behaviour:** candidates forgot that hydrogen bonding (steam) makes a gas least ideal (2022-MJ Q7). Only 27% knew that p ∝ 1/V (2022-ON Q15).
- **Reading the question:**
  - giving the identity of the product instead of the starting alcohol from an IR spectrum (2024-MJ Q40);
  - missing that NH3(aq) contains water that hydrolyses SiCl4 (2022-MJ Q17).
- **Bond energies:** candidates did not derive C–H from the atomisation of CH4 before using it (2022-ON Q16, 23% correct).
- **VSEPR:** the lone pair in O3 makes the angle ≈ 117°, not 120° (2022-ON Q13).
- **Organic recall:**
  - excess HBr also substitutes –OH (2022-ON Q29);
  - methyl ketones give the tri-iodomethane test but not Fehling's (2022-ON Q35);
  - Cl⁺ and O are radicals because they have unpaired electrons (2024-MJ Q4);
  - NH4⁺ is a weak acid (2023-MJ Q23).
- **Periodicity:** the formulae of Period 3 oxides are less well known than the chlorides (2023-MJ Q18).

### Paper 2 (AS structured)

- **Definitions lose marks on precision:**
  - ΔHf without "elements in their standard states" ("standard conditions" is not the same thing);
  - Brønsted–Lowry acid as "releases" rather than "donates" protons;
  - covalent bond without "two nuclei attracted to a shared pair";
  - dynamic equilibrium without "rates equal" plus "concentrations constant" (some think concentrations become equal);
  - tertiary halogenoalkane described vaguely.
- **Calculations:**
  - working per mole of the wrong species (per mol Mg instead of per mol Mg3N2; 2 mol HI instead of 1 mol);
  - no negative sign on an exothermic ΔH;
  - Ar 24 instead of 24.3;
  - J instead of kJ;
  - early rounding of intermediate values;
  - forgetting a dilution factor in a titration back-calculation;
  - confusing "amount" with "concentration";
  - confusing 2x with x².
- **Structure and bonding:**
  - covalent dot-and-cross drawn for an ionic compound;
  - intermolecular forces confused with covalent bonds (e.g. "giant molecular with intermolecular forces" for silicon);
  - "van der Waals" used ambiguously;
  - two hydrogen bonds drawn between a pair of NH3 molecules;
  - no lone pair or δ charges on hydrogen-bond diagrams.
- **Inorganic equations:**
  - NaCl "reacting" with water to give HCl and NaOH;
  - PCl5 + water giving phosphorus oxide instead of H3PO4;
  - Cl2 + hot NaOH unbalanced;
  - Cl written for Cl2;
  - halogen and halide confused;
  - claiming a reaction between Cl⁻ and Br2.
- **Mechanisms:**
  - arrows that do not start at a lone pair or bond, or that point the wrong way;
  - no lone pair on CN⁻ or OH⁻;
  - SN1 and SN2 features mixed;
  - homolytic and heterolytic confused.
- **Organic recall:**
  - "reflux" misunderstood;
  - NaBH4 given where LiAlH4 is needed (to reduce an acid);
  - KCN and HCN conditions confused (hydroxynitrile vs nitrile);
  - "no movement" instead of "no rotation" about C=C;
  - missing the "e" in propanenitrile.
- **Spectra:**
  - fragment ions written without a + charge;
  - listing every possible IR bond rather than using the data given;
  - quoting C–H absorptions that do not distinguish the compounds.
- **Observations must be observable:** e.g. "bubbles form faster". Vague phrases like "more vigorous" score nothing.

### Paper 4 (A Level structured)

- **Definitions:**
  - lattice energy without "1 mole of ionic compound formed from gaseous ions";
  - first electron affinity confused with ionisation energy;
  - Kstab not described as an equilibrium constant;
  - conjugate acid–base pair defined as just "an acid and a base";
  - standard cell potential confused with standard electrode potential;
  - buffer without "small amounts of acid or base".
- **Energy cycles:**
  - missing ×2 or ÷2 factors (2 × electron affinity of Cl, ½ bond energy);
  - using the wrong data value;
  - sign errors.
- **ΔG:**
  - forgetting to divide ΔS by 1000;
  - using T = 25 instead of 298;
  - ΔS from a ΔG–T graph not converted to J K⁻¹ mol⁻¹.
- **Group 2 / thermal stability:** the polarisation of the **anion** by a smaller cation must be stated. Some wrote "polarisation of the cation" or answered about the wrong compound class.
- **Transition metals:**
  - charges written outside the brackets in Kstab expressions;
  - wrong complex formulae (e.g. [CoCl4]⁻);
  - 3-D diagrams that cannot be octahedral or tetrahedral;
  - "energy gap" without "between split d-orbitals";
  - not knowing why Ag⁺ (full d-subshell) is colourless.
- **Acids and buffers:**
  - Henderson–Hasselbalch used with the ratio inverted, or where a simple Ka calculation is needed;
  - missing that [HA] = [A⁻] gives pH = pKa;
  - not converting moles to concentration.
- **Kinetics:**
  - units of k with the wrong time unit (min vs s);
  - "constant half-life" claimed for a second-order reaction;
  - radical species written without the dot;
  - heterogeneous catalysis described with vague words ("the gas") rather than naming the species that adsorb and desorb.
- **Electrochemistry:**
  - "cell" used for "electrode";
  - no Pt electrode or H⁺ in a half-cell diagram;
  - Mg⁺ used instead of Mg²⁺ in Faraday calculations;
  - not saying which potential (E or Ecell) changes on dilution.
- **Organic mechanisms (most-cited weaknesses):**
  - In electrophilic substitution: the arrow must start inside the ring; the intermediate's partial ring must exclude the sp³ carbon; the C–H bond (not the H) breaks; H⁺ must be shown at the end.
  - In addition–elimination of acyl chlorides: show the N lone pair, the C=O dipole, the arrow to C=O and the C–Cl breaking.
- **Organic chemistry:**
  - basicity explanations without "lone pair on N accepts a proton";
  - acidity explanations without "weakens the O–H bond / stabilises the anion";
  - diazonium written as –N≡N– in the dye;
  - coupling conditions not "alkaline, below 10 °C";
  - NaNO3 instead of NaNO2;
  - Sn/HCl without "concentrated, heat";
  - trivalent carbon in peptides, or –COO–NH– links.
- **NMR:**
  - number of H atoms not totalling the formula;
  - misnamed splitting patterns ("quartet" is required);
  - imprecise use of D2O and TMS.
- **Presentation:** write over nothing; cross out clearly; label multi-step calculations; balance every equation for atoms and charge; write formulae with correct case (KMnO4).

### Paper 5

- **Percentage error:**
  - double the half-graduation only when two readings are taken (burette, balance, thermometer), not for a pipette or measuring cylinder;
  - using the wrong measured value as the denominator.
- **Standard solutions:**
  - dissolve in less water than the final volume;
  - transfer to a volumetric flask with rinsings;
  - never transfer with a pipette/burette after dissolving;
  - do not choose a measuring cylinder;
  - do not choose the wrong flask size.
- **Weighing by difference** was often not understood.
- **Mean titre:** use concordant titres only (within 0.10 cm³). Many averaged everything, including the rough titre.
- **Graphs:**
  - lines forced through the first or last point (including the anomaly);
  - gradients from table points rather than from the line;
  - coordinates too close together;
  - gradients not to 3 s.f.
- **Anomalies need a direction** (e.g. "measured too early"). "Measured wrongly" scores nothing. Remember continuous experiments.
- **Lists:** extra answers beyond those asked for are penalised if any is wrong (controlled variables, safety).
- **Lab practice gaps:**
  - why reflux is used;
  - removing anti-bumping granules;
  - removing oxide from Mg ribbon (sandpaper);
  - heating to constant mass.

### Paper 3 (33)

- Record **all** burette readings, including the rough titre, to ##.#0 or ##.#5 cm³.
- Stop when two accurate titres agree within 0.10 cm³; select titres within 0.20 cm³ for the mean.
- Use the volume actually measured in % error, and do not double the error for a single reading.
- In qualitative work, use correct terms: a solid dissolving is not a precipitate. Test gases as soon as heating starts (litmus, limewater ready). Use the Qualitative Analysis Notes.
- "Improvements" must respect the stated limits, e.g. extra separate experiments rather than repeats, and no changes of apparatus when this is forbidden.

---

## 8. Grade thresholds (variant-2 options)

### Component thresholds, A / E (raw)

| Session | P1 (12) /40 | P2 (22) /60 | P3 (33) /40 | P4 (42) /100 | P5 (52) /30 |
|---|---|---|---|---|---|
| 2022-MJ | 24 / 11 | 32 / 7 | 21 / 7 | 61 / 19 | 20 / 10 |
| 2022-ON | 24 / 11 | 32 / 9 | 25 / 11 | 57 / 20 | 21 / 8 |
| 2023-MJ | 27 / 11 | 36 / 9 | 22 / 10 | 60 / 18 | 21 / 10 |
| 2023-ON | 26 / 11 | 39 / 13 | 27 / 13 | 60 / 21 | 21 / 10 |
| 2024-MJ | 27 / 11 | 38 / 11 | 25 / 11 | 63 / 20 | 20 / 9 |
| 2024-ON | 25 / 11 | 40 / 18 | 23 / 10 | 67 / 22 | 24 / 11 |
| 2025-MJ | 27 / 12 | 39 / 14 | 22 / 12 | 69 / 22 | 22 / 11 |
| 2025-ON | 25 / 12 | 43 / 20 | 26 / 13 | 63 / 21 | 23 / 11 |
| 2026-MJ | 25 / 11 | 37 / 12 | 22 / 10 | 66 / 20 | 23 / 11 |

### Overall thresholds (weighted marks)

| Session | A Level AY (12-22-33-42-52), /260: A* / A / B / C / D / E | AS S3 (12-22-33), /130: A / B / C / D / E |
|---|---|---|
| 2022-MJ | 184 / 153 / 122 / 98 / 75 / 52 | 72 / 56 / 45 / 34 / 23 |
| 2022-ON | 177 / 153 / 129 / 104 / 80 / 56 | 75 / 61 / 50 / 39 / 28 |
| 2023-MJ | 197 / 161 / 125 / 102 / 79 / 56 | 80 / 60 / 49 / 38 / 28 |
| 2023-ON | 190 / 166 / 142 / 116 / 90 / 65 | 85 / 69 / 57 / 45 / 34 |
| 2024-MJ | 200 / 167 / 134 / 109 / 84 / 59 | 84 / 66 / 54 / 42 / 30 |
| 2024-ON | 197 / 173 / 149 / 122 / 96 / 70 | 82 / 70 / 59 / 48 / 37 |
| 2025-MJ | 206 / 174 / 142 / 117 / 92 / 68 | 83 / 68 / 57 / 46 / 35 |
| 2025-ON | 199 / 174 / 149 / 124 / 99 / 74 | 88 / 76 / 64 / 53 / 42 |
| 2026-MJ | 201 / 168 / 135 / 110 / 86 / 62 | 79 / 62 / 51 / 41 / 31 |

**Variant 4 for comparison (AC = 14-24-37-44-54; AS 14-24-37):**

| Session | A Level A* / A / E | AS A / E |
|---|---|---|
| 2025-MJ | 206 / 177 / 71 | 85 / 35 |
| 2025-ON | 207 / 179 / 80 | 89 / 41 |
| 2026-MJ | 215 / 184 / 71 | 92 / 37 |

### Reading the thresholds

- **As a percentage of 260, the A Level A rose from 59% (2022) to 66–67% (2024-ON to 2025-ON).** It was 65% in 2026-MJ. The A* sits at 76–79% from 2024-MJ on.
- **The AS A rose from 55% (2022-MJ) to 61–68%** (2025-ON highest at 68%).
- **P2 is the paper with the lowest E threshold relative to its maximum** (7–20/60). A candidate who secures the bankers in §3 is well above E.
- **P4 A needs about two-thirds of the marks** (61–69/100). P5 A needs 20–24/30, so P5 marks are "dear" at the top.
- **Oct/Nov thresholds have been at least as high as May/June** since 2023-ON.

---

## 9. Revision priorities

### AS (P1 + P2), in order of marks per hour of revision

1. **Period 3:**
   - oxides and chlorides with water (equations with state symbols, pH, bonding and structure);
   - melting-point trend explained by structure;
   - amphoteric Al2O3/Al(OH)3 with NaOH (product formula).
2. **Bonding:**
   - metallic diagram (cations in a sea of delocalised electrons);
   - dot-and-cross for ions, dative bonds (Al2Cl6, NH4⁺, SCN⁻);
   - VSEPR angles (lone pair –2.5° per pair; O3 ≈ 117°);
   - σ/π overlap and sp/sp²/sp³;
   - hydrogen-bond diagrams (lone pair, δ+/δ–, 180°);
   - id–id strength vs number of electrons.
3. **Atomic structure:** particle counts in ions, full configurations (Fe³⁺, Cr, Cu), IE equations and anomalies (Mg/Al, P/S), radius changes on ionisation.
4. **Calculations drill:**
   - pV = nRT with unit conversion (cm³ → m³, °C → K);
   - empirical formula from combustion;
   - titration back-calculation with dilution factor;
   - Ar from abundances;
   - q = mcΔT → ΔH per mole with sign;
   - Hess from ΔHf/ΔHc;
   - bond energies per mole asked;
   - Kp from partial pressures.
5. **Equilibria:** Kc/Kp expressions, Le Chatelier explanations naming the forward/backward reaction and "fewer gas moles", Haber/Contact conditions.
6. **Redox:** oxidation numbers (including S and V species), half-equations → full equations, disproportionation of Cl2 (cold and hot NaOH).
7. **Organic reagent and condition tables:**
   - halogenoalkanes: aq NaOH / ethanolic NaOH / KCN in ethanol / NH3 in ethanol;
   - alcohols: K2Cr2O7 reflux vs distil, SOCl2/PCl5, H3PO4/Al2O3;
   - alkenes: cold/hot KMnO4, steam, HBr;
   - nitrile hydrolysis (acid and alkali);
   - LiAlH4 vs NaBH4;
   - test observations (2,4-DNPH orange, Tollens' silver mirror, Fehling's red, alkaline I2 yellow).
8. **Mechanisms:** SN1/SN2, electrophilic addition with carbocation stability, and free-radical substitution as initiation/propagation/termination equations (rising in 2025–26).
9. **Isomerism:** count stereoisomers by multiplying; name structural isomers; state the conditions for cis/trans.
10. **Spectra:** M+1 → number of carbons; Cl/Br M+2 patterns; fragment formulae with + charge; IR ranges for O–H (alcohol vs acid), C=O, C=C.

### A Level (P4)

1. **Transition metals (expect a 10–20 mark question):**
   - definitions (transition element, complex, ligand, bidentate);
   - Co²⁺/Cu²⁺ ligand exchanges with NH3, conc. HCl and NaOH, with colours and formulae;
   - Kstab expressions;
   - 3-D cis/trans and optical isomers;
   - d-splitting and colour;
   - why Ag⁺/Cu⁺/Zn²⁺ are colourless;
   - a MnO4⁻ or Cr2O7²⁻ titration with ratio and Mr deduction.
2. **Nitrogen compounds:**
   - basicity order (alkylamines > NH3 > phenylamine > amides) with lone-pair reasoning;
   - phenylamine from nitrobenzene (Sn/conc. HCl, heat);
   - diazotisation and coupling conditions;
   - acyl chloride + amine mechanism;
   - amide hydrolysis products;
   - amino-acid ionic forms at given pH;
   - electrophoresis;
   - dipeptide and polyamide drawings.
3. **Acid–base and solubility equilibria:**
   - pH of a weak acid from Ka;
   - buffer pH (moles after mixing, then ratio);
   - two buffer equations;
   - Ksp from solubility or pH (with units) and the common-ion effect;
   - partition coefficient (new in 2026).
4. **Electrochemistry:**
   - labelled cell diagram (Pt, H⁺, 1 mol dm⁻³, 298 K, 101 kPa);
   - E°cell and feasibility;
   - Nernst for concentration changes;
   - ΔG = –nFE;
   - Faraday calculations (mol e⁻ per ion).
5. **Kinetics:**
   - orders from initial-rates tables with explicit pairs of experiments;
   - k with units;
   - half-life (first order only);
   - rate-determining step consistent with the rate equation;
   - heterogeneous catalysis in three named steps (adsorption, weakened bonds, desorption).
6. **Arenes and phenol:**
   - electrophile generation equations (NO2⁺, CH3⁺, Cl⁺) and the mechanism drawn to the examiners' points;
   - directing effects (–CH3, –OH, –NH2 to 2,4; –COOH, –NO2 to 3);
   - side-chain oxidation (KMnO4);
   - phenol vs benzene bromination;
   - acidity order.
7. **Group 2 at A Level:** thermal stability by cation radius → anion polarisation; sulfate and hydroxide solubility through ΔHlatt vs ΔHhyd.
8. **Energetics:**
   - Born–Haber cycles with all ×2 factors;
   - trends in lattice energy (radius, charge);
   - enthalpy of solution/hydration cycles;
   - ΔS sign from gas moles;
   - ΔG and the temperature at which a reaction becomes feasible (ΔS ÷ 1000).
   - Absent in 2026-MJ; still likely to return.
9. **NMR and synthesis:** proton NMR tables (shift, splitting, number of H, D2O exchange); carbon-13 peak counting; three-step route questions with reagents and conditions.
10. **Polymers:** polyester/polyamide repeat units (displayed linkage), monomers from a polymer section, degradability by hydrolysis.

### Practical (P3 and P5)

1. **Standard solution and dilution procedure** (≈ 3 marks in 8 of 9 P5s), written as numbered steps with named apparatus and capacities.
2. **Percentage error** (single vs double reading); **concordant mean titre**; significant figures (3 s.f. by default; burette to 0.05 cm³).
3. **Graph routine:**
   - plot accurately;
   - line of best fit that ignores the anomaly;
   - circle and explain the anomaly with a direction;
   - gradient from line points far apart, to 3 s.f.;
   - convert to Ea/ΔH/order using the given equation.
4. **Titration and calorimetry calculations** end to end, including back titrations and q = mcΔT with sign and per-mole scaling.
5. **Qualitative analysis** (every P3): the cation/anion test notes, gas tests at the start of heating, correct observation vocabulary, ionic equations with state symbols, plus the organic tests (C=C, halide after hydrolysis).
