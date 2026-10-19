# Cambridge International AS & A Level Biology (9700): topic-frequency analysis, 2022–2026

Built from local files only (`papers/a-level/biology-9700/`), 19 Oct 2026. No network sources.
Per-part data: `9700-questions.csv` (1,094 rows: session, paper, variant, question, part, topic, subtopic, marks).
Question descriptions below are paraphrased, not quoted.

## 1. Method and sample

- **Sessions:** 9 (May/June and Oct/Nov 2022 to 2025, plus May/June 2026).
- **Main sample:** variant 2 of Papers 1, 2, 4 and 5 (12, 22, 42, 52) in every session, every question part tagged: 36 papers, 2,070 marks.
- **Practical (Paper 3):** variant 33 tagged for June 2023, June 2025 and June 2026 (120 marks; `paper = 3, variant = 3` in the CSV).
- **Marks:** MCQ items are 1 mark each. For Papers 2–5 the marks come from the `[n]` markers in the question papers, read by a script, cross-checked against each question's `[Total: n]` line and against the part list in the mark schemes. **Every paper adds up exactly to its cover total** (40 / 60 / 40 / 100 / 30). Three parts where the `[n]` marker was missing from the text layer were restored: June 2024 P22 Q4(b)(i) from the mark scheme, and the single-part questions June 2025 P42 Q2 and June 2026 P22 Q3 from their `[Total]` lines.
- **Classification:** each part goes to **one** topic and subtopic, chosen by what earns the marks.
  - Magnification and unit conversions go to *Cell structure*; antibiotic resistance on an AS paper goes to *Infectious diseases*, but on Paper 4 (as evolution by natural selection) to *Selection & evolution*.
  - Cell signalling on an AS paper goes to *Cell membranes & transport*; glucagon/insulin signalling on Paper 4 goes to *Homeostasis*.
  - Paper 4 builds on AS knowledge (for example transcription inside gene-control questions), but parts were tagged to the A Level topic that frames them, so AS topics barely appear in the Paper 4 table. Only one Paper 4 mark was tagged to an AS topic.
  - **Papers 3 and 5:** `topic` = the biology context of the experiment; `subtopic` = the skill being credited (`Skill: planning a method`, `Skill: statistics …` and so on). One Paper 5 question (seed awns and humidity, Nov 2025) and one Paper 3 question (milk density, June 2023) have no syllabus context and are tagged *Practical skills (generic)*.

  Treat the figures as good estimates (±1–2 marks per topic per paper).
- **Examiner reports exist locally for only 4 sessions:** June 2022, Nov 2022, June 2023 and June 2024. There are none for Nov 2023, Nov 2024, June 2025, Nov 2025 or June 2026. **Grade thresholds:** all 9 sessions.
- **2026 files** use long names (`9700-biology-june-2026-…`) and carry website watermarks and trace lines. These were filtered out before parsing.

## 2. Paper structure (from the cover pages, identical in all 9 sessions)

| Component | Level | Length | Marks | Format | Weighting* |
|---|---|---|---|---|---|
| Paper 1 Multiple Choice | AS | 1 h 15 min | 40 | 40 four-option items, in syllabus order (topic 1 → 11) | AS 31 % / A Level 15 % |
| Paper 2 AS Level Structured Questions | AS | 1 h 15 min | 60 | 6 compulsory structured questions (5–17 marks each) | AS 46 % / A Level 23 % |
| Paper 3 Advanced Practical Skills | AS | 2 h | 40 | 2 questions: a wet practical (20–22 marks) and a microscopy/drawing question (18–20 marks) | AS 23 % / A Level 11.5 % |
| Paper 4 A Level Structured Questions | A Level | 2 h | 100 | 10 compulsory structured questions (6–15 marks each) | A Level 38.5 % |
| Paper 5 Planning, Analysis & Evaluation | A Level | 1 h 15 min | 30 | 2 questions (3 in Nov 2025): a planning question with a 5–7-mark method, plus a data/statistics question | A Level 11.5 % |

\*Weighting inferred from the threshold sheets. The AS options are out of 130 "after weighting" and the A Level options out of 260, while the raw totals are 140 and 270. This fits Paper 3 being scaled ×0.75 (40 → 30) and the other papers being used as raw marks.

**Options for variant 2:** A Level option **AY** = 12, 22, 33, 42, 52 (and **HY** = the same with practical 34); AS options **S3** = 12, 22, 33 and **S4** = 12, 22, 34. Staged A Level options (BY, CY, CR, BT, EV) combine 42 and 52 with an AS result carried forward.

