# Cambridge O Level Computer Science (2210): topic analysis, 2022 to June 2026

This analysis uses the local past papers only (`papers/o-level/computer-science-2210/`). It covers eight exam sessions from October/November 2022 to May/June 2026; the May/June 2022 folder holds only an examiner report. The question-by-question data is in `2210-questions.csv` in this folder. Percentages describe this sample of papers. They are not official syllabus weightings.

---

## Paper structure

| Component | Oct/Nov 2022 (old syllabus) | 2023 to 2026 (current syllabus) |
|---|---|---|
| **Paper 1** | *Theory*, 1 h 45 min, 75 marks, all questions compulsory | *Computer Systems*, 1 h 45 min, 75 marks, all compulsory, no calculator |
| **Paper 2** | *Problem-solving and Programming*, 1 h 45 min, **50 marks**. Section A (20 marks) was about a **pre-release task** you had programmed before the exam. Section B (30 marks) held general algorithm and database questions. | *Algorithms, Programming and Logic*, 1 h 45 min, **75 marks**, all compulsory. **No pre-release material.** Ends with a **15-mark program** you write from a scenario. |
| **Overall** | P1 + P2 = 125 raw marks | P1 + P2 = 150 raw marks |

What changed when the new syllabus arrived in 2023:
- **Pre-release material was dropped.** Instead, Paper 2 now ends with one long, unseen programming task worth 15 marks, a fifth of the paper. You may answer it in pseudocode, Python, Java or VB.NET.
- **Paper 2 grew from 50 to 75 marks.** It now includes **Boolean logic**, which used to be on Paper 1, and SQL, which replaced the old *query-by-example* grids.
- **New Paper 1 content:** automated systems, robotics, artificial intelligence (expert systems, machine learning), digital currency and blockchain, packet switching, two's complement, binary shifts and overflow, file-size calculations in KiB, and IDEs.
- **Content dropped from Paper 1:** describing how input devices work in detail (for example, how a resistive touch screen works) and the stored program concept. The June 2023 examiner report states that the workings of input devices are no longer on the syllabus.
- **Format of Paper 1:** the number of questions varies a lot from year to year. It ranged from 5 long scenario questions (June 2025) to 13 shorter ones (Nov 2023), but the total is always 75.

Since 2023 the structure has been stable. Two oddities affect the published papers:
- **June 2023 Paper 22, Question 5** (circling file-handling operations, 5 marks) was withdrawn by Cambridge after the exam.
- **June 2025 Paper 22, Question 10** was removed from the published paper and mark scheme. It was worth 15 marks, the slot that always holds the long program.

---

## Topic weights

Marks per topic in the sample (one paper of each component per session, 16 papers, 1,175 marks).

| Topic | Paper | Share of marks (all 8 sessions) | Share 2023 to 2026 | Sessions examined (of 8) |
|---|---|---|---|---|
| Algorithm design and problem-solving | 2 | **20.3%** | 21.0% | 8 |
| Programming | 2 | **18.0%** | 17.9% | 8 |
| Hardware | 1 | **13.5%** | 12.5% | 8 |
| Data representation | 1 | **11.5%** | 11.9% | 8 |
| The internet and its uses | 1 | **10.6%** | 9.6% | 8 |
| Data transmission | 1 | 6.0% | 6.4% | 8 |
| Boolean logic | 2 (P1 in 2022) | 5.6% | 5.7% | 8 |
| Databases | 2 | 5.4% | 5.3% | 8 |
| Software | 1 | 4.5% | 4.8% | 7 |
| Automated and emerging technologies | 1 | 4.3% | 4.9% | 7 |

**Within each paper (2023 to 2026):**
- **Paper 1** (525 marks): Hardware 25%, Data representation 24%, The internet and its uses 19%, Data transmission 13%, Automated and emerging technologies 10%, Software 10%.
- **Paper 2** (525 marks): Algorithm design and problem-solving 42%, Programming 36%, Boolean logic 11%, Databases 11%.

**Marks per session:**

