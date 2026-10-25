# Cambridge IGCSE Biology (0610): topic-frequency analysis, 2022–2026

Built from local files only (`papers/igcse/biology-0610/`), 19 Oct 2026. No network sources.
Per-part data: `0610-questions.csv` (872 rows: session, paper, variant, question, part, topic, subtopic, marks).
Question descriptions below are paraphrased, not quoted.

## 1. Method and sample

- **Sessions:** 9 (May/June and Oct/Nov 2022 to 2025, plus May/June 2026).
- **Main sample (Extended route):** variant 2 of Papers 2, 4 and 6 (22, 42, 62) in every session, every question part tagged. That is 27 papers and 1,440 marks.
- **Practical Test (Paper 5):** variant 52 tagged for June 2023, June 2025 and June 2026 (120 marks; `paper = 5` in the CSV).
- **Core (Papers 1 and 3):** tagged item by item since 26 Oct 2026 (section 12).
- **Marks:** MCQ items are 1 mark each. For Papers 4–6 the marks come from the `[n]` markers in the question paper, read by a script. **Every paper adds up exactly to its cover total** (40 / 80 / 40 / 40), and each question matches its `[Total: n]` line where one is printed.
- **Classification:** each part goes to **one** topic and subtopic, chosen by what earns the marks:
  - a magnification or unit-conversion part goes to *Cells / Magnification & size*; a food-test method or result goes to *Biological molecules / Food tests*;
  - antibiotic-resistance mechanisms go to *Variation & selection / Natural selection*; data on antibiotic use go to *Drugs*;
  - **"Practical skills (generic)"** is used for parts that test only a skill: reading instruments, building tables, plotting graphs, calculations from results, naming variables, errors and improvements, drawing, and the 6-mark plan. Conclusions and "explain these results" parts go to the biology of the experiment.

  Treat the figures as good estimates (±1–2 marks per topic per paper).
- **Examiner reports used:** June 2022, Nov 2022, June 2023 and June 2025 (each covers all variants; no reports for the other five sessions exist locally). **Grade thresholds:** 8 of 9 sessions. There is no threshold sheet for June 2024 in the local files.
- **2026 files** use long names (`0610-biology-june-2026-…`) and carry website watermarks; these were stripped before parsing. The 2026 folder also holds mark schemes for new variants **17 and 27** with no matching question papers, and the 2026 threshold sheet lists components 17 and 27. They were not analysed.

## 2. Paper structure (from the cover pages)

| Component | Route | Length | Marks | Format | Weighting* |
|---|---|---|---|---|---|
| Paper 1 Multiple Choice (Core) | Core | 45 min | 40 | 40 four-option items | 30 % |
| Paper 2 Multiple Choice (Extended) | Extended | 45 min | 40 | 40 four-option items | 30 % |
| Paper 3 Theory (Core) | Core | 1 h 15 min | 80 | structured questions, all compulsory | 50 % |
| Paper 4 Theory (Extended) | Extended | 1 h 15 min | 80 | 6 structured questions (4–23 marks each; 7 in June 2023), all compulsory | 50 % |
| Paper 5 Practical Test | both | 1 h 15 min | 40 | 2–3 questions: experiment ~20–28, specimen/data question 12–20, 6-mark plan | 20 % |
| Paper 6 Alternative to Practical | both | 1 h | 40 | 2–3 questions, the same contexts as Paper 5 | 20 % |

\*Weighting inferred from the threshold sheets: every option is out of 200 "after weighting". For Extended, 40 (P2) + 80 (P4) + 40 (P5/6) raw fits P2 ×1.5, P4 ×1.25, P6 ×1.

**Options:** Extended candidates take P2 + P4 + P5 or P6 (options BY = 22/42/52 and CY = 22/42/62 for variant 2). Core candidates take P1 + P3 + P5 or P6 (FY / GY) and can get at most grade C. The threshold sheets also list a 90-mark **Component 50** (option "P1" up to 2023, its own line in 2026); no paper for it exists locally.

**What changed with the syllabus first examined in 2023, as seen in the papers:**
- **The format did not change.** Durations, marks, rubric and the number of questions are identical in 2022 and 2023–26. Unlike O Level 5090 (where a Section C choice was removed and the practical lengthened), the 0610 change is in content only.
- **Paper 2 still runs in syllabus order** (characteristics → … → biotechnology) in every session.
- **Paper 5 and Paper 6 mirror each other in every session, including 2022.** P5 Q1 is the hands-on version of P6 Q1 (P6 gives the readings as diagrams), and the plan and specimen questions are word-for-word the same.
- **Content seen only in 2022 (old syllabus):** sickle-cell anaemia and its heterozygote advantage (2022 P2 and P4 variants), contraception (2022 Core and P23), smoking items (one 2022 P3; only one later mention, a CHD risk-factor option in Nov 2024).
- **Content that appears from 2023 onwards:**
  - *biodiversity* (0 mentions in 2022 papers, 1–8 per session from Nov 2023);
  - artificial insemination and IVF **in captive-breeding / conservation** (Nov 2025 P4, June 2026 P2 and P4; in 2022 IVF only appeared as fertility treatment);
  - the *set point* of homeostasis (Nov 2023);
  - classification from DNA base sequences (June 2025 P2);
  - more regular parts on stem cells, gene expression ("only some genes are expressed in a cell"), and growth-curve phases.
- **Unchanged and still heavily tested:** water potential wording for osmosis, cholera and chloride secretion, protein synthesis via mRNA, monoculture and biofuels, dichotomous keys and arthropod groups (all were already in the 2020–22 syllabus).

## 3. Topic list (21 syllabus topics plus generic practical skills; subtopics used in the CSV)