**New variant 4 (from June 2025).** June 2025, Nov 2025 and June 2026 each have a full set of variant-4 papers: 14, 24, 44 and 54, plus practical variants 37 and 38. They have their own component thresholds and their own options (**AC** = 14, 24, 37, 44, 54; **HC** = 14, 24, 38, 44, 54; AS **S7/S8** = 14, 24, 37/38). A check of the variant-4 MCQ items found none copied from any other variant, so these are newly written papers. The option suffixes follow the usual pattern (X/Y/Z for variants 1/2/3, and C for the new set), which fits a new administrative-zone variant. However, **no local file names a time zone, so this cannot be confirmed from the threshold sheets.** The June 2026 sheet has a new layout that lists component combinations without option codes. It also lists a 75-mark Component 50 and a new Component 60, with no papers for either in the local files.

**Syllabus and visible changes.** The 2022 syllabus was first examined in 2022, and every sampled paper follows it. Format, durations and mark totals do not change from 2022 to 2026. Visible changes in the papers:
- The June 2022 P22 examiner report notes that candidates did badly on a part based on **content added for the new syllabus** (introns, exons, primary transcript and mRNA splicing). These ideas then recur often: June 2024 P22 (alternative splicing), Nov 2025 P22 (lactase gene, primary transcript to mRNA), and the June 2025 and June 2026 MCQs.
- Content seen regularly across 2022–26 that was new or expanded in this syllabus: **gene editing / CRISPR** (2022, 2024, 2025 papers), **microarrays and bioinformatics databases** (Nov 2023, June 2025, June 2026), **95 % confidence intervals and standard error** (Nov 2022 to June 2026), **Simpson's index, Spearman's and Pearson's correlation**, Venus fly trap (Nov 2024, Nov 2025, June 2026), **immobilised enzymes**, and stem cells and telomeres.
- **Smoking and tobacco** contexts appear up to June 2024 (8 mentions across the June 2024 papers) and **not at all in 2025–26**.
- **June 2026 papers write "Figure 1.1" instead of "Fig. 1.1"** (0 uses of "Figure n" before 2026; 275 in 2026). This is a house-style change only.
- From 2025 the extra variant 4 appears (see above).

## 3. Topic weights per component (marks, variant 2)

### Paper 1 (MCQ, 40 marks per session)

| Topic | J22 | N22 | J23 | N23 | J24 | N24 | J25 | N25 | J26 | Total | Share | Sessions |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Biological molecules | 7 | 6 | 7 | 4 | 6 | 6 | 5 | 6 | 8 | 55 | 15.3 % | 9/9 |
| Cell structure | 5 | 5 | 6 | 7 | 5 | 6 | 6 | 5 | 6 | 51 | 14.2 % | 9/9 |
| Transport in plants | 6 | 5 | 6 | 5 | 4 | 3 | 5 | 4 | 3 | 41 | 11.4 % | 9/9 |
| Cell membranes & transport | 3 | 4 | 5 | 3 | 4 | 4 | 4 | 4 | 4 | 35 | 9.7 % | 9/9 |
| Transport in mammals | 5 | 4 | 2 | 5 | 3 | 4 | 4 | 4 | 4 | 35 | 9.7 % | 9/9 |
| Nucleic acids & protein synthesis | 3 | 4 | 4 | 3 | 3 | 4 | 2 | 4 | 4 | 31 | 8.6 % | 9/9 |
| The mitotic cell cycle | 4 | 4 | 2 | 3 | 3 | 4 | 3 | 3 | 3 | 29 | 8.1 % | 9/9 |
| Enzymes | 1 | 3 | 2 | 3 | 2 | 2 | 5 | 5 | 2 | 25 | 6.9 % | 9/9 |
| Gas exchange | 2 | 2 | 3 | 2 | 4 | 3 | 2 | 2 | 2 | 22 | 6.1 % | 9/9 |
| Immunity | 3 | 2 | 1 | 2 | 3 | 2 | 2 | 2 | 2 | 19 | 5.3 % | 9/9 |
| Infectious diseases | 1 | 1 | 2 | 3 | 3 | 2 | 2 | 1 | 2 | 17 | 4.7 % | 9/9 |

### Paper 2 (AS structured, 60 marks per session)

