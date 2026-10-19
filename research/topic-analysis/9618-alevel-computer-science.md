# Cambridge International AS & A Level Computer Science (9618): topic analysis, 2022 to June 2026

This guide covers nine exam sessions, from May/June 2022 to May/June 2026. It shows which syllabus areas carry the most marks, which come up nearly every time, and what examiners keep marking down. All numbers come from variant 2 of Papers 1, 2 and 3 in each session: 27 papers and 2,025 marks. The question-by-question data is in `9618-questions.csv`.

---

## 1. Paper structure

| Paper | Title | Level | Marks | Time | How it is taken |
|---|---|---|---|---|---|
| 1 | Theory Fundamentals | AS | 75 | 1 h 30 min | Written; no calculator |
| 2 | Fundamental Problem-solving and Programming Skills | AS | 75 | 2 h | Written; comes with an **insert** listing the pseudocode functions you may use |
| 3 | Advanced Theory | A Level | 75 | 1 h 30 min | Written |
| 4 | Practical | A Level | 75 | 2 h 30 min | **On a computer**, in Java, Python or Visual Basic (console mode); you paste code and screenshots into an evidence document |

- **AS Level** is Papers 1 and 2 (150 marks). **Full A Level** is all four papers (300 marks), each worth the same.
- **Topics are split by level.** Topics 1–12 (information representation through software development) are AS. Topics 13–20 (data representation through further programming) are A Level. Paper 3 also expects you to know the AS theory.
- **The format did not change from 2022 to 2026.** Every paper was 75 marks with the same timings. All questions are compulsory, and no paper has a choice of questions.
- **2026 changes are cosmetic.** Papers now say "Cambridge University Press & Assessment" in the footer, and the layout is a little different. The question types and mark totals are the same.
- **Paper 1 has 7–11 questions**, each set in a scenario (a school network, a car, a game database). Parts are worth 1–6 marks.
- **Paper 2 has 6–8 questions.** Each paper ends with one or two long scenario questions where you write pseudocode modules, often worth 6–8 marks a part.
- **Paper 3 has 9–13 short questions,** each on a different A Level topic. Parts are mostly worth 1–5 marks, and a few are worth up to 7.
- **Paper 4 is not in the topic tables.** It has no written answers. See "Method and sample" for what its tasks usually involve.

---

## 2. Topic weights

Share of each paper's marks across the 9 sessions (675 marks per paper). "Sessions" means how many of the 9 papers tested the topic.

### Paper 1 – Theory Fundamentals

| Topic | Share of marks | Sessions examined |
|---|---|---|
| Databases | 17.6% | 9/9 |
| Information representation | 15.0% | 9/9 |
| Processor fundamentals | 14.8% | 9/9 |
| Communication | 13.3% | 8/9 |
| Hardware | 12.4% | 9/9 |
| System software | 12.3% | 8/9 |
| Security, privacy and data integrity | 9.0% | 8/9 |
| Ethics and ownership | 5.5% | 6/9 |

**Biggest subtopics:**
- Assembly language and addressing modes: 38 marks.
- Security threats and protection: 38 marks.
- Logic gates and circuits: 37 marks.
- SQL queries: 33 marks.
- Bitmap and vector graphics: 32 marks.

### Paper 2 – Fundamental Problem-solving and Programming Skills

| Topic | Share of marks | Sessions examined |
|---|---|---|
| Algorithm design and problem-solving | 31.3% | 9/9 |
| Data types and structures | 29.8% | 9/9 |
| Programming | 21.6% | 9/9 |
| Software development | 17.0% | 9/9 |
| Security, privacy and data integrity (validation) | 0.3% | 1/9 |

**Biggest subtopics:**
- Writing pseudocode algorithms: 119 marks.
- String and built-in functions: 102 marks.
- Text files: 65 marks.
- Stacks, queues and linked lists: 57 marks.

### Paper 3 – Advanced Theory

