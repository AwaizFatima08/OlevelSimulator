# Cambridge IGCSE Chemistry (0620): topic-frequency analysis, 2022–2026

Built from local files only (`papers/igcse/chemistry-0620/`), 19 Oct 2026.
Per-part data: `0620-questions.csv` (1,063 rows: session, paper, variant, question, part, topic, subtopic, marks).

## 1. Method and sample

- **Sessions:** 9 (May/June and Oct/Nov 2022 to 2025, plus May/June 2026).
- **Main sample (Extended route):** variant 2 of Papers 2, 4 and 6 (22, 42, 62) in every session, every question part tagged. That is 27 papers and 1,440 marks.
- **Practical Test (Paper 5):** variant 52 tagged for June 2023, June 2025 and June 2026 (120 marks).
- **Core (Papers 1 and 3):** tagged item by item since 26 Oct 2026 (section 12).
- **Marks:** MCQ items are 1 mark each. For Papers 4–6 the marks come from the `[n]` markers in the question paper, read by a script. **Every paper adds up exactly to its cover total** (40 / 80 / 40 / 40), and every question matches its `[Total: n]` line.
- **Classification:** each part goes to **one** topic and subtopic, chosen by the skill that earns the marks (the same rules as the 5070 analysis):
  - a calculation of Ar from isotope abundances goes to *Atomic structure & isotopes*; a mole, concentration or gas-volume calculation goes to *Stoichiometry*;
  - burette readings, graphs and "suggest an improvement" parts in a practical go to *Experimental techniques*; a "which experiment is fastest" or a rate explanation in a practical goes to *Rate of reaction*;
  - the 6-mark planning question always goes to *Practical planning & evaluation*.

  Treat the figures as good estimates (±1–2 marks per topic per paper).
- **Examiner reports used:** June 2022, Nov 2022, June 2023 and June 2025 (plus the March 2022 report, which sits in the June 2022 folder). **Grade thresholds:** 8 of 9 sessions. There is no threshold sheet for June 2024 in the local files.
- **2026 files** use long names (`0620-chemistry-june-2026-…`) and carry website watermarks; these were stripped before parsing.

## 2. Paper structure (from the cover pages)

| Component | Route | Length | Marks | Format | Weighting* |
|---|---|---|---|---|---|
| Paper 1 Multiple Choice (Core) | Core | 45 min | 40 | 40 four-option items | 30 % |
| Paper 2 Multiple Choice (Extended) | Extended | 45 min | 40 | 40 four-option items | 30 % |
| Paper 3 Theory (Core) | Core | 1 h 15 min | 80 | structured questions, all compulsory | 50 % |
| Paper 4 Theory (Extended) | Extended | 1 h 15 min | 80 | 6 structured questions (6–22 marks each), all compulsory | 50 % |
| Paper 5 Practical Test | both | 1 h 15 min | 40 | 2023+: 3 questions (experiment ~19–20, qualitative analysis ~14–15, plan 6) | 20 % |
| Paper 6 Alternative to Practical | both | 1 h | 40 | 4 questions (apparatus 6–9, experiment 15–19, qualitative analysis 7–11, plan 6) | 20 % |

\*Weighting inferred from the threshold sheets: every option is out of 200 after weighting. For Extended, 40 (P2) + 80 (P4) + 40 (P5/6) raw fits P2 ×1.5, P4 ×1.25, P6 ×1.

**Options:** Extended candidates take P2 + P4 + P5 or P6 (options BY = 22/42/52 and CY = 22/42/62 for variant 2). Core candidates take P1 + P3 + P5 or P6 (FY / GY) and can get at most grade C. The threshold sheets also list a 90-mark "Component 50"; no paper for it exists locally.

**What changed in 2023 (new syllabus), as seen in the papers:**
- **The format did not change.** Durations, marks and question counts are the same in 2022 and 2023–26. So the change is in content, not structure. This is unlike 5070, where the papers themselves were rebuilt.
- **MCQ order now follows the syllabus.** In 2022 the experimental-techniques items came near the start (Q2–3). From 2023 they come last (about Q38–40).
- **Paper 6 now gives the qualitative-analysis notes.** In 2022 they were printed in Paper 5 but not in Paper 6. From 2023 both papers include them.
- **Paper 5 and Paper 6 now mirror each other.** In June 2023, 2025 and 2026, P5 Q1 is the same experiment as P6 Q2, and the planning question is word-for-word the same (silicon dioxide in metal polish; solubility of magnesium sulfate at 50 °C; extracting tin from its ore).
- **New-syllabus content now appears regularly:**
  - oxidation numbers: 0 mentions in the 2022 papers, 3–5 per session since 2023;
  - Roman numerals in names (chlorine(I) oxide, manganate(VII));
  - amphoteric oxides;
  - dissociation equations for weak acids, using the reversible arrow;
  - pressures in kPa;
  - how sulfur dioxide is obtained for the Contact process;
  - the role of UV light in substitution;
  - the colours and states of the halogens;
  - greenhouse-effect mechanisms (absorption and re-emission of thermal energy);
  - locating agents in chromatography;
  - flue-gas desulfurisation.

  The June 2023 report says that some candidates "were not familiar with the newer content".