| Topic | J22 | N22 | J23 | N23 | J24 | N24 | J25 | N25 | J26 | Total | Share | Sessions |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Transport in mammals | 10 | 11 | 7 | 5 | 8 | 9 | 8 | 10 | 4 | 72 | 13.3 % | 9/9 |
| Cell structure | 4 | 7 | 9 | 8 | 7 | 5 | 5 | 11 | 7 | 63 | 11.7 % | 9/9 |
| Immunity | 7 | 4 | 7 | 4 | 7 | 5 | 7 | 7 | 8 | 56 | 10.4 % | 9/9 |
| Infectious diseases | 4 | 8 | 5 | 6 | 6 | 3 | 9 | 7 | 5 | 53 | 9.8 % | 9/9 |
| Biological molecules | 6 | 5 | 7 | 4 | 6 | 7 | 7 | 3 | 6 | 51 | 9.4 % | 9/9 |
| Nucleic acids & protein synthesis | 3 | 4 | 11 | 5 | 5 | 5 | 4 | 6 | 5 | 48 | 8.9 % | 9/9 |
| Transport in plants | 6 | 3 | 0 | 6 | 5 | 5 | 8 | 5 | 7 | 45 | 8.3 % | 8/9 |
| The mitotic cell cycle | 4 | 3 | 3 | 7 | 5 | 8 | 3 | 2 | 5 | 40 | 7.4 % | 9/9 |
| Enzymes | 4 | 4 | 1 | 8 | 3 | 5 | 2 | 6 | 6 | 39 | 7.2 % | 9/9 |
| Gas exchange | 5 | 8 | 7 | 4 | 2 | 3 | 3 | 0 | 7 | 39 | 7.2 % | 8/9 |
| Cell membranes & transport | 7 | 3 | 3 | 3 | 6 | 5 | 4 | 3 | 0 | 34 | 6.3 % | 8/9 |

### Paper 4 (A Level structured, 100 marks per session)

| Topic | J22 | N22 | J23 | N23 | J24 | N24 | J25 | N25 | J26 | Total | Share | Sessions |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Inherited change | 16 | 23 | 7 | 21 | 22 | 6 | 17 | 13 | 15 | 140 | 15.6 % | 9/9 |
| Homeostasis | 8 | 16 | 19 | 18 | 16 | 19 | 12 | 11 | 11 | 130 | 14.4 % | 9/9 |
| Control & coordination | 18 | 6 | 13 | 13 | 15 | 11 | 11 | 26 | 10 | 123 | 13.7 % | 9/9 |
| Genetic technology | 9 | 16 | 11 | 10 | 10 | 13 | 12 | 14 | 13 | 108 | 12.0 % | 9/9 |
| Selection & evolution | 14 | 7 | 18 | 7 | 9 | 21 | 11 | 10 | 10 | 107 | 11.9 % | 9/9 |
| Classification, biodiversity & conservation | 11 | 9 | 14 | 10 | 8 | 10 | 18 | 12 | 12 | 104 | 11.6 % | 9/9 |
| Photosynthesis | 15 | 12 | 9 | 12 | 9 | 13 | 5 | 11 | 8 | 94 | 10.4 % | 9/9 |
| Energy & respiration | 9 | 11 | 9 | 9 | 11 | 7 | 14 | 3 | 20 | 93 | 10.3 % | 9/9 |
| Cell membranes & transport | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0.1 % | 1/9 |

**Reading the tables.**
- **Paper 1 is almost fixed.** Every topic appears in every session, in syllabus order, with narrow ranges: cell structure 5–7 items, biological molecules 4–8, transport in plants 3–6, and infectious diseases and immunity 1–3 each. The MCQ order tells you the topic, so a weak topic costs a predictable block of items.
- **Paper 2 is spread across all 11 AS topics**, but one topic can be missing in a session: transport in plants in June 2023, gas exchange in Nov 2025, membranes in June 2026. Transport in mammals, cell structure, immunity and infectious diseases together take about 45 % of the marks.
- **Paper 4 also covers all 8 A Level topics every session**, but single questions are big (up to 15 marks). A topic can therefore swing from 3 to 20 marks: energy & respiration was 3 marks in Nov 2025 and 20 in June 2026, and control & coordination 6 in Nov 2022 and 26 in Nov 2025.
- **Combined theory weight (P1 + P2 + P4, 1,800 marks):** inherited change 7.8 %, homeostasis 7.2 %, control & coordination 6.8 %, cell structure 6.3 %, genetic technology 6.0 %, then transport in mammals, selection & evolution, biological molecules and classification/biodiversity/conservation (5.8–5.9 % each). Lowest: gas exchange 3.4 %, enzymes 3.6 %, mitotic cell cycle 3.8 %. Enzymes and the cell cycle are still tested every session, and enzymes return heavily in Paper 5.

### Paper 5 (Planning, Analysis & Evaluation, 30 marks per session): contexts and skills