| Topic | Share of marks | Sessions examined |
|---|---|---|
| Data representation | 18.5% | 9/9 |
| System software (A Level) | 16.1% | 9/9 |
| Hardware and virtual machines | 16.1% | 9/9 |
| Further programming | 15.0% | 9/9 |
| Computational thinking and problem-solving | 12.4% | 9/9 |
| Communication and internet technologies | 9.9% | 9/9 |
| Security | 6.1% | 7/9 |
| Artificial intelligence | 5.8% | 7/9 |

**Biggest subtopics:**
- User-defined data types: 55 marks.
- Boolean algebra and Karnaugh maps: 52 marks.
- Abstract data types: 51 marks.
- Protocols and the TCP/IP suite: 46 marks.
- Floating-point representation: 45 marks.

---

## 3. Bankers

These came up in almost every session (8 or 9 of 9). Learn them first.

**Paper 1**
- **Logic gates and circuits (9/9).**
  - Every paper has a truth table to complete, a circuit to draw, or an expression to write from a circuit.
  - The truth table is usually 2 marks and the circuit 2–3 marks.
- **Relational database terms (8/9).** Primary, foreign, candidate and composite keys, and how the tables are linked.
- **SQL (6/9 for queries, plus DDL in 3 more).**
  - Queries with SELECT, COUNT, JOIN and WHERE on dates or text.
  - Recently also CREATE TABLE and ALTER TABLE.
- **Number work (7/9 each).**
  - Converting between denary, binary, hexadecimal and BCD.
  - Two's complement, binary addition and subtraction.
  - Kibi/mega units.
- **Bitmap images and compression (7/9 each).**
  - Resolution and colour depth, and file-size estimates.
  - Run-length encoding (RLE), lossy versus lossless compression, and vector drawing lists.
- **Assembly language and bit manipulation (7/9 each).**
  - Tracing a short program in a trace table.
  - Addressing modes (immediate, direct, indirect, indexed, relative).
  - Logical and cyclic shifts.
  - AND/OR/XOR masks.
- **Security threats (7/9).** Malware, hacking, phishing and pharming, and the matching protections: firewalls, authentication, encryption.

**Paper 2**
- **String handling with the insert functions (9/9).** MID, LEFT, RIGHT, LENGTH, UCASE and NUM_TO_STR used inside your own functions.
- **Writing a pseudocode module from a scenario (8/9).** Usually two parts worth 5–8 marks each at the end of the paper.
- **Text files (8/9).** OPENFILE, READFILE, WRITEFILE, APPEND, CLOSEFILE and loops until EOF.
- **Data types, records and arrays (8/9).**
  - Choosing data types.
  - Declaring a record TYPE and 1D or 2D arrays.
  - Evaluating expressions.
- **Structure charts and state-transition diagrams (8/9).**
- **Testing and maintenance (8/9).**
  - White-box, black-box, stub, integration, alpha, beta and acceptance testing.
  - Corrective, adaptive and perfective maintenance.

**Paper 3**
- **User-defined data types (9/9).** Enumerated, set, pointer and record (composite) types, written in pseudocode.
- **Floating-point binary (8/9).**
  - Converting to and from denary.
  - Normalising.
  - Range versus precision.
  - Underflow and overflow.
- **Karnaugh maps and Boolean algebra (8/9).**
  - Filling in a K-map.
  - Looping groups.
  - Writing the simplified sum-of-products.
  - Simplifying with De Morgan's laws.
- **Protocols and the TCP/IP suite (8/9).** The four layers, plus HTTP, FTP, POP3, IMAP, SMTP and BitTorrent.
- **Either BNF/syntax diagrams or Reverse Polish notation.**
  - 8 of the 9 papers had one or the other.
  - They have taken turns since 2023: BNF in 2023-MJ, 2024-ON and 2025-MJ; RPN in 2023-ON, 2024-MJ, 2025-ON and 2026-MJ.

---