- **Old-syllabus content has gone:** Brownian motion; the uses of sulfur dioxide (food preservative); lime, slaked lime and limestone chemistry; thermal decomposition of nitrates; zinc extraction and zinc blende.

## 3. Topic list (12 syllabus topics, subtopics used in the CSV)

| # | Topic | Subtopics |
|---|---|---|
| 1 | States of matter | Kinetic particle theory & changes of state (incl. gas P/V/T); Diffusion |
| 2 | Atoms, elements & compounds | Elements, compounds & mixtures; Atomic structure & isotopes; Ions & ionic bonding; Simple covalent molecules; Giant covalent structures; Metallic bonding; Structure and properties compared |
| 3 | Stoichiometry | Formulae & equations (incl. ionic); Relative masses; Moles & reacting masses; Empirical & molecular formulae; Concentration & titration calculations; Gas volumes; % yield, purity & composition |
| 4 | Electrochemistry | Electrolysis products & electrode equations; Electroplating & industrial electrolysis; Cells & hydrogen fuel cells |
| 5 | Chemical energetics | Exothermic & endothermic; Energy profiles & activation energy; Bond-energy calculations |
| 6 | Chemical reactions | Physical vs chemical change; Rate of reaction; Reversible reactions & equilibrium; Industrial processes (Haber, Contact); Redox & oxidation number |
| 7 | Acids, bases & salts | Properties of acids/bases & indicators; Strong/weak acids & pH; Types of oxide; Salt preparation, solubility & hydrated salts |
| 8 | The Periodic Table | Trends & arrangement; Group I; Group VII; Transition elements; Noble gases |
| 9 | Metals | Properties & uses; Alloys; Reactivity series & displacement; Corrosion & rust prevention; Extraction (blast furnace, aluminium) |
| 10 | Chemistry of the environment | Water treatment & tests for water; Fertilisers (NPK); Air pollutants & catalytic converters; Climate change, carbon cycle & photosynthesis; Composition of air |
| 11 | Organic chemistry | Naming, formulae, homologous series & isomers; Fuels, petroleum & cracking; Alkanes; Alkenes; Alcohols; Carboxylic acids & esters; Polymers (addition, condensation, proteins, plastics) |
| 12 | Experimental techniques & chemical analysis | Apparatus & measurement; Separation & purity; Chromatography; Titration technique; Tests for ions, gases & water; Practical planning & evaluation; Results tables, graphs & data analysis |

## 4. Topic weights

### 4a. Theory marks per topic per session (P2 + P4, variant 2, out of 120)

| Topic | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ | % 2022 | **% 2023–26** |
|---|---|---|---|---|---|---|---|---|---|---|---|
| States of matter | 1 | 2 | 1 | 1 | 1 | 3 | 2 | 11 | 2 | 1.2 | 2.5 |
| Atoms, elements & compounds | 21 | 16 | 14 | 12 | 18 | 15 | 26 | 11 | 21 | 15.4 | **13.9** |
| Stoichiometry | 13 | 17 | 11 | 9 | 16 | 10 | 8 | 8 | 8 | 12.5 | 8.3 |
| Electrochemistry | 3 | 3 | 2 | 6 | 2 | 8 | 18 | 4 | 3 | 2.5 | 5.1 |
| Chemical energetics | 2 | 7 | 1 | 14 | 5 | 3 | 2 | 2 | 10 | 3.8 | 4.4 |
| Chemical reactions (rates, equilibrium, redox, Haber/Contact) | 5 | 20 | 22 | 13 | 19 | 17 | 16 | 11 | 14 | 10.4 | **13.3** |
| Acids, bases & salts | 8 | 14 | 17 | 10 | 7 | 9 | 2 | 21 | 14 | 9.2 | 9.5 |
| The Periodic Table | 12 | 5 | 11 | 9 | 6 | 2 | 11 | 3 | 7 | 7.1 | 5.8 |
| Metals | 9 | 6 | 9 | 19 | 15 | 7 | 7 | 11 | 7 | 6.2 | 8.9 |
| Chemistry of the environment | 4 | 3 | 2 | 8 | 10 | 4 | 6 | 8 | 3 | 2.9 | 4.9 |
| **Organic chemistry** | 30 | 21 | 25 | 15 | 20 | 37 | 19 | 25 | 22 | 21.2 | **19.4** |
| Experimental techniques & analysis | 12 | 6 | 5 | 4 | 1 | 5 | 3 | 5 | 9 | 7.5 | 3.8 |
| **Total** | 120 | 120 | 120 | 120 | 120 | 120 | 120 | 120 | 120 | | |

Paper 4 swings a lot from session to session, because one 15–20-mark question can be built around a single topic. Some examples:
- electrochemistry in June 2025 (a 15-mark electrolysis and aluminium question);
- energetics in Nov 2023;
- acids and salts in Nov 2025;
- organic chemistry in Nov 2024 (two whole questions on cracking and polymers).

