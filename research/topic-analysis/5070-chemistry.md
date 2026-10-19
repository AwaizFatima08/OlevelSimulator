# Cambridge O Level Chemistry (5070): topic-frequency analysis, 2022–2026

Built from local files only (`papers/o-level/chemistry-5070/`), 19 Oct 2026.
Per-part data: `5070-questions.csv` (1,201 rows: session, paper, variant, question, part, topic, subtopic, marks).

## 1. Method and sample

- **Sessions:** 9 (May/June and Oct/Nov 2022 to 2025, plus May/June 2026).
- **Main sample:** variant 1 of every component (11, 21, 31, 41) in every session. That is 36 question papers and 1,850 marks. All of them exist locally. (The 2026 mark scheme for 31 is missing, but it was not needed.)
- **Marks:** MCQ items count 1 mark each. For Papers 2–4, marks come from the `[n]` markers on the question paper. Every paper adds up exactly to its stated total, and every question matches its `[Total: n]` line.
- **Classification:** each part goes to **one** topic and subtopic, chosen by the skill that earns the marks. Some examples:
  - A titration calculation inside a practical goes to *Stoichiometry*. Reading the burette goes to *Experimental techniques*.
  - A 6-mark planning question goes to *Practical planning*, whatever its context.
  - Organic functional-group tests set in a practical go to *Tests for ions, gases & water*.
  
  Treat the figures as good estimates (±1–2 marks per topic per paper).
- **2022 Paper 2:** Section B gave a choice (answer 3 of 4 questions, 10 marks each). All four Section B questions are in the CSV, so each 2022 P2 sums to 85, not 75. The 2022 P2 percentages therefore slightly over-weight the Section B topics.
- **Spot check of variant 2:**
  - I listed and classified every stem of 2024 MJ P12 at topic level. It follows the same blueprint as P11 (40 items in syllabus order, the same topics within ±1–2 items).
  - Keyword counts across all 9 sessions are close between variants 1 and 2 for both P1 and P2. Examples for P21 vs P22: electrolysis 30 vs 30, equilibrium 20 vs 22, organic terms 99 vs 93, pollution terms 29 vs 25.
- **Examiner reports:** these exist only for June 2022, Nov 2022 and June 2023. **Grade thresholds:** available for all 9 sessions.

## 2. Paper structure (from the cover pages)

| Component | 2022 (old syllabus) | 2023 onwards (new syllabus) |
|---|---|---|
| Paper 1 Multiple Choice | 40 items, 1 h, 40 marks. Items **start** with experimental techniques. | Unchanged: 40 items, 1 h, 40 marks. Items now follow syllabus order, so experimental techniques come **last** (about Q37–40). |
| Paper 2 Theory | **1 h 30 min, 75 marks.** Section A: 45 marks, all compulsory (5 questions). Section B: **answer 3 of 4** questions of 10 marks. | **1 h 45 min, 80 marks, all questions compulsory** (8–10 questions, 5–16 marks each). The June 2023 examiner report confirms it was "the first examination where all of the questions were compulsory". |
| Paper 3 Practical Test | 1 h 30 min, 40 marks. Two questions: titration (17–18) and qualitative analysis (22–23). | 1 h 30 min, 40 marks. **Three** questions: a quantitative experiment (17), qualitative analysis (17) and a **6-mark planning question** (no lab work). |
| Paper 4 Alternative to Practical | **1 h, 60 marks**, 5–7 questions. No qualitative-analysis notes. | **1 h, 40 marks**, 4 questions. The qualitative-analysis notes are now provided. Paper 4 now **mirrors Paper 3**: the same experiments, the same planning question, and often word-for-word the same calculation parts. |
| Overall | Weighted total out of **145** | Weighted total out of **200** |

**Weighting (inferred from the threshold sheets):**
- **2023 onwards:** 40 (P1) + 80 (P2) + 40 (P3/4) raw marks make a weighted 200. This fits P1 ×1.5 (30 %), P2 ×1.25 (50 %) and P3/4 ×1 (20 %).
- **2022:** 145 fits 40 + 75 + a practical scaled to 30.

**Other notes:**
- Candidates take P1 + P2 + **either** P3 **or** P4. The threshold sheets list options AX (11, 21, 31) and BX (11, 21, 41).
- June 2026 also lists a **Component 50 (90 marks)** route. No local paper exists for it, so it is not analysed here.