## 4. Rarely tested

These appeared in 1–3 of the 9 sampled papers. Revise them briefly, but do not skip them: Cambridge can still set any syllabus point.

**Paper 1**
- **Character sets (ASCII and Unicode):** 1/9.
- **Wireless and cellular networks:** 1/9.
- **The fetch–execute cycle and interrupts:** 2/9. Register transfer notation came up in 2022-ON; interrupt handling in 2025-MJ.
- **Privacy versus integrity definitions:** 2/9.
- **Professional ethics and codes of conduct:** 2/9.
- **Normalisation:** 3/9, and none since 2024-MJ.
- **Sound sampling:** 3/9.
- **Ethernet and CSMA/CD:** 3/9, all in 2022–2023.

**Paper 2**
- **Drawing a program flowchart, or turning one into pseudocode:** 3/9.
- **Completing a trace table:** 3/9.
- **Identifier tables:** 3/9.
- **Sorting algorithms (bubble sort):** 4/9, including a whole question in 2026-MJ.

**Paper 3**
- **Memory management, virtual memory and disk thrashing:** 1/9 (2023-ON).
- **SSL/TLS:** 1/9 (2025-MJ).
- **Quantum cryptography:** 1/9 (2023-MJ).
- **Low-level programming paradigms:** 1/9 (an assembly-language task in 2025-ON).
- **Parallel processing (SISD/SIMD/MISD/MIMD):** 2/9.
- **RISC/CISC and pipelining:** 2/9.
- **Declarative programming (Prolog):** 3/9, and not seen since 2024-MJ.
- **Virtual machines:** 3/9.
- **Searching and Big O:** 3/9.
- **No sorting algorithm (insertion or bubble sort) appeared in any sampled Paper 3.**

---

## 5. Trends

The sample is split into 2022–2023 (4 sessions) and 2024–2026 (5 sessions).

**Paper 1**
- **Ethics and ownership grew,** from about 3% to 8% of marks. Software licences (commercial, open source, free software) and copyright appeared in 2024-ON, 2025-MJ and 2025-ON. 2026-MJ had none.
- **Hardware grew,** from about 10% to 15%. The growth came from embedded systems, RAM/ROM/EEPROM, and sensors in monitoring or control systems.
- **Communication shrank,** from about 15% to 12%.
  - It was absent from 2024-ON and had only 4 marks in 2026-MJ.
  - It had 19 marks in 2025-MJ, so it swings a lot from paper to paper.
- **SQL has widened** from queries only to table definitions as well (CREATE TABLE in 2024-MJ and 2026-MJ, ALTER TABLE in 2025-ON).

**Paper 2**
- **Fewer marks for writing whole algorithms from scratch** (about 35% falling to 29%).
- **More marks for data structures** (about 27% rising to 32%), especially arrays and records.
- **The life cycle and testing gained ground.**
  - 2026-MJ opened with a long scenario question (a password and alarm system) covering validation, state-transition diagrams, design outputs and testing methods.
  - That question was 27 of the paper's 75 marks.

**Paper 3**
- **Computational thinking fell** from about 15% to 10% (fewer linked-list and stack pseudocode tasks). Recursion has appeared in 3 of the last 6 papers.
- **Communication and internet technologies rose** from about 8% to 12%. Circuit versus packet switching came up three sessions in a row (2024-ON, 2025-MJ, 2025-ON).
- **OOP and exception handling hold steady.** OOP was examined in 6/9 papers, including 2025-MJ and 2026-MJ. File processing (random files) and exceptions were also in 6/9.
- **AI is small but regular.** Machine learning (supervised, unsupervised, reinforcement and deep learning, back-propagation) was in 6/9 papers. A shortest-path calculation with Dijkstra or A* was in 4/9.

---

## 6. Question styles

The opening command word decides the kind of answer. The figures below are the share of marks by command word. They were counted automatically, so treat them as rough.