| # | Topic | Subtopics |
|---|---|---|
| 1 | Characteristics & classification | Characteristics of living organisms; Classification, species & binomial system; Dichotomous keys; Features of kingdoms, groups & viruses |
| 2 | Cells | Cell structure & organelles; Specialised cells & levels of organisation; Magnification & size (units) |
| 3 | Movement into & out of cells | Diffusion; Osmosis & water potential; Active transport |
| 4 | Biological molecules | Elements & structure of molecules; Food tests; DNA structure & base pairing |
| 5 | Enzymes | Enzyme action & specificity; Effect of temperature & pH |
| 6 | Plant nutrition | Photosynthesis & limiting factors; Leaf structure; Mineral ions (Mg, nitrate) |
| 7 | Human nutrition | Balanced diet & deficiencies; Digestive system organs & processes; Physical digestion, teeth & bile; Chemical digestion & enzymes; Absorption, villi & assimilation |
| 8 | Transport in plants | Xylem & phloem structure; Water uptake & root hairs; Transpiration; Translocation |
| 9 | Transport in animals | Circulatory systems & the heart; Coronary heart disease; Blood vessels; Blood components & clotting |
| 10 | Diseases & immunity | Pathogens & transmission; Defences, antibodies & immunity; Cholera |
| 11 | Gas exchange in humans | Gas exchange system & surfaces; Breathing mechanism & air composition; Exercise & control of breathing |
| 12 | Respiration | Aerobic respiration; Anaerobic respiration & oxygen debt |
| 13 | Excretion in humans | Kidney, nephron & urine; Liver, deamination & urea |
| 14 | Coordination & response | Nervous system & reflex arc; Synapses; Sense organs: the eye; Hormones & adrenaline; Blood glucose control & diabetes; Temperature control; Tropic responses & auxin; Homeostasis & negative feedback (general) |
| 15 | Drugs | Antibiotics & their use; Drug definition & other drugs |
| 16 | Reproduction | Asexual vs sexual reproduction; Flowers & pollination; Fertilisation, seeds & germination; Human reproductive systems & gametes; Pregnancy, placenta & fetal development; Sex hormones & menstrual cycle; STIs & HIV |
| 17 | Inheritance | Genes, DNA & protein synthesis; Mitosis, meiosis & stem cells; Monohybrid crosses & pedigrees; Codominance, blood groups & sex linkage |
| 18 | Variation & selection | Variation & mutation; Adaptive features (xerophytes, hydrophytes); Natural selection, evolution & antibiotic resistance; Selective breeding |
| 19 | Organisms & their environment | Food chains, webs & energy flow; Trophic levels, pyramids & energy efficiency; Carbon cycle; Nitrogen cycle; Populations, growth curves & sampling; Ecosystem & community terms |
| 20 | Human influences on ecosystems | Food supply, agriculture & monocultures; Habitat destruction & deforestation; Pollution & eutrophication; Climate change & greenhouse gases; Conservation, sustainability & endangered species |
| 21 | Biotechnology & genetic modification | Biotechnology, yeast, enzymes & fermenters; Genetic modification |
| – | Practical skills (generic) | Variables & controls; Measurement, apparatus & observation; Tables, graphs & calculations; Biological drawing; Planning an investigation (6-mark plan); Errors, improvements, reliability & safety |

## 4. Topic weights

### 4a. Theory marks per topic per session (P2 + P4, variant 2, out of 120)

| Topic | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ | % 2022 | **% 2023–26** |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Characteristics & classification | 4 | 10 | 4 | 3 | 4 | 11 | 3 | 7 | 2 | 5.8 | 4.0 |
| Cells | 8 | 3 | 9 | 2 | 3 | 3 | 8 | 2 | 2 | 4.6 | 3.5 |
| Movement into & out of cells | 3 | 2 | 2 | 12 | 2 | 3 | 7 | 0 | 10 | 2.1 | 4.3 |
| Biological molecules | 2 | 1 | 3 | 3 | 1 | 2 | 1 | 1 | 2 | 1.2 | 1.5 |
| Enzymes | 2 | 3 | 1 | 1 | 4 | 2 | 9 | 12 | 2 | 2.1 | 3.7 |
| Plant nutrition | 6 | 7 | 10 | 15 | 9 | 2 | 2 | 0 | 4 | 5.4 | 5.0 |
| **Human nutrition** | 2 | 16 | 12 | 3 | 20 | 11 | 5 | 17 | 2 | 7.5 | **8.3** |
| Transport in plants | 2 | 8 | 6 | 4 | 5 | 2 | 2 | 14 | 13 | 4.2 | 5.5 |
| Transport in animals | 2 | 14 | 2 | 14 | 2 | 2 | 8 | 0 | 12 | 6.7 | 4.8 |
| Diseases & immunity | 10 | 3 | 1 | 12 | 1 | 1 | 13 | 1 | 2 | 5.4 | 3.7 |
| Gas exchange in humans | 10 | 2 | 1 | 2 | 1 | 16 | 13 | 8 | 2 | 5.0 | 5.1 |
| Respiration | 2 | 4 | 2 | 2 | 8 | 2 | 2 | 3 | 1 | 2.5 | 2.4 |
| Excretion in humans | 11 | 3 | 1 | 5 | 2 | 9 | 1 | 3 | 3 | 5.8 | 2.9 |
| **Coordination & response** | 18 | 3 | 10 | 11 | 17 | 12 | 3 | 4 | 13 | 8.8 | **8.3** |
| Drugs | 2 | 1 | 8 | 1 | 1 | 1 | 1 | 7 | 1 | 1.2 | 2.4 |
| Reproduction | 3 | 2 | 6 | 6 | 19 | 9 | 3 | 6 | 8 | 2.1 | **6.8** |
| **Inheritance** | 10 | 3 | 11 | 5 | 12 | 10 | 7 | 5 | 11 | 5.4 | **7.3** |
| Variation & selection | 3 | 4 | 7 | 15 | 3 | 7 | 11 | 5 | 1 | 2.9 | 5.8 |
| Organisms & their environment | 12 | 6 | 20 | 2 | 1 | 11 | 5 | 7 | 2 | 7.5 | 5.7 |
| Human influences on ecosystems | 6 | 19 | 2 | 1 | 2 | 2 | 1 | 15 | 25 | 10.4 | 5.7 |
| Biotechnology & GM | 2 | 6 | 2 | 1 | 3 | 2 | 15 | 3 | 2 | 3.3 | 3.3 |
| **Total** | 120 | 120 | 120 | 120 | 120 | 120 | 120 | 120 | 120 | | |

The theory weight is **spread unusually evenly**: no topic exceeds about 8 % of P2 + P4 over 2023–26, and 15 of 21 topics sit between 3 % and 7 %. Paper 4 swings a lot from session to session, because each of its six questions is usually built on one or two topics. Examples:
- human influences in June 2026 (a 23-mark question on fish farming, sustainable fishing, endangered species and AI/IVF);
- biotechnology in June 2025 (a 15-mark GM maize and gene-transfer question);
- reproduction in June 2024 (koala, female reproductive system, placenta: 13 marks);
- gas exchange in Nov 2024 (15 marks) and June 2025 (12 marks, with cystic fibrosis).

### 4b. % share by component, 2022 against 2023–26

