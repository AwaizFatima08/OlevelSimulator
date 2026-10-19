# Cambridge International AS & A Level Physics (9702): topic-frequency analysis, 2022 to June 2026

Compiled 19 Oct 2026 from local past papers only (`papers/a-level/physics-9702/`, nine sessions from May/June 2022 to May/June 2026). Question data: `9702-questions.csv` in this folder (1,236 rows).

**Method**
- Each PDF was converted with `pdftotext -layout`. Part labels and `[n]` mark brackets were extracted by script and checked against each question's `[Total: n]` line and each paper's cover total.
- **Variant 2, all nine sessions:**
  - Paper 12: all 40 MCQs.
  - Papers 22, 42 and 52: every question part.
  - Each item or part was tagged by hand with one syllabus topic, one subtopic and its marks.
- **Paper 3:** variant 33 was tagged for 2023-MJ, 2025-MJ and 2026-MJ. The experiments of all 97 Paper 3 questions across the nine sessions were also listed.
- **Mark check:** every one of the 39 tagged papers adds up to its cover total (P1 = 40, P2 = 60, P3 = 40, P4 = 100, P5 = 30).
- **Examiner reports** are only available for 2022-MJ, 2022-ON and 2023-MJ. Their comments on 12, 22, 42, 52 and 33 are summarised in §7.
- **Sessions** are written as `YYYY-MJ` (May/June) and `YYYY-ON` (Oct/Nov).

Caveats:
- Each part is filed under its main physics. Momentum or kinetic-energy steps inside a particle-physics question count as Dynamics or Work–energy, and a thermistor in a potential divider counts as D.C. circuits.
- MCQ diagrams are lost in the text conversion, so some P1 items were classified from their wording and options.
- **P5 and P3 parts** are tagged as *Practical skills* by skill. The physics context of each experiment is listed in §5.
- The 2026 files are watermarked downloads from a third-party site, with long file names. Their content and layout match Cambridge papers. No 2026 examiner report is available.
- **Command-word statistics (§6) are keyword-based.** Expect a few parts to be miscounted.
- All percentages describe this sample (one variant per session). They are not official weightings.

---

## 1. Syllabus, topic list and paper structure

### 1a. Which syllabus

- **First examined in 2022.** These papers belong to the 9702 syllabus published as the 2022–2024 version, then the 2025–2027 version.
- **Topic numbering:** 1–11 are AS Level and 12–25 are A Level.
- **The current syllabus is not in the local folder.** The changes below are inferred from the papers.

**Evidence of the 2022 revision in the papers**
- **Astronomy & cosmology (25)** is examined in 8 of 9 Paper 42s:
  - Hubble's law, redshift, standard candles, and Wien's and Stefan's laws;
  - it was absent only in 2025-MJ.
- **Particle physics (11)** at AS (quarks, leptons, hadrons, β± decay with (anti)neutrinos) is in every P1 and every P2.
- **Uniform electric fields** never appear in P1/P2. In P4 they appear as A Level topic 18 (2023-ON, 2025-MJ).
- **No electronics (op-amps) or communication (modulation) content** appears in any paper from 2022 to 2026. The keyword search found zero hits.

**From 2022–24 to 2025–26, no content change is visible:**
- The Data and Formulae sheets on P2 and P4 are identical from 2022-MJ to 2026-MJ. P4 has 25 formulae, from uniformly accelerated motion to Doppler redshift.
- The same topic set appears.
- Question shapes are unchanged.

**The visible change is administrative (§1c):** a fourth time-zone variant, plus two extra Paper 3 codes.

### 1b. Topics and subtopics used for tagging

| # | Topic | Subtopics used in the CSV |
|---|---|---|
| 1 | Physical quantities & units | SI units & homogeneity · Estimates & prefixes · Errors & uncertainties · Scalars & vectors |
| 2 | Kinematics | Equations of motion & motion graphs · Projectile motion |
| 3 | Dynamics | Newton's laws, mass & weight · Drag, non-uniform motion & terminal velocity · Momentum, impulse & collisions |
| 4 | Forces, density & pressure | Turning effects, couples & equilibrium · Density, pressure & upthrust |
| 5 | Work, energy & power | Work & energy conservation (KE, GPE) · Power & efficiency |
| 6 | Deformation of solids | Stress, strain & Young modulus · Hooke's law, elastic/plastic behaviour & strain energy |
| 7 | Waves | Progressive waves (phase, intensity, CRO) · Transverse & longitudinal · Doppler effect · EM spectrum · Polarisation (Malus) |
| 8 | Superposition | Superposition principle & stationary waves · Diffraction · Interference & coherence (two-source/double slit) · Diffraction grating |
| 9 | Electricity | Current, charge & drift speed (I = Anvq) · Potential difference & power · Resistance, resistivity & I–V characteristics |
| 10 | D.C. circuits | Kirchhoff's laws, series & parallel · Potential dividers & sensors (incl. potentiometer) · E.m.f. & internal resistance |
| 11 | Particle physics | Atoms, nuclei & radiation (α/β/γ, decay equations, α-scattering) · Fundamental particles (quarks, leptons, hadrons) |
| 12 | Motion in a circle | Kinematics of circular motion (radian, ω) · Centripetal acceleration & force |
| 13 | Gravitational fields | Field & Newton's law of gravitation · Gravitational potential & PE · Orbits & geostationary satellites |
| 14 | Temperature | Thermal equilibrium & temperature scales · Specific heat capacity & specific latent heat |
| 15 | Ideal gases | Equation of state (pV = nRT = NkT, mole) · Kinetic theory of gases |
| 16 | Thermodynamics | Internal energy & first law |
| 17 | Oscillations | Simple harmonic motion · Damping & resonance |
| 18 | Electric fields | Uniform fields & charged particles · Coulomb's law & point-charge fields · Electric potential & PE |
| 19 | Capacitance | Capacitors, combinations & energy stored · Discharge (time constant) |
| 20 | Magnetic fields | Fields & force on a current-carrying conductor (incl. solenoids, parallel wires) · Force on a moving charge (Hall effect, velocity selection) · Electromagnetic induction (Faraday, Lenz) |
| 21 | Alternating currents | Alternating current & r.m.s. values · Rectification & smoothing |
| 22 | Quantum physics | Photons & photoelectric effect · Wave–particle duality & de Broglie · Energy levels & line spectra |
| 23 | Nuclear physics | Mass defect & binding energy (fission/fusion) · Radioactive decay (activity, λ, half-life) |
| 24 | Medical physics | Ultrasound & acoustic impedance · X-rays, attenuation & CT · PET scanning |
| 25 | Astronomy & cosmology | Standard candles, luminosity & radiant flux · Stellar radii (Wien, Stefan–Boltzmann) · Redshift, Hubble's law & Big Bang |
| P | Practical skills (P3, P5) | P5: Planning · gradient/intercept expressions · data processing & uncertainties · graph, error bars & worst line · gradient/intercept with uncertainty · deriving constants & predictions. P3: Measurement & recording · uncertainty estimates & s.f. · results table · graph · gradient & intercept · calculating constants · conclusion (testing a relationship) · limitations · improvements |