### 4b. % share by component, 2022 against 2023–26

| Topic | P2 2022 | **P2 2023–26** | P4 2022 | **P4 2023–26** |
|---|---|---|---|---|
| States of matter | 3.8 | 4.3 | 0.0 | 1.6 |
| Atoms, elements & compounds | 10.0 | 11.8 | 18.1 | 15.0 |
| Stoichiometry | 6.2 | 6.4 | 15.6 | **9.3** |
| Electrochemistry | 7.5 | 5.7 | 0.0 | **4.8** |
| Chemical energetics | 3.8 | 3.9 | 3.8 | 4.6 |
| Chemical reactions | 12.5 | 10.4 | 9.4 | **14.8** |
| Acids, bases & salts | 10.0 | 7.5 | 8.8 | 10.5 |
| The Periodic Table | 7.5 | 7.5 | 6.9 | 5.0 |
| Metals | 11.2 | 11.1 | 3.8 | **7.9** |
| Environment | 6.2 | 7.1 | 1.2 | 3.8 |
| Organic chemistry | 17.5 | 17.5 | 23.1 | 20.4 |
| Experimental techniques | 3.8 | 6.8 | 9.4 | 2.3 |

### 4c. Paper 2 is a fixed blueprint (items per topic)

| Topic | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ |
|---|---|---|---|---|---|---|---|---|---|
| States of matter | 1 | 2 | 1 | 1 | 1 | 2 | 2 | 3 | 2 |
| Atoms, elements & compounds | 4 | 4 | 4 | 4 | 4 | 6 | 4 | 6 | 5 |
| Stoichiometry | 3 | 2 | 2 | 3 | 3 | 2 | 3 | 2 | 3 |
| Electrochemistry | 3 | 3 | 2 | 2 | 2 | 2 | 3 | 2 | 3 |
| Chemical energetics | 2 | 1 | 1 | 3 | 1 | 1 | 2 | 2 | 1 |
| Chemical reactions | 5 | 5 | 5 | 4 | 6 | 4 | 3 | 4 | 3 |
| Acids, bases & salts | 4 | 4 | 4 | 3 | 3 | 3 | 2 | 3 | 3 |
| The Periodic Table | 3 | 3 | 3 | 3 | 4 | 2 | 4 | 3 | 2 |
| Metals | 5 | 4 | 5 | 5 | 5 | 4 | 4 | 4 | 4 |
| Environment | 2 | 3 | 1 | 4 | 3 | 2 | 4 | 3 | 3 |
| Organic chemistry | 6 | 8 | 8 | 6 | 7 | 9 | 6 | 6 | 7 |
| Experimental techniques | 2 | 1 | 4 | 2 | 1 | 3 | 3 | 2 | 4 |

Every topic appears in every Paper 2. Items run in syllabus order. A typical paper has:
- 2 on states of matter;
- 4–6 on atoms and bonding;
- 2–3 on stoichiometry;
- 2–3 on electrolysis and cells;
- 1–2 on energetics;
- 3–6 on rates, equilibrium and redox;
- 3 on acids and salts;
- 3 on the Periodic Table;
- 4–5 on metals;
- 3 on the environment;
- 6–9 on organic chemistry;
- 2–4 on experimental techniques.

### 4d. Practical papers: Paper 6 by skill area (marks out of 40)

| Skill area | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ | avg 2023–26 |
|---|---|---|---|---|---|---|---|---|---|---|
| Practical planning & evaluation (6-mark plan + "why/improve" parts) | 14 | 8 | 12 | 10 | 12 | 12 | 12 | 12 | 10 | **11.4** |
| Results tables, graphs & data analysis | 7 | 17 | 10 | 13 | 5 | 10 | 13 | 5 | 10 | 9.4 |
| Tests for ions, gases & water | 10 | 9 | 10 | 9 | 12 | 9 | 10 | 8 | 7 | 9.3 |
| Apparatus & measurement | 2 | 2 | 4 | 4 | 4 | 2 | 4 | 2 | 6 | 3.7 |
| Titration technique | 7 | 0 | 0 | 0 | 7 | 0 | 0 | 9 | 0 | 2.3 |
| Separation & chromatography | 0 | 4 | 0 | 3 | 0 | 0 | 0 | 4 | 3 | 1.4 |
| Context topics (rate, electrolysis, energetics, pH) | 0 | 0 | 4 | 1 | 0 | 7 | 1 | 0 | 4 | 2.4 |

About **94 % of Paper 6 marks are experimental skills**, not topic content. The paper has a stable four-part layout:

1. **Q1 (6–9 marks): an apparatus diagram.** You name the apparatus, mark where to heat, and explain a safety or design feature. Examples:
   - thermal decomposition;
   - reducing a metal oxide with methane or ammonia;
   - magnesium with steam;
   - electrolysis of molten mercury(II) bromide;
   - chromatography;
   - fractional distillation of alkanes;
   - finding the mass of calcium carbonate in a shell or eggshell.