| Topic | 22-ON | 23-MJ | 23-ON | 24-MJ | 24-ON | 25-MJ | 25-ON | 26-MJ |
|---|---|---|---|---|---|---|---|---|
| Algorithm design and problem-solving | 18 | 25 | 28 | 32 | 37 | 40 | 25 | 34 |
| Programming | 24 | 36 | 31 | 24 | 22 | 21 | 32 | 22 |
| Hardware | 28 | 13 | 27 | 20 | 20 | 12 | 23 | 16 |
| Data representation | 10 | 20 | 15 | 17 | 20 | 19 | 13 | 21 |
| The internet and its uses | 24 | 19 | 18 | 14 | 14 | 12 | 14 | 10 |
| Data transmission | 4 | 5 | 4 | 12 | 12 | 10 | 9 | 15 |
| Boolean logic | 6 | 8 | 8 | 11 | 8 | 8 | 8 | 9 |
| Databases | 8 | 6 | 8 | 8 | 8 | 6 | 10 | 10 |
| Software | 3 | 13 | 0 | 5 | 3 | 11 | 9 | 9 |
| Automated and emerging technologies | 0 | 5 | 11 | 7 | 6 | 11 | 7 | 4 |

The 2022 session totals 125 marks; every later session totals 150.

---

## Bankers

These came up in **every session** or nearly every session of the sample. Expect them.

**Paper 2**
- **The 15-mark program** has been the last question on every new-syllabus Paper 2. The scenario changes (a bank menu, flooring quotes, a grid game, room areas, a random-number fairness test, rainfall statistics). The skills it tests do not:
  - 1D and 2D arrays working in parallel;
  - loops with input validation;
  - totals, averages, max/min and counts;
  - rounding;
  - clear prompts and output messages;
  - comments that explain the code.
- **Trace tables** appeared in all 8 sessions, worth 5 or 6 marks each time. The algorithm is given as a flowchart or as pseudocode, and it often includes a bubble sort, a string check or a sentinel value such as -1.
- **Find and correct errors in pseudocode** appeared in all 8 sessions (3 to 5 errors, usually 1 mark each). Typical errors are the wrong loop terminator (`NEXT` instead of `UNTIL`), the wrong data type in a `DECLARE`, the wrong array index, `OUTPUT` written where `INPUT` is needed, and a wrong starting value.
- **Validation and verification** appeared in all 8 sessions: naming the checks (range, length, type, presence, format, check digit), double-entry verification, and writing pseudocode for a check.
- **Logic circuits and truth tables** have appeared every session since 2023. The usual task is to draw a circuit from an expression containing NAND, XOR and NOT (each gate with at most two inputs) and then complete an 8-row truth table, together worth about 8 marks. Some years instead give a word problem that you turn into an expression, as with the safe in 2024 or the crane in 2025.
- **Databases** appeared in all 8 sessions: the number of fields and records, the primary key, choosing a data type for each field, and either completing a `SELECT … FROM … WHERE` statement or writing the output of a given one.
- **Standard methods** appeared in 7 of 8 sessions: totalling, counting, finding max/min, linear search and bubble sort, often as "describe what this algorithm does".

**Paper 1**
- **Number conversions** appeared in all 8 sessions: binary, denary and hexadecimal, often with 12-bit values, plus reasons for using hexadecimal.
- **Binary arithmetic** appeared in 7 of 8 sessions: 8-bit addition, overflow, logical left and right shifts and their effect, and two's complement.
- **Storage** appeared in all 8 sessions: primary versus secondary storage, RAM/ROM, magnetic/solid-state/optical, virtual memory and cloud storage (advantages *and* disadvantages).
- **The CPU and the fetch-decode-execute cycle** appeared in 7 of 8 sessions. Questions ask about the PC, MAR, MDR, CIR, ALU, CU, accumulator and buses, often as a table or a gap-fill.
- **The web** appeared in 7 of 8 sessions: the parts of a URL, what a browser does, how DNS finds a web page, HTTP/HTTPS, and session versus persistent cookies.
- **Security** appeared in all 8 sessions: DDoS, data interception, malware, brute force, firewalls, proxy servers, SSL and access levels. A "draw and annotate" diagram of an attack (DDoS or interception) has been set three times.
- **Error detection** appeared in 6 of 8 sessions: parity bits and parity bytes, checksum, echo check, check digit and ARQ.
- **AI and expert systems** have appeared in every new-syllabus session: the parts of an expert system (knowledge base, rule base, inference engine, interface), how it reaches a diagnosis, and machine learning.

---

## Rarely tested

