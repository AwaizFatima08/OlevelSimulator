# Cambridge IGCSE Physics (0625): topic-frequency analysis, 2022 to June 2026

Compiled 19 Oct 2026 from local past papers only (`papers/igcse/physics-0625/`, nine sessions from May/June 2022 to May/June 2026). Question data: `0625-questions.csv` in this folder (1,013 rows).

**Method**
- Each PDF was converted with `pdftotext -layout`. Part labels and `[n]` mark brackets were extracted by script and checked against the `[Total: n]` line of every question and the cover total of every paper.
- **Extended route, variant 2, all nine sessions:** every item of Paper 22 (40 MCQs), every part of Paper 42 and every part of Paper 62 was classified by topic, subtopic and marks.
- **Paper 52** (variant 2) was classified for 2023-MJ, 2025-MJ and 2026-MJ.
- **Mark check:** every paper's rows add up to its cover total (P22 = 40, P42 = 80, P52/P62 = 40), 30 papers in all.
- **Examiner reports** were available for 2022-MJ, 2022-ON, 2023-MJ and 2025-MJ only.
- **Sessions** are written as `YYYY-MJ` (May/June) and `YYYY-ON` (Oct/Nov).

Caveats:
- MCQ diagrams are lost in text conversion, so some P22 items were classified from their wording and options.
- **Practical papers:** a part is filed under its physics topic only when it needs physics knowledge, for example drawing a circuit, a normal, or the behaviour of a diode or LDR. Generic skills (readings, tables, graphs, given-formula calculations, precision, planning) are filed under **Practical skills**.
- The 2026 files are watermarked downloads from a third-party site. Their content matches the usual Cambridge layout.
- All percentages describe this sample. They are not official syllabus weightings.
- There is no syllabus document in the local folder. The topic list in §1 follows the 0625 syllabus numbering. The examiner reports quote statements from it, for example 5.2.1.5 (background count) and 6.2.3.9 (Hubble constant).

---

## 1. Topic list and paper structure

### 1a. Syllabus topics used for tagging (0625, first examined 2023)

| Topic | Subtopics used in the CSV |
|---|---|
| **1 Motion, forces & energy** | Physical quantities & measurement (including scalars, vectors and resultants) · Motion (kinematics) · Mass, weight & density · Forces & Newton's laws (including friction, terminal velocity and circular motion) · Springs & deformation · Turning effect & centre of gravity · Momentum & impulse · Energy, work & power · Energy resources · Pressure |
| **2 Thermal physics** | Kinetic particle model & gases (states, Brownian motion, gas pressure, pV = constant, kelvin) · Thermal properties & temperature (expansion, specific heat capacity, latent heat, melting, boiling, evaporation) · Thermal energy transfer (conduction, convection, radiation) |
| **3 Waves** | General wave properties (v = fλ, transverse vs longitudinal, seismic waves, reflection, refraction and diffraction of water waves) · Light: reflection & refraction (including TIR and optical fibres) · Lenses & dispersion (including correcting long and short sight) · Electromagnetic spectrum (including analogue vs digital signals) · Sound (including ultrasound and echoes) |
| **4 Electricity & magnetism** | Magnetism · Electric charge & static (including electric fields) · Current, p.d., e.m.f. & resistance · Electrical energy & power (including kW h) · Circuits & components (series and parallel, diode, LDR, thermistor, potential divider, relay) · Electrical safety · Electromagnetic effects (induction, generator, the field of a current, motor effect, d.c. motor, transformer) · *Digital electronics / logic gates (2022 syllabus only)* |
| **5 Nuclear physics** | Atom & nucleus (structure, nuclide notation, isotopes, alpha scattering, fission and fusion) · Radioactivity (alpha, beta and gamma, decay equations, half-life, background, uses, safety) |
| **6 Space physics** (new in 2023) | Earth & Solar System (planets, orbits, v = 2πr/T, seasons, comets) · Stars & the Universe (life cycle, light-year, galaxies, red-shift, CMBR, Hubble constant) |
| **Practical skills** (P5/P6) | Measurement technique & recording · Graph & data analysis · Experimental planning & evaluation |

### 1b. Components, from the cover pages

The cover pages are **identical in 2022 and 2023 to 2026**: same durations, same mark totals, same "answer all questions".

| Component | Route | Duration | Marks | Weight* | Format |
|---|---|---|---|---|---|
| P1 Multiple Choice (Core) | Core | 45 min | 40 | 30% | 40 MCQs |
| **P2 Multiple Choice (Extended)** | Extended | 45 min | 40 | 30% | 40 MCQs |
| P3 Theory (Core) | Core | 1 h 15 min | 80 | 50% | structured, all compulsory |
| **P4 Theory (Extended)** | Extended | 1 h 15 min | 80 | 50% | 10 or 11 structured questions of 5 to 13 marks each |
| **P5 Practical Test** | either | 1 h 15 min | 40 | 20% | 4 questions: 3 experiments of about 11 marks, then a 7-mark plan |
| **P6 Alternative to Practical** | either | 1 h | 40 | 20% | the same 11/11/11/7 shape (2024-MJ: 13/10/10/7) |