2. **Q2 (15–19 marks): a quantitative experiment.** You record readings, plot a graph and interpret it, then evaluate the method. The experiments so far:
   - titration (June 2022, June 2024, Nov 2025);
   - thermometric titration or neutralisation (Nov 2022, Nov 2023);
   - rate against temperature with iron(III) nitrate and thiosulfate (June 2023, Nov 2024);
   - energy released when lithium chloride dissolves (June 2025);
   - gas volume against acid volume (June 2026).
3. **Q3 (7–11 marks): qualitative analysis.** You identify cations, anions and gases from test results.
4. **Q4 (6 marks): a written plan.**

**Paper 5** (June 2023, 2025, 2026, out of 40):
- **Q1 experiment, 19–20 marks:** about 11–14 marks for results, graph and analysis; 3–4 for evaluation; 0–4 for the rate or energetics context.
- **Q2 qualitative analysis, 14–15 marks.**
- **Q3 plan, 6 marks.**

Averaged over the three papers: tests for ions and gases 14.7, results and graphs 12.0, planning and evaluation 10.0, context (rate or energetics) 2.7, apparatus 0.7. Paper 5 carries **about 5 more qualitative-analysis marks** than Paper 6, but otherwise the two papers ask for the same skills.

### 4e. Share of the Extended grade (2023–26, weighted P2 ×1.5, P4 ×1.25, P6 ×1)

| Rank | Topic | Share of grade |
|---|---|---|
| 1 | Experimental techniques & analysis (almost all from P6) | **22.0 %** |
| 2 | Organic chemistry | **15.4 %** |
| 3 | Chemical reactions | 11.3 % |
| 4 | Atoms, elements & compounds | 11.0 % |
| 5 | Acids, bases & salts | 7.6 % |
| 6 | Metals | 7.2 % |
| 7 | Stoichiometry (stand-alone calculations only) | 6.6 % |
| 8 | Periodic Table | 4.8 % |
| 9 | Electrochemistry | 4.4 % |
| 10 | Environment | 4.0 % |
| 11 | Chemical energetics | 3.6 % |
| 12 | States of matter | 2.1 % |

## 5. Banker topics

These appear in P2 or P4 in **all 9 sessions** (and so in all 7 since 2023):

| Banker | Typical form | Avg marks / session (P2 + P4, 2023–26) |
|---|---|---|
| Atomic structure & isotopes | Proton/neutron/electron table for an atom or ion (often a transition-metal ion); defining isotopes; Ar from abundances, or working back from Ar to an abundance | 5.7 |
| Reversible reactions & equilibrium | Features of equilibrium; "complete the table" of effects of temperature, pressure and concentration on the position or yield | 4.8 |
| Redox & oxidation number | Oxidation number of S, Cr or Mn in an ion; oxidising/reducing agent; why a change is oxidation | 5.1 |
| Polymers | Repeat units from monomers (and back); amide vs ester linkages; PET, nylon, proteins; circling a repeat unit | 5.1 |
| Electrolysis | Products for molten, concentrated and dilute electrolytes; half-equations; CuSO4 with copper vs inert electrodes (mass and colour changes) | 4.9 |
| Organic naming, homologous series & isomers | Naming and drawing structures; general formulae; structural isomers | 4.7 |
| Formulae & equations | Balanced symbol equations, ionic equations with state symbols | 3.9 |
| Rate of reaction | Collision-theory "explain" parts (frequency of collisions; proportion with energy ≥ Ea) | 2.6 |
| Reactivity series & displacement | Ordering metals from results; displacement colour changes | 2.4 |

Close behind, at 8 of 9 sessions:
- salt preparation (precipitation, titration and the excess-solid method; hydrated salts and water of crystallisation): 5.5 marks;
- metal extraction (blast furnace, aluminium with cryolite): 4.3;
- Haber and Contact conditions in kPa with catalysts: 3.3;
- alkanes and substitution with UV: 3.4;
- alkenes, addition and the bromine test: 2.8;
- alcohols (fermentation vs hydration): 2.6;
- ionic bonding and dot-and-cross diagrams: 2.9;
- acid/base definitions and indicators: 3.0;
- strong vs weak acids: 2.0;
- concentration and titration calculations: 1.8;
- giant covalent structures: 1.8;
- rust prevention (galvanising, sacrificial protection): 1.7;
- Group I trends: 1.6.

**Calculations** (moles, concentration, gas volume, empirical formula, bond energy) appear in every Paper 4, at 4–12 marks. They usually come as a scaffolded "use the following steps" chain. Add 1–3 MCQ calculations per session.

## 6. Rarely tested

These appear in P2 or P4 in 4 or fewer of the 9 sessions:
- **physical vs chemical change** (2 sessions);
- **elements, compounds & mixtures** (2, MCQ only);
- titration technique in theory papers (3; it is heavily tested in Paper 6 instead);
- **composition of air** (3);
- **electroplating & industrial electrolysis** (3);
- **hydrogen–oxygen fuel cells** (4, MCQ only);
- **fertilisers (NPK)** (4);
- diffusion (4);
- relative masses as a stand-alone item (4).