| Paper | Main command words (share of marks) |
|---|---|
| 1 | Describe 21%, Complete 19%, Explain 19%, Identify 11%, Write (SQL or a logic expression) 9%, Draw 4%, State 4%, Convert 3% |
| 2 | Write (pseudocode) 36%, Complete 27%, Identify 9%, Describe 7%, State 6%, Explain 5% |
| 3 | Write 19%, Complete 17%, Describe 13%, Explain 12%, State 7%, Calculate 6%, Identify 6%, Outline 4%, Draw 4% |

**Typical formats**
- **Paper 1.**
  - Matching terms to definitions by drawing lines.
  - Tick-box tables.
  - Truth tables and logic diagrams.
  - Conversions with working shown.
  - Trace tables for an assembly program.
  - SQL scripts to write or correct.
  - Short "explain why…" answers that must refer to the scenario.
- **Paper 2.**
  - Identifier and data-type tables.
  - Evaluating expressions with the insert functions.
  - Completing a trace table or the state of a stack or queue.
  - Completing a structure chart or state-transition table.
  - Writing a full function or procedure from a module description, usually 6–8 marks.
  - Short "describe the steps" algorithm answers where pseudocode is not allowed.
- **Paper 3.**
  - Declaring types in pseudocode.
  - Floating-point calculations.
  - Completing K-maps.
  - RPN with the stack shown at each step.
  - BNF and syntax diagrams.
  - Writing Prolog clauses, goals and rules.
  - Completing a Dijkstra or A* working table.
  - Filling gaps in pseudocode for stacks, queues, linked lists or random files.

---

## 7. Common mistakes

These come from the examiner reports for 2022-MJ, 2022-ON and 2023-MJ.

**Paper 1**
- **Mixing up similar terms.** For example, image resolution versus bit depth, screen resolution versus image resolution, and primary versus secondary storage.
- **Generic answers that ignore the scenario.** "It is embedded because it is inside the car" gets no credit.
- **Answering the wrong way round.** For example, shifting right instead of left, or explaining the effect of decreasing a value when the question asked about increasing it.
- **Two's complement errors.** Taking the one's complement of a value that was already two's complement, and dropping the minus sign.
- **Unclear binary digits.** Overwritten digits that look like "φ". Cross out and rewrite instead.
- **Unclear logic gates.** OR and AND gates that look alike, and NOT gates drawn without the circle. Use the syllabus symbols.
- **Writing more answers than asked for.** If the question asks for three reasons, only the first three are marked.
- **Weaker topics.** Examiners note that networks and databases were answered less well than images and binary.

**Paper 2**
- **Pseudocode that is not valid.** For example, `IF x = 3 OR 4`, `FOR i ← 1 TO EOF(...)`, or using AND to join output items.
- **Forgetting the assignment arrow** in FOR loops.
- **Using functions that are not in the insert.**
- **Ignoring parameters.** Asking the user to INPUT values that should arrive as parameters, or using OUTPUT where RETURN is needed.
- **File handling slips.**
  - Missing CLOSEFILE, or CLOSEFILE without the file name.
  - Putting a parameter name in quotes as if it were a literal.
  - Not stating the file mode.
  - Trying to use LENGTH() to count the lines in a file.
- **Counters and strings.** Not initialising a counter, or initialising it inside the loop. Treating a string as an array instead of using MID.
- **Mixing up ADTs.** "Push" and "pop" used for a queue, and the stack pointer left out of diagrams even when the question asks for it.
- **Mixing up testing types.** Integration, stub, black-box and user testing get confused.
- **Repeating the question** in "describe the steps" answers instead of giving precise steps.

**Paper 3**
- **TYPE versus DECLARE.** Writing DECLARE where a type definition needs TYPE, and leaving out quotes around string values.
- **Digital signature versus digital certificate.** These two are often confused.
- **De Morgan's laws.** Splitting the bar over a term but leaving the AND as AND (it must become OR).
- **Off-by-one errors in ADTs.** Wrong MaxIndex or rear-pointer start values, and `< Max - 1` written where `< Max` was needed.
- **Missing the point of PRIVATE.** Saying PRIVATE attributes exist for data security in general, rather than for encapsulation.

