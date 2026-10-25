#!/usr/bin/env python3
"""Upload site/ to the questionsimulator.homilabs.org web root over FTP (fallback when hPanel Git deploy is down).

Run it in a terminal; it asks for the FTP username and password (the password is never echoed or stored):
    python3 scripts/ftp_publish.py

It finds the web root by looking for the live data/manifest.json, asks you to confirm, then uploads every file
in site/ (including .htaccess). Nothing on the server is deleted.
"""
import ftplib
import getpass
import io
import json
import sys
import urllib.request
from pathlib import Path

HOST = "ftp.homilabs.org"
SITE = Path(__file__).resolve().parent.parent / "site"
LIVE = "https://questionsimulator.homilabs.org/data/manifest.json"
CANDIDATES = [
    "domains/questionsimulator.homilabs.org/public_html",
    "domains/cambridgesimulator.homilabs.org/public_html",
    "domains/homilabs.org/public_html/cambridgesimulator",
    "public_html/cambridgesimulator",
    "cambridgesimulator",
    "public_html",
    ".",
]


def connect():
    user = input("FTP username [u809141334]: ").strip() or "u809141334"
    password = getpass.getpass("FTP password (not shown): ")
    try:
        ftp = ftplib.FTP_TLS(HOST, timeout=60)
        ftp.login(user, password)
        ftp.prot_p()
        print("Connected with TLS.")
    except ftplib.error_perm:
        raise
    except Exception as e:  # server without TLS: fall back to plain FTP
        print(f"TLS not available ({e}); using plain FTP.")
        ftp = ftplib.FTP(HOST, timeout=60)
        ftp.login(user, password)
    ftp.set_pasv(True)
    return ftp


def read_remote(ftp, path):
    buf = io.BytesIO()
    try:
        ftp.retrbinary(f"RETR {path}", buf.write)
    except ftplib.all_errors:
        return None
    return buf.getvalue()


def find_root(ftp):
    live = urllib.request.urlopen(LIVE, timeout=20).read()
    live_version = json.loads(live)["version"]
    home = ftp.pwd()
    for cand in CANDIDATES:
        path = f"{home.rstrip('/')}/{cand}".replace("/./", "/").rstrip("/.")
        data = read_remote(ftp, f"{path}/data/manifest.json")
        if data and json.loads(data).get("version") == live_version:
            return path
    return None


def ensure_dir(ftp, path, made):
    parts = path.strip("/").split("/")
    cur = ""
    for p in parts:
        cur += "/" + p
        if cur in made:
            continue
        try:
            ftp.mkd(cur)
        except ftplib.error_perm:
            pass  # already exists
        made.add(cur)


def main():
    if not (SITE / "index.html").exists():
        sys.exit("site/ is missing: run python3 pipeline/build_site.py first.")
    new_version = json.loads((SITE / "data" / "manifest.json").read_text())["version"]
    try:
        ftp = connect()
    except ftplib.error_perm as e:
        sys.exit(f"FTP login refused ({e}). The username is the hosting user (e.g. u809141334), not your "
                 "Hostinger email, and the password is the FTP password from hPanel → Files → FTP Accounts. "
                 "Nothing was uploaded.")
    root = find_root(ftp)
    if not root:
        print("Could not find the folder that serves the live site. Folders in your FTP home:")
        ftp.retrlines("LIST")
        root = input("Type the web root path to upload into (or press Enter to stop): ").strip()
        if not root:
            sys.exit("Stopped; nothing uploaded.")
    files = sorted(p for p in SITE.rglob("*") if p.is_file())
    if input(f"Upload {len(files)} files (release {new_version}) into {root}? [y/N] ").strip().lower() != "y":
        sys.exit("Stopped; nothing uploaded.")
    made = set()
    for i, p in enumerate(files, 1):
        rel = p.relative_to(SITE).as_posix()
        remote = f"{root}/{rel}"
        ensure_dir(ftp, remote.rsplit("/", 1)[0], made)
        with p.open("rb") as fh:
            ftp.storbinary(f"STOR {remote}", fh)
        if i % 50 == 0 or i == len(files):
            print(f"  {i}/{len(files)} uploaded")
    ftp.quit()
    live = json.loads(urllib.request.urlopen(LIVE + "?check", timeout=20).read())["version"]
    print(f"Done. Live manifest now reports release {live} (expected {new_version}).")


if __name__ == "__main__":
    main()