Moderate (5–6 sessions), usually one MCQ item each:
- metallic bonding;
- noble gases;
- metal properties & uses;
- apparatus choice;
- gas volumes;
- water treatment;
- alloys;
- cracking and petroleum fractions;
- chromatography and separation in the theory papers.

## 7. Trends (2022 against 2023–26)

- **Organic chemistry stays the largest theory topic.** It is about 19–21 % of P2 + P4, with 6–9 MCQ items and 9–28 marks on Paper 4. Nov 2024 (37 of 120) was the peak.
- **Chemical reactions are up on Paper 4** (9.4 % → 14.8 %). Equilibrium "effect of a change" tables, oxidation-number work and collision-theory explanations now appear in nearly every paper.
- **Stand-alone stoichiometry is down on Paper 4** (15.6 % → 9.3 %). The calculations are still there, but they are now shorter (3–5 marks) and often sit inside other topics (an Ar in an isotope question, a gas volume in a decomposition question).
- **Electrochemistry, metals and the environment have grown on Paper 4.** In 2022 they were nearly absent from the two P4 papers; since 2023 they average 4–8 % each. Electrolysis (with half-equations) and the blast furnace / aluminium cell are the usual vehicles.
- **Experimental techniques have left Paper 4** (9.4 % → 2.3 %; the 2022 papers had titration apparatus and limewater-preparation parts) and moved to the end of Paper 2 (3–4 items).
- **States of matter** was a 13-mark opener in Nov 2025 (structures of solids, liquids and gases; diffusion). Most papers have only 1–3 marks on it.
- **Practicals:** since 2023, P5 and P6 share the same experiment and plan, and P6 gives the qualitative-analysis notes. Planning contexts so far:
  - extracting caffeine from coffee beans (June 2022);
  - comparing water absorption by two hydrogels (Nov 2022);
  - % silicon dioxide in metal polish (June 2023);
  - how sodium sulfate solubility depends on temperature (Nov 2023);
  - extracting bismuth from its ore (June 2024);
  - which citrus juice has the more concentrated acid (Nov 2024);
  - solubility of magnesium sulfate at 50 °C (June 2025);
  - which alcohol releases the most heat (Nov 2025);
  - extracting tin from its ore (June 2026).

  About half are **separation or purification**, a third are **solubility or concentration measurements**, and the rest are comparative energy or absorption tests.

## 8. Recurring question styles

### 8a. Paper 4 (approximate marks per paper, from keyword matching on the full part text)

| Style | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ |
|---|---|---|---|---|---|---|---|---|---|
| Calculations (moles, concentration, gas volume, formulae, bond energy, Ar) | 8 | 11 | 10 | 8 | 9 | 6 | 9 | 8 | 6 |
| Writing equations (symbol, ionic, half) | 5 | 6 | 14 | 6 | 8 | 8 | 6 | 5 | 7 |
| Dot-and-cross diagrams | 6 | 6 | 3 | 0 | 6 | 6 | 3 | 0 | 3 |
| Drawing organic structures and polymers | 4 | 3 | 7 | 5 | 2 | 10 | 2 | 1 | 5 |
| "Explain / describe" | 11 | 14 | 7 | 11 | 2 | 7 | 12 | 17 | 22 |
| Complete-a-table (effects of changes, particle counts) | 0 | 0 | 10 | 0 | 9 | 5 | 7 | 3 | 0 |
| Short recall (name, state, identify, give) | 46 | 40 | 29 | 50 | 44 | 38 | 41 | 46 | 37 |

**Set pieces in Paper 4:**
- **Q1 is usually a 6–9 mark quick-fire opener** (Nov 2022 and Nov 2025 used a short structured question instead). You choose an element, oxide or substance from a list or diagram for each property. In June 2025 it was a "give the number" variant (for example, % nitrogen in air, the number of isomers, the number of bonds).
- **About half of Paper 4 is one-mark recall.** Naming, conditions, colours, terms: the paper rewards exact factual knowledge more than long prose.
- **Calculations are scaffolded.** The paper usually says "use the following steps" (moles → ratio → answer).
- **"Describe and explain" with collision theory** (3 marks) appears in most papers. So does an equilibrium table of 4–5 marks.

### 8b. Paper 2 item styles

- "Which statements 1–4 are correct" combinations.
- Two-column "which row" tables (conditions, observations, roles).
- Gap-fill rows (June 2026 introduced a three-gap titration item).
- Data-trend prediction (noble gas or halogen properties).
- Short calculations: diffusion rates, gas volume, empirical formula, bond-energy sign.

### 8c. Practical styles

These come up in every Paper 6:
- read thermometers, burettes or stop-clocks to the right resolution;
- choose a graph scale and draw a line of best fit, which is often a curve;
- extrapolate or interpolate with working shown on the graph;
- give "why is this an improvement / not an improvement" pairs (burette vs measuring cylinder, pipette, insulation, water-bath);
- identify ions from test results;
- write a 6-mark plan.

## 9. Common mistakes (examiner reports: June 2022, Nov 2022, June 2023, June 2025)