\*Weights are inferred from the grade-threshold files. Each route is weighted to 200 marks, with MCQ × 1.5, theory × 1.25 and practical × 1. **Check (2026, route 22-42-62):** the weighted component A thresholds give 1.5 × 27 + 1.25 × 49 + 32 = 133.75, which matches the published A of 134.

Entry routes:
- **Extended:** P2 + P4 + (P5 or P6), graded A\* to G. The variant-2 options are 22-42-52 and 22-42-62.
- **Core:** P1 + P3 + (P5 or P6), **capped at grade C**.

**P5 and P6 are paired.** In 2023-MJ, 2025-MJ and 2026-MJ, P52 and P62 used **the same four experiments**. P5 gives more marks for taking real readings; P6 supplies the readings in figures.

### 1c. What changed with the syllabus first examined in 2023 (evidence from the papers)

- **Added: Space physics (topic 6).** It had no marks in either 2022 session. Since 2023 it has had **2 to 4 MCQs and 8 to 12 marks on P4** in every session, almost always the last one or two P4 questions.
  - Keyword checks: light-year 0 → 11 mentions, orbital speed 0 → 8, Hubble 0 → 5, red-shift/CMBR 0 → 3.
  - The June 2023 report calls space physics "the new syllabus topic".
- **Removed:**
  - **Digital electronics / logic gates.** These were worth 14 marks across the two 2022 sessions, including a full P4 question each time, and have **not appeared since**.
  - **Thermocouples** and thermometer linearity and sensitivity (3 mentions in 2022, none since).
- **New or more visible:**
  - kilowatt-hour (0 → 5);
  - defining an electric field (1 → 9);
  - long and short sight with corrective lenses (0 → 12);
  - analogue vs digital signals (0 → 8);
  - seismic P- and S-waves (0 → 6);
  - efficiency calculations (0 → 11);
  - defining impulse and calculating F = Δp/Δt.
- **Data change:** g is now **9.8 N/kg** (the P42 cover says so from 2023). The Oct/Nov 2022 report warned candidates about this change in advance.
- **Unchanged:** paper structure, timings, mark totals and the 7-mark planning question. The planning question was already on P5/P6 in 2022.
- **2026 oddities:**
  - The June 2026 thresholds list **Components 17 and 27**: new 40-mark MCQ variants with their own routes (17-31-51, 27-41-51 and so on). Their mark schemes are in the folder, but their question papers are not.
  - A **"Component 50"** (90 marks) also appears. It is in the 2022 thresholds too, and the 5054 analysis found the same entry, so it looks like a board-wide route rather than a physics paper. That is an inference only.

---

## 2. Topic weights (Extended route, variant 2)

### 2a. Theory, P22 + P42 combined (marks out of 120 per session)

| Topic | 22-MJ | 22-ON | 23-MJ | 23-ON | 24-MJ | 24-ON | 25-MJ | 25-ON | 26-MJ | Total | Share |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Motion, forces & energy | 36 | 34 | 39 | 44 | 29 | 31 | 30 | 34 | 38 | 315 | **29.2%** |
| Electricity & magnetism | 39 | 35 | 18 | 17 | 25 | 26 | 27 | 27 | 22 | 236 | **21.9%** |
| Waves | 19 | 18 | 18 | 21 | 24 | 21 | 25 | 15 | 17 | 178 | **16.5%** |
| Thermal physics | 16 | 21 | 18 | 15 | 15 | 17 | 15 | 17 | 19 | 153 | **14.2%** |
| Nuclear physics | 10 | 12 | 14 | 9 | 12 | 13 | 11 | 14 | 14 | 109 | **10.1%** |
| Space physics | 0 | 0 | 13 | 14 | 15 | 12 | 12 | 13 | 10 | 89 | **8.2%** |

### 2b. By component

**Paper 22 (MCQ, items per session).** The pattern is very stable, especially from 2024:

| Topic | 22-MJ | 22-ON | 23-MJ | 23-ON | 24-MJ | 24-ON | 25-MJ | 25-ON | 26-MJ | Share |
|---|---|---|---|---|---|---|---|---|---|---|
| Motion, forces & energy | 13 | 11 | 13 | 11 | 9 | 11 | 9 | 9 | 9 | 26.4% |
| Electricity & magnetism | 10 | 12 | 10 | 10 | 8 | 10 | 8 | 9 | 9 | 23.9% |
| Waves | 7 | 9 | 6 | 7 | 8 | 7 | 9 | 7 | 8 | 18.9% |
| Thermal physics | 7 | 4 | 3 | 5 | 7 | 5 | 7 | 7 | 7 | 14.4% |
| Nuclear physics | 3 | 4 | 4 | 4 | 5 | 4 | 4 | 5 | 5 | 10.6% |
| Space physics | 0 | 0 | 4 | 3 | 3 | 3 | 3 | 3 | 2 | 5.8% |

- Items follow syllabus order: Q1 is measurement, the last 2 to 4 items are space.
- A typical 2024–2026 paper has about **9 mechanics, 7 thermal, 7–9 waves, 8–9 electricity, 4–5 nuclear and 2–3 space** items.

