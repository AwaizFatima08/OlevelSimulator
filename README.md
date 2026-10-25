# Question Simulator

Free, non-profit study aid by [HomiLabs](https://homilabs.org): Cambridge O Level, IGCSE and A Level past paper
questions sorted by topic, listed year by year, with similar questions grouped by subtopic.

- Website: https://questionsimulator.homilabs.org (static HTML on Hostinger)
- Android app: `app/` (Flutter, `com.homilabs.questionsimulator`); reads the same data packs (`site/data/*.json`).
  See [app/README.md](app/README.md) and [docs/app-testing.md](docs/app-testing.md).
- No complete papers, mark schemes or examiner reports are published. See [docs/architecture.md](docs/architecture.md).

## Layout
| Path | What |
|---|---|
| `tools/fetch_papers.py` | Downloads past papers into `papers/` (private, gitignored, never published) |
| `research/` | Source-site index, app groundwork, and per-subject topic analyses (`topic-analysis/<code>-questions.csv` + report) |
| `pipeline/subjects.json` | Subjects, levels and paper names |
| `pipeline/release.json` | Current content release (bump every six months) |
| `pipeline/build_site.py` | Builds `site/` from the CSVs and reports |
| `pipeline/static/` | Stylesheet, script, favicon, `.htaccess` copied into `site/` |
| `site/` | Generated website + app data packs (committed; deployed from the `deploy` branch) |
| `scripts/backup.sh` | Three-layer backup: local, Google Drive, GitHub |
| `scripts/publish.sh` | Rebuilds the site and pushes `site/` to the `deploy` branch |
| `docs/` | Architecture and the six-monthly release checklist |

## Common commands
```bash
python3 pipeline/build_site.py          # rebuild site/
python3 -m http.server 8765 -d site     # preview at http://localhost:8765
bash scripts/publish.sh                 # build + push deploy branch (Hostinger auto-deploys it)
bash scripts/backup.sh                  # local + Drive + GitHub backup
```