**Bonding and structure**
- Writing "intermolecular forces between atoms", or giving a molecular explanation for an ionic solid.
- A covalent bond is one shared pair of electrons between two atoms. Writing "two or more shared pairs" or "between two or more atoms" loses the mark.
- Saying "free" or "delocalised" electrons without saying they **move** when explaining conduction.
- Saying a molecular liquid has "no electrons" instead of "no mobile electrons or ions".
- In SiO2 diagrams, using ion symbols, or not giving Si four bonds and O two.
- In dot-and-cross diagrams: using the same symbol for both electrons in a bond, leaving out the non-bonding pairs on oxygen, wrong charges or electron counts on ions.

**Atomic structure**
- Defining isotopes as "elements" instead of "atoms of the same element".
- Not knowing "nucleon/mass number".
- Rounding an Ar of 79.9 to 80 on the answer line.
- Getting electron counts for ions wrong (38 instead of 36 for Rb+).
- Struggling to work backwards from Ar to an abundance.

**Equations and formulae**
- Symbol equations given when an ionic equation is asked for; spectator ions left in.
- Putting charges inside full equations.
- Br instead of Br2.
- One-way arrows for weak-acid dissociation, or 4H+ released from ethanoic acid.
- Combustion equations with no O2, or with H2 as a product.
- Fractions or unsimplified sums (2 + 32 + 64) left as final answers.

**Calculations**
- Dividing by the wrong molar mass (46 for Na).
- Missing the mole ratio (2:1).
- Not converting dm³ to cm³ (×24 instead of ×24 000).
- Reversing bond-energy subtraction (+120 instead of −120).
- Giving a molecular formula when the empirical formula was asked for.

**Rates and equilibrium**
- "More collisions" without "per unit time / more frequent".
- "Particles have energy above Ea", which implies all of them, instead of "a greater **proportion**".
- Saying a catalyst or temperature change alters Ea.
- Describing equilibrium as "forward equals backward" without mentioning rates.
- "Concentrations are equal" instead of "concentrations stay constant".
- Giving pressures in the wrong unit (2 kPa); wrong oxidation state of vanadium in V2O5.

**Redox**
- Oxidation numbers written without a sign ("6" for +6).
- Not knowing that the oxidation numbers in an ion add up to the charge on the ion.
- Reading Roman numerals as ion charges.

**Electrolysis**
- Saying the cathode mass "stays the same" in CuSO4 electrolysis.
- Missing that the blue colour fades with inert electrodes but stays with copper electrodes.
- Writing "a gas" instead of "bubbles/effervescence".
- In MCQ: confusing anode and cathode; thinking cryolite lowers the melting point of *aluminium*.

**Organic chemistry**
- Carbons with five bonds; divalent hydrogen; O–H bonds left out.
- Monomers drawn with continuation bonds.
- Polymer units still showing the C=C double bond.
- "Propanol" with no locant.
- Ester names misspelt (butanote) or with the parts reversed.
- Saying "a double bond" instead of "a **carbon–carbon** double bond" for unsaturation.
- Not knowing that methane can give four chlorinated products.

**Acids and salts**
- "Hydrous" instead of "hydrated".
- Calling the solid "filtrate".
- Confusing solute, solvent and solution.
- Not knowing the term "amphoteric".
- Writing "ammonium" for ammonia, or "hydrogen" for water, in a neutralisation product.

**Practical (P5/P6)**
- "A gas was given off" is not an observation: write fizzing or bubbles, plus the gas test and its result.
- Always say "precipitate".
- Record readings to a consistent resolution (27.0, not 27).
- Use sensible 1-2-5 graph scales, pencil, and smooth curves where the points curve.
- Know how a flame test is actually done: wire or splint, into a blue/roaring flame. A yellow flame is unsuitable.
- Do not confuse an improvement in accuracy with an improvement in the method.
- Remember that red litmus cannot show an acid.
- In plans: no apparatus lists or aims at the start; say what each item is used for; dry the residue; do not wash a solid whose solubility you are measuring.

**MCQ hardest items:**
- June 2023: cryolite's role; the number of substitution products of methane.
- June 2025: matching cooling and heating curves; the sign of bond-forming energy; wording of halogen displacement (chlorine displaces bromine, not bromide).

## 10. Grade thresholds (variant 2 options)

### 10a. Overall, weighted, out of 200

| Session | CY (22+42+62): A* / A / B / C | BY (22+42+52): A* / A / B / C | C as % (CY) | Core GY (12+32+62): C / E / G | Core FY (12+32+52): C |
|---|---|---|---|---|---|
| 2022 MJ | 145 / 118 / 91 / 65 | 141 / 115 / 89 / 64 | 33 % | 104 / 69 / 37 | 103 |
| 2022 ON | 151 / 128 / 105 / 82 | 150 / 127 / 104 / 82 | 41 % | 108 / 77 / 47 | 108 |
| 2023 MJ | 157 / 128 / 99 / 70 | 154 / 125 / 96 / 67 | 35 % | 101 / 68 / 38 | 98 |
| 2023 ON | 149 / 126 / 103 / 80 | 148 / 125 / 102 / 79 | 40 % | 108 / 78 / 48 | 107 |
| 2024 MJ | no local threshold sheet | | | | |
| 2024 ON | 158 / 133 / 108 / 84 | 156 / 131 / 106 / 82 | 42 % | 109 / 77 / 47 | 107 |
| 2025 MJ | 173 / 146 / 117 / 89 | 172 / 145 / 116 / 88 | 45 % | 110 / 79 / 45 | 109 |
| 2025 ON | 153 / 127 / 101 / 76 | 153 / 127 / 101 / 76 | 38 % | 100 / 70 / 38 | 100 |
| 2026 MJ | 169 / 139 / 109 / 80 | 168 / 138 / 108 / 79 | 40 % | 108 / 71 / 35 | 107 |