**Paper 42 (theory, marks out of 80):**

| Topic | 22-MJ | 22-ON | 23-MJ | 23-ON | 24-MJ | 24-ON | 25-MJ | 25-ON | 26-MJ | Share |
|---|---|---|---|---|---|---|---|---|---|---|
| Motion, forces & energy | 23 | 23 | 26 | 33 | 20 | 20 | 21 | 25 | 29 | 30.6% |
| Electricity & magnetism | 29 | 23 | 8 | 7 | 17 | 16 | 19 | 18 | 13 | 20.8% |
| Waves | 12 | 9 | 12 | 14 | 16 | 14 | 16 | 8 | 9 | 15.3% |
| Thermal physics | 9 | 17 | 15 | 10 | 8 | 12 | 8 | 10 | 12 | 14.0% |
| Nuclear physics | 7 | 8 | 10 | 5 | 7 | 9 | 7 | 9 | 9 | 9.9% |
| Space physics | 0 | 0 | 9 | 11 | 12 | 9 | 9 | 10 | 8 | 9.4% |

**Shares before and after the syllabus change:**

| Topic | P22 2022 | P22 2023+ | P42 2022 | P42 2023+ |
|---|---|---|---|---|
| Motion, forces & energy | 30.0% | 25.4% | 28.8% | 31.1% |
| Electricity & magnetism | 27.5% | 22.9% | **32.5%** | **17.5%** |
| Waves | 20.0% | 18.6% | 13.1% | 15.9% |
| Thermal physics | 13.8% | 14.6% | 16.2% | 13.4% |
| Nuclear physics | 8.8% | 11.1% | 9.4% | 10.0% |
| Space physics | 0% | 7.5% | 0% | **12.1%** |

### 2c. Top subtopics (P22 + P42, all nine sessions, 1,080 marks)

