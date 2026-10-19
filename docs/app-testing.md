# Debug APK testing checklist (v0.1.0)

APK: `releases/debug/QuestionSimulator-0.1.0-debug.apk` (debug build, about 150 MB because it carries the debug
engine for every CPU type; a release build is far smaller). Debug builds also start a little slower.

## Install on a phone
1. Phone: Settings → About phone → tap Build number 7 times → Developer options → USB debugging on.
2. Connect by USB and accept the prompt on the phone, then on homi-nas:
   `adb install -r /mnt/storage/projects/O_Level/releases/debug/QuestionSimulator-0.1.0-debug.apk`
   (or copy the APK to the phone and open it; allow "install unknown apps" for the file manager).

## What to check
- [ ] App opens offline (turn on aeroplane mode first): home lists O Level, IGCSE, A Level subjects.
- [ ] Subject → topic list: shares, Banker/Rare badges, "x done" counts, search box filters topics.
- [ ] Topic → **By year**: year chips and paper filter narrow the list; newest first.
- [ ] Tap a question: sheet shows paper name, marks, subtopics; Mark done / Save work; Official past papers opens the browser.
- [ ] **Similar** tab: subtopic groups expand; ticks and saves match the By year tab.
- [ ] **Saved** (bookmark icon on home) lists saved questions; About → Clear removes them after confirmation.
- [ ] About → Check for new questions: online it says "You have the latest questions".
- [ ] Dark mode (phone setting) looks right; text readable at the largest font size.
- [ ] Back button behaviour, rotation, small-screen phone if available.

Note anything odd with the subject code and topic name; tags are machine-assisted and may have a few wrong labels.