### 10b. Component thresholds, variant 2 (grade A / grade C)

| Session | P22 /40 | P42 /80 | P52 /40 | P62 /40 | P12 /40 (C) | P32 /80 (C) |
|---|---|---|---|---|---|---|
| 2022 MJ | 25 / 15 | 44 / 22 | 22 / 14 | 25 / 15 | 22 | 45 |
| 2022 ON | 26 / 18 | 48 / 29 | 28 / 19 | 29 / 19 | 22 | 45 |
| 2023 MJ | 26 / 17 | 48 / 22 | 26 / 14 | 29 / 17 | 22 | 41 |
| 2023 ON | 25 / 18 | 46 / 26 | 30 / 19 | 31 / 20 | 22 | 44 |
| 2024 ON | 27 / 20 | 49 / 26 | 29 / 19 | 31 / 21 | 23 | 43 |
| 2025 MJ | 29 / 20 | 57 / 32 | 30 / 18 | 31 / 19 | 23 | 45 |
| 2025 ON | 25 / 19 | 48 / 24 | 29 / 17 | 29 / 17 | 22 | 40 |
| 2026 MJ | 28 / 19 | 53 / 26 | 30 / 18 | 31 / 19 | 21 | 46 |

**Reading the thresholds:**
- On the Extended route, **A\*** needs about **73–87 %** of the weighted total (June 2025 was the highest at 173/200).
- **A** needs about **59–73 %**.
- **C** needs only about **33–45 %**.
- On Paper 4 itself, a C has been **22–32 out of 80** and an A **44–57 out of 80**. Secure recall marks on every question matter more than the hardest parts.
- The practical papers are generous: an A on P6 is 29–31 out of 40.
- **Core:** a C (the top Core grade) needs about **49–55 %** of the weighted total. On P3, that is 40–46 out of 80.
- A borderline candidate gets a C more easily on Extended (C at 65–89/200) than on Core (C at 98–110/200), *if* they can score steadily on P4.
- Threshold differences between variants are real. For example, in June 2022 the C was 65 for option CY but 72 for CX (21/41/61). Compare only like with like.

## 11. Revision priorities for Oct/Nov 2026 and 2027 Extended candidates

1. **Practical skills first: 22 % of the grade** (P6 or P5 plus P2 items).
   - Learn the qualitative-analysis tests by heart: NaOH and NH3 precipitates (including what happens in excess); halide, sulfate, carbonate and nitrate tests; gas tests; flame colours.
   - Always write "precipitate" and "fizzing", plus the result of the gas test.
   - Practise reading every instrument to the correct resolution.
   - Practise curved best-fit lines, and graph readings with the working shown.
   - Rehearse the 6-mark plan for **separation or purification** and for **solubility or concentration** tasks: what to measure and with what, the method steps, filter, wash, dry to constant mass, and how to calculate the result.
2. **Organic chemistry (15 % of the grade, about 20 % of theory).**
   - Naming and drawing in both directions, including locants (propan-1-ol, but-2-ene).
   - Isomers.
   - Substitution (UV) and addition (Br2, H2/Ni, steam/H3PO4), with conditions.
   - Fermentation compared with hydration.
   - Cracking equations.
   - Ester naming and structures.
   - Addition and condensation repeat units, both ways round (PET, nylon, proteins), and monomers drawn without continuation bonds.
3. **Chemical reactions (11 %).**
   - Collision-theory wording: frequency per unit time; proportion of particles with energy ≥ Ea.
   - Le Chatelier tables for temperature, pressure (count moles of gas) and concentration.
   - Haber and Contact conditions in **kPa**, with catalysts.
   - Oxidation numbers, with sign; the sum in an ion equals its charge.
   - Oxidising and reducing agents.
4. **Atoms and bonding (11 %).**
   - Particle tables for ions and isotopes.
   - Ar from abundances, and working back to an abundance.
   - Dot-and-cross diagrams for ionic compounds and for molecules with lone pairs (Cl2O, NF3, SCl2, ethanoic acid).
   - Structure–property explanations that name the forces correctly.
   - Diagrams of giant structures (SiO2: Si with four bonds, O with two).