| Session | Q1 context (marks) | Q2 (and Q3) context (marks) |
|---|---|---|
| June 2022 | Membranes: beetroot pigment release and surface area : volume (18) | Infectious disease: bovine TB in badgers and cattle, correlation (12) |
| Nov 2022 | Biological molecules: biuret assay with a colorimeter calibration curve (15) | Genetic technology: RNA sequencing in Huntington's model sheep, SE and ratios (15) |
| June 2023 | Enzymes: polyphenol oxidase, pH, initial rate from a tangent, substrate-concentration plan (16) | Biodiversity: lichen cover against distance from a road, Spearman's rank (14) |
| Nov 2023 | Biodiversity: algae in rock pools, Spearman's rank, a 7-mark transect plan (16) | Plant hormones: ABA and salicylic acid on rice seedlings, 95 % CI, gene-expression data (14) |
| June 2024 | Biodiversity: undergrowth in plantations, belt transects, Simpson's index, dilutions of a root extract (19) | Cancer: nuclear diameter of tumour cells, magnification, t-test null hypothesis (11) |
| Nov 2024 | Photosynthesis: Hill reaction with DCPIP, rate graph, temperature plan (15) | Selection: melanic two-spot ladybirds, choice of statistical test, breeding test (15) |
| June 2025 | Enzymes: phosphatase, pH plan, colorimeter, Km with a competitive inhibitor (20) | Biodiversity: sponge diversity in a bay, index calculation (10) |
| Nov 2025 | Stomata: stomatal width in sucrose solutions, stomatal density (18) | ABA and transpiration (7); Q3 seed awns and humidity (5) |
| June 2026 | Enzymes: catalase in ripening and cold-stored avocados, 95 % CI and error bars (20) | Biodiversity: butterfly belt transect, urban versus rural (10) |

**Paper 5 skill shares (270 marks):** planning a method 32.6 %, conclusions and interpreting data 14.8 %, variables and controls 12.6 %, calculations 10.7 %, errors, reliability and improvements 8.9 %, statistics (SD, SE, 95 % CI, t-test, Spearman, choosing a test) 7.8 %, graphs 4.1 %, explaining with biology 3.3 %, hypotheses and predictions 3.0 %, risk 1.1 %, measurement 1.1 %.
**Context bankers:** an **enzyme experiment** (June 2023, June 2025 and June 2026, always Q1 with 16–20 marks) and a **field-ecology / biodiversity study** (5 of 9 sessions, with Simpson's index, Spearman's rank or transects). Every paper has a 5–7-mark method plan and at least one calculation (dilution, percentage change, rate, 95 % CI or diversity index).

### Paper 3 (Advanced Practical Skills), variant 33: experiment types

| Session | Question 1 (wet practical) | Question 2 (microscopy) |
|---|---|---|
| June 2023 | Density of milk: timing drops falling through copper sulfate after making milk dilutions; results table, trend, risk level, two errors with improvements; graph of density against temperature from given data, reading off a value, testing a stated hypothesis (20) | Plan diagram of a root transverse section; drawing 4 xylem vessel elements; 3 differences and 1 similarity with a photomicrograph of another organ; actual length from a scale bar (20) |
| June 2025 | Water movement between plant-tissue cylinders and NaCl solution, with total surface area changed by cutting each cylinder into 1–16 pieces; surface-area calculation, results table, trend explained, error, adapting the method for temperature; graph of red-blood-cell data to find the isotonic concentration (22) | Plan diagram of a plant organ with vascular bundles; drawing 4 xylem vessel elements; eyepiece graticule calibration with a stage micrometer; actual size of a tissue; 3 differences from a photomicrograph; identifying the organ (18) |
| June 2026 | Catalase in plant tissue with a dilution series of hydrogen peroxide; results table, trend described and explained, main error, an oxygen-volume method; bar chart of hydrogen-peroxide data for microorganisms (20) | Plan diagram of a plant-organ section; drawing 4 epidermal cells; 3 differences from a photomicrograph and identifying both organs; diameters, circle areas and an area ratio (20) |

**Paper 3 skill shares (120 marks):** biological drawing 25 %, results tables 12.5 %, graphs and charts 11.7 %, observing and comparing specimens 11.7 %, measurement, graticule and magnification 9.2 %, planning (dilutions, modified methods) 8.3 %, conclusions 7.5 %, errors and improvements 5 %, explaining results 4.2 %, calculations 4.2 %.
**Fixed pattern:** Q2 is **always a plant transverse section** (root, stem or leaf) with a 5-mark plan diagram, a 5-mark drawing of 4 adjacent cells and a 3–4-mark comparison table. Q1 usually has a dilution series (2023, 2026) and always has a self-designed results table (5 marks with the readings) and a graph or bar chart (4 marks) from supplied data.

## 4. Bankers (tested in every or nearly every session)