**What changed from 2022 to 2023 onwards, as seen in the papers:**
- Section B choice removed and P2 lengthened.
- P4 cut from 60 to 40 marks and aligned with P3.
- A planning question added to every practical paper.
- New-syllabus content now appears regularly: hydrogen–oxygen fuel cells, bond-energy calculations, reaction-pathway diagrams, oxidation numbers, gas pressure/volume ideas, Rf values, sustainability and plastics disposal, and "describe and explain" rate questions.
- Old-syllabus extras have faded:
  - the uses of SO2 and sulfuric acid, and the sulfur chemistry around the Contact process;
  - hydrolysis of fats, proteins and starch;
  - long blast-furnace and electrolysis-of-alumina essays.

## 3. Topic list (12 syllabus topics, subtopics confirmed against the questions)

| # | Topic | Subtopics used in the CSV |
|---|---|---|
| 1 | States of matter | Kinetic particle theory & changes of state (incl. gas P/V/T); Diffusion |
| 2 | Atoms, elements & compounds | Atomic structure & isotopes; Ions & ionic bonding; Simple covalent molecules; Giant covalent structures; Metallic bonding; Elements, compounds & mixtures; Structure and properties compared |
| 3 | Stoichiometry | Formulae & equations (incl. ionic); Relative masses; Moles & reacting masses; Empirical & molecular formulae; Concentration & titration calculations; Gas volumes; % yield, purity & composition |
| 4 | Electrochemistry | Electrolysis products & electrode equations; Electroplating & industrial electrolysis; Cells & hydrogen fuel cells |
| 5 | Chemical energetics | Exothermic & endothermic; Energy profiles & activation energy; Bond-energy calculations |
| 6 | Chemical reactions | Physical vs chemical change; Rate of reaction; Reversible reactions & equilibrium; Industrial processes (Haber, Contact); Redox & oxidation number |
| 7 | Acids, bases & salts | Properties of acids/bases; Strong/weak & pH; Types of oxide; Salt preparation & solubility |
| 8 | Periodic Table | Trends; Group I; Group VII; Transition elements; Noble gases |
| 9 | Metals | Properties & uses; Alloys; Reactivity series & displacement; Corrosion & rust prevention; Extraction (blast furnace, aluminium) |
| 10 | Chemistry of the environment | Water treatment & tests; Fertilisers (NPK); Air pollutants & catalytic converters; Climate change & carbon cycle; Composition of air |
| 11 | Organic chemistry | Naming, formulae, homologous series & isomers; Fuels, petroleum & cracking; Alkanes; Alkenes; Alcohols; Carboxylic acids & esters; Polymers (addition, condensation, proteins, plastics) |
| 12 | Experimental techniques & analysis | Apparatus & measurement; Separation & purity; Chromatography; Titration technique; Tests for ions, gases & water; Practical planning & evaluation; Results tables, graphs & data analysis |

## 4. Topic weights

### 4a. Marks per topic per session, theory papers (P1 + P2, variant 1)

| Topic | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ | % 2022 | **% 2023–26** |
|---|---|---|---|---|---|---|---|---|---|---|---|
| States of matter | 3 | 3 | 3 | 5 | 7 | 2 | 5 | 2 | 4 | 2.4 | 3.3 |
| Atoms, elements & compounds | 21 | 13 | 13 | 18 | 15 | 13 | 7 | 18 | 15 | 13.6 | **11.8** |
| Stoichiometry | 22 | 20 | 12 | 16 | 20 | 13 | 16 | 13 | 13 | 16.8 | **12.3** |
| Electrochemistry | 4 | 7 | 7 | 6 | 4 | 8 | 11 | 6 | 10 | 4.4 | 6.2 |
| Chemical energetics | 4 | 1 | 9 | 6 | 7 | 1 | 7 | 4 | 7 | 2.0 | 4.9 |
| Chemical reactions (rates, equilibrium, redox) | 20 | 18 | 19 | 18 | 21 | 17 | 12 | 8 | 11 | 15.2 | **12.6** |
| Acids, bases & salts | 5 | 6 | 9 | 6 | 7 | 7 | 9 | 3 | 8 | 4.4 | 5.8 |
| The Periodic Table | 3 | 7 | 9 | 4 | 2 | 7 | 4 | 9 | 6 | 4.0 | 4.9 |
| Metals | 10 | 15 | 7 | 8 | 3 | 8 | 7 | 7 | 13 | 10.0 | 6.3 |
| Chemistry of the environment | 5 | 5 | 5 | 6 | 9 | 7 | 9 | 7 | 3 | 4.0 | 5.5 |
| **Organic chemistry** | 20 | 24 | 20 | 19 | 22 | 30 | 28 | 34 | 23 | 17.6 | **21.0** |
| Experimental techniques & analysis | 8 | 6 | 7 | 8 | 3 | 7 | 5 | 9 | 7 | 5.6 | 5.5 |
| **Total** | 125 | 125 | 120 | 120 | 120 | 120 | 120 | 120 | 120 | | |

