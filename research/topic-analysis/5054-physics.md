# Cambridge O Level Physics (5054): topic-frequency analysis, 2022 to June 2026

Compiled 19 Oct 2026 from local past papers only (`papers/o-level/physics-5054/`, nine sessions from May/June 2022 to May/June 2026). Question data: `5054-questions.csv` in this folder.

**Method**
- Each PDF was converted with `pdftotext -layout`.
- Every question part in **variant 1** of each component (11, 21, 31, 41) was classified by topic, subtopic and marks, giving 36 papers.
- **Spot-check:** three variant-2 papers were classified the same way (2024 MJ P12 and P22, 2025 ON P42) and are included in the CSV as `variant = 2`.
- **Marks:** each MCQ item is worth 1 mark. Structured-question marks come from the `[n]` brackets. Every paper's rows add up to the paper total.
- **2022 Paper 2 is the exception:** it sums to 90 rather than 75, because all three optional Section B questions are listed (see §1).
- **Examiner reports** were available for May/June 2022, Oct/Nov 2022 and May/June 2023 only.
- **Sessions** are written as `YYYY-MJ` (May/June) and `YYYY-ON` (Oct/Nov).

Caveats:
- MCQ diagrams are lost in text conversion, so some Paper 1 items were classified from their wording, their options and the answer key.
- On Papers 3 and 4, a part is filed under its physics topic only when it needs physics knowledge or a physics calculation. Generic skills (readings, tables, graphs, precision, planning, evaluation) are filed under **Practical skills**.
- All percentages describe this sample. They are not official syllabus weightings.

---

## 1. Paper structure, and what changed in 2023

| Component | 2022 (old syllabus) | 2023 to 2026 (revised syllabus) |
|---|---|---|
| **P1 Multiple Choice** | 1 h, 40 items, 40 marks | 1 h, 40 items, 40 marks (unchanged) |
| **P2 Theory** | 1 h 45 min, **75 marks**. Section A has 6 compulsory questions (45 marks). Section B asks for **2 of 3** questions at 15 marks each (Q7 to Q9). | 1 h 45 min, **80 marks**. **All questions compulsory**: 8 to 11 structured questions of 6 to 12 marks each. No choice. |
| **P3 Practical Test** | **2 h, 30 marks**. Three 5-mark questions (20 min of apparatus each) and one 15-mark question (1 h). | **1 h 30 min, 40 marks**. Four questions worth 10 / 10 / 14 / **6** marks. Q4 is a written **planning** task. |
| **P4 Alternative to Practical** | 1 h, **30 marks**. Four questions of uneven size (for example 14 / 7 / 5 / 4). | 1 h, **40 marks**. Same 10 / 10 / 14 / 6 shape as P3, using the **same four experiments as that session's P3**, with readings supplied in figures. |
| **Entry routes** | P1 + P2 + (P3 or P4), raw total 145, unweighted | P1 + P2 + (P3 or P4), raw total 160, **weighted to 200**. This fits P1 at 30%, P2 at 50% and P3/P4 at 20%, inferred from the 200-mark totals. |

What the revised syllabus added or removed, from the papers and the June 2023 examiner report:
- **New: Space physics.** It has appeared in **every** session since 2023: 1 to 3 MCQs per paper, and almost always the **last question of Paper 2** (7 to 10 marks).
- **New or much more prominent:** momentum and impulse (including conservation in collisions and F = Δp/Δt), pressure acting at right angles to a surface, kelvin temperatures, and diffraction. These are new or more prominent according to the 2023 report.
- **Removed or downgraded:**
  - Lens formula: the report says it is not needed.
  - Cathode-ray oscilloscope, thermionic emission and logic gates: their last appearance in the sample was 2022.
  - Lens and pressure calculations now carry much less weight (see §4).
- **New skill:** a 6-mark practical planning question on every P3 and P4. The report called planning "relatively new" for candidates.
- **Paired practicals:** P3 and P4 from the same session now share their experiments. The variant-2 P4 (2025 ON P42) used a different set of experiments from variant 1, so experiments differ by variant but not between P3 and P4 within a variant.

Two oddities in the 2026 files:
- **Component 31 is missing from the June 2026 grade thresholds.** No route includes it, and there is no 2026 mark scheme 31 in the local files.
- **There is an unexplained "Component 50"** (90 marks, with its own route). The 4024 thresholds list identical figures for it, so it looks like a board-wide entry route rather than a physics paper. That is an inference only.