**Paper 1 (every session, 1–7 items each):** cell ultrastructure and organelles (22 items); mitosis and the cell cycle (21); protein structure including haemoglobin and collagen (18); water transport and transpiration, apoplast/symplast and cohesion–tension (17); magnification and resolution (15, every session); carbohydrates (15); prokaryotes and viruses (14, every session); osmosis and water potential (14); heart and cardiac cycle (14); gas-exchange tissues (13, every session); biochemical tests; Km/Vmax (6 of 9); surface area : volume with agar cubes (7 of 9).

**Paper 2 (by marks over 9 sessions):** infectious diseases and their transmission/control (35 marks, all 9 sessions; cholera, TB, malaria and HIV rotate); cell ultrastructure (33); gas-exchange tissues and histology (29); haemoglobin and CO2 transport (28); blood vessels (25); active transport, cotransport and exocytosis (24); monoclonal antibodies (21); translocation (21); transcription and translation (20); prokaryotes and viruses (20).

**Paper 4 (by marks, with sessions out of 9):**
| Subtopic | Marks | Sessions |
|---|---:|---:|
| Kidney: ultrafiltration, selective reabsorption, ADH and osmoregulation | 63 | 7 |
| Genetic crosses (monohybrid, sex linkage on X or Z, codominance and multiple alleles, dihybrid, test cross) | 58 | 8 |
| Conservation: IUCN, zoos, IVF and captive breeding, invasive species | 56 | 9 |
| Control of gene expression (lac/trp operon, DELLA and gibberellin, transcription factors) | 50 | 6 |
| Recombinant DNA and GM organisms (insulin, GM crops, marker genes) | 48 | 7 |
| Neurones, action potentials and myelination | 46 | 8 |
| Speciation, genetic drift and molecular evidence | 40 | 6 |
| Natural and artificial selection (incl. antibiotic resistance) | 39 | 7 |
| Blood glucose, glucagon/insulin signalling | 32 | 7 |
| Limiting factors in photosynthesis | 32 | 6 |

**Highest-probability Paper 4 questions:** a genetic diagram (4–5 marks, 8/9 sessions); a kidney or ADH question (7/9); a conservation question about zoos, IVF or the IUCN (9/9); a respiration pathway question (glycolysis, link reaction, Krebs cycle, ETC or anaerobic respiration; 9/9 in some form); a photosynthesis graph (limiting factors or temperature, 6/9); an action-potential or synapse question (8/9).

## 5. Rarely tested in this sample

Paper 4 variant 2 only (other variants may cover these):
- Hardy–Weinberg calculation: June 2023 only (7 marks). The term appears in other variants in Nov 2023, June 2025 and June 2026.
- RQ and respirometers: only a DCPIP yeast question (Nov 2024). "RQ" appears in other variants in 2022, Nov 2023, June 2025 and June 2026.
- Chi-squared: worked as a calculation once (Nov 2023), and named as the right test once (June 2024).
- Microarrays and databases: 2 sessions (restriction-enzyme databases June 2023; microarray gene expression Nov 2023). Stomata and ABA on Paper 4: June 2025 only (but also Paper 5 in Nov 2025).
- Endocrine versus nervous system: 2 sessions. Sensory receptors (taste chemoreceptor): June 2022 only. ATP use and synthesis as a topic: June 2026 only.
- Oxidative phosphorylation: only 2 sessions (June 2024, June 2025), but 10–11 marks each time.
- Epistasis: one 2022 mention; never examined as a cross in the sample.

Paper 2 and Paper 1:
- Paper 2 rarely tests Km/Vmax (once), osmosis and water potential (once), surface area : volume (once), food tests (once), tissue fluid (once) or xerophytes (once). These are left to Paper 1, where they are regular.
- Paper 1 has few items on stem cells and cancer, monoclonal antibodies (2 each), xerophytes (2), tissue fluid and phagocytosis (3 each). Monoclonal antibodies are a Paper 2 favourite instead.

## 6. Trends

- **Stable core.** The topic shares in Papers 1 and 2 hardly move between 2022–23 and 2025–26. The largest Paper 1 shift is **enzymes up from about 2 to 4 items** per paper in 2025–26 (5 in both 2025 papers).
- **Paper 2:** transport in plants is regaining weight (mean 3.8 marks in 2022–23, 6.7 in 2025–26). Gas exchange and membranes have fallen (6.0 → 3.3 and 4.0 → 2.3). Immunity and infectious disease are rising slightly (about 5.5 → 7). Monoclonal antibodies appear in 4 of 9 sessions, often with diagnostic tests (dipstick, sandwich ELISA, hybridoma method).
- **Paper 4:** classification, biodiversity and conservation is up (11 → 14 marks per paper) and energy & respiration is up (9.5 → 12.3). Photosynthesis is down (12 → 8) and homeostasis is down (15 → 11). Genetic technology is steady at 10–16 marks, with PCR, gel electrophoresis and genetic screening prominent recently (Nov 2025, June 2026) alongside gene therapy (Nov 2024, Nov 2025).
- **Statistics is spreading.** Spearman's rank, Simpson's index, t-tests, standard deviation, SE and 95 % CI appear on Paper 4 as well as Paper 5 from 2023 (Nov 2024 t-test, June 2025 Spearman, Nov 2025 Simpson). June 2026 Paper 5 asks why a t-test is unsuitable and to draw 95 % CI error bars.
- **Contexts are unfamiliar organisms.** Every structured paper is built on unfamiliar organisms and diseases (jaguars, bison, tortoise beetles, Venus fly trap, Paneth cells, bacteriophages, lactase persistence). The examiner reports repeatedly reward applying core ideas to the context rather than reciting general notes.