### 4b. % share by component, 2022 against 2023–26

| Topic | P1 2022 | **P1 2023–26** | P2 2022 | **P2 2023–26** |
|---|---|---|---|---|
| States of matter | 3.8 | 3.6 | 1.8 | 3.2 |
| Atoms, elements & compounds | 17.5 | 11.8 | 11.8 | 11.8 |
| Stoichiometry | 13.8 | 12.5 | 18.2 | 12.1 |
| Electrochemistry | 5.0 | 4.6 | 4.1 | **7.0** |
| Chemical energetics | 3.8 | 3.6 | 1.2 | **5.5** |
| Chemical reactions | 16.2 | 10.7 | 14.7 | 13.6 |
| Acids, bases & salts | 5.0 | 5.7 | 4.1 | 5.9 |
| Periodic Table | 5.0 | 8.2 | 3.5 | 3.2 |
| Metals | 3.8 | **9.6** | 12.9 | **4.6** |
| Environment | 3.8 | 6.1 | 4.1 | 5.2 |
| Organic chemistry | 15.0 | 15.4 | 18.8 | **23.8** |
| Experimental techniques | 7.5 | 8.2 | 4.7 | 4.1 |

**Paper 1 is a fixed blueprint.** Since 2023 every MCQ paper has roughly the same spread:
- 1–2 items on states of matter;
- 3–6 on atoms and bonding;
- 4–6 on stoichiometry;
- 1–2 on electrochemistry;
- 1–3 on energetics;
- 2–7 on rates, equilibrium and redox;
- 2–3 on acids and salts;
- 2–4 each on the Periodic Table and on metals;
- 2–3 on the environment;
- 5–7 on organic chemistry;
- 3–4 on experimental techniques.

Every topic is tested in every session.

### 4c. Practical papers (P3 / P4, 2023–26, average marks per paper out of 40)

| Skill area | P3 | P4 |
|---|---|---|
| Tests for ions, gases & water (qualitative analysis) | 16.1 | 13.4 |
| Practical planning & evaluation (the 6-mark plan plus "suggest why/improve" parts) | 8.6 | 8.7 |
| Results tables, graphs & data analysis | 5.4 | 4.1 |
| Titration technique (readings, best titres, indicator colour) | 3.9 | 3.0 |
| Titration and other calculations (stoichiometry) | 3.0 | 2.8 |
| Apparatus, chromatography, separation | 0.6 | 4.6 |
| Context topics (rates, displacement, energetics, electrolysis) | 2.4 | 3.4 |

About **85 % of practical marks are experimental skills**, not topic content. The quantitative experiment rotates:
- an acid–base titration (2022, June 2023, Nov 2024, June 2025);
- a thermometric titration (Nov 2023, Nov 2025);
- metal displacement with a temperature rise (June 2024);
- rate against concentration (June 2026).

## 5. Banker topics

These subtopics appear in P1 or P2 in **all 9 sessions**, and in all 7 sessions since 2023:

| Banker | Typical form |
|---|---|
| Atomic structure, isotopes & ions | Counting protons, neutrons and electrons for an ion or isotope; relative atomic mass from abundances |
| Ionic and covalent bonding | Dot-and-cross diagrams (CO2, N2, CH4, C2H2); explaining melting points, conductivity and properties of ionic solids |
| Moles & reacting masses; empirical formula | A mass-to-mass or limiting-reactant calculation and an empirical formula from % composition **every session** |
| Electrolysis | Predicting products for molten and concentrated aqueous electrolytes; writing half-equations; inert vs copper electrodes |
| Rate of reaction | "Describe and explain" the effect of temperature, concentration, pressure, surface area or a catalyst, using collision frequency and energy |
| Equilibrium | Predicting the shift with temperature or pressure, with an explanation (Haber, Contact, decomposition equilibria) |
| Redox & oxidation number | Identifying what is oxidised or reduced; oxidising/reducing agents; oxidation numbers |
| Strong/weak acids & salt preparation | Defining a weak acid; choosing a method (titration, excess solid + filter, precipitation); crystallisation steps |
| Extraction of metals | Blast furnace reactions and slag; aluminium electrolysis |
| Water treatment & tests | The role of chlorine and carbon; anhydrous CuSO4 and CoCl2 tests |
| Organic naming & isomers; alkanes; acids & esters; polymers | Naming and drawing esters; substitution with Cl2 under UV; addition and condensation polymer repeat units; amide/ester linkages; plastics disposal |
| Tests for ions & gases | In P1 and P2 every session, and about 14–17 marks of every practical paper |
| Practical planning | 6 marks on every P3 and P4 since 2023 |