---

## 2. Topic weights

### 2a. Theory (P1 + P2 combined, variant 1, marks)

| Topic | 22-MJ | 22-ON | 23-MJ | 23-ON | 24-MJ | 24-ON | 25-MJ | 25-ON | 26-MJ | Total | Share |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Motion, forces & energy | 54 | 50 | 39 | 31 | 32 | 33 | 37 | 29 | 37 | 342 | **31.1%** |
| Electricity & magnetism | 27 | 32 | 26 | 28 | 28 | 26 | 26 | 33 | 21 | 247 | **22.5%** |
| Waves | 16 | 27 | 19 | 21 | 17 | 22 | 16 | 18 | 27 | 183 | **16.6%** |
| Thermal physics | 17 | 10 | 14 | 18 | 19 | 17 | 14 | 19 | 13 | 141 | **12.8%** |
| Nuclear physics | 15 | 11 | 13 | 13 | 13 | 10 | 15 | 11 | 13 | 114 | **10.4%** |
| Space physics | 1 | 0 | 9 | 9 | 11 | 12 | 12 | 10 | 9 | 73 | **6.6%** |

Session totals are 130 marks for 2022 (40 + 90, because all Section B questions are counted) and 120 marks from 2023 onwards.

**Share by paper, before and after the syllabus change:**

| Topic | P1 2022 | P1 2023+ | P2 2022* | P2 2023+ |
|---|---|---|---|---|
| Motion, forces & energy | 31% | 35% | 44% | 25% |
| Electricity & magnetism | 30% | 21% | 19% | 23% |
| Waves | 15% | 17% | 17% | 17% |
| Thermal physics | 18% | 14% | 7% | 14% |
| Nuclear physics | 6% | 8% | 12% | 12% |
| Space physics | 0% | 5% | 1% | 10% |

\*The 2022 P2 figures include all three optional questions. In both 2022 sessions one of the optional questions was a 15-mark mechanics question, which inflates the mechanics share.

### 2b. Top subtopics (P1 + P2, all nine sessions)