### 1c. Components, from the cover pages

The cover pages are **identical from 2022 to 2026**: same durations, same mark totals, all questions compulsory.

| Component | Level | Duration | Marks | Weight* | Format (variant 2) |
|---|---|---|---|---|---|
| **P1 Multiple Choice** | AS | 1 h 15 min | 40 | 31% AS / 15.5% A | 40 four-option MCQs, in syllabus order (topic 1 first, particle physics last) |
| **P2 AS Level Structured Questions** | AS | 1 h 15 min | 60 | 46% AS / 23% A | 6–8 structured questions of 3–13 marks (7 in most sessions, 6 in 2024-ON, 2025-ON and 2026-MJ) |
| **P3 Advanced Practical Skills** | AS | 2 h | 40 | 23% AS / 11.5% A | 2 experiments of 20 marks, at most 1 h with apparatus each |
| **P4 A Level Structured Questions** | A2 | 2 h | 100 | 36% A | **always 10 questions** of 7–14 marks |
| **P5 Planning, Analysis & Evaluation** | A2 | 1 h 15 min | 30 | 14% A | Q1 a 15-mark plan, then Q2 a 15-mark data analysis |

\*Weights are inferred from the grade-threshold files.
- **AS** is weighted to 130 marks: P1 40 + P2 60 + P3 × 0.75.
- **Full A Level** is weighted to 260 marks: P1 + P2 + 0.75 × P3 + ≈0.94 × P4 + ≈1.21 × P5.
- **Check (2026-MJ, route 12-22-33-42-52):**
  - A Level: the component A thresholds give 30 + 40 + 0.75 × 33 + 0.936 × 62 + 1.213 × 20 = 177.1, which matches the published A of 177.
  - AS: 30 + 40 + 24.75 = 94.75, which matches the published A of 95.

**Paper 3 sessions and variants**
- Variants 31–35 (May/June) and 31, 33–36 (Oct/Nov) are different laboratory sessions with different experiments.
- Paper 3 is titled "Advanced Practical Skills 1" for 31/33/35/37 and "…2" for the others.

**New from 2025: a fourth variant (x4) of every written paper, plus Paper 3 codes 37 and 38**
- **The x4 papers are new papers, not copies.** Text similarity with variants 1–3 is only 0.23–0.59, which is front-page boilerplate level. Cover, duration and marks are the same.
- **37 and 38 reuse an existing practical** from the same session:
  - in May/June 2025 and 2026, 37 = 33 and 38 = 34 (similarity 0.98–0.99);
  - in Oct/Nov 2025, 37 = 35 and 38 = 36 (same experiments).
- **The option codes show how they combine:**
  - From 2022–24 the codes had a first letter for the practical slot (**A** = 33-type, **H** = 34-type) and a second letter for the written variant (**X** = 1, **Y** = 2, **Z** = 3).
  - From 2025 a second letter **C** = variant 4 appears: options **AC** (14, 24, 37, 44, 54) and **HC** (14, 24, 38, 44, 54), plus AS options **SA** (14, 24, 37) and **SB** (14, 24, 38).
- **Inference:** variant 4 is a new administrative or time-zone variant with its own written papers. Its candidates do the same practical as a 33/34 (or 35/36) centre, under a separate code.
- **Its thresholds differ:**
  - 2025-MJ: lower than variant 2 (AS A 92 vs 97);
  - 2025-ON and 2026-MJ: higher (AS A 100 vs 98, and 104 vs 95).
- Mixed options (e.g. **2W** = 12, 22, 33, 41, 52) also appear in 2025-MJ.

---

## 2. Topic weights per component (marks; variant 2)

### 2a. Paper 1 (MCQ, 40 marks × 9 = 360)

| Topic | 22-MJ | 22-ON | 23-MJ | 23-ON | 24-MJ | 24-ON | 25-MJ | 25-ON | 26-MJ | Total | % |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 Physical quantities & units | 4 | 4 | 4 | 3 | 3 | 3 | 4 | 4 | 4 | 33 | 9.2 |
| 2 Kinematics | 2 | 3 | 2 | 2 | 3 | 3 | 3 | 3 | 3 | 24 | 6.7 |
| 3 Dynamics | 4 | 4 | 4 | 4 | 4 | 4 | 6 | 5 | 4 | 39 | 10.8 |
| 4 Forces, density & pressure | 5 | 5 | 4 | 5 | 3 | 4 | 4 | 4 | 5 | 39 | 10.8 |
| 5 Work, energy & power | 3 | 3 | 3 | 3 | 4 | 4 | 3 | 4 | 2 | 29 | 8.1 |
| 6 Deformation of solids | 2 | 2 | 2 | 2 | 3 | 4 | 3 | 3 | 3 | 24 | 6.7 |
| 7 Waves | 6 | 4 | 5 | 5 | 3 | 5 | 4 | 4 | 4 | 40 | 11.1 |
| 8 Superposition | 4 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 4 | 40 | 11.1 |
| 9 Electricity | 4 | 3 | 5 | 3 | 5 | 3 | 3 | 2 | 4 | 32 | 8.9 |
| 10 D.C. circuits | 3 | 4 | 3 | 5 | 3 | 3 | 3 | 4 | 4 | 32 | 8.9 |
| 11 Particle physics | 3 | 3 | 3 | 3 | 4 | 3 | 3 | 3 | 3 | 28 | 7.8 |

**P1 is almost a fixed template.**
- Every topic gets 2–6 items in every session.
- Items run in syllabus order: Q1–4 cover units and uncertainty, Q38–40 particle physics.
- **Typical paper:**

  | Topics | Items |
  |---|---|
  | Physical quantities & units | 3–4 |
  | Kinematics | 2–3 |
  | Dynamics | 4–5 |
  | Forces & pressure | 4–5 |
  | Work, energy & power | 3–4 |
  | Deformation | 2–3 |
  | Waves | 4–5 |
  | Superposition | 4–5 |
  | Electricity + D.C. circuits | 6–8 |
  | Particle physics | 3 |