Close behind, at 7–8 of 9 sessions:
- formulae and equations (including ionic);
- gas volumes at r.t.p.;
- diffusion;
- metallic bonding;
- energy profiles;
- the Haber/Contact conditions;
- transition elements;
- the reactivity series;
- air pollutants and catalytic converters;
- cracking and petroleum fractions;
- alkenes;
- alcohols (fermentation and hydration).

## 6. Rarely tested

These appear in P1/P2 in 4 or fewer of the 9 sessions, or carry very few marks:
- **physical vs chemical change** (1 session);
- **composition of air** (2);
- structure–property comparison tables (3);
- relative mass as a standalone item (4, although Mr is used in every calculation);
- **electroplating / industrial electrolysis** (4);
- **fertilisers (NPK)** (4);
- titration technique in theory papers (4; it is heavily tested in the practicals instead).

Moderate (5–6 sessions), usually as one MCQ item:
- Group I;
- Group VII;
- noble gases;
- fuel cells;
- chromatography;
- alloys;
- corrosion;
- percentage yield.

Since 2023, **Metals in Paper 2** has shrunk to 0–9 marks (0 in June 2024).

## 7. Trends (2022 against 2023–26)

- **Organic chemistry is the largest and growing topic.** It rose from 18.8 % to 23.8 % of Paper 2 and peaked at 27/80 in Nov 2025. Expect 17–27 marks of organic chemistry on P2, plus 5–7 MCQ items.
- **Energetics and electrochemistry are up** in P2. Bond-energy calculations, reaction-pathway diagrams and fuel-cell items now appear in most sessions; in 2022 they were close to zero.
- **Stoichiometry and Metals are down** as a share of the theory papers. Stoichiometry is still in every paper: about 9–16 marks on P2 and 4–6 MCQ items. In 2022, Metals had long blast-furnace and aluminium questions; since 2023 it is mostly tested in the MCQ.
- **Rates and equilibrium are steady** at about 13 % of P2. The new papers like the "describe **and** explain" format (2 marks for the effect, 2 for the explanation).
- **Chemical reactions fell in 2025–26 P1** (from 6–7 items to 2–3). Treat this as possibly a blip, not a trend.
- **Practicals are now predictable:**
  - P3 and P4 share the same three-part structure;
  - qualitative analysis is about 14–17 marks;
  - a quantitative experiment with a graph or titre table;
  - a 6-mark plan.

  Planning contexts so far:
  - baking powder freshness;
  - preparing ammonium sulfate;
  - % mass loss on heating BaCO3;
  - % copper in an alloy;
  - separating MgO from BaSO4;
  - comparing heat from methanol and ethanol;
  - the salt-and-ice temperature drop;
  - finding ammonia concentration.

## 8. Recurring question styles (P2, approximate marks per paper from keyword matching)

| Style | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ |
|---|---|---|---|---|---|---|---|---|---|
| Calculations (moles, %, empirical formula, gas volume, bond energy) | 13 | 10 | 12 | 7 | 10 | 11 | 11 | 12 | 10 |
| Writing or completing equations (symbol, ionic, half) | 8 | 8 | 2 | 7 | 5 | 8 | 8 | 4 | 5 |
| Organic structure drawing (displayed or structural formulae, polymers, isomers) | 6 | 5 | 8 | 3 | 4 | 5 | 4 | 5 | 2 |
| Dot-and-cross diagrams | 1 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 1 |
| Chemical tests and observations | 4 | 3 | 5 | 2 | 3 | 3 | 3 | 11 | 1 |
| Reaction-pathway (energy) diagrams | 0 | 2 | 5 | 0 | 3 | 3 | 3 | 1 | 1 |
| "Explain…" (bonding, rate, equilibrium) | 24 | 21 | 13 | 14 | 20 | 13 | 25 | 16 | 16 |