## 7. Question styles

Command words matched in the question text (a part can match more than one, so the shares overlap):

| Style | Paper 2 (540 marks) | Paper 4 (900 marks) | Paper 5 (270 marks) |
|---|---:|---:|---:|
| Explain | 38 % | 30 % | 16 % |
| Suggest | 21 % | 22 % | 17 % |
| State / name / identify / give | 22 % | 18 % | 35 % |
| Describe | 15 % | 20 % | 11 % |
| Outline | 10 % | 13 % | 7 % |
| Compare / discuss / evaluate | 2 % | 4 % | 6 % |
| Complete a table, passage or diagram | 5 % | 3 % | 4 % |
| Draw, sketch, plot or label | 3 % | 1 % | 7 % |
| Calculations | about 2 % | about 4 % | about 17 % |
| Explicit "with reference to Fig./Table" data use | 11 % | 8 % | 12 % |

Paper 4 also has a **genetic diagram in 8 of 9 sessions** (4–5 marks) and **one 6–7-mark extended "describe" or "outline"** in most sessions. Examples: selective reabsorption (June 2023), oxidative phosphorylation (June 2024), the Calvin cycle (Nov 2024), a biosensor (Nov 2025), and ADH (June 2026).

**Calculations seen:**
- **Paper 1 (a few items per paper):** magnification or actual size, image width in standard form, cell numbers after rounds of mitosis, DNA mass across the cell cycle, surface area : volume, number of water molecules to hydrolyse a polymer.
- **Paper 2:** actual size and unit conversion (µm ↔ nm: Nov 2022, June 2026), estimating magnification (June 2022), percentage from a diagnostic table (June 2022).
- **Paper 4:** percentage change (June 2022, June 2024, June 2026), mean rate of change (June 2022, Nov 2023), ratio of concentrations (Nov 2022), Hardy–Weinberg (June 2023), GFR rate with units (June 2023), standard form (June 2024), t-test value (Nov 2024), Spearman's rank (June 2025), PCR copies 2^n (Nov 2025), Simpson's index (Nov 2025), Rf value (June 2026), ATP-use ratio (June 2026).
- **Paper 5:** dilutions (5 of 9 sessions), percentage change (4), 95 % CI (2), Spearman's rank (1), initial rate from a tangent, Km read from a graph, stomatal density from a field-of-view area, magnification and actual size.
- **Paper 3:** actual size from a scale bar or graticule (every paper), surface area, circle areas and ratios.

## 8. Common mistakes (examiner reports June 2022, Nov 2022, June 2023, June 2024; paraphrased)

**Across papers**
- Not reading the stem: answers repeat information already given (ATP and carrier proteins for active transport), or answer a neighbouring question (advantages of a vaccination *programme* instead of the *vaccine*; IVF advantages instead of the method).
- Giving lists or choices: offering both competitive and non-competitive features, or more answers than asked. Wrong extras cancel correct ones, and only the first *n* answers are marked.
- Imprecise terms: "membrane" instead of *cell surface / presynaptic / postsynaptic membrane*; "amount"; "trap" light instead of *absorb*; "energy produced" instead of *released*; own abbreviations (ESC, SER, rbc). Misspelt key words are not credited (capsid, aorta, pulmonary, quadrat/quadrant, allopatric, the base names cytosine and thymine).
- **Describing when asked to explain.** A graph question that asks to *explain* gets no credit for describing the trend (glucagon against glucose, Nov 2022; ADH and urine, June 2024).