**Paper 4 (not tagged, but worth knowing)**
- Reading input inside a function that should take a parameter.
- Arrays declared one element short, or with the wrong dimensions.
- Leaving out `self` in Python methods.
- Not showing evidence of test inputs in screenshots.

---

## 8. Grade thresholds

These are the minimum raw marks for grades A and E on each variant-2 paper (each out of 75), plus the overall thresholds.
- **A Level option AY** (papers 12, 22, 32, 42) is out of 300.
- **AS option SY** (papers 12 and 22) is out of 150.

| Session | P12 A / E | P22 A / E | P32 A / E | P42 A / E | A Level AY: A* / A / C / E | AS SY: A / C / E |
|---|---|---|---|---|---|---|
| 2022-MJ | 46 / 21 | 38 / 14 | 48 / 18 | 63 / 15 | 229 / 195 / 130 / 68 | 84 / 57 / 35 |
| 2022-ON | 44 / 22 | 45 / 18 | 47 / 20 | 54 / 19 | 221 / 190 / 132 / 79 | 89 / 64 / 40 |
| 2023-MJ | 42 / 18 | 43 / 16 | 54 / 25 | 62 / 16 | 231 / 201 / 139 / 75 | 85 / 58 / 34 |
| 2023-ON | 46 / 18 | 47 / 18 | 46 / 21 | 59 / 19 | 232 / 198 / 134 / 76 | 93 / 64 / 36 |
| 2024-MJ | 47 / 20 | 47 / 21 | 47 / 16 | 50 / 14 | 222 / 191 / 130 / 71 | 94 / 67 / 41 |
| 2024-ON | 44 / 16 | 42 / 12 | 55 / 27 | 42 / 12 | 215 / 183 / 123 / 67 | 86 / 56 / 28 |
| 2025-MJ | 50 / 22 | 50 / 19 | 43 / 14 | 54 / 18 | 228 / 197 / 135 / 73 | 100 / 72 / 41 |
| 2025-ON | 49 / 21 | 46 / 16 | 54 / 23 | 49 / 13 | 233 / 198 / 133 / 73 | 95 / 64 / 37 |
| 2026-MJ | 48 / 20 | 51 / 22 | 49 / 22 | 58 / 19 | 240 / 206 / 142 / 83 | 99 / 70 / 42 |

**What the thresholds show**
- **Paper 1 grade A needs 42–50 out of 75** (56–67%).
- **Paper 2 has moved the most.** Grade A needed only 38 in 2022-MJ but 51 in 2026-MJ.
- **Paper 4's grade A ranges from 42 to 63.** The practical paper varies most in difficulty.
- **June 2026 had the highest overall A Level thresholds in the sample:** 240 for A* and 206 for A, out of 300.

---

## 9. Revision priorities for Oct/Nov 2026 and 2027

1. **Paper 2 pseudocode fluency comes first.** It is about a quarter of AS marks and feeds into Papers 3 and 4.
   - Practise writing full functions and procedures that use the insert's string functions, text files (read loop until EOF; always CLOSEFILE), 1D/2D arrays and records.
   - Use parameters and RETURN correctly.
   - Then practise filling in stack, queue and linked-list diagrams, including the pointers.
2. **Paper 1 core skills you can count on.**
   - Logic circuits and truth tables.
   - Binary, hex, BCD and two's complement.
   - Bitmap file sizes and RLE.
   - Assembly trace tables, addressing modes and shift/mask instructions.
   - SQL: SELECT with COUNT, JOIN and date conditions, plus CREATE TABLE.
   - Keys and table relationships.