**Typical openers and set pieces:**
- **Q1 is almost always a "choose from this list" item** (5–6 one-mark parts): oxides, salts, compounds or atoms identified by a property, a test or a use.
- A **"describe and explain"** rate or equilibrium question is in every paper.
- **Mole calculations** usually come in 2–3 steps, for example a limiting reactant, then a mass of product, then % yield.
- **MCQ styles:**
  - "which statements 1, 2, 3 are correct";
  - two-statement items (is statement 2 an explanation of statement 1?);
  - gap-fill rows ("words to complete gaps 1 and 2").

## 9. Common mistakes (examiner reports, June 2022, Nov 2022, June 2023)

**Rates and equilibrium**
- Mixing up rate and equilibrium: using collision theory to explain an equilibrium shift, or the position of equilibrium to explain a rate.
- Saying "more collisions" without "more frequent collisions" (for concentration or pressure), or without "more collisions with energy ≥ Ea" (for temperature).
- Treating activation energy as a *maximum* energy, or drawing Ea from the products.
- Saying a catalyst gives particles more energy.

**Equations**
- Weak balancing, especially ionic and half-equations.
- Electrons on the wrong side of a half-equation.
- Ions left in the products: "lead(II)" instead of lead, or the ions that move instead of the substances formed.
- Writing NH4 for ammonia; forgetting that H2 and Cl2 are diatomic.

**Calculations**
- Comparing *masses* instead of *moles* to find the limiting reactant.
- Using 16 instead of 32 for O2.
- Counting one N instead of two in NH4NO3.
- Wrong significant figures.
- Untidy working that loses error-carried-forward marks.
- In practicals: ignoring the mole ratio, swapping the pipette and titre volumes, and missing a dilution step (for example, 5 cm³ made up to 250 cm³).

**Organic chemistry**
- Carbons with five bonds; –O–H– in structures.
- Wrong ester names (the alcohol and acid parts swapped or mis-assigned).
- Drawing polymer linkages without continuation bonds.
- Branched isomers drawn as bent unbranched chains.
- Confusing hydration conditions with fermentation conditions.

**Bonding**
- Intermolecular forces described as "between atoms" or "between bonds".
- Contradictory particle descriptions ("far apart but closely packed").
- Metallic-structure diagrams without labels or with ions far apart.
- An alloy described as a compound.

**Environment**
- Confusing the greenhouse effect with ozone depletion.
- Saying UV is "reflected".
- Confusing fertilisers with pesticides.

**Tests and observations**
- Leaving out the word "precipitate".
- Swapping the Fe2+ and Fe3+ colours.
- Writing "white solution".
- Giving explanations instead of observations.
- Not knowing what iodine looks like or the colour of a sodium flame.

**Practical planning**
- Not following the bullet list in the planning question.
- Proposing non-laboratory methods.
- Heating to dryness instead of to a saturated solution when crystallising.

## 10. Grade thresholds

### 10a. Overall (weighted). 2022 is out of 145; 2023 onwards is out of 200.

| Session | Max | AX (11+21+31): A* / A / B / C | BX (11+21+41): A* / A / B / C | C as % of max (AX) |
|---|---|---|---|---|
| 2022 MJ | 145 | 107 / 87 / 67 / 47 | 113 / 91 / 69 / 47 | 32 % |
| 2022 ON | 145 | 113 / 93 / 73 / 53 | 114 / 93 / 72 / 51 | 37 % |
| 2023 MJ | 200 | 166 / 133 / 100 / 67 | 164 / 131 / 98 / 65 | 34 % |
| 2023 ON | 200 | 164 / 134 / 104 / 75 | 163 / 133 / 103 / 73 | 38 % |
| 2024 MJ | 200 | 167 / 135 / 101 / 68 | 166 / 133 / 99 / 66 | 34 % |
| 2024 ON | 200 | 170 / 140 / 107 / 74 | 169 / 139 / 105 / 72 | 37 % |
| 2025 MJ | 200 | 169 / 139 / 105 / 72 | 169 / 138 / 105 / 72 | 36 % |
| 2025 ON | 200 | 173 / 146 / 113 / 80 | 172 / 144 / 110 / 77 | 40 % |
| 2026 MJ | 200 | 160 / 129 / 98 / 67 | 164 / 133 / 102 / 71 | 34 % |