5. **Acids, salts and metals (about 15 % together).**
   - The three salt-preparation methods: which method suits which salt, the steps, and the ionic equations.
   - Water of crystallisation; amphoteric oxides; strong vs weak acids with the correct arrows.
   - Blast furnace (coke as fuel, CO as reductant, limestone → slag).
   - The aluminium cell (cryolite as solvent; anodes burn away).
   - Galvanising: barrier plus sacrificial protection.
6. **Calculations every paper:** moles ↔ mass ↔ concentration ↔ gas volume (24 dm³ = 24 000 cm³); mole ratios; empirical formulae; bond-energy totals (bonds broken minus bonds made). Never leave fractions.
7. **Electrolysis:** product rules for molten, concentrated and dilute electrolytes; half-equations; CuSO4 with inert vs copper electrodes (electrode mass and solution colour).
8. **Quick-win MCQ topics** (one item each, most sessions): diffusion and Mr; cooling and heating curves; types of oxide; Group I/VII/VIII trend prediction; transition-element properties; alloys; water treatment order; catalytic-converter reactions; greenhouse mechanism; chromatography Rf and locating agents; choosing apparatus.
9. **Lower priority:** physical vs chemical change, composition of air, NPK details, electroplating and fuel cells (MCQ only). Learn the key facts, but do not over-invest.

## 12. Core route (Papers 1 and 3): brief note

> **Update 26 Oct 2026:** the Core papers (Papers 11–13 and 31–33, all nine sessions) are now tagged item by item and included in the question index and topic pages. The topic shares above were computed before that and describe the Extended papers.


- **Paper 1** has 40 MCQ items in 45 minutes; **Paper 3** has 80 marks of structured questions in 1 h 15 min, typically 8 questions of 8–13 marks. Core is capped at grade C.
- **Core thresholds:** C needs 98–110 of 200 weighted (about half). That is 21–23 out of 40 on P1 and 40–46 out of 80 on P3.
- **Overlap with Extended:** up to Nov 2023, P12 and P22 shared roughly 10–18 identical item stems per session. From June 2024 the matching finds almost none, so the Core MCQ appears to be written separately now. (This is approximate: it is based on matching question text, not a full tagging.)
- The Core papers follow the same syllabus topics without the supplement content (no bond-energy calculations, oxidation numbers or condensation polymers). The Extended topic weights above are a reasonable guide to the order of topics; the Core papers are now tagged too (see the update note).

## 13. Comparison with O Level Chemistry 5070

| Aspect | IGCSE 0620 Extended | O Level 5070 |
|---|---|---|
| Papers | P2 MCQ 40 (45 min) + P4 theory 80 (1 h 15) + P5/P6 practical 40 | P1 MCQ 40 (1 h) + P2 theory 80 (1 h 45) + P3/P4 practical 40 |
| Weighting | 30 / 50 / 20 | 30 / 50 / 20 (the same) |
| Time pressure | Higher: 80 theory marks in 75 minutes | Lower: 80 marks in 105 minutes |
| 2023 syllabus change | Content only; format unchanged | Format rebuilt (Section B choice removed, P4 cut to 40 marks, planning added) |
| Theory organic share (2023–26) | 19.4 % of P2 + P4 | 21.0 % of P1 + P2 |
| Stoichiometry | 8.3 % (shorter, embedded calculations) | 12.3 % |
| Chemical reactions | 13.3 % | 12.6 % |
| Metals | 8.9 % (4–5 MCQ items, every session) | 6.3 % |
| Practical paper | P6: planning/evaluation about 11, graphs 9, qualitative analysis 9; P5 qualitative analysis about 15 | P4: qualitative analysis 13, planning 9; P3 qualitative analysis 16 |
| 6-mark plan | Every P5/P6 (also in 2022) | Every P3/P4 since 2023 |
| Grade C threshold | 33–45 % of weighted total (option CY) | 34–40 % |
| A* threshold | 73–87 % | 80–87 % |

**Takeaways for students moving between the two syllabuses:**
- Both share the same 12-topic syllabus and the same bankers: moles, bonding, electrolysis, rates and equilibrium, redox, organic chemistry and polymers, and ion tests.
- 0620 Paper 4 is **shorter and more recall-heavy** (about half one-mark items). It uses "complete the table" equilibrium items more, and it spreads calculations across topics.
- 5070 Paper 2 gives more time to multi-step calculations and longer explanations.
- 0620's practical papers have kept the same format since before 2023. The 5070 practicals had to be rebuilt to match that model.
- The examiner-report advice on common errors is almost the same for both: collision-theory wording, intermolecular forces, ionic equations, valency in organic structures, and "precipitate" and "fizzing".

## Caveats

- Only variant 2 was tagged for the Extended papers. Thresholds show that variants differ in difficulty, and other variants may weight topics slightly differently.
- Each part has a single topic tag, which hides parts that mix topics. The topic weights for P4 swing by ±10 marks between sessions because whole questions are built on one topic.
- The 2022 comparison rests on two sessions only.
- The style counts in section 8a come from keyword matching and are approximate.
- The examiner-report evidence covers 2022, June 2023 and June 2025 only. There is no threshold sheet for June 2024.
- Core papers were tagged later (26 Oct 2026).