**AS (Papers 1 and 2)**
- Stem cells: not showing self-renewal. Mixing up a gene and an allele; a gene "codes for an amino acid"; exons and introns reversed; calling the RNA made by transcription "mRNA" before splicing.
- Epithelium confused with the whole airway wall. Smooth muscle described as stretching or recoiling (that is elastic tissue). Cilia called microvilli.
- Eukaryotes assumed to be multicellular (a unicellular parasite called a prokaryote). Mitochondria or nuclei placed in prokaryotes.
- Resolution: knowing that a longer wavelength *lowers* resolution (MCQ, June 2022; only about a third right). ATP structure as an RNA nucleotide with two extra phosphates (a quarter right). Centrioles replicate in interphase, not prophase.
- Antibody specificity explained with "receptor" or "active site" instead of variable region / antigen-binding site.
- Calculations: dividing by the wrong denominator in percentage and table calculations, wrong µm/nm conversion factors, no units.
- Penicillin described as "making holes" rather than inhibiting cross-link formation. Benedict's replaced by Fehling's.

**A Level (Paper 4)**
- Genetic diagrams: symbols not defined as alleles, the sex chromosome omitted from the key, an allele put on the W/Y chromosome, the wrong cross (a test cross not using the homozygous recessive), genotypes not linked to phenotypes.
- Hardy–Weinberg: taking the given frequency as q instead of q², and confusing the Hardy–Weinberg assumptions with those of mark-release-recapture.
- Natural selection: saying the *alleles* survive, and missing that a new dominant allele is seen in the phenotype at once.
- Respiration and photosynthesis: oxygen "used in the link reaction"; NAD versus NADP mixed up; ATPase for ATP synthase; electron carriers called "proton pumps"; light-dependent products listed wrongly; data misread from graph scales.
- Nerves and synapses: voltage-gated versus ligand-gated channels, "Ca+", impulses "jumping", "more negative" written as "negative", hyperpolarisation phase misidentified.
- Kidney: comparatives ("higher pressure") without a reference point, blood "pushed through" the filter, red blood cells listed as molecules, water potential of blood instead of cells.
- Conservation: IUCN confused with CITES; IVF confused with artificial insemination; implanting a "zygote" instead of an embryo; semen instead of sperm.
- Genetic technology: mRNA "converted into" DNA instead of used as a template for cDNA; vague "vector" for plasmid; electrophoresis "separates genes".

**Paper 5**
- Plans that list variables without saying how each is controlled. "Repeat three times and take a mean" written into every answer even when irrelevant. Lengthy cube-cutting or set-up detail.
- Dilutions: wrong range or units, decimal-point slips (0.5 % for 0.05 %), "repeat the opposite" for the second dilution.
- Null hypotheses: "no significant difference" written for a correlation study, or not using the variables named in the stem.
- Confusing accurate with reliable data. Claiming significance from non-overlapping SE bars without a test. Rate taken from the whole graph instead of the initial tangent. Not giving three significant figures when told to.
- Generic risk precautions (gloves or goggles) that do not match the hazard named.

**Paper 3 (June 2023, variant 33)**
- Graph axes with incomplete headings or wrong scales. Drawing lines that do not join or are too thick. Errors described in general terms rather than as what actually reduced accuracy in that procedure.

## 9. Grade thresholds (variant-2 route)

**Component thresholds (A / E raw marks):**

| Session | P12 (/40) | P22 (/60) | P33 (/40) | P42 (/100) | P52 (/30) |
|---|---|---|---|---|---|
| Jun 2022 | 27 / 13 | 32 / 14 | 25 / 11 | 58 / 21 | 18 / 8 |
| Nov 2022 | 28 / 13 | 34 / 11 | 33 / 20 | 57 / 21 | 14 / 6 |
| Jun 2023 | 26 / 15 | 38 / 16 | 31 / 19 | 64 / 28 | 20 / 10 |
| Nov 2023 | 26 / 16 | 38 / 16 | 29 / 18 | 62 / 25 | 15 / 7 |
| Jun 2024 | 30 / 17 | 32 / 10 | 28 / 18 | 63 / 28 | 16 / 7 |
| Nov 2024 | 29 / 17 | 40 / 16 | 31 / 21 | 62 / 27 | 17 / 9 |
| Jun 2025 | 32 / 18 | 32 / 12 | 28 / 17 | 62 / 24 | 16 / 7 |
| Nov 2025 | 30 / 17 | 39 / 15 | 27 / 17 | 60 / 25 | 20 / 10 |
| Jun 2026 | 29 / 17 | 35 / 13 | 29 / 20 | 71 / 34 | 19 / 10 |

**A Level option 12, 22, 33, 42, 52 (AY), out of 260 weighted:**