### 10b. Component thresholds, variant 1 (grade A / grade C)

| Session | P11 /40 | P21 /75 or /80 | P31 /40 | P41 /60 or /40 |
|---|---|---|---|---|
| 2022 MJ | 24 / 16 | 47 / 21 (of 75) | 21 / 13 | 40 / 20 (of 60) |
| 2022 ON | 23 / 14 | 50 / 25 (of 75) | 26 / 18 | 40 / 24 (of 60) |
| 2023 MJ | 25 / 14 | 52 / 22 | 30 / 18 | 28 / 16 |
| 2023 ON | 24 / 15 | 54 / 25 | 30 / 21 | 29 / 19 |
| 2024 MJ | 27 / 16 | 53 / 22 | 28 / 16 | 26 / 14 |
| 2024 ON | 29 / 17 | 53 / 23 | 30 / 20 | 29 / 18 |
| 2025 MJ | 29 / 18 | 54 / 23 | 28 / 16 | 27 / 16 |
| 2025 ON | 29 / 19 | 57 / 24 | 31 / 21 | 29 / 18 |
| 2026 MJ | 25 / 16 | 54 / 23 | 24 / 14 | 28 / 18 |

**Reading the thresholds:**
- **A\*** needs about **80–87 %** of the weighted total.
- **A** needs about **65–73 %**.
- **C** needs only about **33–40 %**. On Paper 2, a C is about **22–25 out of 80** (under a third), so steady marks across every question matter more than finishing the hard parts.
- Nov sessions run 3–8 marks higher than June.

## 11. Revision priorities for Oct/Nov 2026 and 2027 candidates

1. **Organic chemistry first** (about 21 % of theory marks, and rising). Practise:
   - naming and drawing alkanes, alkenes, alcohols, acids and esters, both ways round (name ↔ structure);
   - structural isomers;
   - substitution with Cl2/UV and addition with Br2, H2 and steam, with their conditions;
   - fermentation compared with hydration of ethene;
   - cracking equations;
   - addition repeat units and condensation linkages (amide/ester), including proteins and plastics disposal.
2. **Moles every paper:** reacting masses, limiting reactant, gas volume (24 dm³), concentration, empirical/molecular formula, % composition and % yield, and Avogadro-number questions. Always show working, using moles, not masses.
3. **Rates and equilibrium, "describe and explain":** learn the exact collision-theory wording (frequency of collisions; proportion of collisions with energy ≥ Ea). Separately, learn Le Chatelier answers for temperature and for pressure (counting moles of **gas**). Do not mix the two.
4. **Equations:** symbol equations with state symbols; ionic equations (neutralisation, displacement, precipitation); electrode half-equations with electrons on the correct side.
5. **Bonding and structure:** dot-and-cross diagrams for small molecules and ionic compounds; why ionic, simple molecular, giant covalent and metallic substances have the properties they do.
6. **Electrochemistry and energetics (new-syllabus favourites):** electrolysis products for molten, concentrated aqueous and dilute aqueous electrolytes; CuSO4 with copper vs inert electrodes; fuel cells; reaction-pathway diagrams (labelled ΔH and Ea arrows); bond-energy calculations.
7. **Practical (P3 or P4, 20 % of the grade):**
   - Learn the qualitative-analysis tables by heart: cation colours with NaOH and NH3, including the excess behaviour; anion tests; gas tests; flame colours. Always write "precipitate".
   - Practise titration tables: concordant titres, average, 2 d.p. readings.
   - Practise thermometric graphs with two best-fit lines.
   - Rehearse the **6-mark plan** template: apparatus, quantities, method steps, what to measure, how to process the result, and a fair-test or safety point.
8. **Quick-win MCQ topics** (one item each, every session): diffusion rates (Mr), isotope and ion particle counts, types of oxide, Group I/VII/VIII trends, transition-element properties, alloys, rust prevention, water treatment, pollutant effects, chromatography Rf, and choosing apparatus.
9. **Lower priority:** physical vs chemical change, composition of air, NPK details and electroplating. Learn the key facts, but do not over-invest.

## Caveats

- One variant per component per session was classified. The other variants were only spot-checked.
- Single-topic tagging hides mixed parts.
- The pre-2023 comparison rests on two sessions only.
- The style counts in section 8 come from keyword matching and are approximate.
- Examiner-report evidence covers 2022–June 2023 only.
