# 04 — App groundwork: Cambridge O Level / IGCSE / A Level practice app (Pakistan)

Research date: 19 Oct 2026. Sources: web search and page fetches. No files were downloaded on purpose, and no forms were submitted.
Note: Google Play listing pages were mostly truncated when fetched. Ratings and install counts come from the Play search results page or from third-party mirrors (APKPure, App Store), so check them by hand before relying on them.

---

## 1. Copyright and licensing

### Cambridge (Cambridge University Press & Assessment, "CAIE")
- **Who owns it.** Question papers, mark schemes, examiner reports and syllabuses are Cambridge copyright. Some passages, photos and maps inside papers are **third-party material** that Cambridge licensed only for the exam itself.
- **Schools may copy, nobody else may publish.** Teachers at registered Cambridge schools can download and print past papers from the **School Support Hub** for their own students. Cambridge's help centre says these materials "cannot be used for publication or re-sale" without prior approval. The UK sister board OCR has the same rule: free classroom use is fine as long as students are not charged. ([Cambridge help centre](https://help.cambridgeinternational.org/hc/en-gb/articles/115004333125-Can-I-reproduce-Cambridge-past-examination-papers-for-use-in-the-classroom-with-my-students), [OCR past paper policy](https://ocr-live-prd95.cambridgeassessment.org.uk/qualifications/past-paper-finder/past-paper-policy), [OCR copyright](https://ocr-live-prd95.cambridgeassessment.org.uk/about/our-policies/copyright/))
- **Public website.** Each syllabus page on cambridgeinternational.org lists only a small, recent set of papers publicly. For example, 9609 Business shows June 2024 plus specimen papers. The full archive is only on the School Support Hub for registered schools. ([9609 past papers page](https://www.cambridgeinternational.org/programmes-and-qualifications/cambridge-international-as-and-a-level-business-9609/past-papers/))
- **Formal licence for publishers** (Copyright Application, per publication) ([guidance](https://cambridgeinternational.org/Images/714683-application-copyright-guidance.docx), [form](https://www.cambridgeinternational.org/Images/714682-application-copyright-form.docx)):
  - At most **70 % of the questions in any one paper**, and only one variant per series.
  - **No papers set before 2018.**
  - Questions may not be altered, abridged or translated without written consent. This rules out an Urdu translation of a Cambridge question.
  - A source line is required for every question (syllabus, code, paper, question, series).
  - **Never granted:** specimen papers, **multiple-choice papers**, **mark schemes**, **principal examiner reports**, audio files, and syllabuses in full or in part.
  - Digital reproduction is decided **case by case** and needs a detailed request.
  - Administration fee per application/title: **£300** (1–50 questions), **£450** (51–100), **£600** (101+). The fee is charged even if the application is refused, and processing takes about 3 weeks.
  - **What this means for an app:** the business model of most past-paper apps (the whole archive, MCQ papers and mark schemes) cannot be licensed through this route.
- **Enforcement history.** I found no public record of court action or published takedowns against PapaCambridge, XtremePapers or similar sites. They have operated for 10+ years in a grey zone. Cambridge does act on **leaks**: in May 2026 an AS Maths 9709 paper leaked, Cambridge cancelled and replaced it, called it "the work of criminals" and said it was pursuing "several legal routes" ([The News](https://www.thenews.pk/story/1415338-cambridge-confirms-as-level-maths-paper-leak-cancels-upcoming-exam)). **A takedown or Google Play copyright strike stays a real risk for a re-hosting app.** Google Play removes apps on DMCA notices, and an indie developer account is easier to hit than a long-running website. The 1.7-star official PapaCambridge app shows that even big players do not do well in-app (see §2).
- **AI.** I found no specific Cambridge statement on using past papers to train or prompt AI. Its general publishing stance is "license it". Treat feeding papers into an AI service as the same as reproducing them.

### Pearson Edexcel (brief)
- All Edexcel materials (specifications, past papers, mark schemes) "may not be copied or made available electronically in whole or in part without permission".
- Approved centres may print papers for teaching without charging students, and may host them on a **closed** intranet. Those copies must be removed 5 years after the series.
- Papers with third-party content may be withheld from revision use.
- For anything else, contact copyrightPQS@pearson.com. There is no public licensing scheme for apps. ([Pearson copyright policy](https://qualifications.pearson.com/en/support/support-topics/exams/past-papers/pearson-copyright-policy.html))

### What is safe for an app (lowest to highest risk)
1. **Original questions "in the style of"** the exam, written by HomiLabs and mapped to syllabus learning objectives. You can copy the *format* (4-option MCQ, structured parts, command words like "state", "explain", "calculate") but not the wording. **Safe.**
2. **Original syllabus-based notes** and topic lists in your own words. Reference syllabus codes and topic numbers, but do not copy syllabus text. **Safe.**
3. **Metadata and indexes:** "Paper 22, Nov 2023, Q4 is about moments", tags, difficulty, your own worked solutions and explanations written from scratch. Wording question references factually is low risk. Your own solutions are your copyright, but they only make sense next to the paper, so they are best paired with linking out. **Low risk.**
4. **Linking out** to cambridgeinternational.org syllabus/past-paper pages, or opening them in an external browser. **Low risk.** Avoid in-app framing, and avoid deep-linking to third-party pirate mirrors (that is contributory and also looks bad on Play).
5. **Letting users import their own PDFs** (from their school or the public site) into a local viewer, with no hosting by you. **Low to medium risk** (the content is the user's own; do not market it as "all past papers").
6. **Re-hosting papers, mark schemes or examiner reports, or retyping them into an MCQ bank. Not safe** for a commercial app. MCQ papers and mark schemes are expressly excluded even from paid licensing.
- Also: do not use "Cambridge", "CAIE" or "O Level" in a way that implies endorsement. Add an "independent, not affiliated" line, as PaperStack does. Use syllabus codes descriptively only.

---

## 2. Competitors

| Product | What it offers | Price | Size / rating (where visible) | Notes / complaints |
|---|---|---|---|---|
| **PapaCambridge** (web + apps) | Huge free archive of CAIE papers, mark schemes, examiner reports, notes, e-books; syllabus; to-do/schedule | Free web; Play app "PapaCambridge – Exam Prep" has **ads + IAP** (tutors/courses) | New Play app **1.7★ (135 reviews), 10K+**; older community app 100K+; iOS 3.1★ (48) ([Play search](https://play.google.com/store/search?q=papacambridge&c=apps&hl=en), [APKCombo](https://apkcombo.com/papacambridge/com.MaskyS.papaCambridge/), [App Store](https://apps.apple.com/app/id1672242852)) | Very low rating suggests ads/upsell friction; the website stays dominant |
| **PaperStack** (paperstack.cc) | 15,000+ CAIE papers; QP/MS split view; **topical papers (MCQ + structured)**; on-screen MCQ auto-marking; **AI marking of structured answers against mark schemes**; multiplayer races; offline; dark mode | Free with ads (premium tiers likely) | O Level app **4.4★**, A Level **4.5★**; updated 10 Oct 2026 ([APKPure](https://apkpure.com/paperstack-igcse-o-level/com.apptic.pastpapersolevel), [Play search](https://play.google.com/store/search?q=o%20level%20past%20papers&c=apps)) | **Closest feature competitor.** Says "independent, not affiliated". Relies on re-hosted papers, so it carries the copyright risk above |
| **O Level / A Level Past Paper & Solutions** (Open Educational Forum) | 70+ subjects of papers + "solutions", offline | Free + IAP | 3.5★ / 3.4★ ([App Store](https://apps.apple.com/ng/app/o-level-past-papers-solution/id6446476825)) | Mid ratings |
| **My Past Papers** (C-Squared) | Multi-board (AQA, Edexcel, OCR, CAIE…) papers, MS, examiner reports; dashboard | Free, no ads | 4.3★ ([App Store](https://apps.apple.com/app/id1492995959)) | UK-focused |
| Other Play results | "AS & A Level Past Papers" (Sparkl), "O Level Mock Test 2026", "O Level Physics Quiz/Exercise" (4.7★), Rove Papers, Studeer | mostly free/ads | small | Many thin PDF wrappers |
| **Save My Exams** | Revision notes, **original exam-style questions by topic** with model answers, flashcards, mock exams, "Target Tests", past-paper index | Freemium; Premium monthly/annual, price shown per region ([SME pricing FAQ](https://www.savemyexams.com/learning-hub/support/is-save-my-exams-free/)) | Big global brand ([CIE O Level pages](https://www.savemyexams.com/o-level/boards/cie/past-papers/)) | **Model for the safe approach:** its main paid value is *original* topic questions, not papers. Expensive for Pakistan |
| **ZNotes** | 200+ student-written syllabus notes, 3,000+ chapter quizzes, "Ask Zee" AI tutor | Free | Says 7 M students ([App Store](https://apps.apple.com/pg/app/znotes-study-notes-revision/id6761271207)) | Strong among Pakistani students; notes, not drilling |
| **Seneca** | Adaptive courses for CIE/Edexcel IGCSE (14+ subjects), AI helper "Amelia" | Free core; Premium extras | 3.5 M users, mostly UK ([Seneca IGCSE](https://senecalearning.com/igcse)) | Weak on O Level codes and Pakistan-specific subjects |
| **Maqsad** (PK) | Video lessons, 15k+ MCQs per exam, mocks, **DoubtSolve** (snap a photo, get a video answer), live classes; covers CAIE/Edexcel O/A Level as well as MDCAT/ECAT | Subscription (price not public) | Says 4M+ downloads ([maqsad.io](https://maqsad.io/)) | Funded and video-heavy; data-hungry |
| **Out-Class** (PK, Lahore) | O Level crash courses, past-paper walkthrough videos, quiz banks | Paid courses | ([CB Insights](https://www.cbinsights.com/company/out-class/alternatives-competitors)) | Video-led |
| **Sabaq.pk** | 17,000+ free **Urdu** video lectures, 5 M users/yr | Free (foundation) | ([ProPakistani](https://propakistani.pk/2016/02/24/sabaq-pk-replacing-after-school-tuition-with-free-online-videos-in-urdu/), [Tutopiya](https://www.tutopiya.com/blog/igcse-keywords/sabaq-alternative-igcse-pakistan/)) | Mainly Matric/FSc boards; Cambridge is secondary |
| **Taleemabad** | National curriculum K-12 videos/games | Free/paid | — | Not Cambridge-aligned |
| Websites | pastpapers.co (incl. **topical** PDFs, e.g. Pakistan Studies 2059), Xtremepapers, GCE Guide | Free, ads | — | Topical PDFs compiled from papers, also grey zone ([pastpapers.co](https://pastpapers.co/caie/o-level/pakistan-studies-2059/topical-past-papers)) |

Common pattern: the market is **crowded with past-paper PDF viewers**, and the leaders (PaperStack, PapaCambridge) already offer topical sorting, offline use and even AI marking. All of them sit on content Cambridge says it will not license.

---

## 3. Market

- **Size (Pakistan):**
  - **June 2024:** 100,000+ students from 683 schools; **226,000+ O Level/IGCSE entries** and **125,000+ AS/A Level entries** ([ProPakistani 2024](https://propakistani.pk/2024/08/13/cambridge-announces-o-level-a-level-as-igcse-results-for-pakistan/amp/), [Geo](https://www.geo.tv/latest/505206-over-60000-cambridge-students-in-pakistan-to-get-igcse-o-level-results-today)).
  - **June 2025:** **248,000+ O Level/IGCSE entries** and **127,900+ AS/A Level entries**, 700+ schools ([ProPakistani 2025](https://propakistani.pk/2025/08/12/as-and-a-level-results-announced/amp/), [result.pk](https://www.result.pk/educom/cambridge-igcse-o-level-results-2025-announced-51742.htm)).
  - **June 2026:** 100,000+ students from 850+ schools. Top subjects: Physics, Maths, Business, Chemistry, Computer Science ([Express Tribune](https://tribune.com.pk/story/2623395/100k-pak-students-receive-cambridge-results)).
  - For context, global June 2025 entries were about **227,000 O Level** and about 740,000 IGCSE. O Level is mainly taken in South Asia, so **Pakistan is very likely Cambridge's largest O Level market**. This is my inference: I did not find Cambridge stating it.
  - **About 50–60k O Level students per year**, each taking around 7–9 subjects (2022: ~56,000 students, 200,000 entries).
- **Ability to pay:** exam fees are about PKR 30–45k per subject, and home tuition about PKR 15–25k per month per subject ([NGS blog](https://ngs.edu.pk/?p=998624)). Families spend heavily, so a low-priced app (PKR 300–1,000/month) is cheap next to tuition.
- **Exam series:**
  - **May/June:** papers from late April to mid June. AS/A results around **11 Aug**, O Level/IGCSE around **18 Aug** in 2026 ([ARY](https://arynews.tv/cambridge-announces-as-a-o-level-results-for-june-2026-exams)).
  - **Oct/Nov:** results in January.
  - **Feb/March:** **India only**, and only for selected high-entry IGCSE/A Level syllabuses. **O Level is not offered in March.** So for Pakistan there are 2 sessions per year ([Cambridge FAQ](https://www.cambridgeinternational.org/Images/what-syllabuses-are-available.pdf)).
  - Peak app demand: **Feb–May** and **Aug–Oct**.
- **What students struggle with** (sources here are weaker: news and education blogs, no formal survey found):
  - heavy reliance on paid tuition academies and rote learning;
  - learning *exam technique* (command words, mark-scheme language) rather than content;
  - long, unorganised past-paper PDFs: the demand for "topical" compilations shows students want questions grouped by topic;
  - Pakistan-only subjects (Pakistan Studies 2059, Islamiyat 2058, Urdu 3247/3248) are poorly served by global platforms;
  - cost of data and power cuts (offline use matters);
  - exam disruption and stress (2026 leak, regional tensions mentioned by Cambridge's Pakistan director).

---

## 4. Question types an app must support

Example: O Level Physics 5054 ([syllabus](https://WWW.CAMBRIDGEINTERNATIONAL.ORG/Images/697324-2026-2028-syllabus.pdf)) has Paper 1 with 40 four-option MCQs, Paper 2 structured theory (Section A compulsory, Section B choose 2 of 3), and Papers 3/4 practical or alternative-to-practical with planning questions. Most O Level/IGCSE sciences follow this shape. Maths has no MCQ paper. Humanities and languages are essay/source-based.

| Type | Where | Auto-mark feasibility |
|---|---|---|
| 4-option MCQ | Sciences P1, Economics/Business P1, Accounting P1 | **Fully automatic.** Best first target |
| Numeric answer (with units, sig. figs, tolerance) | Maths, Physics, Chemistry calcs, Accounting | **Automatic** with tolerance and unit checks; method marks need step entry |
| Short "state/name/give" answers (1–2 marks) | All sciences, Geography, Biology | **Mostly automatic** with keyword/synonym lists + AI as backup; flag doubtful cases |
| Algebraic/expression answers | Maths, Add Maths | Automatic with symbolic equivalence (CAS); harder on a phone |
| Multi-step "show that"/working | Maths, Physics | Partial: grade the final answer, show model working; AI gives a rough grade only |
| "Explain/describe" 2–6 marks | Sciences, Economics, Pak Studies, Geography | **AI-assisted** against a points-based mark scheme. Reasonable as *feedback*, not as an official grade |
| Diagrams, graphs, drawings, ray diagrams, circuits | Physics, Biology, Geography, Chemistry | **Hard.** Use self-marking with a checklist, or drag-and-label interactions instead of free drawing |
| Data/table/graph reading | Sciences ATP, Geography | Automatic if made interactive (pick a value, plot a point) |
| Extended essays / source questions (levels-marked) | History, Pak Studies, Islamiyat, English, Business case | AI feedback against level descriptors is only indicative; best as **self-assessment with model answers** |
| Language (Urdu, English) writing | 3247/3248, 1123 | AI feedback possible; Urdu NLP quality varies |

Practical plan: **MCQ + numeric + short keyword answers** cover a large share of marks in the sciences and are reliably auto-markable offline. Longer answers can get on-device rubric self-marking first, with optional online AI feedback later.

---

## 5. Gaps and opportunities

1. **Legally clean question bank.** Almost every Pakistani-facing app re-hosts Cambridge papers. A bank of **original exam-style questions** (Save My Exams' model, at Pakistani prices) is the safe and distinctive option, and it survives a Play takedown wave.
2. **Pakistan-only subjects:** Pakistan Studies (history and geography), Islamiyat, Urdu. Global players are weak here, and these are compulsory for most Pakistani O Level students.
3. **Urdu / Roman-Urdu explanations** of hard concepts, alongside English answers (the exam stays in English). Sabaq shows demand for Urdu explanation, but nobody does it for Cambridge. Use original content only, since translating Cambridge questions is forbidden.
4. **Offline-first, low-data, low-end Android:** small downloadable topic packs (text and vector diagrams, not scanned PDFs), work without a network, sync later. Most competitors are PDF-heavy (MBs per paper) or video-heavy (Maqsad, Out-Class).
5. **Mark-scheme-style feedback that teaches technique:** command-word drills, "what earns the mark" breakdowns, common mistakes. These should be written originally from general exam-technique knowledge, not copied from examiner reports.
6. **Spaced repetition and weak-topic tracking** mapped to syllabus objective numbers, plus an exam countdown planner tied to the June/Nov timetable.
7. **Price:** a one-time unlock or a cheap season pass in PKR (local payment via Play/JazzCash carrier billing). SME-level pricing is out of reach for many students.
8. Already crowded (avoid competing head-on): PDF viewers, topical PDF compilers, AI-marking-on-pirated-papers (PaperStack has this), video lectures (Maqsad/Out-Class).

---

## Recommendations / safe approach

1. **Do not host, bundle or retype Cambridge or Edexcel past papers, mark schemes, examiner reports or MCQ papers.** Even Cambridge's paid licence excludes MCQ papers and mark schemes, and charges £300–600 per application with a 70 % cap.
2. **Build on original content:** HomiLabs-written exam-style questions, model answers and notes, tagged to syllabus codes and objective numbers (factual references only, no syllabus text). Use a writer/reviewer workflow and keep a provenance log per question, so ownership can be shown if a Play copyright complaint arrives.
3. **For real past papers, link out** to the official cambridgeinternational.org syllabus pages (open in the browser), and optionally let users open PDFs they already have, stored locally. Never link to pirate mirrors.
4. **Start narrow:** one or two high-entry O Level subjects (e.g. Physics 5054 or Chemistry 5070 MCQ + short answers, or Pakistan Studies 2059, where competition is weak). Offline-first, with auto-marking for MCQ, numeric and keyword answers.
5. **Add the differentiators:** Urdu/Roman-Urdu explanations, command-word technique drills, and weak-topic tracking with spaced repetition. AI feedback on longer answers can be a later, online, clearly labelled "practice feedback" feature, fed only with HomiLabs' own questions and mark points.
6. **Branding:** no Cambridge or Pearson logos; a prominent "independent, not affiliated with or endorsed by Cambridge University Press & Assessment or Pearson" notice; use exam names only descriptively.
7. **Before launch:** get a short opinion from a Pakistani or UK IP lawyer on the final content model. If it is ever needed, email Cambridge Publisher Relations (Publisher.Relations@cambridge.org) or Pearson (copyrightPQS@pearson.com) with a specific, small request. Do not assume silence means permission.
8. **Time the launch** to the Feb–May revision peak (for the May/June series), using Aug–Oct for the Nov series.
