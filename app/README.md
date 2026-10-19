# Question Simulator — Android app

Flutter, Android only. Package `com.homilabs.questionsimulator` (never change it after the first Play upload).
Reads the same data packs as the website (`site/data/*.json`), bundled in `assets/data/` so the app works offline
from the first launch.

## Build
```bash
python3 ../pipeline/build_site.py   # refreshes site/ and copies the packs into assets/data/
flutter test                         # unit tests on the real packs + widget flow test (large and small phone)
flutter build apk --debug            # then: cd android && ./gradlew --stop
```
Gradle is capped at 3 GB heap and 2 workers (`android/gradle.properties`) for homi-nas.

## Code map
- `lib/data/models.dart` pack models, sort order, labels, banker/rare rule (same as the website)
- `lib/data/repository.dart` bundled vs downloaded packs; `checkForUpdate()` = six-monthly release hook
- `lib/data/user_store.dart` saved and done marks (shared_preferences, on the phone only)
- `lib/views/` home (subjects by level), subject (topics), topic (By year / Similar / Subtopics), saved, about
- `lib/widgets/` badges, links, question tile + detail sheet

## Update hook
On launch (and from About → "Check for new questions") the app fetches
`https://cambridgesimulator.homilabs.org/data/manifest.json`. If its `version` is newer than the installed content,
it downloads every pack into a version folder, parses each one, and only then switches. A failed or offline check
keeps the current content. Publishing a new release on the website therefore updates every installed app.

## Permissions
INTERNET only (update check). No ads, no analytics, no accounts.
