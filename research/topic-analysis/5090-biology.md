# Cambridge O Level Biology (5090): topic frequency analysis, 2022 to 2026

Sources: the local past papers in `papers/o-level/biology-5090/` for nine sessions (2022 May/June to 2026 May/June). That is question papers, mark schemes, grade thresholds, and the examiner reports for 2022 MJ, 2022 ON and 2023 MJ. No other examiner reports exist locally. The PDFs were converted with `pdftotext -layout`. No network sources were used.
Data file: `5090-questions.csv`, 1,046 rows, columns `session,paper,variant,question,part,topic,subtopic,marks,style`.
Question descriptions in this report are paraphrased, not quoted.

## How the sample was built

- **Main sample:** variant 1 of every component in every session, 36 papers in all: P1 x1, P2 x1, P3 x1, and P4 x1 (P6 x1 in 2022).
- **Rows:** MCQ questions are 1 mark each. Structured papers have one row per smallest marked part.
- **Mark totals:** every paper's marks add up to its stated total (40 / 80 / 40 / 40).
  - Part marks come from the mark schemes.
  - 2026 P3 has no local mark scheme (ms_31), so its marks come from the question-paper brackets. They agree with ms_32.
  - **2022 P2 optional questions:** this paper had an either/or Section C (Q8 or Q9, 10 marks each). Both options are in the CSV with "(option)" in the subtopic. The aggregates weight each option at 0.5, so the paper still totals 80.
- **Spot-checks on variant 2** (also in the CSV, with `variant=2`): 2023-MJ P2/22, 2024-ON P1/12, 2025-MJ P4/42 and 2026-MJ P2/22. They are excluded from all the tables below.
  - **P1 variants are near-identical in topic mix.** 20 of 21 topics overlap, with the same 1–2 items per topic.
  - **P2 variants differ a lot.** Only 6–8 of about 18 topics overlap. For example, 2026 P2/21 leans on disease, gas exchange and excretion, while P2/22 leans on coordination, ecology and biotechnology. So any single-session P2 figure is noisy; the nine-session totals are the reliable signal.
  - **P3 and P4 often share a context.** In 2023-ON, 2024-ON and 2025-ON, P3/31 and P4/41 share Q2–Q3 almost word for word. P4/42 in 2025-MJ is the alternative-to-practical version of P3/31 rather than of P4/41.
- **Topic list:** this follows the 5090 syllabus areas. "Characteristics & classification" is listed separately because it is new content from 2023.
- **"Practical skills (generic)":** this is used only for parts that test a pure skill (units in a table heading, choosing apparatus, naming the variables, drawing technique) with no biology content. Every other practical part is tagged to the biology of its experiment.

## 1. Paper structure and the 2022 to 2023 change

| | 2022 (old syllabus) | 2023 onwards (revised syllabus, first examined June 2023) |
|---|---|---|
| Paper 1 Multiple Choice | 40 × 1 mark, 1 h | unchanged: 40 marks, 1 h |
| Paper 2 Theory | 80 marks, 1 h 45. Section A short structured; Section B; **Section C: choose Q8 or Q9** (10 marks each) | 80 marks, 1 h 45. **All questions compulsory**, no sections. Usually 7–9 structured questions, including 5–7-mark extended answers |
| Practical | **Paper 3** Practical Test, 40 marks, **1 h 15** | **Paper 3** Practical Test, 40 marks, **1 h 30** |
| Alternative to Practical | **Paper 6**, 40 marks, 1 h | renumbered **Paper 4**, 40 marks, 1 h |
| Overall maximum (grade thresholds) | 160 (raw 40 + 80 + 40) | **200 "after weighting"**. This implies roughly MCQ 30 %, Theory 50 %, Practical/ATP 20 %; the weighting is my inference from the totals |
| Entry routes | P1 + P2 + (P3 or P6) | P1 + P2 + (P3 or P4) |

Other changes, from the June 2023 examiner report and the papers themselves:

- **Content:**
  - Classification is new: phyla, classes and arthropod groups, plus using and building dichotomous keys.
  - The report asks for "water potential" wording for osmosis, and "set point" in homeostasis.
  - Disease & immunity, synapses, the CNS/PNS, and DNA/protein synthesis appear more often.