- **Items appearing in all nine sessions:**
  - a Doppler-effect item;
  - a diffraction-grating item;
  - a drag or terminal-velocity item;
  - a Kirchhoff item (often "which quantity is conserved");
  - an errors and uncertainty item;
  - a couple or moment item.
- **Recycled items:**
  - 2026-MJ Q12, Q31 and Q36 are near-identical to 2022-MJ Q7 (Newton's third-law pairs), Q31 (Hall-type metal block, I = Anvq) and Q36 (Kirchhoff conservation).
  - 2025-ON Q17 and Q36 repeat 2022-MJ Q18 (deriving KE) and Q37 (potentiometer).
  - Old P1 papers are worth doing in full.

### 2b. Paper 2 (AS structured, 60 marks × 9 = 540)

| Topic | 22-MJ | 22-ON | 23-MJ | 23-ON | 24-MJ | 24-ON | 25-MJ | 25-ON | 26-MJ | Total | % |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 Physical quantities & units | 5 | 6 | 5 | 1 | 3 | 4 | 2 | 4 | 4 | 34 | 6.3 |
| 2 Kinematics | 10 | 4 | 2 | 8 | 2 | 2 | 0 | 0 | 9 | 37 | 6.9 |
| 3 Dynamics | 7 | 6 | 7 | 12 | 8 | 7 | 5 | 12 | 4 | 68 | 12.6 |
| 4 Forces, density & pressure | 5 | 9 | 6 | 2 | 3 | 7 | 8 | 10 | 6 | 56 | 10.4 |
| 5 Work, energy & power | 3 | 3 | 8 | 6 | 10 | 7 | 11 | 3 | 13 | 64 | 11.9 |
| 6 Deformation of solids | 3 | 5 | 5 | 4 | 5 | 7 | 7 | 6 | 2 | 44 | 8.1 |
| 7 Waves | 0 | 4 | 5 | 4 | 4 | 2 | 5 | 0 | 2 | 26 | 4.8 |
| 8 Superposition | 11 | 6 | 4 | 6 | 5 | 6 | 3 | 8 | 5 | 54 | 10.0 |
| 9 Electricity | 0 | 4 | 5 | 7 | 8 | 5 | 3 | 2 | 5 | 39 | 7.2 |
| 10 D.C. circuits | 9 | 6 | 7 | 5 | 9 | 7 | 7 | 9 | 7 | 66 | 12.2 |
| 11 Particle physics | 7 | 7 | 6 | 5 | 3 | 6 | 9 | 6 | 3 | 52 | 9.6 |

**The usual P2 running order:**
1. A units, uncertainty or vector opener of 7–11 marks, often merged with mechanics.
2. Two or three mechanics questions: kinematics, dynamics, forces and energy, often in one context such as a balloon, skydiver, spring launcher or sphere in a river.
3. A materials or energy question.
4. A waves or superposition question.
5. A D.C. circuits question.
6. **Always last:** a particle-physics question of 3–9 marks.

**Combined AS weight (P1 + P2 = 900 marks):**

| Topic | Marks | Share |
|---|---|---|
| Dynamics | 107 | 11.9% |
| D.C. circuits | 98 | 10.9% |
| Forces, density & pressure | 95 | 10.6% |
| Superposition | 94 | 10.4% |
| Work, energy & power | 93 | 10.3% |
| Particle physics | 80 | 8.9% |
| Electricity | 71 | 7.9% |
| Deformation of solids | 68 | 7.6% |
| Physical quantities & units | 67 | 7.4% |
| Waves | 66 | 7.3% |
| Kinematics | 61 | 6.8% |

### 2c. Paper 4 (A Level structured, 100 marks × 9 = 900)

| Topic | 22-MJ | 22-ON | 23-MJ | 23-ON | 24-MJ | 24-ON | 25-MJ | 25-ON | 26-MJ | Total | % |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 12 Motion in a circle | 3 | 5 | 0 | 10 | 10 | 5 | 10 | 9 | 10 | 62 | 6.9 |
| 13 Gravitational fields | 10 | 5 | 11 | 8 | 0 | 5 | 6 | 4 | 9 | 58 | 6.4 |
| 14 Temperature | 3 | 3 | 1 | 0 | 1 | 9 | 5 | 9 | 7 | 38 | 4.2 |
| 15 Ideal gases | 3 | 10 | 11 | 4 | 9 | 9 | 8 | 10 | 10 | 74 | 8.2 |
| 16 Thermodynamics | 6 | 4 | 9 | 8 | 8 | 2 | 8 | 7 | 7 | 59 | 6.6 |
| 17 Oscillations | 8 | 10 | 11 | 4 | 9 | 9 | 9 | 10 | 8 | 78 | 8.7 |
| 18 Electric fields | 6 | 10 | 0 | 11 | 7 | 10 | 5 | 9 | 8 | 66 | 7.3 |
| 19 Capacitance | 11 | 10 | 9 | 9 | 10 | 10 | 10 | 2 | 5 | 76 | 8.4 |
| 20 Magnetic fields | 20 | 18 | 10 | 11 | 14 | 8 | 6 | 0 | 8 | 95 | 10.6 |
| 21 Alternating currents | 0 | 3 | 10 | 5 | 0 | 9 | 10 | 8 | 7 | 52 | 5.8 |
| 22 Quantum physics | 8 | 6 | 8 | 8 | 4 | 9 | 8 | 10 | 10 | 71 | 7.9 |
| 23 Nuclear physics | 11 | 0 | 9 | 8 | 13 | 8 | 9 | 6 | 9 | 73 | 8.1 |
| 24 Medical physics | 4 | 9 | 9 | 4 | 7 | 0 | 6 | 9 | 0 | 48 | 5.3 |
| 25 Astronomy & cosmology | 7 | 7 | 2 | 8 | 8 | 7 | 0 | 7 | 2 | 48 | 5.3 |
| 9 Electricity (drift speed inside an a.c. question) | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 2 | 0.2 |

**P4 has a fixed 10-question skeleton**, with only small swaps:

| Question | Content |
|---|---|
| Q1 | Circular motion or gravitation |
| Q2–Q4 | Thermal physics: temperature, ideal gases, first law. Together **≈19% of P4** (171 marks). |
| Q5 | Oscillations (SHM) |
| Q6–Q7 | Fields and capacitance: electric field, capacitor, magnetic force or induction |
| Q8 | Alternating currents or more magnetism |
| Q9 | Quantum physics |
| Q10 | Nuclear physics, medical physics or astronomy, often two of these combined |

- **Fields (gravitational, electric and magnetic together):** 219 marks, 24% of P4.
- **AS content is not examined as stand-alone parts in P4.** It is used inside A Level questions, e.g. I = nAvq in 2023-ON Q4 and momentum in the force-on-wall derivation in 2026-MJ Q4.

### 2d. Paper 5 (30 marks × 9 = 270)

| Skill | Marks per paper | Share |
|---|---|---|
| Planning an investigation (Q1, a single 15-mark answer) | 15 | 50% |
| Analysis: expressions for gradient and intercept | 1 | 3% |
| Analysis: processing data with absolute uncertainties (table values, means) | 2–3 | 7% |
| Analysis: graph with error bars, best-fit and worst lines | 4 | 13% |
| Analysis: gradient (and y-intercept) with uncertainty | 2–4 | 12% |
| Analysis: constants with units and uncertainty, % uncertainty, prediction | 4–5 | 14% |

**P5 is the most predictable paper in the qualification.** Q2 has had the same part structure in every session:
1. (a) the gradient (and intercept) expression;
2. (b) table values with absolute uncertainties, often in log or reciprocal form;
3. (c)(i)–(iv) plot with error bars, draw best and worst lines, then find the gradient and intercept with uncertainties;
4. (d) the constants with uncertainties;
5. (e) or (f) a prediction.

**Only one variation:** 2022-ON and 2026-MJ swap the intercept for "mean of repeated readings ± half the range".

### 2e. Paper 3 (variant 33; 40 marks)

| Skill (marks) | 2023-MJ | 2025-MJ | 2026-MJ |
|---|---|---|---|
| Measurement & recording | 8 | 9 | 10 |
| Uncertainty estimates & s.f. justification | 2 | 2 | 2 |
| Results table (Q1(c)) | 9 | 9 | 7 |
| Graph plotting & best-fit line | 4 | 5 | 4 |
| Gradient & y-intercept | 2 | 2 | 2 |
| Calculating constants (incl. two values of k) | 5 | 3 | 5 |
| Conclusion: does the data support the relationship? | 1 | 1 | 1 |
| Limitations (4) + improvements (4) | 8 | 8 | 8 |
| **Total** | 40 | 40 | 40 |

---

## 3. Bankers (examined in every session, or nearly every session)

### AS (P1 + P2)

- **Momentum & collisions:** 9/9 sessions in both P1 and P2, 60 marks in all.
  - Conservation in 1D and 2D (components);
  - elastic vs inelastic using KE;
  - impulse = change of momentum, with average force.
- **Work–energy:** 9/9 in both, 64 marks.
  - KE ↔ GPE ↔ work against friction;
  - "use the concept of work to show EK = ½mv²";
  - power and efficiency.
- **Moments & equilibrium:** P1 9/9, P2 8/9.
  - Principle of moments with a hinged beam, wire and angle;
  - centre-of-gravity definition;
  - couples;
  - vector triangle of forces.
- **Hooke's law & strain energy:** 9/9 in both.
  - Spring constant from a graph;
  - EPE = ½kx² or the area under the graph;
  - springs in series or parallel.
- **Kirchhoff, series and parallel circuits:** 9/9 in P1, 8/9 in P2.
  - Potential dividers with a thermistor, LDR or potentiometer: 25 P2 marks in 5 sessions.
  - Qualitative "state and explain the effect" parts are almost guaranteed.
- **Particle physics:** every P1 (3–4 items) and every P2.
  - Quark compositions and charges;
  - meson vs baryon;
  - β± decay equations with (anti)neutrino;
  - α/β changes to proton and nucleon numbers.
- **Superposition:** every P1 has 4–5 items, every P2 has a question of 3–11 marks.
  - Stationary waves in tubes or strings (λ from node spacing, closed-tube λ_max = 4L);
  - double slit (λ = ax/D);
  - diffraction grating (d sin θ = nλ, maximum order);
  - coherence.
- **Uncertainties:** P1 9/9; P2 6/9, plus SI base units of a derived quantity in 7/9.
  - Combining % uncertainties (powers);
  - stating a value ± its absolute uncertainty to the right s.f.

### A Level (P4)

- **SHM:** 9/9 sessions, 71 marks.
  - ω from a graph;
  - v = ±ω√(x₀² − x²);
  - E = ½mω²x₀²;
  - a–x and KE–x sketches;
  - writing x = x₀ sin ωt.
- **First law and internal energy:** 9/9, 59 marks.
  - Signs of work on or by a gas;
  - internal energy of a stretched wire or evaporating water;
  - p–V cycles.
- **Ideal gases:** 9/9, 74 marks.
  - pV = nRT / NkT;
  - c_rms;
  - assumptions of kinetic theory;
  - derivations: ⟨EK⟩ = (3/2)kT, and pV = ⅓Nm⟨c²⟩ from one particle in a box (2026-MJ).
- **Capacitance:** 9/9, 76 marks. Energy ½QV, capacitors in series or parallel, discharge and time constant, charge sharing.
- **Quantum physics:** 9/9, 71 marks.
  - Photoelectric effect;
  - de Broglie wavelength (λ = h/p, p = √(2mqV));
  - energy-level transitions;
  - "evidence for wave and particle nature" tables.
- **Electric fields:** 8/9 (missing 2023-MJ).
  - Coulomb's law;
  - potential of a sphere, V = Q/4πε₀r;
  - field-line drawing;
  - the isolated sphere as a capacitor (2025-ON, 2026-MJ).
- **Circular motion:** 8/9.
  - Radian definition: 3 sessions;
  - ω, centripetal acceleration;
  - "which forces provide the centripetal force".
- **Gravitational fields:** 8/9.
  - Newton's law of gravitation statement;
  - φ = −GM/r and PE = −GMm/r;
  - escape speed;
  - orbits, T² ∝ r³ derivation, geostationary orbits.
- **Nuclear physics:** 8/9.
  - Mass defect and binding energy per nucleon with the BE/A curve;
  - fission vs fusion;
  - decay constant and half-life.
- **Magnetic fields:** 8/9, the highest-weighted P4 topic.
  - Force on a conductor;
  - Hall effect and Hall probe;
  - Faraday and Lenz laws (definitions in 4 sessions);
  - flux-linkage graphs.
- **Definitions asked most often (P2 + P4):**

  | Definition | Sessions |
  |---|---|
  | Coulomb's law | 3 |
  | Specific heat capacity | 3 |
  | Electric potential at a point | 3 |
  | Radian | 3 |
  | Gravitational potential | 2 |
  | Gravitational field | 2 |
  | Faraday's law | 2 |
  | Lenz's law | 2 |
  | Newton's law of gravitation | 2 |
  | First law of thermodynamics | 2 |
  | Internal energy | 2 |
  | Thermal equilibrium | 2 |
  | Binding energy | 2 |
  | Conservation of momentum | 2 |
  | Centre of gravity | 2 |
  | Fundamental particle | 2 |
  | Electric potential difference | 3 (P2) |

### P5

- Every Q2 needs the full chain: logarithmic or reciprocal processing, error bars, a worst acceptable line, gradient and intercept uncertainty, constants with units, and a prediction.
- Q1 is always a 15-mark plan built on a given relationship ("It is suggested that…"). The answer must cover:
  - which graph to plot;
  - how each quantity is measured;
  - control variables;
  - the analysis (constants from the gradient or intercept);
  - safety;
  - extra detail.

---

## 4. Rarely tested, and trends

### Rarely tested in this sample (variant 2)

| Paper | Subtopics |
|---|---|
| P2 | **Projectile motion**: 2 marks (2023-MJ only); 3 P1 items. **Diffraction** as a concept: 1 part. **EM spectrum**: 1 mark. **Transverse vs longitudinal**: 2 sessions. **E.m.f. & internal resistance**: 2 sessions (but 6 P1 items). **Diffraction grating**: 2 sessions (but in every P1). |
| P4 | **Ultrasound and acoustic impedance**: 7 marks, 2024-MJ only, although other variants use it. **Damping and resonance**: 2 sessions. **Orbits and geostationary satellites**: 2 sessions. **Uniform electric fields**: 2 sessions. **Hall effect / force on a moving charge**: 2 sessions. **Photoelectric effect**: 3 sessions. **Standard candles**: 3 sessions. **PET**: 3 sessions (none since 2023-ON in variant 2). |

### Trends from 2022 to 2026

- **P2 has fewer, bigger questions:**
  - 7–8 questions up to 2024-MJ, then 6 in three of the last four sessions;
  - mark-weighted calculations stay around 55–60%.
- **P2 Kinematics comes and goes:**
  - 10 marks in 2022-MJ, 8 in 2023-ON and 9 in 2026-MJ;
  - none in either 2025 session, where energy and momentum took its place;
  - it is always one P1 block.
- **P2 polarisation (Malus's law)** was in 3 consecutive sessions (2022-ON to 2023-ON) and has not been seen since. **Interference** came back in 2025-ON and 2026-MJ.
- **P4 electromagnetic induction is missing from the last three variant-2 papers** (2025-MJ, 2025-ON, 2026-MJ). In 2022–24 it was 7–14 marks in every session.
  - Magnetism in those papers shifted to Hall-probe and force-on-charge work (2026-MJ) or field-line pictures (2025-MJ).
  - Faraday and Lenz still appear in other 2025 variants, so this is a sampling gap, not a syllabus change.
  - Expect induction to return.
- **P4 a.c. and rectification are on the rise:**
  - 0–5 marks per session from 2022-MJ to 2024-MJ, apart from 10 in 2023-MJ;
  - 7–10 marks in each session since 2024-ON.
- **P4 capacitance has dipped:** 2 and 5 marks in 2025-ON and 2026-MJ, after 9–11 in each of the seven sessions before. Electric fields took the slot, and the two are combined in one question (isolated-sphere capacitance).
- **P4 thermal physics has grown:**
  - Temperature questions (thermal equilibrium, specific heat or latent heat via the first law) give 5–9 marks in each session since 2024-ON, up from 0–3 before.
  - A recurring pattern: work done by a gas expanding at atmospheric pressure, then ΔU = Q + W, then c or L.
- **P4 Q10 rotates through nuclear, medical and astronomy:**
  - medical physics is absent in 2024-ON and 2026-MJ;
  - astronomy is absent in 2025-MJ.
  - Prepare all three.
- **P5 contexts lean towards electricity and fields** (§5).
- **Thresholds were low in 2022, then normal from 2023:**
  - the 2022 thresholds were very low (A Level A\* 187–190);
  - 2023–24 were the highest (A\* up to 215 in 2024-ON);
  - 2025–26 settled at about 201–203 (§8).

---

## 5. Practical papers: experiment types

### P5 contexts (variant 2)

| Session | Q1 planning context | Q2 analysis context |
|---|---|---|
| 2022-MJ | current and force between two parallel cylindrical conductors (magnetic fields) | Cepheid variable stars, lg L vs lg T (astronomy) |
| 2022-ON | copper sheet swinging through a magnetic field, eddy-current damping (induction) | stationary waves in a tube, f vs n (superposition) |
| 2023-MJ | mutual induction between two coils, e.m.f. vs resistance (induction) | gas volume vs temperature (ideal gases) |
| 2023-ON | two beakers linked by a string, motion vs volume (dynamics) | capacitor discharge, ln V vs 1/C (capacitance) |
| 2024-MJ | magnet on a spring, distance–time behaviour (magnetic damping) | resonance of a metal rod, lg T vs lg L (oscillations/stationary waves) |
| 2024-ON | heating coil of resistance wire, Δθ vs L (electrical heating/thermal) | refraction of white light, d² vs 1/sin²θ (waves) |
| 2025-MJ | rotating thin disc, v vs m (energy/rotation) | capacitors in a network, 1/V vs n (capacitance) |
| 2025-ON | model wind turbine, current vs wind speed (power/induction) | orbits of Saturn's moons, lg T vs lg r (gravitational fields) |
| 2026-MJ | capacitor with a reed switch, current vs separation (capacitance) | bifilar-suspended rod, T² vs 1/L² (oscillations) |

**Planning contexts:** 7 of 9 are electrical or electromagnetic (magnetism, induction, capacitors, heating). Expect a circuit diagram to be needed.

### P3 variant 33 (tagged)

| Session | Q1 (graph experiment, 20 marks) | Q2 (two-reading "k" experiment, 20 marks) |
|---|---|---|
| 2023-MJ | pendulum motion: T³ vs L² | equilibrium of a card hung from a hole (centre of mass) |
| 2025-MJ | electrical circuit with a resistance wire: (E − V)/L vs V | oscillations of modelling-clay spheres on a hook and chain |
| 2026-MJ | pendulum bob on strings of different lengths: T² vs L, then g | stability of a wooden block (tipping angle) |

The structure is identical in all three:
- **Q1:** a few raw readings, then a six- (or five-) row results table worth 7–9 marks. Then a graph, gradient and intercept, and constants with units.
- **Q2:**
  1. measure a few quantities;
  2. estimate one percentage uncertainty;
  3. justify the s.f.;
  4. repeat with a second setting;
  5. calculate two k values;
  6. test them against a stated % criterion;
  7. give 4 limitations and 4 improvements (8 marks).

### All 97 Paper 3 questions, 2022–2026 (every variant, classified from the opening sentence; approximate)

| Experiment type | Questions |
|---|---|
| Oscillations: pendulums (simple, conical, compound), mass–spring systems, oscillating strips, rods, cards, a chain of paper clips | 30 |
| Equilibrium and moments: balanced metre rule, rods, pulley systems, block or cylinder stability, tension in a string | 24 |
| Electrical circuits: resistance wire, LDR (incl. with an LED), parallel wires, temperature effect | 16 |
| Motion, collisions and fluids: rolling sphere or bottle, falling balls in water, water jets and nozzles, momentum | 14 |
| Materials and thermal: rubber bands and cord, paper cylinders, thermal expansion of plastic | 6 |
| Optics: transparent block, glass jars | 2 |
| Other: force on a magnet, flywheel, water force on a wire loop, suspended cardboard sheets | 5 |

---

## 6. Question styles (P2 and P4, by command word, marks)

| Style | P2 marks | P2 % | P4 marks | P4 % |
|---|---|---|---|---|
| Calculation (calculate / determine) | 318 | 58.9 | 314 | 34.9 |
| Explain / describe / suggest / compare (incl. "state and explain") | 72 | 13.3 | 166 | 18.4 |
| Sketch / draw / complete diagram or table | 46 | 8.5 | 145 | 16.1 |
| Definition / statement of a law or principle | 40 | 7.4 | 130 | 14.4 |
| "Show that" / derive / expression in terms of symbols | 33 | 6.1 | 110 | 12.2 |
| Short statement (state / identify / name) | 31 | 5.7 | 35 | 3.9 |

### P2: a calculation paper with short "state and explain" endings

- **Opening part:** typically a definition or SI base-unit derivation worth 1–2 marks.
- **Middle parts:** 2–3-mark calculations.
- **A qualitative circuit part:** "state and explain the effect on the p.d. / current".
- **Sketch graphs:** v–t, momentum–t, KE–x, stationary-wave shape. These rose from 3 marks in 2022-MJ to 8 in 2026-MJ.

### P4 is much more verbal and graphical

- About 14% definitions.
- About 16% sketches (13–21 marks per paper), with recurring shapes:

  | Sketch | Shape |
  |---|---|
  | a–x and v–x for SHM | — |
  | KE–x | parabola |
  | c_rms–T | √T curve |
  | Induced e.m.f.–t | gradient of the flux graph |
  | P–t for rectified a.c. | — |
  | λ–v for de Broglie | hyperbola |
  | N–t and A–N for decay | — |
  | BE per nucleon vs A | — |
  | V–x for a charged sphere | — |

- About 12% "show that" or symbolic derivations. Examples:
  - T² ∝ r³ for an orbit;
  - ⟨EK⟩ = (3/2)kT;
  - pV = ⅓Nm⟨c²⟩ from momentum change;
  - C_T for series or parallel capacitors;
  - charge sharing;
  - escape speed v = √(−2φ);
  - p = √(2mqV).
- **Graph and data analysis is embedded in P4:**
  - using gradients (ln V vs t for the time constant, g vs F to find the Sun's radius);
  - "state three conclusions from Figs X and Y" in 2024-ON, 2025-MJ, 2025-ON and 2026-MJ;
  - "give units with your answer", which is credited separately.
- **"State three conclusions" is a new style since 2024-ON:** open-ended data interpretation (kinetic-theory graphs, rectifier traces, photoelectric results).

---

## 7. Common mistakes (examiner reports for 2022-MJ, 2022-ON and 2023-MJ; variants 12, 22, 42, 52, 33)

### Paper 1 (MCQ)

- **Hardest items:** potentiometer polarity and null-point items. Under a quarter correct in 2022-MJ, and also hard in 2022-ON and 2023-MJ.
- **Vectors and velocity:**
  - adding velocity vectors instead of subtracting to find a change in velocity;
  - giving average speed for a curved path when average velocity was asked.
- **Malus's law through two filters:** students used the angle measured from the original plane instead of the angle between the filters.
- **Waves:**
  - thinking a floating object moves along with a wave;
  - not knowing that minimum pressure in a sound wave is at a rarefaction;
  - covering one slit halves the amplitude, so the intensity falls to a quarter, not a half.
- **Gratings:** using sin⁻¹ where tan⁻¹ is needed for screen geometry, and picking the wrong order n.
- **Resistance:** a stretched wire keeps its volume, so R ∝ 1/A². Strands in parallel add their areas.
- **Power:** at constant power, F ∝ 1/v.
- **Elastic limit vs limit of proportionality:** these were treated as the same.
- **Advice:** read "NOT correct" stems carefully, and work out the answer before looking at the options.

### Paper 2 (AS structured)

**Uncertainties**
- Not doubling the % uncertainty for a squared quantity (or not multiplying by 4 for R⁴), or not dividing by 3 for a cube root.
- Mixing up % and absolute uncertainty.
- Quoting the value to more decimal places than its uncertainty.

**Components and trigonometry**
- Using the wrong trig function for a vertical component of a wire tension, or for the momentum components in a 2D collision.
- Conserving velocity instead of momentum.
- Finding KE from one velocity component only.

**Motion graphs and free fall**
- Curved lines where acceleration is constant.
- Final speed drawn equal to initial speed when the ball lands lower than it started.
- The line not drawn across the full time range.
- Believing heavier objects accelerate or land faster.
- Using g = 10 instead of 9.81.
- Forgetting the square root after finding t².

**Definitions**
- Force must be defined as the rate of change of momentum, not "ma".
- Work done needs "distance moved in the direction of the force".
- P.d. is energy transferred per unit charge.
- Coherence means a *constant* phase difference.
- Conservation of momentum needs "closed system".

**Materials**
- Doubling the extension was taken to double the EPE (it quadruples).
- Tripling the radius was taken to cut stress by 3 (it cuts it by 9).
- Using total length instead of extension, or leaving it in cm.

**Waves**
- Path difference for the second dark fringe is 1.5λ.
- Taking x in λ = ax/D as the bright-to-dark distance, which doubles the answer.
- Saying "dark fringes get darker" when intensity rises, and not saying the fringe separation is unchanged.
- Drawing a stationary wave as a travelling wave.
- Not knowing the closed-tube λ_max = 4L.
- Using cos θ instead of cos²θ in Malus's law.

**Circuits**
- Using P = V²/R without noticing that the current is the same for both resistors.
- Saying "resistance" without saying which resistance.
- Saying a filament lamp's resistance rises as its current falls.
- Confusing number density with total number of electrons.

**Particle physics**
- Thinking a baryon needs three identical quarks.
- Writing u→d instead of d→u for β⁻ decay.
- Naming a neutrino where an antineutrino is emitted.
- Describing an atom without its electrons.

### Paper 4 (A Level structured)

**Fields**
- Defining potential as an energy rather than energy per unit mass or charge.
- Using the planet radius instead of the orbit radius.
- Calling centripetal force one of the forces acting, rather than the resultant.
- Writing 4πε₀ where 1/4πε₀ is meant, and dropping the sign of a charge.
- Using r instead of the separation (2 × orbit radius) for two orbiting charges.

**Gases and thermodynamics**
- Mixing up n and N.
- Not converting °C to K.
- Dividing c_rms by √2 a second time.
- Wrong sign for work done on vs by the gas.
- Confusing heat transferred with internal energy.
- Thinking Q and W are both zero over a cycle.
- Dropping "per unit mass" or "at constant temperature" from the latent-heat definition.

**SHM**
- Reading ω wrongly from an equation, or taking T as half a cycle.
- Not squaring the amplitude in E = ½mω²x₀², or leaving it in cm.
- Drawing a–x as a loop instead of a straight line with negative gradient that stops at ±x₀.
- Treating phase difference as a time.

**Capacitance**
- Quoting the parallel-combination formula as the definition of capacitance.
- Not inverting 1/C_T.
- Calling exponential decay "inverse" (it is rate ∝ amount remaining).
- In charge sharing, writing about energy instead of charge conservation.

**Magnetism and induction**
- Vague definition of B (missing "perpendicular", "per unit current per unit length").
- Wrong field directions inside and outside a solenoid.
- Reciting Lenz's law instead of applying it (the opposition is a force on the moving conductor).
- Wrong phase of an induced e.m.f. relative to the current.
- Not knowing that flux is measured in Wb.

**A.c.**
- Sketches with no rectification.
- P–t drawn the same shape as V–t; it should be sin², never negative.

**Quantum, nuclear and astronomy**
- Positive values for energy levels.
- Mixing up transitions and spectral lines.
- Setting the X-ray tube p.d. equal to hc/λ (it is eV = hc/λ).
- Defining mass defect as an energy.
- Decay definitions that reuse the word "decay".
- Annihilation answers that do not say all of the mass becomes γ energy.
- Using de Broglie's relation for a photon.
- "This galaxy is receding" confused with "the Universe is expanding".
- Pulling in Stefan–Boltzmann just because "luminosity" appears.

**General**
- Answers memorised from old mark schemes that do not answer the question set.
- Not giving 3 s.f. when the data has 3.
- Many blank parts (2022-ON, 2023-MJ).

### Paper 5

**Planning**
- Control variables not named precisely (e.g. "keep the magnetic field constant" without naming B).
- Circuits that would not work: ammeter in the wrong place, d.c. symbol where a.c. is needed, oscilloscope in series.
- Vague measurement methods ("use a ruler or micrometer", a stopwatch with no stated timing method).
- Plotting the wrong axes, and claiming the line must pass through the origin.
- Not writing the constant in terms of the gradient or intercept.
- Generic safety points.

**Analysis**
- Log values not given to the right decimal places, or using ln for lg, or dropping 10ⁿ scaling factors.
- Error bars drawn unevenly.
- Best-fit lines forced through end points.
- Gradient taken from table points, or inverted.
- Intercept read at a false origin.
- Intercept uncertainty found by adding fractional uncertainties instead of using the worst line.
- Dropping the negative sign of an intercept, or missing powers of ten in units.

### Paper 3

- Range of readings too small.
- Column headings without "quantity / unit".
- Raw lengths not to the nearest mm.
- Calculated values not matched to the s.f. of the raw data, and mixing up decimal places with s.f.
- Awkward or non-linear graph scales, and gradient triangles that are too small.
- Calculator left in radians.
- Not dividing 10T by 10.
- Unrealistic uncertainty estimates.
- Not applying the stated % criterion in the k-test.
- Vague limitations or improvements (credit needs the quantity affected and a reason). "Repeat readings" and "view at eye level" are not credited.

---

## 8. Grade thresholds (variant-2 options)

### Component thresholds, A / E (raw)

| Session | P12 /40 | P22 /60 | P33 /40 | P42 /100 | P52 /30 |
|---|---|---|---|---|---|
| 2022-MJ | 24 / 12 | 42 / 8 | 29 / 16 | 54 / 13 | 20 / 8 |
| 2022-ON | 23 / 11 | 37 / 8 | 29 / 18 | 60 / 21 | 22 / 8 |
| 2023-MJ | 29 / 13 | 44 / 16 | 32 / 20 | 63 / 20 | 20 / 7 |
| 2023-ON | 27 / 14 | 44 / 15 | 32 / 18 | 68 / 26 | 23 / 11 |
| 2024-MJ | 30 / 15 | 46 / 16 | 31 / 19 | 64 / 19 | 20 / 8 |
| 2024-ON | 30 / 16 | 44 / 18 | 31 / 19 | 70 / 26 | 24 / 10 |
| 2025-MJ | 30 / 15 | 43 / 16 | 32 / 20 | 60 / 22 | 21 / 10 |
| 2025-ON | 32 / 17 | 43 / 16 | 31 / 19 | 57 / 19 | 22 / 9 |
| 2026-MJ | 30 / 15 | 40 / 17 | 33 / 20 | 62 / 21 | 20 / 8 |

### Overall thresholds (weighted marks)

| Session | **AS (12-22-33, /130)** A / B / C / D / E | **A Level (12-22-33-42-52, /260)** A\* / A / B / C / D / E | A Level route with 34 (HY) A\* / A / E |
|---|---|---|---|
| 2022-MJ | 88 / 74 / 60 / 46 / 32 | 187 / 162 / 137 / 109 / 81 / 53 | 187 / 162 / 54 |
| 2022-ON | 82 / 69 / 57 / 45 / 33 | 189 / 164 / 139 / 113 / 87 / 62 | 190 / 166 / 64 |
| 2023-MJ | 97 / 84 / 70 / 57 / 44 | 209 / 180 / 151 / 124 / 97 / 71 | 207 / 179 / 72 |
| 2023-ON | 95 / 81 / 68 / 55 / 43 | 210 / 186 / 162 / 134 / 107 / 80 | 209 / 185 / 80 |
| 2024-MJ | 99 / 86 / 72 / 58 / 45 | 212 / 183 / 154 / 126 / 99 / 72 | 213 / 184 / 74 |
| 2024-ON | 97 / 83 / 71 / 59 / 48 | 215 / 191 / 167 / 139 / 111 / 84 | 214 / 191 / 86 |
| 2025-MJ | 97 / 85 / 72 / 59 / 46 | 203 / 178 / 153 / 128 / 103 / 78 | 203 / 177 / 77 |
| 2025-ON | 98 / 86 / 73 / 60 / 47 | 201 / 177 / 153 / 127 / 101 / 75 | 201 / 177 / 77 |
| 2026-MJ | 95 / 83 / 71 / 59 / 47 | 203 / 177 / 151 / 126 / 101 / 76 | 202 / 176 / 76 |

### Reading the thresholds

- **As percentages:**
  - an AS A needs about 73–76% of the weighted marks (2023 onwards);
  - an A Level A needs about 68–73%;
  - A\* needs about 77–83%.
- **2022 was much lower,** the first post-pandemic year of the new syllabus. A\* was about 72%.
- **P4 is the hardest component:** an A needs only 54–70 out of 100.
- **P2 is next:** an A needs 37–46 out of 60.
- **P1, P3 and P5 need relatively high raw scores for an A:** P1 about 30 out of 40, P3 about 32 out of 40, P5 about 21 out of 30.
- **Variant 4 (AC / SA) thresholds:**

  | Session | A Level A\* / A / E | AS A / E |
  |---|---|---|
  | 2025-MJ | 202 / 177 / 74 | 92 / 44 |
  | 2025-ON | 214 / 190 / 83 | 100 / 50 |
  | 2026-MJ | 210 / 186 / 84 | 104 / 55 |

---

## 9. Revision priorities

### AS (P1 + P2)

1. **Mechanics block: dynamics, momentum, forces/moments and work–energy.** About 43% of AS marks. Practise multi-step contexts (balloons, launchers, beams on hinges) that chain upthrust → resultant force → kinematics → energy. Master components with the right trig function.
2. **D.C. circuits and electricity:** 19% of AS marks.
   - Kirchhoff and parallel combinations;
   - potential dividers with a thermistor, LDR or potentiometer;
   - e.m.f. and internal resistance;
   - drift speed I = nAvq with symbols;
   - qualitative "state and explain" answers that name each current and resistance.
3. **Superposition and waves:** 18%.
   - Stationary waves in tubes (open and closed), node spacing;
   - λ = ax/D with path difference in λ;
   - d sin θ = nλ and the maximum order;
   - Malus's law (cos²);
   - Doppler formula;
   - EM spectrum wavelengths.
4. **Particle physics:** 9%, the last question in every P2.
   - Quark charges and compositions;
   - lepton, hadron, baryon and meson classes;
   - β± equations with the right (anti)neutrino;
   - α/β bookkeeping for decay series.
5. **Units and uncertainties:**
   - SI base units of derived quantities (power, pressure, η, k);
   - % uncertainty with powers;
   - value ± absolute uncertainty to matching decimal places.
6. **Definitions list** (every session has 1–3 marks of these): work, power, pressure, moment, centre of gravity, Young modulus, elastic deformation, p.d., Kirchhoff's laws, momentum and its conservation, progressive wave, diffraction, coherence, fundamental particle.

### A Level (P4)

1. **Fields** (gravitational, electric, magnetic): about a quarter of P4.
   - Learn the definitions word for word: field strength, potential at a point, B, Coulomb's and Newton's laws, Faraday and Lenz.
   - Use the analogous formulae and orbit derivations.
   - Draw field lines (planet, isolated sphere, solenoid).
   - Practise Hall voltage.
   - **Revise induction anyway:** it was absent from the last three variant-2 papers but is still examined in other variants.
2. **Thermal physics** (Q2–Q4, about 19%):
   - pV = nRT / NkT;
   - kinetic theory assumptions and the pV = ⅓Nm⟨c²⟩ derivation;
   - ⟨EK⟩ = (3/2)kT and c_rms;
   - first-law sign conventions with W = pΔV;
   - c and L definitions;
   - thermal equilibrium and gas thermometers.
3. **SHM** (every paper):
   - ω, x₀ and energy from graphs or equations;
   - a–x, v–x and KE–x sketches;
   - writing x(t);
   - damping and resonance definitions.
4. **Capacitance:** combinations (derive them), ½QV, the area under V–Q, the time constant from ln graphs, the isolated sphere C = 4πε₀R.
5. **Quantum physics and nuclear physics** (about 16% together):
   - photoelectric equation and graph;
   - de Broglie with p = √(2mqV);
   - energy-level transitions;
   - binding energy per nucleon (the curve and fission/fusion energy release);
   - λ = ln2 / t½;
   - activity calculations.
6. **A.c.:** r.m.s. from V = V₀ sin ωt, P–t sketches (mean = ½P₀), half-wave, full-wave and bridge rectification, smoothing by a capacitor.
7. **Rotate Q10 topics:**
   - X-ray attenuation, contrast and CT;
   - acoustic impedance and the reflection coefficient;
   - PET (annihilation γ energy and wavelength);
   - standard candles, Wien and Stefan for stellar radius, Hubble's law and redshift.

### Practical (P3 and P5)

- **P5 Q2:** the routine is fixed, so drill it until it is automatic:
  - logs to the right decimal places;
  - half-range uncertainties;
  - error bars;
  - a worst line through the error-bar extremes;
  - gradient uncertainty as the difference from the worst line;
  - constants with units;
  - a prediction.
- **P5 Q1:** prepare plans for electrical and electromagnetic set-ups (coils, capacitors, magnets, heating wires).
  - Always state which graph to plot.
  - Give constants from the gradient or intercept.
  - Name the control variables.
  - Draw a working circuit.
  - Give specific safety points.
- **P3:**
  - Tables with quantity/unit headings and consistent s.f.
  - Wide ranges.
  - Graph scales that fill more than half the grid.
  - Big gradient triangles.
  - The two-values-of-k test against the stated %.
  - **Limitations and improvements** are 8 of 40 marks. Prepare a bank of specific ones for pendulums, balances, rulers and timing (e.g. "use a fiducial marker", "use a video with a timer", "use a set-square to check vertical").
