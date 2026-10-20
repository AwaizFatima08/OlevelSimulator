# Six-monthly release checklist

| Exam series | Papers on mirror sites | Release version |
|---|---|---|
| May/June | about mid-August | `YYYY-08` |
| Oct/Nov | about mid-January | `YYYY-01` |

1. **Fetch** the new session: add the year to `YEARS` in `tools/fetch_papers.py` if needed, then
   `python3 tools/fetch_papers.py`, then the same with `--extra` and `--igcse-extra`. Re-run once to retry failures.
2. **Tag** the new papers into `research/topic-analysis/<code>-questions.csv` (same columns; one row per part).
   Check every paper's marks add up to its cover total.
3. **Review** a sample of new rows (topic/subtopic correct, marks right). Syllabus change? Update topic names and
   `pipeline/subjects.json` paper names.
4. **Refresh guides** if trends or grade thresholds changed (`research/topic-analysis/*.md`).
5. **Bump** `pipeline/release.json`: `version` (YYYY-MM; a same-month re-release adds .2, .3 …), `label`, `latest_session`, `sessions`. Installed apps only fetch new content when the version string is greater.
6. **Build and preview:** `python3 pipeline/build_site.py`, then `python3 -m http.server 8765 -d site`.
7. **Publish:** `bash scripts/publish.sh` (Hostinger auto-deploys the `deploy` branch). Then flush the CDN cache
   (hPanel → website → Performance → CDN → Flush cache).
8. **Backup:** `bash scripts/backup.sh`.