| Session | A* | A | B | C | D | E |
|---|---:|---:|---:|---:|---:|---:|
| Jun 2022 | 176 | 154 | 132 | 109 | 86 | 64 |
| Nov 2022 | 184 | 158 | 132 | 110 | 88 | 66 |
| Jun 2023 | 195 | 171 | 147 | 125 | 104 | 83 |
| Nov 2023 | 184 | 163 | 142 | 120 | 99 | 78 |
| Jun 2024 | 187 | 162 | 137 | 116 | 96 | 76 |
| Nov 2024 | 192 | 171 | 150 | 128 | 106 | 85 |
| Jun 2025 | 188 | 163 | 138 | 116 | 95 | 74 |
| Nov 2025 | 191 | 169 | 147 | 124 | 102 | 80 |
| Jun 2026 | 201 | 176 | 151 | 130 | 109 | 89 |

**AS option 12, 22, 33 (S3), out of 130 weighted:**

| Session | a | b | c | d | e |
|---|---:|---:|---:|---:|---:|
| Jun 2022 | 78 | 67 | 56 | 45 | 35 |
| Nov 2022 | 87 | 72 | 61 | 50 | 39 |
| Jun 2023 | 87 | 76 | 65 | 55 | 45 |
| Nov 2023 | 86 | 75 | 65 | 55 | 46 |
| Jun 2024 | 83 | 70 | 60 | 50 | 41 |
| Nov 2024 | 92 | 81 | 70 | 59 | 49 |
| Jun 2025 | 85 | 73 | 63 | 53 | 43 |
| Nov 2025 | 89 | 78 | 67 | 56 | 45 |
| Jun 2026 | 86 | 74 | 64 | 54 | 45 |

**What the thresholds mean**
- A* has needed **68–77 %** of the weighted total (176–201 / 260), A **59–68 %** and E **25–34 %**. June 2022 was the most lenient session. June 2023 and June 2026 were the hardest (A* 195 and 201).
- AS grade a has needed **60–71 %** of 130.
- **Paper 2 and Paper 5 have the lowest component A boundaries** (P22 A at 32–40 / 60, i.e. 53–67 %; P52 A at 14–20 / 30, i.e. 47–67 %). These papers are hard to score on, so steady marks there lift the overall grade.
- **Paper 1 needs about 65–80 % for an A**, so careless MCQ errors are expensive.
- The **June 2026 P42 A boundary jumped to 71 / 100** (previously 57–64), which suggests an easier Paper 4.
- Variant-4 options (AC/HC) sit close to variant 2 (for example, June 2025 AC A* 191 against AY 188).

## 10. Revision priorities

1. **Paper 4 core (over half of Paper 4 marks):** genetic crosses and gene control (lac operon, DELLA/gibberellin, transcription factors); kidney and ADH; nerve impulses, synapses and muscle; respiration pathways (glycolysis → Krebs → ETC/chemiosmosis, anaerobic pathways in yeast and mammals); conservation (IUCN, zoos, IVF steps, invasive species). Practise a 7-mark "describe/outline" answer for each.
2. **AS core:**
   - organelles and prokaryote/virus structure;
   - magnification and unit conversions;
   - haemoglobin, Bohr shift and CO2 transport (carbonic anhydrase);
   - the heart and cardiac cycle;
   - gas-exchange tissues (cartilage, smooth muscle, goblet and ciliated cells, squamous epithelium);
   - water and sucrose transport in plants (apoplast/symplast, cohesion–tension, companion-cell cotransport);
   - transcription, splicing and translation;
   - cholera, TB, malaria and HIV (pathogen, transmission, control);
   - antibodies and monoclonal antibodies (hybridoma, diagnostic tests).
3. **Statistics and calculations as a unit:** percentage change (watch the denominator), magnification, rates and tangents, dilution series, Hardy–Weinberg, chi-squared, t-test, Spearman, Simpson's index, SD/SE/95 % CI, PCR 2^n and Rf. These sit on Papers 4 and 5 every session and were weak points in the examiner reports.
4. **Paper 5 drills:** a 7-mark enzyme plan (pH, temperature, substrate concentration, colorimeter or tangent rate) and a field-sampling plan (quadrat, belt transect, Simpson's index, Spearman). Write null hypotheses that match the design (correlation versus difference). Know when each statistical test applies.
5. **Paper 3 drills:** plan diagrams and 4-cell drawings of plant sections (root, stem, leaf), graticule calibration, a results table with units in the headings, line graphs and bar charts, and specific errors with matching improvements.
6. **Less frequent, but cheap to learn:** RQ and respirometers, absorption/action spectra and chromatography Rf, microarrays and bioinformatics, Hardy–Weinberg conditions, endocrine versus nervous system, and stomata and ABA. Each is a likely 3–7-mark surprise.
7. **Precision habits:** name the exact membrane; use *absorb*, *release*, *allele* and *primary transcript* correctly; answer *explain* questions with mechanisms rather than descriptions; quote data with units; give only the number of answers asked for.