These appeared in only one or two sessions of the sample. Because only one variant per session was analysed, a topic that is rare here may still have appeared on another variant. Do not skip them; just do not over-invest.
- **Digital currency and blockchain:** once (Nov 2023, 3 marks).
- **Interrupts:** once (Nov 2025, 5 marks, on how an interrupt is queued and serviced). This is very likely to return.
- **Automated systems** (advantages and disadvantages in a factory, for example): once. **Robotics:** twice (June 2025 and Nov 2025).
- **Network hardware and addressing** (NIC, MAC address, IPv4/IPv6, router assigning IP): twice (2023-MJ, 2024-MJ).
- **Packet switching** (parts of a packet, the router's role): twice. **Symmetric/asymmetric encryption:** twice.
- **Maintainable programs** (comments, meaningful names, subroutines): once as a full question. These features still earn marks inside every 15-mark program.
- **File handling** (open/read/write/close a text file): three times (2023-MJ, 2024-ON, 2026-MJ).
- **Procedures, functions, parameters and library routines** (`ROUND`, for example): three times.
- **Representing text, sound and images** (character sets, sample rate and resolution, colour depth): four times. **File-size calculations in KiB:** four times.
- **Operating system / system versus application software:** four times, all before 2025.

---

## Trends

- **Paper 2 now carries more algorithm-writing marks.** Algorithm design rose from 25 marks in June 2023 to 32 to 40 marks in most later sessions. Error-spotting questions grew from 3 or 4 errors to 5 errors (2024-ON to 2025-ON). Writing pseudocode from bullet-point requirements (a double-entry check, an email @ check, a whole-number validation loop) is now a regular 6-mark question.
- **Logic questions got harder.** In June 2023 half the logic marks were for matching gate symbols to names. Since Nov 2023 symbol work has shrunk to a short warm-up at most. Now you are expected to draw a circuit from an expression with three gate types and a NOT, then work out the truth table, or to turn a real-world rule into an expression.
- **The long program got stricter.** Earlier papers said you did not need to declare variables. The Nov 2025 and June 2026 papers said **all arrays, variables and constants must be declared**. Recent scenarios also require rounding to a set number of decimal places, sorting a 2D array, and counting consecutive runs.
- **Data transmission is growing.** It earned 4 to 5 marks a session in 2022 and 2023, and 9 to 15 marks a session from 2024 onwards (USB, serial simplex, parity bytes, packet switching, encryption).
- **The internet and its uses is shrinking** from 24 marks (2022) to about 10 to 14 marks. Security solutions and the web still appear every year.
- **Software is back.** It was almost absent in 2023-ON and 2024-ON. In 2025 and 2026 it returned with low-level and assembly languages, assemblers, compilers versus interpreters, and IDE functions.
- **Long scenario questions on Paper 1.** Recent papers build one context (a smartwatch, a hospital, a video-streaming service) and ask about several topics within it. June 2025 had only 5 questions. Always apply your answer to the scenario.

---

## Question styles

**Command words, from least to most detail:**
- **Tick / Circle / Identify / State / Give** need a short answer: a term, a name or a single fact. Do not explain.
- **Describe** asks *what* something is or what happens, in steps. For example, "describe how lossless compression works" needs a sequence of technical points.
- **Explain** asks *how* or *why*. Each mark usually needs a point plus a reason or consequence. Tie each point to the context.
- **Outline** asks for a brief description of the main points.
- **Write / Complete** (pseudocode, SQL, a flowchart) is marked against specific features, such as the correct loop, the correct condition and the output message.
- **Draw and annotate** needs a simple labelled diagram. The examiners noted that elaborate drawings earned few marks; the labels carry the marks.

**Typical formats:**
- **Paper 1:**
  - gap-fill paragraphs from a word list (FDE cycle, cookies, SSL, virtual memory);
  - tables to complete with terms and descriptions;
  - conversions with working space;
  - calculations (file size in KiB);
  - "two benefits / one drawback" pairs;
  - 6-mark "explain how this system works" items (sensor and microprocessor, expert system, SSL handshake, web page retrieval).
- **Paper 2:**
  - 1-mark multiple-choice openers;
  - line-matching (gate symbols, flowchart symbols, programming concepts);
  - trace tables;
  - error correction with line numbers;
  - "state the purpose of this algorithm";
  - test-data tables (normal, abnormal, extreme, boundary);
  - SQL completion or output;
  - circuit plus truth table;
  - the 15-mark program.

---

## Common mistakes

Examiner reports were available for June 2022, Nov 2022 and June 2023.

**Paper 1**
- **Ignoring the context.** Generic textbook answers score less than answers applied to the scenario in the question.
- **Hexadecimal "saves storage space".** This is wrong. Hexadecimal is shorter *for humans to read and write*; the computer still stores binary.
- **Converting text to binary.** Candidates described how a keyboard works instead of explaining **character sets** (ASCII or Unicode), where each character has a unique binary code.
- **Lossless compression of text.** Candidates described lossy methods, or wrote about images when the question was about a text file.
- **Cloud storage disadvantages.** "It could be hacked" earns nothing, because local storage can be hacked too. Give a real difference, such as needing an internet connection or relying on a third party.
- **High-level and low-level languages mixed up.** "High-level" does *not* mean harder. High-level code is easier to debug and is machine independent.
- **Compilers.** Candidates gave the benefits of a compiler when the question asked how it translates the whole program and reports errors.
- **Inference engine.** Few candidates could explain its role: it applies the rules in the rule base to the facts in the knowledge base to reach a conclusion.
- **IPv4.** Candidates gave general facts about IP addresses rather than features specific to IPv4 (32-bit, four denary groups 0 to 255, separated by dots).
- **Proxy server confused with firewall.** Learn what each one does.
- **URL confused with IP address.**
- **System versus application software.** Candidates gave examples without describing the difference. Never use brand names.

**Paper 2**
- **Answering in the wrong form.** Use pseudocode when pseudocode is asked for and a flowchart when a flowchart is asked for, and follow the syllabus pseudocode style.
- **Adding checks that were not asked for.** In one question, candidates added range checks to a double-entry verification answer, which earned nothing.
- **Validation confused with verification.** Verification checks that data was copied or entered without change. It does not check that data is correct or sensible.
- **Wrong test data.** Abnormal data is for testing that input is *rejected*. It cannot be the answer when the question asks for data that should be accepted.
- **Trace tables.** Candidates stopped tracing before the algorithm ended, or added punctuation to the OUTPUT column that the algorithm would not print.
- **Database answers.** Candidates described the query output instead of writing it, included fields that were not shown, or listed rows in the wrong order. For data types, use only the types listed in the question.
- **Identifiers with spaces.** Constant, variable and array names must not contain spaces.
- **The 15-mark program.** The best answers met every bullet in the requirements, used the given arrays exactly as described, commented each section, and put a message with every input and output. Candidates lost time declaring things the question said were already set up.

---

## Grade thresholds

Raw marks needed. The component columns show the variant-2 papers analysed here (Paper 12 and Paper 22, each out of 75, or 50 for 2022 Paper 22). The route columns show the overall syllabus thresholds for the 12 + 22 entry route.

| Session | P12 A / C | P22 A / C | Route max | A* | A | B | C | D | E |
|---|---|---|---|---|---|---|---|---|---|
| Nov 2022 | 41 / 25 | 30 / 14 (of 50) | 125 | 87 | 71 | 55 | 39 | 32 | 25 |
| June 2023 | 42 / 20 | 44 / 20 | 150 | 109 | 86 | 63 | 40 | 33 | 27 |
| Nov 2023 | 41 / 21 | 44 / 25 | 150 | 105 | 85 | 65 | 46 | 37 | 29 |
| June 2024 | 48 / 23 | 47 / 22 | 150 | 120 | 95 | 70 | 45 | 37 | 29 |
| Nov 2024 | 44 / 25 | 44 / 26 | 150 | 107 | 88 | 69 | 51 | 42 | 33 |
| June 2025 | 48 / 24 | 52 / 30 | 150 | 123 | 100 | 77 | 54 | 47 | 41 |
| Nov 2025 | 41 / 22 | 43 / 23 | 150 | 104 | 84 | 64 | 45 | 37 | 29 |
| June 2026 | 47 / 23 | 47 / 20 | 150 | 120 | 94 | 68 | 43 | 36 | 29 |

What the thresholds show:
- **On the 150-mark papers:**
  - an **A** has needed **84 to 100 marks** (about 56% to 67%);
  - a **C** has needed **40 to 54 marks** (about 27% to 36%);
  - an **A\*** has needed **104 to 123 marks** (69% to 82%).
- **June 2025 was the highest year.** Its Paper 22 had its 15-mark Question 10 removed, which may explain the high Paper 22 thresholds.
- **Thresholds differ between variants.** For example, in June 2024 the 11 + 21 route needed 84 for an A, while the 12 + 22 route needed 95.
- **"Component 50" in the June 2026 file.** The file also lists a separate "Component 50" route (90 marks), which is not a written Computer Science paper in this sample.

---

## Revision priorities for Oct/Nov 2026 and 2027

1. **Write programs by hand, against the clock.** The 15-mark task is a fifth of Paper 2.
   - Practise scenarios that use parallel 1D and 2D arrays, validation loops, totals, averages, max/min, counting, rounding, and simple sorting or searching.
   - **Declare everything** and comment every section.
   - Aim for about 25 minutes per program.
2. **Trace tables and error-spotting.** Together they are worth about 10 marks every session.
   - Trace bubble sorts, string-processing loops and sentinel-controlled loops line by line.
   - Learn the usual planted errors: wrong terminator, wrong data type, wrong index, `OUTPUT` instead of `INPUT`, wrong starting value.
3. **Logic circuits.** Practise drawing circuits from expressions with NAND, NOR, XOR and NOT, using gates with at most two inputs. Also practise writing an expression from a worded rule, and filling in 8-row truth tables quickly.
4. **Validation, verification and test data.**
   - Name each check and write pseudocode for range, length, presence, type and format checks and for double entry.
   - Be able to choose normal, abnormal, extreme and boundary test data for a given range.
5. **SQL.** Practise `SELECT`, `FROM`, `WHERE`, `AND`, `ORDER BY`, `SUM` and `COUNT`, writing the output of a query exactly, and choosing data types (text, character, Boolean, integer, real, date/time).
6. **Number work on Paper 1.** These are reliable marks if you are accurate.
   - Conversions between binary, denary and hexadecimal (including 12-bit values).
   - 8-bit addition and overflow.
   - Logical shifts and their effect.
   - Two's complement.
   - File-size calculations in KiB and MiB.
7. **The CPU and storage.**
   - The FDE cycle using the correct register names.
   - Clock speed, cores and cache, and embedded versus general-purpose computers.
   - Virtual memory.
   - Cloud storage pros *and* cons.
8. **Rising topics.**
   - **Data transmission:** serial/parallel, simplex/duplex, USB, packet switching, parity bytes, ARQ, encryption.
   - **Software:** low-level/assembly language, assemblers, compilers versus interpreters, IDE features, and **interrupts**, which have been set only once so far.
9. **Security and AI explanations.** Practise 6-mark answers on how DDoS and data interception work (with an annotated diagram), how SSL creates a secure connection, how a web page is found using DNS, how an expert system reaches a diagnosis, and how machine learning improves a system.
10. **Quick review of rarely tested topics:** digital currency and blockchain, robotics, automated systems, MAC and IP addressing, and representing text, sound and images.

---

## Method and sample

- **Source.** Local files only. Every PDF was converted with `pdftotext -layout`.
- **Sample.** Variant 2 of each written component in each session (Papers 12 and 22), as the brief requires. That gives 16 papers across 8 sessions and 407 question-part rows.
- **May/June 2022.** The folder contains no question papers for this session, only the examiner report. It is used for the common-mistakes section only.
- **Examiner reports** exist locally for June 2022, Nov 2022 and June 2023 only.
- **Marks.** Marks come from the `[n]` brackets on each part. One mark shown only inside a table was taken from the mark scheme (Nov 2025 Paper 12 Q6(c) = 5). Every other paper's mark sequence was checked against the brackets printed on the paper.
- **Totals.** Each paper's rows add up to its cover total: 75, or 50 for the Nov 2022 Paper 22.
- **Withdrawn questions:**
  - **June 2023 Paper 22 Q5** (5 marks, file handling) was withdrawn after the exam, according to the examiner report and the mark scheme. It is still printed on the paper and is kept in the CSV.
  - **June 2025 Paper 22 Q10** (15 marks) was removed from the published paper and mark scheme. It is recorded as the extended programming task because it fills the 15-mark final slot that every other Paper 2 since 2023 uses for the program. Its actual content is unknown.
- **Topic names** follow the current syllabus areas (1 to 10), without numbers. The old-syllabus Nov 2022 questions were mapped onto these areas:
  - logic gates on Paper 1 count as Boolean logic;
  - pre-release Section A is filed under Programming, as "Pre-release material tasks";
  - query-by-example grids count as Databases queries.
- **Sensors.** A question about a sensor controlled by a microprocessor is filed under Hardware ("Sensors and microprocessor control"). Pure advantage and disadvantage questions about automation are filed under Automated and emerging technologies.
- **Limits of the sample.** With one variant per session, low counts in "Rarely tested" describe this sample only; other variants may have covered those topics. The shares are not official weightings.
- **Grade thresholds** come from the gt files for each session (none exists for June 2022).