- **Practical paper:** it got 15 minutes longer. Since 2023 almost every P3/P4 has a **6-mark "plan an investigation"** part.
- **2026:** the June 2026 thresholds also list a **Component 50** (90 marks; C = 51). There are no local papers for it, so it is not analysed here.

## 2. Topic weight tables (variant 1, marks)

### 2a. All components combined (9 sessions; 1,800 marks)

| Topic | Total marks | % of all marks | 2022 % | 2023+ % | Sessions tested |
|---|---|---|---|---|---|
| Coordination & response | 160 | 8.9 | 8.5 | 9.0 | 9/9 |
| Enzymes | 155 | 8.6 | 7.5 | 8.9 | 9/9 |
| Respiration | 139 | 7.7 | 3.8 | 8.9 | 9/9 |
| Reproduction (plants and humans) | 137 | 7.6 | 11.2 | 6.6 | 9/9 |
| Practical skills (generic) | 122 | 6.8 | 6.2 | 6.9 | 9/9 |
| Biological molecules (mainly food tests) | 108 | 6.0 | 9.2 | 5.1 | 9/9 |
| Transport in humans | 104 | 5.8 | 9.2 | 4.8 | 9/9 |
| Cells (incl. magnification) | 90 | 5.0 | 5.8 | 4.8 | 9/9 |
| Plant nutrition | 77 | 4.3 | 7.8 | 3.3 | 9/9 |
| Human nutrition | 77 | 4.3 | 5.5 | 3.9 | 9/9 |
| Transport in plants | 76 | 4.2 | 7.2 | 3.4 | 9/9 |
| Disease & immunity | 63 | 3.5 | 0.8 | 4.3 | 9/9 |
| Variation & selection | 62 | 3.4 | 3.2 | 3.5 | 9/9 |
| Organisms & environment | 58.5 | 3.2 | 1.4 | 3.8 | 9/9 |
| Human influences on ecosystems | 58.5 | 3.2 | 2.4 | 3.5 | 9/9 |
| Inheritance | 58 | 3.2 | 2.2 | 3.5 | 9/9 |
| Excretion | 56 | 3.1 | 1.8 | 3.5 | 9/9 |
| Movement into & out of cells | 51 | 2.8 | 1.0 | 3.4 | 9/9 |
| Drugs | 39 | 2.2 | 0.5 | 2.6 | 9/9 |
| Characteristics & classification | 39 | 2.2 | 1.5 | 2.4 | 9/9 |
| Gas exchange | 35 | 1.9 | 1.5 | 2.1 | 9/9 |
| Biotechnology & genetic modification | 35 | 1.9 | 1.8 | 2.0 | 9/9 |

How to read this table:

- **Every topic appears in every session.** P1 covers the whole syllabus in syllabus order.
- **The big swings come from which experiment the practical papers are built on.** For example:
  - Respiration got 62 marks in 2024-ON because both P3 and P4 were yeast/respirometer practicals.
  - Enzymes got 39 in 2023-ON (catalase).
  - Biological molecules got 33 in 2026-MJ (vitamin C titration with DCPIP).

### 2b. Paper 1 (MCQ): marks per topic (each mark is one question)

| Topic | 22MJ | 22ON | 23MJ | 23ON | 24MJ | 24ON | 25MJ | 25ON | 26MJ | Mean / paper |
|---|---|---|---|---|---|---|---|---|---|---|
| Coordination & response | 6 | 5 | 5 | 5 | 5 | 5 | 7 | 5 | 7 | **5.6** |
| Reproduction | 4 | 4 | 4 | 5 | 4 | 3 | 3 | 2 | 2 | 3.4 |
| Transport in humans | 3 | 2 | 2 | 2 | 2 | 2 | 4 | 2 | 3 | 2.4 |
| Plant nutrition | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 4 | 3 | 2.2 |
| Transport in plants | 2 | 3 | 2 | 2 | 2 | 3 | 2 | 1 | 2 | 2.1 |
| Movement into & out of cells | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2.0 |
| Inheritance / Enzymes / Disease & immunity / Organisms & environment | about 2 each | | | | | | | | | 1.9 |
| Human nutrition, Cells, Variation, Respiration, Human influences, Classification, Gas exchange, Drugs, Biotechnology, Excretion | 1–2 each | | | | | | | | | 1.0–1.8 |
| Biological molecules | 2 | 0 | 1 | 1 | 1 | 1 | 0 | 0 | 1 | 0.8 |