3. **Paper 1 topics that are "due".**
   - **Communication:** LAN/WAN, topologies, switches and routers, IP addressing, DNS, cloud. It had little weight in 2024-ON and 2026-MJ.
   - **Ethics and licensing:** absent in 2026-MJ but frequent in 2024–25.
   - **OS and utility software, translators, IDE debugging features:** these appear in most sessions.
4. **Paper 3 sure things.**
   - Floating-point conversion and normalisation.
   - Declaring enumerated, set and record types.
   - K-maps and De Morgan's laws.
   - TCP/IP layers and application protocols.
   - Revise both BNF/syntax diagrams and RPN. They take turns, and BNF has not appeared since 2025-MJ.
5. **Paper 3 topics to refresh because they are overdue.**
   - Process scheduling and interrupts: in 4/9, but not in 2026-MJ.
   - Prolog clauses and rules: not since 2024-MJ.
   - Circuit versus packet switching.
   - Digital certificates and signatures.
   - Virtual machines.
   - Dijkstra/A* working tables.
   - Machine-learning types.
6. **Paper 4 (practical).** Practise timed programming of:
   - stacks, queues, linked lists and binary trees using arrays;
   - an OOP class with a constructor, getters and setters, and inheritance;
   - reading a text file into an array or records;
   - recursion;
   - insertion sort, bubble sort and binary search.

   Always screenshot both your test inputs and the outputs.
7. **Exam technique.**
   - Answer in the context of the scenario.
   - Use exact technical terms.
   - Give exactly as many points as the question asks for.
   - Show working for conversions and floating-point questions.
   - Write binary digits clearly.

---

## Method and sample

**Data and conversion**
- **Sources:** local past papers in `papers/a-level/computer-science-9618/` only (no network). Nine sessions: 2022-MJ, 2022-ON, 2023-MJ, 2023-ON, 2024-MJ, 2024-ON, 2025-MJ, 2025-ON, 2026-MJ.
- **Not used:** the 2021 files stored in the 2022-may-june folder.
- **Conversion:** every PDF was converted with `pdftotext -layout`.

**What was tagged**
- **Sample:** variant 2 of Papers 1, 2 and 3 in every session, which is 27 papers and 706 question parts.
- **Labels and marks:** part labels and `[n]` marks were taken from the question papers by script.
- **Cross-check:** labels were checked against the mark-scheme labels. Each paper's rows add up to its cover total of 75 (validated in Python).
- **Topics:** each part was tagged by hand with one syllabus topic and one subtopic.
  - Topic names follow the 9618 syllabus, without their numbers.
  - The A Level System Software topic is labelled "System software (A Level)" to tell it apart from the AS topic.
  - Multi-skill parts are filed under their main content.
  - Long Paper 2 modules go under the structure they mainly exercise: text files, string functions or arrays. If none dominates, they go under "Writing pseudocode algorithms".

**Paper 4**
- **Why it is not in the CSV:** Paper 4 is taken on a computer, and all answers go into an electronic evidence document. The question paper has no written questions, so its marks are excluded from the topic weights.
- **What its tasks covered:** a keyword scan of the nine Paper 42s shows each one had at least one data-structure task:
  - a stack in 2022-MJ, 2023-ON and 2025-MJ;
  - a queue in 2022-ON, 2023-MJ and 2024-ON;
  - a binary tree in 2024-MJ and 2025-ON;
  - a linked list in 2026-MJ.
- Most Paper 42s also included an OOP class and text-file input. Recursion or sorting appeared in several.

**Other sources and caveats**
- **Examiner reports:** only available for 2022-MJ, 2022-ON and 2023-MJ (§7).
- **Grade thresholds:** taken from the grade-threshold file for each session.
- **2026 files:** watermarked third-party downloads with long file names. Their content and layout match Cambridge papers.
- **Command-word shares (§6):** keyword-based, so a few parts may be miscounted.
- **Percentages:** these describe this sample (one variant per session). They are not official syllabus weightings.