| Rank | Subtopic | Marks | Share | Sessions present (of 9) |
|---|---|---|---|---|
| 1 | Energy, work & power (including efficiency) | 81 | 7.4% | 9 |
| 2 | Electromagnetic effects (motor, generator, transformer, induction, relay) | 79 | 7.2% | 9 |
| 3 | Radioactivity (alpha/beta/gamma, half-life, decay equations, background) | 68 | 6.2% | 9 |
| 4 | Kinetic particle model (gas pressure, evaporation, Boyle's law) | 55 | 5.0% | 9 |
| 5 | Circuits (series/parallel, thermistor, LDR, potential divider) | 54 | 4.9% | 9 |
| 6 | Motion (graphs, acceleration, terminal velocity) | 52 | 4.7% | 9 |
| 7 | Thermal properties (specific heat capacity, latent heat, kelvin) | 52 | 4.7% | 9 |
| 8 | General wave properties (v = fλ, diffraction, transverse vs longitudinal) | 51 | 4.6% | 8 |
| 9 | Lenses & dispersion | 50 | 4.5% | 9 |
| 10 | Forces & Newton's laws (including circular motion) | 48 | 4.4% | 9 |
| 11 | Atom & nucleus (structure, isotopes, alpha scattering, fission) | 46 | 4.2% | 8 |
| 12 | Current, p.d., e.m.f. & resistance | 40 | 3.6% | 8 |
| 12 | Earth & Solar System | 40 | 3.6% | 7 (all 7 since 2023) |

### 2c. Practical papers (P3 + P4, variant 1)

| Subtopic | Share |
|---|---|
| Graph & data analysis | 28% |
| Measurement technique & precision | 28% |
| Experimental planning & evaluation | 24% |
| Physics content (resistance and circuits, refraction, heat loss, moments, density) | ~20% |

The physics content in P3/P4 is mostly **electricity**: a circuit or resistance experiment appeared in **8 of 9 sessions**. Thermal experiments (cooling or heating curves, specific heat capacity) and optics experiments (lens, mirror, refracting block) are the next most common.

---

## 3. Bankers: tested in every session

**Theory: a subtopic was tested in all 9 sessions (P1 + P2)**
- **Mechanics:** measurement and quantities; motion graphs; forces and Newton's laws; moments; springs; pressure; energy, work, power and efficiency.
- **Thermal:** kinetic particle model; thermal properties (specific heat capacity, latent heat); thermal energy transfer.
- **Waves:** light (reflection, refraction, TIR); lenses and dispersion; sound.
- **Electricity:** circuits; electromagnetic effects.
- **Nuclear:** radioactivity.

**Paper 2 (2023 onwards): content that came up in every one of the 7 sessions, or 6 of the 7**
1. **An energy calculation chain**, for example GPE → KE → thermal with mcΔθ, efficiency of a motor lifting a load, or W = Fd and P = E/t. This came up in 7 of 7 sessions.
2. **A particle-model explanation**: gas pressure from molecular collisions, the effect of temperature, evaporative cooling, or expansion. This came up in 7 of 7 sessions.
3. **Thermal transfer**: conduction (electrons and lattice vibration), convection currents, or radiation. This came up in 7 of 7 sessions.
4. **A full nuclear question**: nuclide notation, an alpha or beta decay equation, half-life, background correction, ionisation and safety, or fission and its chain reaction. This came up in every session.
5. **A full space question, usually the last one**: planet data tables, orbital speed v = 2πr/T, the star life cycle, red-shift, or light-years. This came up in every session from 2023.
6. **Waves**: v = fλ, transverse vs longitudinal, and diffraction sketches. This came up in 6 of 7 sessions.
7. **Electromagnetism**: motor, generator or transformer, including a.c. traces, the turns ratio and the field pattern. This came up in 6 of 7 sessions.
8. **Specific heat capacity or latent heat calculations, and kelvin conversions.** These came up in 6 of 7 sessions.
9. **Circuits**: series/parallel resistance, the filament-lamp I–V curve and its explanation, and thermistor or LDR behaviour. These came up in 6 of 7 sessions.

**Paper 3 / 4 (2023 onwards): the same four-question template every time**
- **Q1 and Q2 (10 marks each):** a measurement or calculation task. One is usually electrical (R = V/I, a potential divider, lamp resistance) and the other thermal or optical.
- **Q3 (14 marks):** a table (headings with units, consistent s.f.), a graph (scale, plotting, best-fit line or curve), a gradient or intercept, and a comparison "within 10%".
- **Q4 (6 marks):** an investigation plan. It needs:
  - apparatus;
  - independent and dependent variables, with about five values;
  - control variables;
  - a results table;
  - how the conclusion is drawn.

---

## 4. Rarely tested and trends

**Rarely tested in theory (P1 + P2):**
- Energy resources (0.8%, absent in 4 of 9 sessions).
- Electrical safety (1.4%).
- Magnetism basics (1.6%).
- Springs and deformation since 2023 (about 1 mark per session).
- Turning effect, which is mostly a single MCQ since 2023. The exception is 2025-MJ, which had a 7-mark moments question.
- Electromagnetic spectrum (1.8%; none in 2025 MJ or ON). It came back in 2026 with an X-ray and ultrasound imaging question.
- Electric charge and static. This is usually 1 or 2 MCQs, but 2025-ON had a 10-mark charging question.

These topics are low-frequency, not safe to skip: when one does come up in Paper 2, it can be worth 7 to 10 marks.

**Trends, 2022 compared with 2023 onwards (share of P1 + P2 marks):**

| Rising | Change | Falling | Change |
|---|---|---|---|
| Earth & Solar System | 0 → 4.8% | Pressure (p = F/A, ρgh, manometers) | 6.5 → 2.6% |
| General wave properties and diffraction | 1.9 → 5.5% | Lenses and ray diagrams | 7.3 → 3.7% |
| Stars & the Universe | 0.4 → 3.8% | Kinematics | 7.3 → 3.9% |
| Momentum & impulse | 0 → 3.1% | Springs and deformation | 3.8 → 1.1% |
| Thermal energy transfer | 1.2 → 3.7% | Forces | 6.2 → 3.8% |
| | | Circuits | 6.5 → 4.4% |

- **Paper 2 is more explanatory than before.** Explanation marks rose from 31% to 36% of P2, and calculation marks fell slightly from 31% to 28%. Mechanics no longer dominates Paper 2 (44% → 25%). Thermal physics and space took that share.
- **Paper 1 has fewer pure-recall items.** Recall marks fell from 74% to 52%. Short explanation and "which diagram" items rose from 0% to 11%, and calculations rose from 20% to 24%.
- **The practical papers shifted towards planning and evaluation.** On P3 and P4, planning and evaluation rose to about 30%, and P4 grew from 30 to 40 marks.
- **There has been no structural change since 2023.** The 2026 cover pages match 2023 to 2025.

**Spot-check.** In 2024-MJ, variant 2 gave a topic profile close to variant 1:
- P1: within ±3 marks per topic.
- P2: within ±6 marks per topic; electricity was 26 vs 20 marks.

The 2025-ON P42 used **different** experiments from P41. So theory weightings generalise across variants, but the physics content of a given session's practical does not.

---

## 5. Recurring question styles

- **Calculations (about 28% of P2):**
  - The common equations are F = ma, p = mv, F = Δp/Δt, KE = ½mv², ΔGPE = mgΔh, W = Fd, P = E/t, P = IV, E = IVt, Q = It, V = IR, series and parallel resistance, v = fλ, n = sin i / sin r, sin c = 1/n, E = mcΔθ, E = mL, p = ρgh, pV = constant, the turns ratio, v = 2πr/T, and half-life.
  - A unit mark and 2 or more significant figures are expected.
- **Definitions and "state" openers (about 22% of P2):** principle of moments, momentum, latent heat, critical angle, frequency, wavelength, principal focus and focal length, half-life, isotope, light-year, and e.m.f.
- **Explanations (about 36% of P2):**
  - Particle explanations: gas pressure, evaporation, expansion, conduction.
  - Terminal velocity, told as a sequence: drag rises, so the resultant force falls, so the acceleration falls.
  - Why a filament's resistance rises.
  - Why an e.m.f. is induced.
  - Why a star changes stage.
- **Drawing (about 9% of P2):**
  - Ray diagrams: prisms and dispersion, lenses (often a virtual image), and diffraction through a gap.
  - Field patterns and circuit diagrams.
  - Curve sketches: heating curves, I–V curves, decay curves, and speed–time curves.
- **Graph work:** distance from the area under v–t, acceleration or force from a gradient (including a gradient of momentum against time), and reading oscilloscope traces using Y-gain and time-base settings.
- **Practical:**
  - Analogue readings to the instrument's precision (for example, ruler to the nearest mm as 5.0 cm).
  - Averages of repeat readings.
  - Using a given formula to a stated number of significant figures with a unit.
  - Judging "same or different" with the 10% criterion.
  - Precautions specific to the set-up.
  - Controlled variables.
  - The 6-mark plan.

---

## 6. Common mistakes (paraphrased from the 2022 MJ, 2022 ON and 2023 MJ examiner reports)

**Calculation habits**
- Missing units, or malformed units such as "m/s⁻¹".
- Answers given to only 1 s.f.
- Fractions given where a decimal was expected.
- Working not shown, or the formula not stated first.
- Hours converted to seconds by multiplying by 60 instead of 3600.
- g left out, which makes the answer 10 times too small.
- Prefixes mishandled.

**Mechanics**
- Using the length of a ramp instead of the vertical height for useful work or GPE.
- Taking moment distances that are not measured from the pivot.
- Statements of the principle of moments that add wrong conditions.
- In collisions, using one body's mass instead of the combined mass, both in F = ma and in momentum conservation.
- Confusing momentum with the moment of a force.
- Believing the pin pushes harder on the board than on the finger (Newton's third law pairs are equal).
- Not explaining terminal velocity as a sequence of changes.

**Pressure and particles**
- Subtracting atmospheric pressure from ρgh instead of adding it.
- Using F/A where ρgh is needed.
- Thinking the gas "ran out" when manometer levels stop moving.
- Particle explanations that stop before stating that the pressure increases.

**Thermal**
- Latent heat definitions that leave out the "no temperature change" point.
- Heating curves that start at 0 °C.
- Only strong candidates converting 100 °C to 373 K.
- "Convection" misread as "conventional current".

**Waves and optics**
- Treating the critical angle as anything other than an angle of incidence in the denser medium, measured from the normal.
- In diffraction sketches, changing the wavelength or not centring the pattern on the gap.
- Vague phrases like "before the focal length" in place of "between the lens and the principal focus".
- In diverging-lens diagrams, drawing a real image.
- Saying X-rays "reflect off bone" and leaving out the detector.

**Electricity and magnetism**
- Putting the full supply voltage across one series resistor.
- Including a branch whose switch is open.
- Not realising that current divides in inverse proportion to resistance.
- Poor use of Fleming's left-hand rule.
- Confusing electric fields with magnetic fields.
- Reading the peak-to-peak value from an oscilloscope when the peak was asked for.
- A spurious factor of 2 in two-transformer problems.
- Not knowing the thermistor symbol.

**Nuclear and space**
- Giving the mass remaining instead of the mass decayed.
- Saying alpha and beta particles are "attracted to magnet poles".
- Vague sources of background radiation such as "industry".
- Not working out the proton number from an ion's charge.
- In orbital speed, forgetting the 2π or the conversion from days to seconds.
- Listing Pluto as a planet.
- Naming Venus as the hottest planet without explaining the greenhouse effect.

**Practical papers**
- Stock phrases ("more accurate", "avoid parallax") that are not tied to the actual apparatus.
- Graph scales built from the data range, giving awkward steps.
- Gradient triangles that are too small.
- Forcing a curve through every point.
- Stating a range without the unit, or without "from ... to ...".
- Claiming results agree or disagree without a numerical criterion such as 10%.
- Unrealistic readings that should have been noticed (for example, about 1 cm where about 99 cm was sensible).
- **In plans:**
  - copying out the question;
  - no range of values for the independent variable;
  - no control variables;
  - no results table;
  - not explaining how the conclusion is reached.

---

## 7. Grade thresholds (minimum raw marks)

### 7a. Component thresholds, variant 1 (A / C / E)

| Session | P11 (/40) | P21 (/75 or /80) | P31 (/30 or /40) | P41 (/30 or /40) |
|---|---|---|---|---|
| 2022-MJ | 24 / 16 / 11 | 44 / 23 / 15 (/75) | 15 / 9 / 5 (/30) | 23 / 18 / 14 (/30) |
| 2022-ON | 28 / 18 / 14 | 42 / 23 / 13 (/75) | 18 / 13 / 10 (/30) | 22 / 15 / 11 (/30) |
| 2023-MJ | 29 / 20 / 16 | 45 / 24 / 15 | 23 / 13 / 9 | 25 / 17 / 13 |
| 2023-ON | 27 / 18 / 15 | 47 / 25 / 13 | 24 / 16 / 10 | 24 / 15 / 10 |
| 2024-MJ | 29 / 19 / 15 | 45 / 21 / 12 | 27 / 18 / 12 | 27 / 16 / 10 |
| 2024-ON | 28 / 19 / 14 | 46 / 22 / 12 | 24 / 16 / 12 | 27 / 16 / 11 |
| 2025-MJ | 28 / 17 / 14 | 46 / 23 / 13 | 25 / 15 / 10 | 28 / 17 / 11 |
| 2025-ON | 29 / 21 / 14 | 47 / 26 / 14 | 28 / 18 / 11 | 30 / 18 / 10 |
| 2026-MJ | 29 / 18 / 15 | 48 / 21 / 11 | (not listed) | 28 / 17 / 11 |

### 7b. Overall thresholds, route 11 + 21 + 41 (A* / A / B / C / D / E)

| Session | Max | A* | A | B | C | D | E | A as % | C as % |
|---|---|---|---|---|---|---|---|---|---|
| 2022-MJ | 145 | 108 | 91 | 74 | 57 | 48 | 40 | 63% | 39% |
| 2022-ON | 145 | 110 | 92 | 74 | 56 | 47 | 38 | 63% | 39% |
| 2023-MJ | 200 | 149 | 125 | 101 | 77 | 66 | 56 | 63% | 39% |
| 2023-ON | 200 | 148 | 123 | 98 | 73 | 61 | 49 | 62% | 37% |
| 2024-MJ | 200 | 155 | 127 | 99 | 71 | 59 | 48 | 64% | 36% |
| 2024-ON | 200 | 155 | 127 | 99 | 72 | 59 | 47 | 64% | 36% |
| 2025-MJ | 200 | 157 | 128 | 99 | 71 | 59 | 48 | 64% | 36% |
| 2025-ON | 200 | 157 | 132 | 107 | 82 | 65 | 49 | 66% | 41% |
| 2026-MJ | 200 | 163 | 132 | 101 | 70 | 58 | 47 | 66% | 35% |

How to read these:
- The route using P3 instead of P4 has similar thresholds; the full set is in the `gt` files.
- **A grade C needs roughly 35 to 41% overall, an A about 62 to 66%, and an A\* about 74 to 82%.**
- **Paper 2 is the hardest component.** A C on P21 has needed only 21 to 26 marks out of 80. Paper 1 needs about 43 to 53% for a C, and P4 about 40 to 45%.
- **The A\* threshold has crept up**, from 149 in 2023 to 163 in 2026 out of 200.

---

## 8. Revision priorities for Oct/Nov 2026 and 2027 candidates

**Tier 1: appears every session and carries the most marks**
1. **Energy, work, power and efficiency.** Multi-step energy chains: GPE → KE → thermal using mcΔθ, and efficiency of motors and heaters. Practise full calculations with units.
2. **Electromagnetic effects.** The d.c. motor (Fleming's left-hand rule, commutator), the a.c. generator (slip rings, reading output traces), transformers (turns ratio, transmission) and relays.
3. **Radioactivity and the nucleus.** Nuclide notation, alpha and beta decay equations, half-life from graphs and tables (with background correction), properties and uses of alpha, beta and gamma, safety, and fission with chain reaction, moderator and control rods.
4. **Particle model and thermal physics.** Gas pressure from collisions, pV = constant, evaporation vs boiling and evaporative cooling, specific heat capacity and latent heat, kelvin, and conduction, convection and radiation explanations.
5. **Space physics (since 2023 it is worth about 10 marks per session).** Planet data tables and trends, v = 2πr/T with unit conversions, gravity as the centripetal force, the life cycle of stars (including massive stars), light-years, red-shift and the Big Bang. Pluto is not a planet.
6. **Circuits and resistance.** Series and parallel rules, the filament-lamp I–V curve with its explanation, thermistor and LDR potential dividers, and R ∝ L/A.
7. **Waves.** v = fλ, transverse vs longitudinal (compressions and rarefactions), diffraction in a ripple tank, and refraction with Snell's law, critical angle and TIR.

**Tier 2: regular, worth securing**
- Kinematics graphs: gradient, area, terminal velocity sequence.
- Momentum and impulse: conservation with combined mass, F = Δp/Δt.
- Lens ray diagrams: magnifying glass and virtual image. The lens formula is not needed.
- Sound and ultrasound: echo distance, why sound cannot cross a vacuum.
- Pressure: p = F/A, ρgh plus atmospheric pressure.
- Moments: principle of moments, stability.

**Tier 3: quick wins with low frequency**
- Electromagnetic spectrum order and uses, including X-ray and ultrasound imaging (back in 2026).
- Electrical safety: fuse in the live wire, choosing a fuse rating, earthing, double insulation.
- Static charging by electron transfer.
- Magnetic field patterns.
- Springs: the limit of proportionality.
- Energy resources.

**Exam technique (from the examiner reports)**
- Write the formula, substitute with units, and give the answer to at least 2 s.f. with its unit.
- Write "explain" answers as a cause-and-effect chain.
- Draw diagrams with a sharp pencil and a ruler.

**Practical (P3 or P4, 20% of the grade)**
- Drill the fixed template:
  - readings to the instrument's precision;
  - averages;
  - table headings with units;
  - graph scales of 1, 2 or 5;
  - large gradient triangles;
  - the 10% comparison, backed by a number;
  - precautions specific to the apparatus.
- **Practise a 6-mark plan every week.** It is the newest skill and the one examiners criticise most. It needs:
  - apparatus;
  - the independent variable with five values and the dependent variable;
  - control variables;
  - a results table;
  - how the conclusion is drawn.
- Electrical experiments appear most often: R = V/I, potential dividers, lamp resistance, and resistance against length.

**Paper 1 (30%)**
- The MCQ paper covers the whole syllabus, so do not leave gaps.
- Common traps:
  - vertical height vs ramp length;
  - peak vs peak-to-peak;
  - mass remaining vs mass decayed;
  - the distance from the pivot in moments;
  - forgetting the number of tyres when calculating pressure.