| Topic | P2 2022 | **P2 2023–26** | P4 2022 | **P4 2023–26** |
|---|---|---|---|---|
| Characteristics & classification | 5.0 | 6.1 | 6.2 | 3.0 |
| Cells | 5.0 | 5.4 | 4.4 | 2.5 |
| Movement into & out of cells | 5.0 | 3.6 | 0.6 | **4.6** |
| Biological molecules | 3.8 | 2.5 | 0.0 | 1.1 |
| Enzymes | 6.2 | 3.2 | 0.0 | **3.9** |
| Plant nutrition | 5.0 | 3.9 | 5.6 | 5.5 |
| Human nutrition | 3.8 | **7.9** | 9.4 | 8.6 |
| Transport in plants | 5.0 | 6.4 | 3.8 | 5.0 |
| Transport in animals | 5.0 | 4.6 | 7.5 | 4.8 |
| Diseases & immunity | 5.0 | 2.9 | 5.6 | 4.1 |
| Gas exchange in humans | 2.5 | 2.9 | 6.2 | 6.2 |
| Respiration | 5.0 | 3.9 | 1.2 | 1.6 |
| Excretion in humans | 2.5 | 3.2 | 7.5 | **2.7** |
| Coordination & response | 7.5 | 7.5 | 9.4 | 8.8 |
| Drugs | 1.2 | 2.1 | 1.2 | 2.5 |
| Reproduction | 5.0 | **7.9** | 0.6 | **6.2** |
| Inheritance | 6.2 | 6.8 | 5.0 | **7.5** |
| Variation & selection | 6.2 | 4.6 | 1.2 | **6.4** |
| Organisms & their environment | 6.2 | 6.1 | 8.1 | 5.5 |
| Human influences on ecosystems | 3.8 | 4.6 | 13.8 | 6.2 |
| Biotechnology & GM | 5.0 | 3.9 | 2.5 | 3.0 |

### 4c. Paper 2 is a fixed blueprint (items per topic)

| Topic | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ |
|---|---|---|---|---|---|---|---|---|---|
| Characteristics & classification | 2 | 2 | 2 | 3 | 2 | 3 | 3 | 2 | 2 |
| Cells | 2 | 2 | 2 | 2 | 2 | 3 | 2 | 2 | 2 |
| Movement into & out of cells | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 0 | 1 |
| Biological molecules (incl. DNA) | 2 | 1 | 1 | 2 | 1 | 1 | 0 | 1 | 1 |
| Enzymes | 2 | 3 | 1 | 1 | 1 | 2 | 1 | 1 | 2 |
| Plant nutrition | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 0 | 2 |
| Human nutrition | 2 | 1 | 4 | 3 | 5 | 3 | 3 | 3 | 1 |
| Transport in plants | 2 | 2 | 2 | 2 | 3 | 2 | 2 | 4 | 3 |
| Transport in animals | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 0 | 2 |
| Diseases & immunity | 1 | 3 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| Gas exchange | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 |
| Respiration | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 1 | 1 |
| Excretion | 1 | 1 | 1 | 1 | 2 | 2 | 1 | 1 | 1 |
| Coordination & response | 3 | 3 | 3 | 2 | 3 | 3 | 3 | 4 | 3 |
| Drugs | 0 | 1 | 0 | 1 | 1 | 1 | 1 | 1 | 1 |
| Reproduction | 3 | 1 | 3 | 3 | 3 | 1 | 3 | 6 | 3 |
| Inheritance | 2 | 3 | 3 | 3 | 2 | 2 | 1 | 5 | 3 |
| Variation & selection | 3 | 2 | 2 | 2 | 3 | 1 | 3 | 1 | 1 |
| Organisms & environment | 3 | 2 | 2 | 2 | 1 | 3 | 4 | 3 | 2 |
| Human influences | 1 | 2 | 2 | 1 | 1 | 2 | 1 | 2 | 4 |
| Biotechnology & GM | 2 | 2 | 2 | 1 | 2 | 2 | 1 | 1 | 2 |

Items run in syllabus order, and almost every topic gets 1–3 items in every paper. A typical Paper 2 has:
- Q1: a characteristic of life; Q2–3: classification, binomial names, kingdoms or a key;
- 2 cell items, one usually a **magnification or µm calculation**;
- 1–2 on osmosis / active transport (water-potential wording);
- 1 **DNA base-pairing** item (7 of 9 sessions);
- 1–2 enzyme graphs; 2 plant-nutrition items (limiting factors, leaf layers);
- 2–5 on human nutrition (digestive enzymes, villus vessels and lacteals);
- 2–3 on xylem, transpiration factors and translocation;
- 2 on the heart, vessels or blood cells; 1 on immunity or **cholera** (chloride ions and water potential, 5 of 9 sessions);
- 1 breathing item; 1–2 respiration (balanced equations, oxygen debt); 1 kidney/liver item;
- 3 coordination items (synapse, iris muscles, glucagon/insulin, auxin);
- 1 antibiotic item; 3 reproduction; 2–3 inheritance (meiosis numbers, pedigrees, blood groups, sex linkage);
- 1–3 on variation, xerophytes/hydrophytes and selection; 2–3 ecology (pyramids, **nitrogen cycle in 7 of 9 sessions**, growth curves);
- 1–2 on human impact (monocultures, fish-stock conservation, eutrophication); the last 1–2 items on biotechnology and **GM (8 of 9 sessions)**.

### 4d. Paper 6 by skill area (marks out of 40)