P1 is very predictable: about 1–2 questions per syllabus topic, in syllabus order. The exception is Coordination & response (nerves, eye, hormones, homeostasis, tropisms), which reliably gets 5–7.

### 2c. Paper 2 (Theory): % of the 720 theory marks

| Topic | % (all) | 2022 % | 2023+ % | Sessions with ≥ 1 part |
|---|---|---|---|---|
| Coordination & response | 13.1 | 14.4 | 12.7 | 8/9 |
| Human nutrition | 8.3 | 10.6 | 7.7 | 8/9 |
| Reproduction | 7.9 | 9.4 | 7.5 | 7/9 |
| Transport in humans | 7.1 | 6.9 | 7.1 | 8/9 |
| Disease & immunity | 6.4 | **0.0** | **8.2** | 6/9 |
| Human influences on ecosystems | 6.3 | 4.7 | 6.8 | 8/9 |
| Variation & selection | 6.2 | 6.2 | 6.2 | 8/9 |
| Inheritance | 5.7 | 3.8 | 6.2 | 7/9 |
| Respiration | 4.4 | 6.9 | 3.8 | 6/9 |
| Transport in plants | 4.3 | **10.0** | **2.7** | 4/9 |
| Organisms & environment | 4.2 | 2.2 | 4.8 | 5/9 |
| Plant nutrition | 3.3 | 5.6 | 2.7 | 5/9 |
| Biotechnology & GM | 3.3 | 1.9 | 3.8 | 4/9 |
| Gas exchange | 3.2 | 2.5 | 3.4 | 3/9 |
| Excretion | 3.2 | 3.1 | 3.2 | 4/9 |
| Enzymes | 3.2 | 6.9 | 2.1 | 5/9 |
| Characteristics & classification | 2.8 | 2.5 | 2.9 | 5/9 |
| Biological molecules | 2.5 | 0.0 | 3.2 | 4/9 |
| Movement into & out of cells | 1.7 | 0.0 | 2.1 | 3/9 |
| Cells | 1.7 | 2.5 | 1.4 | 4/9 |
| Drugs | 1.1 | 0.0 | 1.4 | 3/9 |

### 2d. Practical (P3) and Alternative to Practical (P4/P6): % of marks

| Topic | P3 % | P4/P6 % | Sessions (P3 / P4) | What it usually is |
|---|---|---|---|---|
| Practical skills (generic) | 13.6 | 20.3 | 9 / 9 | apparatus, variables, units, drawing technique |
| Enzymes | **20.0** | 11.9 | 4 / 3 | catalase foam or oxygen, pectinase or apple juice, amylase, lactase |
| Biological molecules | 15.6 | 7.5 | 6 / 5 | Benedict's, biuret, iodine, emulsion; DCPIP (2026) |
| Respiration | 11.1 | 15.0 | 2 / 3 | yeast in dough or sugar solution, respirometers |
| Cells (magnification) | 11.1 | 6.7 | 8 / 7 | measure a drawing or photo and calculate actual size or magnification |
| Reproduction | 6.9 | 6.7 | 3 / 3 | flower drawing, seed dispersal, germination |
| Movement into & out of cells | 5.8 | 0 | 1 / 0 | potato osmosis (2023-MJ) |
| Transport in plants | 0 | 7.2 | 0 / 2 | potometer or transpiration (2022-MJ, 2023-MJ) |
| Plant nutrition | 3.3 | 5.8 | 2 / 2 | pondweed bubbles, starch test on a leaf |
| Excretion | 1.4 | 5.3 | 1 / 3 | kidney section drawing, Benedict's test on urine |
| Coordination & response | 0 | 4.4 | 0 / 1 | gravitropism (2025-MJ P4) |
| Transport in humans | 3.9 | 4.7 | 2 / 2 | pulse rate and exercise, artery drawing |
| Drugs | 2.8 | 2.8 | 1 / 1 | antibiotic disc plates |

**Never set on P3 or P4 (variant 1):** Inheritance, Disease & immunity, Gas exchange, Human influences, Biotechnology, Organisms & environment on P4. Human nutrition appears only once (1 mark).