| Rank | Subtopic | Marks | Share | Sessions (of 9) | On P42 since 2023 (of 7) |
|---|---|---|---|---|---|
| 1 | Radioactivity (alpha/beta/gamma, decay equations, half-life, background, uses) | 79 | 7.3% | 9 | 6 |
| 2 | Circuits & components (series/parallel, diode, LDR, thermistor, potential divider, relay) | 64 | 5.9% | 9 | **7** |
| 3 | Energy, work & power (including efficiency) | 61 | 5.6% | 9 | 6 |
| 4 | Kinetic particle model & gases (gas pressure, pV = constant, absolute zero) | 60 | 5.6% | 9 | **7** |
| 5 | Thermal properties (specific heat capacity, latent heat, evaporation vs boiling) | 56 | 5.2% | 9 | 6 |
| 6 | Electromagnetic effects (generator, motor, transformer, induction) | 55 | 5.1% | 9 | 5 |
| 7 | Earth & Solar System | 50 | 4.6% | 7 (all since 2023) | **7** |
| 8 | Motion (kinematics: graphs, tangents, area) | 47 | 4.4% | 9 | 6 |
| 9 | Forces & Newton's laws (terminal velocity, circular motion) | 41 | 3.8% | 8 | 6 |
| 9 | Light: reflection & refraction (Snell's law, critical angle, n = c/v) | 41 | 3.8% | 9 | 5 |
| 9 | Current, p.d., e.m.f. & resistance | 41 | 3.8% | 9 | 4 |
| 12 | Lenses & dispersion | 40 | 3.7% | 9 | 3 |
| 13 | General wave properties | 39 | 3.6% | 9 | 5 |
| 13 | Stars & the Universe | 39 | 3.6% | 7 (all since 2023) | 6 |
| 15 | Momentum & impulse | 38 | 3.5% | 9 | 6 |
| 16 | Thermal energy transfer | 37 | 3.4% | 9 | 5 |

### 2d. Practical papers

**Paper 62, all nine sessions (360 marks):**

| Category | Marks | Share |
|---|---|---|
| Graph & data analysis (given-formula calculations, graphs, gradients, s.f., the "equal within experimental accuracy" check) | 161 | **44.7%** |
| Measurement technique & recording (readings to precision, table headings and units, precautions) | 86 | 23.9% |
| Planning & evaluation (the 7-mark plan, improvements, sources of inaccuracy) | 84 | 23.3% |
| Physics content (mostly drawing circuits and LDR/diode/LED behaviour; also normals and image properties) | 29 | 8.1% |

**Experiments set on P62.** Each session has 3 experiments plus a plan. Every session covers at least three of the four areas below.

| Area | Sessions (of 9) | Examples |
|---|---|---|
| **Electricity** | **9** | resistor combinations; resistance of a wire; diode, LED and LDR potential dividers; unknown R from a V–I graph; 1/V against R (2026); plans on a conducting liquid (2023-MJ) and wire tension (2022-ON) |
| **Mechanics / measurement** | **9** | balancing a metre rule (2022 ×2); springs (2023-MJ, 2024-MJ); pendulum (2023-ON); density of glass slides or a wooden block (2024-ON, 2026); test-tube diameter (2025-MJ); plans with a ball on a track (2024-MJ, 2025-ON) or falling through oil (2026) |
| **Thermal** | 8 | cooling of water (2023 ×2, 2025-ON); mixing hot and cold water (2022-ON); black vs white surfaces (2026); plans on insulators (2022-MJ) and cooling (2024-ON, 2025-MJ) |
| **Optics** | 8 | lens focal length (2022-MJ, 2024-ON, 2025-MJ); ray traces with a mirror (2022-ON, 2025-ON) or a block (2023-MJ, 2024-MJ); plan on colour vs focal length (2023-ON); none in 2026 |

**Paper 52 (2023-MJ, 2025-MJ, 2026-MJ):**
- Measurement & recording 37.5%, graph & data 35.8%, planning 19.2%, physics content 7.5%.
- P52 gives about **5 more marks per paper to taking readings** than P62 (on average 15 vs 10 marks across the three sessions; 21 vs 15 in 2023, using the same experiments). P62 moves those marks to processing supplied data.
- The 7-mark plan is word-for-word the same task on P52 and P62.

---

## 3. Bankers

### Paper 22: subtopics in all 7 sessions since 2023

**Theory content**
- Electromagnetic effects
- Radioactivity
- Kinetic particle model
- Light (reflection and refraction)
- Circuits
- Thermal properties
- Current and resistance
- Mass, weight and density
- Energy, work and power
- General wave properties
- Kinematics
- Thermal transfer
- Lenses
- Measurement and vectors
- Earth & Solar System
- Stars & the Universe

**Recurring item types**
- Resultant of two perpendicular forces, or which quantities are vectors.
- Distance from the area under a speed–time graph.
- Δp = FΔt.
- p = ρgh, often with atmospheric pressure added.
- pV = constant graph shapes.
- Brownian motion explained by collisions with smaller, fast molecules.
- Black vs white surfaces and radiation.
- The filament-lamp I–V curve.
- R ∝ L/A.
- Transformer turns and current.
- Field pattern around a wire.
- Background-corrected half-life.
- Deflection of α and β radiation.
- Nuclide equations.
- v = 2πr/T for the Earth.
- Fusion of hydrogen in stars.
- Hubble constant (H₀ = v/d, age ≈ 1/H₀).

### Paper 42: what has come up in every session (or 6 of 7) since 2023

1. **A circuit question (7 of 7):** potential divider with LDR or thermistor, diode or LED behaviour, series/parallel resistance, and a relay explained step by step (2026).
2. **Particle-model explanation of gas pressure (7 of 7):** collisions with walls → change of momentum → force → pressure = F/A. Temperature or volume changes, absolute zero (–273 °C, particles at minimum KE), and pV = constant.
3. **Space, Earth & Solar System (7 of 7):** planet data tables, the 2πr/T calculation with conversions from days or hours, energy changes of a comet in an elliptical orbit, the time for light to travel from the Sun, seasons from axial tilt.
4. **Space, stars and Universe (6 of 7):**
   - life cycle of a massive star: red supergiant → supernova → neutron star or black hole;
   - protostar stability: gravity balanced by outward pressure;
   - light-year;
   - H₀ = v/d with conversions to light-years;
   - CMBR and red-shift.
5. **Radioactivity (6 of 7, missing only in 2023-ON):** decay equations in nuclide notation, half-life with background subtraction and re-adding, choosing a source by its type and half-life, tracers, safety, and carbon dating (2024-ON, 2026).
6. **Energy, work, power and efficiency (6 of 7):** GPE → KE → speed, W = Fd, P = E/t, efficiency of wind turbines and solar panels.
7. **Kinematics plus forces (6 of 7 each):**
   - Graph work: speed–time graph description, area for distance, and a **tangent to find acceleration** (2024-ON, 2025-MJ).
   - Terminal velocity explained through forces.
   - Circular motion: the direction of the force.
   - F = ma.
8. **Momentum and impulse (6 of 7 since 2023, after only 1 mark in 2022):**
   - define momentum or impulse;
   - conservation with combined mass and direction;
   - F = Δp/Δt;
   - "bending the knees" or "moving the hands back" explained.
9. **Thermal properties (6 of 7):** E = mcΔθ with power and time, evaporation vs boiling, and evaporative cooling explained with particles.
10. **Mass, weight and density (6 of 7):** usually a "show that" step inside a bigger calculation.

### Paper 62 / 52: the same template every session

- **Q1–Q3 (about 11 marks each):**
  - readings from figures, to the instrument's precision;
  - column headings with units;
  - a given-formula calculation to suitable s.f.;
  - a graph (about 3–4 marks: scale, plotting, best-fit line);
  - a gradient from a large triangle;
  - "can these two values be considered equal within the limits of experimental accuracy?", backed by a calculation;
  - one precaution or technique specific to the apparatus, and one source of inaccuracy.
- **Q4 (7 marks):** a plan. It needs:
  - apparatus;
  - method;
  - control variables (often two);
  - a results table with units;
  - how the conclusion is reached.

---

## 4. Rarely tested, and trends

**Rarely tested in theory (P22 + P42, nine sessions):**

| Subtopic | Marks / 1,080 | Notes |
|---|---|---|
| Springs & deformation | 1 | One MCQ (2025-MJ); never on P42 in this sample. Still common as a P6 experiment (spring constant). |
| Electrical safety | 4 | MCQs only: fuse symbol, double insulation, overheating cables. |
| Turning effect & centre of gravity | 9 | Mostly a single MCQ; one 2-mark P42 part (2025-MJ). |
| Electric charge & static | 17 | Since 2023, defining an electric field and drawing field lines (plates or a sphere) appear in 3 of 7 P42s. |
| Electrical energy & power | 19 | kW h definition and calculations, P = IV, E = IVt. |
| Magnetism | 22 | Field definition and direction; testing which bar is unmagnetised. |
| Pressure | 24 | p = F/A or ρgh; on P42 in 5 of 9 sessions. |
| Energy resources | 26 | Usually 1 MCQ plus 2–5 P42 marks; nuclear vs solar comparisons. |

**Trends: 2022 compared with 2023 to 2026 (share of P22 + P42 marks):**

| Rising | 2022 → 2023+ | Falling | 2022 → 2023+ |
|---|---|---|---|
| Earth & Solar System | 0 → 6.0% | Digital electronics / logic gates | 5.8 → 0% |
| Stars & the Universe | 0 → 4.6% | Energy, work & power | 8.3 → 4.9% |
| Momentum & impulse | 1.2 → 4.2% | Thermal properties (thermocouple/thermometer work removed) | 7.5 → 4.5% |
| Radioactivity | 5.4 → 7.9% | Lenses & dispersion | 6.2 → 3.0% |
| Light (reflection, refraction) | 2.5 → 4.2% | Physical quantities & vectors | 5.4 → 2.5% |
| Kinematics | 2.9 → 4.8% | Circuits | 7.5 → 5.5% |
| General wave properties | 2.5 → 3.9% | Magnetism | 3.8 → 1.5% |

**What these shifts mean:**
- **Electricity's share of P42 roughly halved** (32.5% → 17.5%). The full logic-gate question went, and space took about 10 marks of each P42.
- Electricity stayed steady on P22.
- Mechanics is unchanged in total, but its content moved from energy chains towards momentum, impulse and graph work.

**Question styles on P42** (marks classified by command word; an automatic estimate):

| Style | 2022 | 2023+ |
|---|---|---|
| Calculate / determine / show that | 38% | 38% |
| State / define / name / complete the sentence | 22% | **27%** |
| Explain / describe / suggest | 22% | 24% |
| Draw / plot / label | 18% | **11%** |

**What has changed in the style:**
- **More short definitions:**
  - impulse, momentum and moment;
  - an electric field and a magnetic field;
  - weight, deceleration and the kW h;
  - the principal focus;
  - ultrasound and the light-year.
- **More fill-in-the-gap sentences** (star life cycle, nuclear power station, relay operation), especially in 2026.
- **Fewer drawing marks**, because logic-circuit design was removed.
- **"Show that" parts are common.** The examiners give the first mark only when the formula is written first.
- **No structural change since 2023**, but 2026 had 11 shorter questions, the most "complete the sentence" items, and the highest A\* threshold.

---

## 5. Common mistakes (paraphrased from the 2022 MJ, 2022 ON, 2023 MJ and 2025 MJ reports, papers 22, 42 and 62)

**Calculation habits**
- Only 1 s.f., for example treating the leading zero of 0.016 as significant.
- Missing or wrong units (N for energy; the only accepted derived form of J is N m).
- Rounding part-way through a multi-step calculation.
- Prefix errors with GHz, MHz and km/s. The 10⁹ in GHz is not well known.
- Using non-syllabus symbols: Q for energy, t for temperature, T for time. A formula triangle earns nothing.
- In "show that" questions, working backwards from the given answer, or not stating the formula first.
- Writing 1/R₁ + 1/R₂ and forgetting to take the reciprocal.

**Mechanics**
- Using mg for a horizontally accelerating object.
- Adding instead of subtracting the forces on a hanging mass (42 N instead of 18 N).
- Forgetting to square v in ½mv², or not converting g to kg.
- In collisions, adding momenta without signs and forgetting the combined mass.
- Using F = E/t for a force.
- Confusing moment with momentum.
- Defining a moment without "perpendicular distance".
- For equilibrium, needing both no resultant force and no resultant moment; the moment condition is often forgotten.
- Terminal velocity: linking air resistance to time instead of speed, and mixing up "decreasing acceleration" with "negative acceleration".
- For a "draw a vector diagram" question, using trigonometry instead (no credit).
- Taking the echo time for the full there-and-back trip, giving twice the depth.
- Thinking that two half-lives means everything has decayed.

**Thermal**
- Absolute zero given as 0 or +273.
- Particle explanations that say "more collisions" rather than "more frequent collisions with greater force or momentum change".
- Using a change of volume as the new volume in pV = constant.
- Thinking a double-glazed window reduces radiation; it reduces conduction and convection.
- Saying a dull black container cools faster because it is a good absorber; it is a good **emitter**.
- Confusing heat capacity with specific heat capacity.
- Using t for temperature.

**Waves and optics**
- Measuring an angle from the surface instead of the normal (on P42 and in ray traces on P62).
- Getting P- and S-waves the wrong way round.
- Giving the speed of sound when the speed of light is asked for.
- Lens diagrams:
  - measuring the image distance as the focal length;
  - refracting at the lens surface instead of the centre line;
  - circling "virtual" for an enlarged real image.
- Mixing up long sight, short sight and the normal eye.
- Thinking an electromagnet emits an electromagnetic wave.

**Electricity and magnetism**
- Defining a magnetic field without "region" and "force on a pole".
- Mixing up electric and magnetic field directions.
- Q = It with standard-form electron counts.
- Ratios of p.d. in mixed diode circuits.
- Confusing a generator's slip rings and brushes with a motor's split ring. The induced e.m.f. needs the coil to **cut** field lines.
- Thinking a transformer converts a.c. to d.c. (it is a diode).
- Giving the kW h without the idea of energy transferred.

**Nuclear and space**
- The alpha particle's proton or nucleon numbers and charge (+3.2 × 10⁻¹⁹ C).
- Beta decay is one neutron becoming a proton plus an electron; "mass number changes" is wrong.
- Forgetting to subtract and then re-add the background count.
- Writing just "lead" for stopping gamma; it needs thick lead.
- In v = 2πr/T, defining r as the planet's radius.
- Missing "super" in red supergiant, or "star" in neutron star.
- Converting km to light-years.
- Thinking the Sun sits at the centre of a comet's orbit, or that the Solar System contains many stars.

**Practical (P62)**
- Awkward graph scales (3s or 7s), or points using less than half the grid.
- Forcing the line through the origin.
- Dot-to-dot lines.
- No gradient triangle shown.
- The "equal within limits" judgement given without a calculation.
- Column headings without units (°C written as C or C°).
- Times starting at 30 s instead of 0 s.
- Generic precautions ("repeat and average") instead of ones tied to the apparatus, such as stirring before reading or the thermometer not touching the beaker.
- Not knowing why a reading is taken at the bottom of the meniscus.
- **In plans:**
  - stating predictions instead of how the conclusion is drawn;
  - controlling the very variable being measured (keeping current constant while studying current);
  - a vague control variable ("same size" instead of "same thickness" or "same length between the clips");
  - not using the time given in the question;
  - tables without the quantities actually measured.

---

## 6. Grade thresholds (minimum raw or weighted marks)

### 6a. Variant-2 component thresholds

| Session | P22 /40 (A/C/E) | P42 /80 (A/C/E) | P62 /40 (A/C/E) | P52 /40 (A/C/E) | P12 /40 (C/E) | P32 /80 (C/E) |
|---|---|---|---|---|---|---|
| 2022-MJ | 23/17/13 | 43/19/12 | 25/17/11 | 25/17/12 | 21/16 | 42/27 |
| 2022-ON | 24/19/16 | 42/22/14 | 22/16/12 | 22/16/12 | 22/17 | 48/31 |
| 2023-MJ | 26/17/14 | 45/20/13 | 30/22/15 | 27/20/13 | 22/17 | 41/29 |
| 2023-ON | 28/21/16 | 39/21/14 | 26/18/14 | 26/18/14 | 25/20 | 49/34 |
| 2024-MJ | 25/17/14 | 46/22/15 | 29/21/14 | 25/18/12 | 23/18 | 46/33 |
| 2024-ON | 27/20/16 | 42/23/15 | 31/22/17 | 29/20/16 | 21/16 | 50/32 |
| 2025-MJ | 27/19/15 | 45/21/14 | 31/23/17 | 31/22/16 | 23/18 | 40/26 |
| 2025-ON | 26/20/16 | 46/27/17 | 27/18/13 | 28/21/16 | 23/19 | 55/37 |
| 2026-MJ | 27/19/15 | **49**/23/17 | **32**/23/17 | 31/23/18 | 22/18 | 46/32 |

### 6b. Overall thresholds out of 200, Extended route 22 + 42 + 62 (A\* / A / B / C / D / E)

| Session | A\* | A | B | C | D | E | A\* % | A % | C % |
|---|---|---|---|---|---|---|---|---|---|
| 2022-MJ | 137 | 113 | 89 | 66 | 56 | 46 | 69% | 57% | 33% |
| 2022-ON | 131 | 111 | 91 | 72 | 63 | 54 | 66% | 56% | 36% |
| 2023-MJ | 151 | 125 | 99 | 73 | 62 | 52 | 76% | 63% | 37% |
| 2023-ON | 138 | 117 | 96 | 76 | 66 | 56 | 69% | 59% | 38% |
| 2024-MJ | 149 | 124 | 99 | 74 | 64 | 54 | 75% | 62% | 37% |
| 2024-ON | 146 | 124 | 102 | 81 | 70 | 60 | 73% | 62% | 41% |
| 2025-MJ | 153 | 128 | 103 | 78 | 67 | 57 | 77% | 64% | 39% |
| 2025-ON | 145 | 124 | 103 | 82 | 70 | 58 | 73% | 62% | 41% |
| 2026-MJ | **161** | **134** | 107 | 80 | 70 | 61 | **81%** | **67%** | 40% |

The route with **22 + 42 + 52** is within ±4 marks of these figures. For example, in 2026 it was A\* 160 / A 133 / C 80, and in 2025-ON A\* 145 / A 125 / C 85.

### 6c. Core route 12 + 32 + 62 (capped at C; C / D / E / F / G)

| Session | C | D | E | F | G | C % |
|---|---|---|---|---|---|---|
| 2022-MJ | 101 | 85 | 69 | 54 | 39 | 51% |
| 2022-ON | 109 | 92 | 76 | 60 | 44 | 55% |
| 2023-MJ | 106 | 91 | 77 | 61 | 45 | 53% |
| 2023-ON | 117 | 102 | 87 | 73 | 59 | 59% |
| 2024-MJ | 113 | 97 | 82 | 66 | 50 | 57% |
| 2024-ON | 116 | 98 | 81 | 65 | 49 | 58% |
| 2025-MJ | 108 | 92 | 77 | 60 | 43 | 54% |
| 2025-ON | 121 | 104 | 88 | 73 | 58 | 61% |
| 2026-MJ | 114 | 99 | 84 | 68 | 52 | 57% |

**How to read these:**
- **On the Extended route, an A needs about 62 to 67% overall, and an A\* 73 to 81%.** Both have **risen since 2022**: A\* went from 137 to 161 out of 200.
- **A grade C on the Extended route needs only about 33 to 41%.** But a C on the Core route needs 51 to 61%.
  - So a borderline candidate who expects only about 40% may still be safer on Extended, because Core caps at C.
  - That is an inference from the numbers, not Cambridge guidance.
- **Paper 42 is the hardest component.**
  - A C has needed only 19 to 27 out of 80.
  - An A has needed 39 to 49 out of 80, which is 49–61%.
  - On P22 an A needs 58–70%, and on P62 55–80%.

---

## 7. Core route (P1 / P3): brief note

- **Not tagged item by item.**
- **Same structure as Extended:** P1 is 40 MCQs in 45 minutes, P3 is 80 marks in 1 h 15 min, and Core candidates sit the same P5/P6.
- **Space physics** has appeared in every P12 and P32 since 2023, judging by keyword hits for planets, orbits and galaxies.
- **Logic gates** never appeared on Core papers, even in 2022.
- **Core C thresholds:** P12 needs 21–25 out of 40 for a C, and P32 40–55 out of 80. They are proportionally much higher than the Extended thresholds.
- **Revision for Core candidates:**
  - use the same topic priorities, leaving out the Extended-only items: momentum conservation, pV = constant, the Hubble constant, the kW h, potential dividers and others;
  - put extra weight on recall-style definitions and simple single-step calculations.

---

## 8. Revision priorities for Oct/Nov 2026 and 2027 (Extended)

**Tier 1: appears every session and carries the most marks**
1. **Space physics (about 10–15 marks a session, 8% of theory, rising).**
   - Planet data tables and trends.
   - v = 2πr/T with conversions from days or hours.
   - Energy of a comet in its elliptical orbit.
   - The life cycles of both Sun-like and massive stars, and the forces that keep a stable star stable.
   - Light-year conversions.
   - H₀ = v/d (2.2 × 10⁻¹⁸ s⁻¹), red-shift, CMBR.
   - Pluto is a dwarf planet.
2. **Radioactivity and the nucleus.**
   - Nuclide notation and α/β decay equations; β decay as neutron → proton + electron.
   - Half-life with background subtraction and re-adding.
   - Choosing a source by its type and half-life; tracers; carbon dating.
   - Fission in a power station and the "steam → turbine → generator" sentence.
3. **Circuits.**
   - Series and parallel rules, with the reciprocal.
   - LDR or thermistor potential dividers explained step by step, including relays.
   - Diode and LED behaviour.
   - The filament-lamp I–V curve.
   - R ∝ L/A.
4. **Particle model and gases.**
   - The full momentum → force → pressure chain.
   - Temperature and pressure; pV = constant (watch "change in volume").
   - Absolute zero (–273 °C).
   - Evaporation vs boiling, and evaporative cooling.
5. **Energy and thermal quantities.**
   - E = mcΔθ combined with P = E/t.
   - GPE ↔ KE, efficiency, W = Fd.
   - Kelvin conversions.
6. **Kinematics, forces and momentum.**
   - Area under a graph; acceleration from a **tangent**.
   - Terminal velocity as a sequence of forces.
   - Circular motion.
   - Momentum conservation with directions and combined mass; F = Δp/Δt.
   - Impulse definitions; "bending the knees" explained.
7. **Electromagnetic effects.**
   - Generator parts: slip rings and brushes.
   - Why an e.m.f. is induced, and how to increase it.
   - Transformer equations, including the 100%-efficiency current calculation.
   - Field around a wire; Fleming's left-hand rule.

**Tier 2: regular, worth securing**
- Snell's law, critical angle and n = c/v with 3 s.f.
- Lens ray diagrams and image descriptions; long and short sight corrections.
- v = fλ with prefixes; seismic waves; diffraction.
- Ultrasound and echoes (halve the time).
- EM spectrum uses; the speed 3.0 × 10⁸ m/s; analogue vs digital; optical fibres.
- Thermal transfer explanations: free electrons in metals; black surfaces as good emitters and absorbers; convection currents.
- Density "show that" steps.

**Tier 3: low frequency, quick to learn**
- Pressure p = F/A and ρgh, adding atmospheric pressure.
- Electric field definition and field-line drawings.
- Magnetic field definition and direction.
- The kW h.
- Electrical safety: fuse, double insulation.
- Energy resources: which ones do not come from the Sun.
- Moments definition with "perpendicular distance"; centre of gravity.
- Springs. These are rare in theory but common as a practical experiment.

**Exam technique (P42)**
- Write the formula in syllabus symbols first.
- Keep full precision until the end, and give 2–3 s.f. with a unit.
- Learn the stock definitions word for word. Since 2023 more marks are of the "state/define" type, and the 2026 paper was full of them.
- Answer in the context of the question; restating the stem earns nothing.
- P42 gives 80 marks in 75 minutes, so time is tight. Do not over-write 1-mark parts.

**Practical (P6, 20% of the grade)**
- Drill the template:
  - readings to the stated precision;
  - headings with units;
  - given-formula answers to suitable s.f.;
  - graphs with sensible 1/2/5 scales covering more than half the grid;
  - best-fit lines not forced through the origin;
  - large gradient triangles;
  - "equal within experimental accuracy" backed by a numerical criterion;
  - apparatus-specific precautions.
- **Practise a 7-mark plan every week.** It needs:
  - apparatus;
  - method;
  - **two control variables**;
  - a table of the measured quantities with units;
  - "plot a graph of … to see if …" as the conclusion.
  - Recent themes: cooling water, a ball on a track or falling through oil, and electrical resistance.
- Electricity and mechanics experiments appear in **every** session; thermal and optics in 8 of 9.

---

## 9. Comparison with O Level Physics (5054)

Based on `5054-physics.md` (same nine sessions; 5054 used variant 1, 0625 here uses variant 2).

| | **IGCSE 0625 (Extended)** | **O Level 5054** |
|---|---|---|
| Papers | P2 MCQ 40 marks / **45 min**; P4 theory 80 / **1 h 15**; P5 or P6 40 / 1 h 15 or 1 h | P1 MCQ 40 / 1 h; P2 theory 80 / **1 h 45**; P3 or P4 40 / 1 h 30 or 1 h |
| Weighting | 30 / 50 / 20, weighted to 200 | Same 30 / 50 / 20, weighted to 200 |
| Tiers | Core (C max) and Extended (A\*–G) | Single tier |
| Structural change in 2023 | **None.** Content changed only: space added, logic gates and thermocouples removed, g = 9.8. | Large: P2 lost Section B choice and grew to 80 marks; P3/P4 grew from 30 to 40 marks |
| Practical | 3 × about 11-mark experiments plus a **7-mark plan**; P5 and P6 share experiments | 10 / 10 / 14 / **6-mark plan**; P3 and P4 share experiments |
| Topic shares, MCQ + theory | Mechanics 29.2%, E&M 21.9%, Waves 16.5%, Thermal 14.2%, Nuclear 10.1%, Space 8.2% | Mechanics 31.1%, E&M 22.5%, Waves 16.6%, Thermal 12.8%, Nuclear 10.4%, Space 6.6% |
| Space since 2023 | 10.6% of theory marks; 8–12 marks on every P42 | about 8.6%; 7–10 marks, usually the last P2 question |
| A / A\* (2026) | A 134 (67%), A\* 161 (81%) | A 132 (66%), A\* 163 (82%) |
| C (2026) | 80 (40%) on Extended | 70 (35%) |

**Similarities**
- Almost the same topic balance and the same bankers: energy chains, particle-model pressure, radioactivity with background correction, space as the closing question, circuits with LDR or thermistor, and electromagnetic induction.
- The same examiner complaints: units, s.f., angles from the normal, combined mass in collisions, background correction, vague practical precautions and weak plans.

**Differences that matter**
- **Time pressure.** 0625 gives 80 theory marks in 75 minutes, against 105 minutes in 5054. 0625 MCQs also get less time (45 vs 60 minutes).
- **Electricity balance.** 0625's P42 electricity share fell much more sharply after 2022 (32% → 18%) than 5054's.
- **Planning question.** 0625's is worth 7 marks against 6, and has been on the paper since before 2023. 5054 introduced its plan only in 2023.
- **Graph work in the theory paper.** 0625 now uses tangent-to-curve acceleration in theory papers; 5054 tends to ask for a gradient from a straight line or momentum against time.
- **Grade C.** An Extended C in 0625 needs a higher share (about 40%) than a 5054 C (about 35%). But an 0625 candidate may choose the Core tier instead, which caps at C.
- **Overlap.** The content overlap is large, so a candidate preparing for both can use one revision plan. The extra practice needed is speed on the 0625 theory paper.