| Area | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ | avg 2023–26 |
|---|---|---|---|---|---|---|---|---|---|---|
| Tables, graphs & calculations | 10 | 10 | 14 | 10 | 11 | 12 | 11 | 12 | 11 | **11.6** |
| 6-mark plan | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | **6.0** |
| Errors, improvements, reliability & safety | 5 | 5 | 4 | 6 | 1 | 3 | 3 | 4 | 4 | 3.6 |
| Measurement, apparatus & observation (incl. "one similarity, one difference") | 5 | 2 | 5 | 2 | 5 | 3 | 6 | 3 | 3 | 3.9 |
| Variables & controls | 2 | 3 | 2 | 4 | 5 | 4 | 4 | 3 | 3 | 3.6 |
| Biological drawing | 4 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | **4.0** |
| Magnification / actual size (Cells) | 3 | 3 | 0 | 3 | 3 | 3 | 3 | 3 | 3 | 2.6 |
| Food tests (Benedict's, biuret, iodine, emulsion, DCPIP) | 2 | 3 | 3 | 4 | 3 | 4 | 1 | 3 | 4 | 3.1 |
| Context biology (conclusions, explanations) | 3 | 3 | 2 | 1 | 2 | 1 | 2 | 2 | 2 | 1.7 |

About **81 % of Paper 6 marks are generic experimental skills**, and nearly all the rest are magnification and food tests. The layout is stable:

1. **Q1 (20–28 marks): one experiment** described step by step, with readings shown as diagrams (thermometers, syringes, rulers, colour cards). You record a table, calculate, plot, conclude, name variables, give errors and improvements, and often a hazard. The experiments so far:
   - diffusion of vitamin C out of dialysis tubing at two temperatures, with DCPIP (June 2022);
   - catalase and hydrogen peroxide: heat released, then oxygen rate against pH (Nov 2022);
   - huddling model: cooling of 1, 3 and 7 test-tubes of hot water (June 2023);
   - amylase and starch at different temperatures, iodine on a spotting tile (Nov 2023);
   - acid diffusing into agar with bromothymol blue; then agar cube size against time (June 2024);
   - DCPIP decolourised by a chloroplast suspension at different light intensities (Nov 2024);
   - potato discs in salt solutions (osmosis), plus an iodine test (June 2025);
   - yeast respiration with 1 % and 4 % glucose, plus a dilution calculation (Nov 2025);
   - vitamin C concentration estimated by iodine titration against standards, then kiwi-fruit drying data (June 2026).
2. **A specimen / data question (12–20 marks):** a large outline drawing of a photograph (shell, celery section, fig leaf, seaweed, seedling, dandelion seed, potato leaf, starfish, bean pod), then **measure a line and calculate magnification or actual size**, one similarity and one difference, and a second data set to graph (histogram of shell widths or starfish depths, leaf-area curve, leaf-disc flotation, apple-juice yield against pectinase).
3. **A 6-mark plan, every session** (sometimes its own Q2 or Q3):
   - osmosis in dialysis tubing with sugar solutions (June 2022);
   - air temperature and dye movement up celery (Nov 2022);
   - optimum temperature of amylase (June 2023);
   - lipase concentration and fat breakdown in milk, measured by pH (Nov 2023);
   - light intensity and the angle of seedling growth (June 2024);
   - weedkiller concentration and seed germination (Nov 2024);
   - light intensity and photosynthesis with hydrogencarbonate indicator (June 2025);
   - exercise intensity and heart rate (Nov 2025);
   - bean age and oxygen released by catalase (June 2026).

   Three of the nine are **enzyme** plans; the rest are plant physiology (osmosis, transport, tropism, germination, photosynthesis) and one human physiology plan.

### 4e. Paper 5 (June 2023, 2025, 2026)

| Area (marks out of 40) | 2023 MJ | 2025 MJ | 2026 MJ | mean |
|---|---|---|---|---|
| Tables, graphs & calculations (own results) | 15 | 12 | 13 | 13.3 |
| 6-mark plan | 6 | 6 | 6 | 6.0 |
| Biological drawing | 4 | 4 | 4 | 4.0 |
| Errors, improvements & safety | 4 | 3 | 4 | 3.7 |
| Measurement, apparatus & observation | 4 | 5 | 2 | 3.7 |
| Variables & controls | 2 | 4 | 3 | 3.0 |
| Magnification (Cells) | 0 | 3 | 3 | 2.0 |
| Food tests | 3 | 1 | 3 | 2.3 |
| Context biology (heat loss, osmosis, pectinase, vitamin C) | 2 | 2 | 2 | 2.0 |

Paper 5 is **the same paper as Paper 6** except that Q1 is done at the bench (huddling test-tubes; potato discs in salt; vitamin C with iodine), so the candidate records their own readings. The plan and the second question are identical. The only real difference is a few more marks for recording your own results and fewer for reading diagrams. Examiners note that P5 candidates lose marks for **vague errors and generic improvements** (for example "use a water-bath" with no mention of thermostatic control) and for not linking a conclusion to the independent variable.

### 4f. Share of the Extended grade (2023–26, weighted P2 ×1.5, P4 ×1.25, P6 ×1)

| Rank | Topic | Share of grade |
|---|---|---|
| 1 | Practical skills (generic, almost all from P6) | **16.3 %** |
| 2 | Human nutrition | 6.8 % |
| 2 | Coordination & response | 6.8 % |
| 4 | Inheritance | 5.8 % |
| 5 | Reproduction | 5.5 % |
| 6 | Organisms & their environment | 4.7 % |
| 7 | Variation & selection | 4.6 % |
| 8 | Human influences on ecosystems | 4.5 % |
| 9 | Transport in plants | 4.4 % |
| 10 | Cells (incl. P6 magnification) | 4.1 % |
| 11 | Plant nutrition / Gas exchange | 4.0 % each |
| 13 | Transport in animals | 3.8 % |
| 14 | Movement into & out of cells | 3.6 % |
| 15 | Characteristics & classification | 3.3 % |
| 16 | Enzymes | 3.0 % |
| 17 | Diseases & immunity / Biological molecules (incl. P6 food tests) | 2.9 % each |
| 19 | Biotechnology & GM | 2.8 % |
| 20 | Excretion | 2.3 % |
| 21 | Respiration | 2.1 % |
| 22 | Drugs | 1.9 % |

## 5. Banker topics

**Every session (9/9)**:
- **Paper 6 / 5 set pieces:** a large biological drawing (4 marks), a measure-and-magnify calculation (3 marks, 8 of 9 P6s; June 2023 used leaf area by counting squares instead), at least one food test (9 of 9), a results table or graph (9/9), variables and a 6-mark plan (9/9).
- **Genetic modification** (P2 in 8 of 9 sessions, and the missing one, June 2025, had a 14-mark P4 GM question): plasmids, restriction enzymes and sticky ends, ligase, insulin and GM crops.
- **Features of kingdoms, groups and viruses** (P2 or P4 every session): prokaryote features, protoctists vs plants, insect vs arthropod features, virus structure.

**Topic-level bankers on Paper 4** (P4 sessions with ≥ 5 marks; P2 adds 1–5 items every session):

| Banker | P4 sessions (≥ 5 marks) | Typical form | Avg marks / session (P2 + P4, 2023–26) |
|---|---|---|---|
| Coordination & response | 6 of 9 (≥ 1 mark in 6) | eye accommodation and rods/cones; synapse events; blood glucose control with insulin/glucagon and type 1 diabetes treatment; auxin and gravitropism/phototropism | 10.0 |
| Inheritance | 6 of 9 (≥ 1 mark in 7) | genetic diagrams (sex-linked colour blindness, ABO codominance, cystic fibrosis); protein synthesis; meiosis/mitosis and stem cells; base-pairing % calculations | 8.7 |
| Human nutrition | 5 of 9 (≥ 1 mark in 7) | enzyme–organ–substrate–product tables; physical digestion (teeth, churning, bile emulsification); villus, lacteal and the hepatic portal route; diet data | 10.0 |
| Gas exchange | 4 of 9 | labelling trachea/bronchus/bronchioles; cartilage; inspiration mechanism; goblet and ciliated cells; exercise and breathing rate | 6.1 |
| Human influences on ecosystems | 4 of 9 | conservation and fish-stock management, endangered species, monocultures, biofuels, eutrophication | 6.9 |
| Variation & selection | 4 of 9 | xerophyte/hydrophyte features from photomicrographs; antibiotic resistance as natural selection | 7.0 |
| Plant nutrition | 4 of 9 | leaf-layer adaptations (6-mark), limiting factors, hydrogencarbonate indicator, Mg for chlorophyll | 6.0 |
| Transport in animals | 4 of 9 | single vs double circulation; septum; coronary arteries; blood-cell functions | 5.7 |

**Subtopics in P2 or P4 in at least 8 of 9 sessions:** adaptive features (xerophytes/hydrophytes, 3.9 marks per session), effect of temperature and pH on enzymes (3.1), transpiration (3.1), osmosis and water potential (3.0), heart and circulatory systems (2.7), villi and absorption (2.6), cell structure (2.3), anaerobic respiration and oxygen debt (2.1), breathing mechanism (2.0), leaf structure (2.0), nephron and urine (1.9), magnification (1.3), characteristics of life (0.9).

**Calculations** in Paper 4 are short and appear in most papers: percentage change to 2 significant figures (HIV lymphocytes 2022, erythromycin resistance 2023, GM maize 2025, antibiotic use in livestock Nov 2025), unit conversions (mm ↔ µm, every session from Paper 2 or 4), and base-pair percentages. Paper 6 always has 3–6 marks of calculations (magnification, % change, means without anomalies, dilutions).

## 6. Rarely tested

In P2 or P4 in 3 or fewer of the 9 sessions:
- **carbon cycle** (1 session, MCQ only; the nitrogen cycle is the favourite);
- **STIs/HIV transmission** (1, plus HIV in a 2022 P4 virus question tagged to disease);
- **homeostasis as a general term** (1);
- **ecosystem / community definitions** (2, both P4 one-liners);
- **dichotomous keys** in theory (2; a 5-mark algae key in Nov 2022 P4);
- **diffusion** as its own item (2), **water uptake and root hairs** (2);
- **drug definition and other drugs** (2, MCQ only);
- **habitat destruction and deforestation** (2, MCQ only);
- **monohybrid crosses with a single gene** (2: the cystic fibrosis cross 2025 and a pedigree MCQ); most crosses are sex-linked or codominant instead;
- **coronary heart disease** (3), **reflex arc** (3), **pathogens and transmission** (3).

Moderate (4–5 sessions, usually one MCQ or a 1–2 mark part):
- balanced diet and deficiencies; pregnancy and placenta; blood vessels; selective breeding; natural selection outside antibiotics; climate change; eutrophication; seeds and germination;
- sex hormones and the menstrual cycle; flowers and pollination. No P4 has asked about menstrual-cycle hormone changes in this sample; the only sex-hormone P4 part is naming the ovary hormones (Nov 2023).

**Respiration** is notably light in theory (2.4 % of P2 + P4; P4 parts in only 3 sessions, mostly the yeast equation), but it returns as a practical context (yeast, Nov 2025).

## 7. Trends (2022 against 2023–26)

- **Reproduction is up sharply on Paper 4** (0.6 % → 6.2 %) and on Paper 2 (5 % → 7.9 %). Since 2023 P4 has asked about self- vs cross-pollination arrows, the female and male reproductive systems in label–name–function tables, the placenta and amniotic fluid, asexual vs sexual reproduction, and AI/IVF in conservation.
- **Variation & selection is up on Paper 4** (1.2 % → 6.4 %): hydrophyte and xerophyte photomicrographs (Nov 2023, June 2025) and antibiotic resistance as natural selection (June 2023, Nov 2025).
- **Enzymes and movement into/out of cells have entered Paper 4** (from 0 % and 0.6 % to 3.9 % and 4.6 %): protease jelly plates at different pH (June 2025), amylase/iodine temperature data (Nov 2025), red blood cells in salt solutions (Nov 2023), onion cells in salt (June 2026).
- **Excretion is down on Paper 4** (7.5 % → 2.7 %). The kidney still appears (fluid compositions in Nov 2024), but whole kidney questions are rarer.
- **Human influences dipped and then came back:** 13.8 % of P4 in 2022, about 1 % in 2023–25 MJ, then 13 marks in Nov 2025 (intensive livestock, antibiotic use, Przewalski's horse) and 21 in June 2026.
- **Human nutrition stays near the top** and has grown on Paper 2 (3.8 % → 7.9 %, up to 5 items).
- **Paper 4 style is stable:** six questions, about 39 % short recall and 39 % prose explanation, with 5–8 parts worth 4 marks or more (23–38 marks per paper, no clear trend; the three highest, 37–38, were June 2023, June 2025 and June 2026).
- **Practical papers are unchanged in format** across the syllabus change: one long experiment, a drawing/magnification question and a 6-mark plan, mirrored between P5 and P6.
- The 2022 comparison rests on two sessions only, so treat the 2022 column as indicative.

## 8. Recurring question styles

### 8a. Paper 4 (approximate marks per paper, from command-word matching on the full part text)

| Style | 22 MJ | 22 ON | 23 MJ | 23 ON | 24 MJ | 24 ON | 25 MJ | 25 ON | 26 MJ | mean |
|---|---|---|---|---|---|---|---|---|---|---|
| Prose explanation (describe, explain, outline, discuss, suggest, predict) | 39 | 29 | 28 | 32 | 29 | 19 | 31 | 27 | 44 | 30.9 |
| Short recall (state, name, identify, define) | 23 | 37 | 18 | 32 | 35 | 36 | 32 | 39 | 26 | 30.9 |
| Complete a table, sentences, diagram, food web or key | 10 | 13 | 16 | 4 | 15 | 11 | 2 | 10 | 4 | 9.4 |
| Data interpretation (describe or explain a figure or table) | 2 | 0 | 16 | 12 | 1 | 10 | 6 | 1 | 6 | 6.0 |
| Calculation / unit conversion | 1 | 1 | 2 | 0 | 0 | 0 | 4 | 3 | 0 | 1.2 |
| Genetic diagram | 5 | 0 | 0 | 0 | 0 | 4 | 5 | 0 | 0 | 1.6 |

(The keyword method under-counts calculations that sit inside data parts, such as the 3-mark % change in June 2022 Q4. The Nov 2024 genetic diagram was moved by hand from the 'complete' row.)

**Set pieces in Paper 4:**
- **One 5–6 mark "explain" part in most questions**: leaf-layer adaptations, protein synthesis, antibiotic resistance, auxin and gravitropism, Parkinson's disease at a synapse, starch digestion, blood glucose control, gene transfer by GM, reasons species become endangered, appearance of plant cells in salt solutions.
- **Label–name–function tables** (blood cells, reproductive organs, digestive organs, cell organelles): 4–5 marks.
- **Gap-fill paragraphs** (enzymes and digestion 8 marks in June 2023; teeth 4 marks June 2024; nitrogen cycle flow chart 5 marks Nov 2024; double circulation 4 marks June 2026).
- **A genetic diagram** (4–5 marks) in 3 of 9 sessions, and short genotype/pedigree parts in most others.
- **Novel contexts with data**: Chlorella supplements, Karkar Island birds, Parkinson's disease, cystic fibrosis, girdled apple trees, heart–lung machine, tilapia farming. The biology tested is standard; the context must be read carefully.

### 8b. Paper 2 item styles (approximate counts per paper)

- Straight recall of a term, function or site: about 20.
- Diagram or photomicrograph identification (leaf layers, villus vessels, heart, kidney, flower, nephron, eye): about 9.
- Data, graph or table reading (enzyme curves, limiting factors, growth curves, emissions graphs): about 4.
- "Which row" two- or three-column tables: about 4.
- Numbered-statement combinations (1, 2 and 3 / 1 and 3 only): about 3.
- Calculations: about 1 (magnification, base counts, energy transfer, probability).

### 8c. Practical styles (every Paper 5/6)

- Read thermometers, syringes and rulers to the correct precision and record with units in headings.
- Build a results table with the independent variable first, units only in headings, and no repeated columns.
- Plot a line graph or histogram: linear scale, data filling at least half the grid, ruled point-to-point lines or a smooth curve, **no extrapolation**, and show the reading on the graph.
- Calculate % change, mean (excluding anomalous results), magnification to 2 s.f., or dilution volumes.
- State a conclusion that links the independent and dependent variables.
- Name the independent, dependent and controlled variables; identify a specific error with a specific improvement; give a hazard with its precaution.
- Make a large, continuous-line outline drawing with no shading, then give one similarity and one difference in comparative language.
- Write a 6-mark plan.

## 9. Common mistakes (examiner reports: June 2022, Nov 2022, June 2023, June 2025)

**Command words and data**
- Describing when asked to explain, or explaining when asked to describe (stated in 2022 and again in 2025).
- Quoting data without units, reading the wrong y-axis on a dual-axis graph, or confusing years with months.
- Restating the stem or the data instead of answering; listing names when a number was asked for.
- Wrong number of significant figures; wrong denominator in percentage change; simple subtraction instead of % change.
- Contradicting yourself inside a long answer (for example the diaphragm "contracts and rises").

**Cells, transport across membranes and plants**
- Confusing the cell wall with the cell membrane (the wall does not control what enters).
- Saying cells "produce" energy; it is released by respiration.
- Water (not water vapour) diffusing through air spaces; water entering stomata by osmosis; stomata opening to take in water.
- Not knowing "limiting factor"; misreading which factor limits a photosynthesis curve (June 2025 MCQ).
- Thinking ¹⁴CO₂ moves into the phloem and joins sucrose; it must be fixed by photosynthesis first.
- Giving the leaf as a sink; it is usually the source.
- Confusing higher and lower water potential; not realising that chloride secretion lowers the water potential of the gut contents (cholera items).
- Nitrate uptake: saying diffusion instead of active transport, or contradicting "against the gradient" later.

**Human physiology**
- Microvilli confused with cilia; filtration confused with reabsorption, and the liver (deamination) confused with the kidney (excretion).
- Accommodation: ciliary muscles confused with the iris muscles, suspensory ligaments called muscles, lens shape reversed; refraction called reflection.
- Rods and cones functions swapped; "three cones" instead of three types of cone.
- Inspiration described with the pressure change causing the muscle movement; external intercostals not named; bronchioles labelled as alveoli.
- Antibodies described as engulfing pathogens; antibodies confused with antigens and with antibiotics.
- Glucagon thought to be made by the liver; insulin and glucagon roles swapped.
- Vague passive immunity ("passed in breast milk" without saying antibodies).
- Single circulation described as "through the heart once" without "per circuit of the body"; septum confused with valves; "coronary" given without "artery".

**Genetics and evolution**
- Putting alleles on the Y chromosome in sex-linked crosses, or treating an autosomal condition (cystic fibrosis) as sex-linked.
- Switching allele symbols midway; gametes not shown clearly; probability given as 1:3 instead of 1 in 4.
- mRNA "moving into the nucleus" or "leaving the cell"; ribosomes "making amino acids".
- Antibiotic resistance: mutations caused by the antibiotic; resistance confused with immunity; no mention of alleles or variation.
- Thinking GM is a mutation; mixing up restriction enzymes and ligase.

**Ecology**
- Ecosystem and community terms confused with population, species and habitat.
- Thinking growth and reproduction "lose" energy between trophic levels; forgetting energy to decomposers.
- Calling the top level of a food chain "decomposer"; not knowing "quaternary consumer".
- Vague "pollution" or bullet-point lists for environmental threats; renewable confused with "reusable".

**Practical (P5/P6)**
- Units in the body of the table, contiguous repeated tables, "m" for minutes.
- Graph scales that squash the data, lines extrapolated to the origin, readings not shown on the graph.
- Conclusions that restate results instead of linking the independent variable to the dependent variable.
- Saying repeats "prevent" anomalies or "increase accuracy"; the credited idea is identifying anomalous results, or a representative sample.
- "Water-bath" without "thermostatically controlled"; "amount" instead of volume or concentration; "beaker" as a measuring device.
- Errors stated vaguely ("volume of water" rather than "volume not measured"); improvements not tied to the method.
- Plans that describe expected results or theory, use only two values of the independent variable, or omit how the dependent variable is measured.
- Drawings with shading, broken outlines or lines crossing the outline; similarities/differences that are not comparative or rely on colour or size.
- Measuring in cm instead of mm; giving units with magnification.
- Benedict's without heating; Benedict's named for protein (it is biuret).

**MCQ items with the lowest success in the reports:** the shared genetic code across kingdoms (June 2022); fibrinogen vs fibrin; phloem identification in a root; water potential in cholera (Nov 2022, June 2023); synapse receptor proteins in a reflex arc (June 2023); protoctist identification and gravitropism underground (June 2025).

## 10. Grade thresholds (variant 2 options)

### 10a. Overall, weighted, out of 200

| Session | CY (22+42+62): A* / A / B / C | BY (22+42+52): A* / A / B / C | C as % (CY) | A as % (CY) | Core GY (12+32+62): C | Core FY (12+32+52): C |
|---|---|---|---|---|---|---|
| 2022 MJ | 157 / 132 / 107 / 83 | 157 / 132 / 107 / 83 | 42 % | 66 % | 110 | 110 |
| 2022 ON | 156 / 135 / 114 / 94 | 154 / 134 / 114 / 94 | 47 % | 68 % | 113 | 113 |
| 2023 MJ | 164 / 140 / 116 / 93 | 164 / 140 / 116 / 93 | 47 % | 70 % | 112 | 112 |
| 2023 ON | 161 / 138 / 115 / 93 | 161 / 138 / 115 / 93 | 47 % | 69 % | 123 | 123 |
| 2024 MJ | no local threshold sheet | | | | | |
| 2024 ON | 172 / 148 / 124 / 101 | 170 / 147 / 124 / 101 | 51 % | 74 % | 120 | 120 |
| 2025 MJ | 174 / 149 / 124 / 99 | 173 / 148 / 123 / 99 | 50 % | 75 % | 113 | 113 |
| 2025 ON | 164 / 139 / 114 / 89 | 163 / 138 / 113 / 89 | 45 % | 70 % | 114 | 114 |
| 2026 MJ | 167 / 141 / 115 / 90 | 167 / 141 / 115 / 89 | 45 % | 71 % | 116 | 115 |

### 10b. Component thresholds, variant 2 (grade A / grade C)

| Session | P22 /40 | P42 /80 | P52 /40 | P62 /40 | P12 /40 (C) | P32 /80 (C) |
|---|---|---|---|---|---|---|
| 2022 MJ | 29 / 20 | 46 / 25 | 31 / 22 | 31 / 22 | 23 | 43 |
| 2022 ON | 32 / 23 | 46 / 33 | 28 / 18 | 29 / 18 | 26 | 45 |
| 2023 MJ | 33 / 23 | 47 / 28 | 32 / 23 | 32 / 23 | 24 | 42 |
| 2023 ON | 31 / 23 | 49 / 30 | 30 / 21 | 30 / 21 | 27 | 49 |
| 2024 ON | 33 / 25 | 52 / 32 | 32 / 23 | 33 / 23 | 27 | 45 |
| 2025 MJ | 32 / 23 | 55 / 33 | 31 / 23 | 32 / 23 | 25 | 42 |
| 2025 ON | 30 / 21 | 50 / 29 | 30 / 21 | 31 / 21 | 25 | 44 |
| 2026 MJ | 31 / 20 | 48 / 28 | 34 / 24 | 34 / 25 | 25 | 43 |

**Reading the thresholds:**
- On the Extended route, **A\*** needs about **78–87 %** of the weighted total, **A** about **66–75 %**, and **C** about **42–51 %**. Thresholds rose after 2023 (peak Nov 2024 and June 2025) and eased in Nov 2025 and June 2026.
- **Paper 4 is the hardest paper**: an A has needed 46–55 out of 80 (58–69 %) and a C only 25–33 (31–41 %). Secure the recall and label marks on every question.
- **Paper 2 needs high accuracy**: A at 29–33 of 40 (73–83 %), C at 20–25.
- **The practical papers are generous but tightening**: A on P6 rose from 29–31 to 34 out of 40 in June 2026, and C to 25. P5 and P6 thresholds are almost identical, so neither route is easier.
- **Core:** a C (the top Core grade) needs 110–123 of 200 weighted (55–62 %); on P3 that is 42–49 out of 80 and on P1 23–27 out of 40. A borderline candidate reaches C more easily on Extended (89–101) than on Core, *if* they can score steadily on P4.
- Variants differ: in June 2026 option 23/43/63 needed C = 97 against 90 for CY. Compare like with like.

## 11. Revision priorities for Oct/Nov 2026 and 2027 Extended candidates

1. **Practical skills first: about 16 % of the grade directly, 20 % with the P6 biology.** Drill, until automatic:
   - results tables (independent variable first, units in headings only);
   - line graphs and histograms (scale filling half the grid, no extrapolation, show readings on the graph);
   - % change to 2 s.f., means without anomalies, dilution volumes;
   - conclusions that name both variables;
   - specific errors with matching improvements (thermostatically controlled water-bath, syringe or measuring cylinder, same volume in every tube);
   - large outline drawings and **magnification = image ÷ actual** in mm, to 2 s.f., with no units;
   - comparative similarity/difference statements;
   - the **6-mark plan** template: at least 5 values of the independent variable (how made up), how and when the dependent variable is measured, 2–3 controlled variables with how they are controlled, equilibration, 3 repeats, a relevant hazard. Practise enzyme plans (amylase, catalase, lipase, pectinase) and plant plans (osmosis, photosynthesis with hydrogencarbonate indicator, germination, tropism).
2. **Food tests** (P2, P4 and every P5/P6): Benedict's (heat in a hot water-bath; blue → green/yellow/brick red), biuret (purple), iodine (blue-black), ethanol emulsion (milky white), DCPIP for vitamin C. Know preparation (grind, add water).
3. **Coordination & response (about 7 % of grade, 2–4 MCQs every time):** accommodation sequences, rods/cones distribution, pupil reflex muscles, synapse events, insulin/glucagon with glycogen and type 1 diabetes treatment, auxin movement and cell elongation in both tropisms, adrenaline effects.
4. **Human nutrition (about 7 %):** enzyme, organ, substrate and product tables (amylase, maltase, protease, pepsin, trypsin, lipase); hydrochloric acid roles; teeth types; bile emulsification; villus with capillary and lacteal; hepatic portal vein; vitamin C, D, calcium and iron sources and deficiencies.
5. **Inheritance (about 6 %):** a full genetic diagram with parental phenotypes, genotypes, gametes, offspring and probability; sex linkage on the X only; ABO codominance; pedigree reasoning; mitosis/meiosis and stem cells; protein synthesis (DNA in nucleus → mRNA → ribosome → amino acid sequence); gene expression.
6. **Reproduction (rising, about 5.5 %):** pollination arrows, wind vs insect flowers, male and female organs with functions, placenta and amniotic fluid, sexual vs asexual advantages, AI and IVF.
7. **Ecology and human impact (about 9 % together):** food webs and trophic-level names up to quaternary, energy loss (respiration, heat, egestion, decomposers), pyramids, the nitrogen cycle (fixation, nitrification, denitrification), growth curves, monocultures, fish-stock conservation and net mesh size, reasons species become endangered, eutrophication sequence.
8. **Plant biology (about 10–12 % across plant nutrition, transport and adaptive features):** leaf layers and their adaptations, limiting factors, Mg and nitrate; transpiration factors and the transpiration pull; translocation source → sink; xerophyte and hydrophyte features.
9. **Quick-win MCQ topics** (one item each, most sessions): characteristics of life; binomial names and kingdoms; DNA base pairing; magnification in µm; the cholera / water potential item; oxygen debt in the liver; glomerulus filtration; GM steps; yeast products.
10. **Lower priority:** carbon cycle, STIs, drug definitions, deforestation and habitat loss (MCQ only); respiration theory beyond the equations; menstrual-cycle hormone graphs. Learn the facts, but do not over-invest.

## 12. Core route (Papers 1 and 3): brief note

> **Update 26 Oct 2026:** the Core papers (Papers 11–13 and 31–33, all nine sessions) are now tagged item by item and included in the question index and topic pages. The topic shares above were computed before that and describe the Extended papers.


- **Paper 1** has 40 MCQ items in 45 minutes; **Paper 3** has 80 marks of structured questions in 1 h 15 min (typically 6–8 questions). Core is capped at grade C.
- **Core thresholds:** C needs 110–123 of 200 weighted (55–62 %): 23–27 out of 40 on P1 and 42–49 out of 80 on P3.
- **Overlap with Extended:** up to Nov 2023, P12 and P22 shared about 7–17 near-identical item stems per session. From June 2024 the text matching finds none, so Core MCQ appears to be written separately now. P32 and P42 share no part wording in any session. (Approximate: based on matching question text, not a full tagging.)
- P3 asks the same syllabus topics with simpler demands: word equations rather than balanced ones (for example the photosynthesis word equation in June 2024), more naming and labelling, and no supplement content (no protein synthesis detail, no water potential, no sex-linked diagrams). The Extended topic order above is a fair guide; the Core papers are now tagged too (see the update note).

## 13. Comparison with O Level Biology 5090

(Figures for 5090 come from `5090-biology.md`, which tagged **variant 1** and used P1/P2/P3/P4 numbering.)

| Aspect | IGCSE 0610 Extended | O Level 5090 |
|---|---|---|
| Papers | P2 MCQ 40 (45 min) + P4 theory 80 (1 h 15) + P5/P6 practical 40 (1 h 15 / 1 h) | P1 MCQ 40 (1 h) + P2 theory 80 (1 h 45) + P3/P4 practical 40 (1 h 30 / 1 h) |
| Weighting | 30 / 50 / 20 | about 30 / 50 / 20 (same 200-mark weighted total) |
| Time pressure | Higher: 80 theory marks in 75 minutes, 40 MCQs in 45 minutes | Lower: 80 marks in 105 minutes |
| 2023 syllabus change | Content only; format unchanged | Format changed (Section C choice removed, practical lengthened by 15 min) |
| Largest theory topic | Coordination & response and human nutrition, about 8 % each of P2 + P4; very even spread | Coordination & response 12.7 % of P2 since 2023, 5–7 MCQs per paper |
| Coordination MCQs | 2–4 per paper | 5–7 per paper |
| Disease & immunity | 3.7 % of P2 + P4 (concentrated in 3 P4 sessions, 9–12 marks each) | 8.2 % of P2 since 2023 |
| Reproduction | rising: 6.2 % of P4 since 2023 | falling: 7.5 % of P2 |
| Practical paper | P5 and P6 mirror each other: one long experiment, a drawing/magnification question, a 6-mark plan | Same ingredients: drawing + magnification, 6-mark plan (since 2023), enzyme / food-test / osmosis contexts |
| Practical contexts | enzymes (catalase, amylase, lipase, pectinase), diffusion and osmosis, photosynthesis (DCPIP, hydrogencarbonate), respiration in yeast, vitamin C | catalase, pectinase, lactase, yeast respirometers, DCPIP, food tests, potometer |
| Grade C threshold | 42–51 % of weighted total (option CY) | 36–44 % |
| A threshold | 66–75 % | 62–70 % |

**Takeaways for students moving between the two syllabuses:**
- Both rest on the same 21-topic syllabus and share the same bankers: the eye, synapses and blood glucose; digestion and villi; genetic diagrams and protein synthesis; natural selection and antibiotic resistance; food webs and the nitrogen cycle; GM; magnification and biological drawing; food tests; the 6-mark plan.
- 0610 Paper 4 is **shorter and denser** (six questions, about 39 % one- or two-mark recall). It leans on label–name–function tables and novel data contexts, and it spreads marks more evenly across topics than 5090 Paper 2, which is dominated by coordination.
- 0610 grade boundaries are **higher** than 5090's (a C needs roughly 5–8 percentage points more), partly because Paper 2 and the practical papers are scored highly by most candidates.
- The practical-skill share is not directly comparable: this analysis tags readings, tables, graphs and calculations as generic skills (81 % of P6), while the 5090 analysis tagged more of those parts to the experiment's biology (14–20 % generic). The underlying papers ask for very similar skills.
- The examiner advice on common errors is almost the same for both: water-potential language, the accommodation sequence, glucagon's site, antibodies vs antibiotics, Lamarckian resistance answers, units in table headings, ruled lines and scales, "thermostatically controlled", and comparative statements.

## Caveats

- Only variant 2 was tagged for Papers 2, 4 and 6. The thresholds show that variants differ in difficulty, and other variants are built on other contexts.
- Each part has a single topic tag, which hides parts that mix topics. The topic weights for P4 swing by ±10 marks between sessions because whole questions are built on one topic.
- The practical-skills share depends on the tagging convention described in section 1.
- The 2022 comparison rests on two sessions only.
- The style counts in section 8 come from command-word matching and are approximate.
- The examiner-report evidence covers 2022, June 2023 and June 2025 only. There is no threshold sheet for June 2024.
- Core papers were tagged later (26 Oct 2026).