## 3. Banker topics: tested in essentially every session

The figures are per session (9 sessions), across all papers unless a paper is named.

1. **Coordination & response.** It has 5–7 MCQs every time and is the largest P2 topic in 6 of 9 sessions. Recurring material:
   - the eye: accommodation, pupil reflex, image formation (9/9 sessions);
   - reflex arc and neurone types;
   - synapses (since 2023);
   - hormones: adrenaline, insulin and glucagon, plus where each is made;
   - blood glucose and temperature control (9/9 sessions);
   - phototropism and gravitropism with auxin.
2. **Food tests** (Benedict's, biuret, iodine, emulsion, with colours and conditions). These turn up in 8/9 sessions and carry 90 marks overall. They are also asked inside non-food contexts, such as testing urine for glucose or a seed for oil.
3. **Enzymes.**
   - P2 or P1 almost always asks about lock-and-key, specificity and denaturation.
   - Enzyme investigations carry 90 marks. The temperature or pH plan is the classic 6-mark P3/P4 planning question.
4. **Magnification / actual size** (Cells / microscopy). This appears in 8/9 sessions: the drawing question on P3 and P4 nearly always ends with measuring and calculating. It is also asked in P1 and P2 (µm conversions).
5. **Biological drawing.** Every session has a large, clear outline drawing on P3 and P4: a leaf, flower, fruit, seed, onion cells, kidney section, larva or white blood cell.
6. **Reproduction.** It averages 3.4 MCQs per paper and appears in P2 in 7/9 sessions. The recurring material is:
   - flower structure and pollination (wind vs insect);
   - seed dispersal and germination;
   - the menstrual cycle hormones;
   - placenta and pregnancy.
7. **Transport in humans.** About 2–4 MCQs per session, plus P2 questions on blood components, the heart (valves, heart sounds), blood vessels, CHD and exercise.
8. **Respiration.** Aerobic vs anaerobic, yeast and oxygen debt, and the word or balanced equation (P2 2026 asked for the balanced equation plus a mass calculation). Practical respirometer or yeast set-ups appeared in 2024 and 2025.
9. **Human nutrition.** The topics are balanced diet and deficiencies, plus chemical digestion (protein digestion via pepsin and trypsin, and amylase). P2 had 10–11 marks on it in 5 of 9 sessions.
10. **Natural selection and antibiotic resistance** (Variation & selection). It turns up in 7/9 sessions. Examiners say it is the weakest-answered extended question.

## 4. Rarely tested (fewest marks or sessions)

- **Dialysis and transplants** (2 marks in 2 sessions), **mutation** (3 marks in 2), **diffusion as its own topic** (3 marks), **translocation** (4 marks in 1 session, though xylem/phloem structure is asked more often), **assimilation and the liver** (4 marks), **digestive organs as a stand-alone item** (4 marks).
- **Water and elements in biological molecules** (5 marks in 1 session), **food production and agriculture** (5.5 marks), **water pollution and eutrophication** (6 marks in 5 sessions, but small each time), **energy pyramids** (6 marks), **inspired vs expired air** (6 marks), **misused drugs** (6 marks).
- **Gas exchange as a whole** is only 1.9 % of marks. It is a P2 topic in just 3 of 9 sessions, but it went big when it did appear: 10 marks in 2024-MJ and 9 in 2026-MJ.
- **Contraception and STIs, codominance and blood groups, sex linkage and sex determination** each get 0–9 marks. Sex linkage and sex determination were barely seen.

"Rare" here means low frequency. These topics are still examinable, and some are new in the 2023 syllabus.

## 5. Trends: 2022 (old) vs 2023+ (revised)

- **Up:**
  - **Disease & immunity:** P2 went from 0 % to 8.2 %. Since 2023 there have been 7–14-mark P2 questions on pathogens, vaccination, active vs passive immunity, antibodies vs antibiotics, and cholera.
  - **Inheritance and DNA:** 3.8 % to 6.2 % of P2. These are DNA structure, protein synthesis, and monohybrid/codominance crosses with pedigrees.
  - **Movement into & out of cells**, **Drugs**, **Excretion** and **Organisms & environment** all rose modestly.
  - **Classification and keys** (new content) now gets about 1–3 MCQs plus occasional P2 parts, such as naming phyla or classes and giving their features.
- **Down:**
  - **Transport in plants:** P2 went from 10 % to 2.7 %.
  - **Plant nutrition** and **enzymes as theory**: enzymes moved into the practical papers.
  - **Reproduction:** 11.2 % to 6.6 % overall.
  - **Biological molecules** in the practical papers: 2022 had whole food-test practicals. The DCPIP practical in 2026 shows they still return.
- **Format:**
  - The P2 choice of question has gone.
  - Extended 5–7-mark "describe/explain/discuss" parts now sit inside compulsory questions (for example, long-term immunity, synapse function, environmental effects of a change).
  - Practical papers now always include a 6-mark plan, plus a drawing with a magnification calculation.
- **Stable:** P1 topic spread, Coordination & response dominance, and the practical skills share (about 14–20 % of P3/P4).

## 6. Recurring question styles (marks, variant 1, all sessions)

| Style | MCQ | P2 | P3 | P4/P6 | Comment |
|---|---|---|---|---|---|
| Recall | 192 | 217 | 3 | 4 | definitions (hormone, excretion, osmosis, homeostasis) and naming structures |
| Explain / describe | 8 | **325** | 20 | 20 | the core of P2: mechanisms (accommodation, osmosis, natural selection, immunity) |
| Data / graph interpretation | 80 | 64 | 51 | 50 | describe trends with figures, compare groups, read a value off a graph |
| Calculation | 16 | 24 | 47 | 44 | magnification or actual size, % change, rate, mean, π r² h volume, standard form |
| Planning / method | 0 | 2 | 61 | 61 | a 6-mark plan every session since 2023, plus variables and controls |
| Diagram labelling / identification | 52 | 32 | 2 | 2 | eye, heart, leaf section, reflex arc, flower, nephron, reproductive systems |
| Biological drawing | 0 | 0 | 41 | 44 | outline quality, size, proportion, labels |
| Graph plotting | 0 | 0 | 38 | 37 | line graph or bar chart, axes with units, ruled lines |
| Table construction | 0 | 0 | 36 | 31 | headings with units and no units in the cells |
| Evaluation / improvement | 0 | 20 | 28 | 30 | sources of error, repeats, controls |
| Food or chemical test | 6 | 2 | 28 | 25 | reagent, method (heat with Benedict's), colours |
| Prediction / hypothesis | 1 | 23 | 5 | 12 | |
| Genetic cross | 5 | 12 | 0 | 0 | monohybrid Punnett squares, pedigrees, ABO blood groups; in 7/9 sessions |

## 7. Common mistakes (examiner reports for 2022 MJ, 2022 ON and 2023 MJ only)

**Theory and MCQ**

- **The eye:**
  - Candidates mix up the iris's circular muscles with the ciliary muscles, a mistake repeated across years.
  - They get the ciliary muscle, suspensory ligament and lens sequence wrong in accommodation.
  - They place the myopia image wrongly; it falls in front of the retina.
  - They fail to link bright light with a smaller pupil.
- **Osmosis:** answers talk about vague "concentration" instead of water potential, which examiners want used.
- **Phototropism:** some say auxin is "destroyed by light", and many forget cell elongation.
- **Antibiotic resistance and natural selection:**
  - Answers are Lamarckian ("the antibiotic causes the change and it is inherited").
  - They confuse resistance with immunity.
  - Some think malaria can be treated with antibiotics.
- **Antibodies vs antibiotics:** answers use vague "natural vs artificial" wording.
- **Global warming vs ozone depletion:** these still get confused, and so do carbon dioxide and carbon monoxide.
- **Excretion:** candidates confuse urea with urine and excretion with egestion.
- **Reflex arc:** many put the relay neurone in a nerve; it is in the spinal cord or brain.
- **Translocation:** some say glucose or starch is moved, but it is sucrose and amino acids. Xylem and phloem are swapped, and "phloem" is often misspelt (spelling of key terms matters).
- **Iron:** some say it is "for bones"; it is needed to make haemoglobin. Protein should be linked to growth and repair of muscle.
- **Heart sounds:** examiners want the valves closing, not the muscle contracting.
- **Specific terms:**
  - Candidates don't know "set point" (homeostasis).
  - They write "identical" where "genetically identical" is needed.
  - Their gametes contain two alleles in genetic diagrams.
- **Data questions:** candidates compare the wrong variable, for example males vs females instead of change over time. They also restate data given in the question, which earns no credit.

**Practical and ATP**

- **Magnification:**
  - Dividing the wrong way round; the answer must be greater than ×1 for an enlargement.
  - Multiplying by 100.
  - Errors converting mm and µm.
  - Not drawing the measurement line asked for.
- **Tables:** units go in the column headings, not in the cells.
- **Graphs:**
  - Non-linear scales, axes without units, the independent variable not on the x-axis.
  - Points not plotted (including zero values).
  - Lines not ruled when told to.
  - Two data sets on one set of axes handled poorly.
- **Readings:** taking the measuring cylinder reading from the top of the meniscus; giving seconds when minutes were asked.
- **Experiment language:**
  - Writing "amount" instead of mass or volume.
  - Mixing up accuracy, reliability and validity.
  - Mixing up dependent and independent variables.
  - Mixing up "heating" and "boiling".
  - Writing vague "fair test" statements.
  - Plans without a time frame or the controlled variables.
- **Drawings:** sketchy or overlapping lines, shading, too small.
- **Food tests:** forgetting to heat for Benedict's; giving the wrong colour sequence.

## 8. Grade thresholds (minimum raw marks)

### Overall syllabus thresholds (main route, components x1)

| Session | Route | Max | A* | A | B | C | D | E |
|---|---|---|---|---|---|---|---|---|
| 2022 MJ | 11+21+31 / 11+21+61 | 160 | 120 / 121 | 100 / 101 | 80 / 81 | 60 / 62 | 50 / 53 | 41 / 44 |
| 2022 ON | 11+21+31 / 11+21+61 | 160 | 123 / 123 | 102 / 103 | 81 / 83 | 61 / 63 | 48 / 49 | 36 / 36 |
| 2023 MJ | 11+21+31 / 11+21+41 | 200 | 159 / 149 | 132 / 123 | 105 / 97 | 78 / 71 | 65 / 59 | 53 / 47 |
| 2023 ON | 11+21+31 / 11+21+41 | 200 | 155 / 155 | 128 / 128 | 101 / 101 | 75 / 75 | 62 / 62 | 50 / 50 |
| 2024 MJ | 11+21+31 / 11+21+41 | 200 | 165 / 164 | 139 / 138 | 113 / 112 | 88 / 87 | 74 / 73 | 61 / 60 |
| 2024 ON | 11+21+31 / 11+21+41 | 200 | 159 / 159 | 133 / 133 | 107 / 107 | 82 / 82 | 70 / 70 | 59 / 59 |
| 2025 MJ | 11+21+31 / 11+21+41 | 200 | 165 / 163 | 139 / 137 | 113 / 111 | 88 / 86 | 74 / 73 | 61 / 60 |
| 2025 ON | 11+21+31 / 11+21+41 | 200 | 157 / 157 | 131 / 131 | 105 / 105 | 79 / 79 | 67 / 67 | 56 / 56 |
| 2026 MJ | 11+21+31 / 11+21+41 | 200 | 168 / 166 | 141 / 140 | 114 / 114 | 88 / 88 | 75 / 75 | 62 / 62 |

As a percentage of the maximum, a C needs about 38–39 % (2022), about 36–39 % (2023) and about 40–44 % (2024–26). An A needs about 62–70 %. Thresholds have **risen since 2023**: the first revised-syllabus series was graded leniently.

### Component thresholds, A and C (variant 1)

| Session | P1 A / C (of 40) | P2 A / C (of 80) | P3 A / C (of 40) | P4 or P6 A / C (of 40) |
|---|---|---|---|---|
| 2022 MJ | 27 / 16 | 46 / 24 | 27 / 20 | 28 / 22 |
| 2022 ON | 28 / 20 | 47 / 25 | 27 / 16 | 28 / 18 |
| 2023 MJ | 30 / 18 | 45 / 23 | 31 / 22 | 22 / 15 |
| 2023 ON | 29 / 19 | 46 / 22 | 27 / 19 | 27 / 19 |
| 2024 MJ | 32 / 20 | 49 / 27 | 30 / 24 | 29 / 23 |
| 2024 ON | 30 / 20 | 49 / 26 | 27 / 19 | 27 / 19 |
| 2025 MJ | 32 / 20 | 49 / 27 | 30 / 24 | 28 / 22 |
| 2025 ON | 30 / 19 | 49 / 26 | 25 / 18 | 25 / 18 |
| 2026 MJ | 32 / 20 | 50 / 28 | 30 / 23 | 29 / 23 |

P2 is the hardest paper: an A needs only about 60 % of its raw marks, and a C about 33 %. P1 needs about 80 % for an A. Variant 2 thresholds can differ a lot; for example, 2025-MJ P2/22 needed A = 39 and C = 17. The full tables are in the `*_gt.pdf` files.

## 9. Revision priorities for Oct/Nov 2026 and 2027 candidates

1. **Coordination & response first.** It is worth about 13 % of P2 and 5–7 MCQs. Cover:
   - eye structure, accommodation and the pupil reflex (learn the muscle sequences exactly);
   - reflex arc with neurone types and where each is;
   - synapse steps;
   - hormones and their glands;
   - blood glucose control (insulin and glucagon, set point);
   - temperature control (vasodilation, sweating, shivering);
   - tropisms with auxin and cell elongation.
2. **Practical toolkit (the whole of P3/P4, 20 % of the grade).** Drill until automatic:
   - **6-mark plan template:** independent variable with values, dependent variable and how and when it is measured, 2–3 controlled variables with how they are controlled, repeats and a mean, safety.
   - **Results tables:** units in the headings.
   - **Graphs:** linear scales, ruled lines, plot every point.
   - **Large biological drawing**, then **magnification = drawing ÷ actual**, with mm-to-µm conversions.
   - **Errors and improvements.**
3. **Enzymes, respiration and food tests as practical contexts.** Recent P3/P4 papers were built on:
   - catalase (potato, celery);
   - pectinase or apple browning;
   - lactase;
   - yeast with sugar or dough, and respirometers;
   - DCPIP for vitamin C;
   - Benedict's, biuret, iodine and emulsion.
   Know each test's method, its colour changes and why it is heated.
4. **Disease & immunity (rising since 2023).** Cover:
   - pathogens and how diseases spread (cholera);
   - the body's defences;
   - antibodies vs antibiotics;
   - active vs passive immunity and memory cells;
   - vaccination and herd effects;
   - why antibiotics don't kill viruses.
5. **Natural selection and antibiotic resistance as a model 5–6-mark answer:** variation → mutation → selection pressure → survivors reproduce → allele passed on → frequency increases. Never write "the bacteria adapt".
6. **Inheritance.** Set out monohybrid crosses fully (one allele per gamete), codominance and ABO blood groups, pedigree reasoning, and DNA structure and protein synthesis.
7. **Human nutrition and transport in humans.** Cover digestion enzymes and where they act (pepsin, trypsin, amylase, lipase, bile), deficiency diseases, villi, blood components, heart valves and sounds, vessel structure, and CHD risk factors.
8. **Ecology and human impact** (about 13 % of P2 combined). Cover food webs (effects of removing a species), carbon and nitrogen cycles, deforestation, the greenhouse effect vs ozone depletion, eutrophication, and conservation and sustainable fishing. These are often set as data-rich "discuss" questions.
9. **Classification (new).** Learn the vertebrate classes and arthropod groups with one visible feature each, and practise using and building dichotomous keys. This is worth about 1–3 MCQs plus P2 parts.
10. **Lower but not zero.** Cover gas exchange (alveoli and breathing mechanism; it came back big in 2024 and 2026), excretion (nephron, urea, deamination), plant transport (transpiration factors, potometer), biotechnology (fermenters, GM steps), and drugs.
11. **Technique for P2.**
    - Use the exact terms examiners want: water potential, partially permeable membrane, set point, genetically identical.
    - Quote figures with units when describing data.
    - Answer the variable that was asked about.
    - Don't restate the stem.
    - Leave time for the 5–7-mark parts.

Caveat: these are frequency patterns from the variant 1 papers, and P2 variants are set on quite different topics. The whole 5090 syllabus remains examinable.
