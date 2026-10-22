#!/usr/bin/env python3
"""Social media kit for Question Simulator, drawn in code from the real app screenshots (store/phone/*.png).

Outputs (store/social/):
  facebook-post-1080x1350.png   feed image for Facebook (also fine for Instagram feed)
  reel-1080x1920.mp4            ~22 s vertical reel for Instagram, Facebook and TikTok (silent; add music in-app)
  reel-cover-1080x1920.png      cover frame for the reel

Run: python3 store/social/make_social.py   (needs ffmpeg; QR codes come from qr-play-install.png)
"""
import subprocess
from pathlib import Path

from PIL import Image, ImageDraw, ImageFilter, ImageFont

HERE = Path(__file__).resolve().parent
PHONE = HERE.parent / "phone"
GREEN, GREEN_SOFT, PAPER, INK, MUTED, GOLD, WHITE = (
    (31, 111, 92), (220, 235, 229), (245, 241, 234), (27, 28, 24), (93, 95, 87), (240, 179, 92), (255, 253, 249))
SERIF_B = "/usr/share/fonts/truetype/dejavu/DejaVuSerif-Bold.ttf"
SANS = "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"
SANS_B = "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf"
PLAY_TITLE = "Question Simulator: Exam Prep"
WEBSITE = "cambridgesimulator.homilabs.org"
DISCLAIMER = "Independent, non-profit project by HomiLabs. Not affiliated with Cambridge University Press & Assessment."


def font(path, size):
    return ImageFont.truetype(path, size)


def mark(d, x, y, s):
    """App logo: three question lines and a gold dot on a 108-unit grid."""
    w = max(2, int(6.5 * s))
    for x1, y1, x2 in [(36, 40, 58), (36, 54, 72), (36, 68, 52)]:
        d.line([(x + x1 * s, y + y1 * s), (x + x2 * s, y + y1 * s)], fill=WHITE, width=w)
        for cx in (x1, x2):
            d.ellipse([x + cx * s - w / 2, y + y1 * s - w / 2, x + cx * s + w / 2, y + y1 * s + w / 2], fill=WHITE)
    d.ellipse([x + 63 * s, y + 61 * s, x + 77 * s, y + 75 * s], fill=GOLD)


def logo(size):
    im = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    d.rounded_rectangle([0, 0, size - 1, size - 1], radius=int(size * 0.22), fill=GREEN)
    mark(d, 0, 0, size / 108)
    return im


def phone(shot_path, width):
    """Screenshot inside a simple dark phone frame with rounded corners and a soft shadow."""
    shot = Image.open(shot_path).convert("RGB")
    h = int(width * shot.height / shot.width)
    shot = shot.resize((width, h), Image.LANCZOS)
    pad = max(10, width // 40)
    W, H = width + 2 * pad, h + 2 * pad
    frame = Image.new("RGBA", (W + 60, H + 60), (0, 0, 0, 0))
    shadow = Image.new("RGBA", frame.size, (0, 0, 0, 0))
    ImageDraw.Draw(shadow).rounded_rectangle([30, 40, 30 + W, 40 + H], radius=pad * 4, fill=(0, 0, 0, 90))
    frame = Image.alpha_composite(frame, shadow.filter(ImageFilter.GaussianBlur(18)))
    d = ImageDraw.Draw(frame)
    d.rounded_rectangle([30, 30, 30 + W, 30 + H], radius=pad * 4, fill=(24, 25, 22))
    mask = Image.new("L", shot.size, 0)
    ImageDraw.Draw(mask).rounded_rectangle([0, 0, width, h], radius=pad * 3, fill=255)
    frame.paste(shot, (30 + pad, 30 + pad), mask)
    return frame


def centered(d, text, y, f, fill, W):
    x = (W - d.textlength(text, font=f)) / 2
    d.text((x, y), text, font=f, fill=fill)


def facebook_post():
    W, H = 1080, 1350
    im = Image.new("RGBA", (W, H), PAPER + (255,))
    d = ImageDraw.Draw(im)
    im.alpha_composite(logo(84), (64, 60))
    d.text((166, 72), "Question Simulator", font=font(SERIF_B, 40), fill=INK)
    d.text((168, 120), "FREE · NON-PROFIT · NO ADS", font=font(SANS_B, 22), fill=GREEN)
    d.text((64, 190), "Past paper questions,", font=font(SERIF_B, 66), fill=INK)
    d.text((64, 268), "sorted by topic and year", font=font(SERIF_B, 66), fill=GREEN)
    d.text((66, 360), "O Level · IGCSE · A Level  —  39 subjects, 22,383 questions", font=font(SANS, 29), fill=MUTED)
    d.text((66, 400), "May/June 2022 to May/June 2026", font=font(SANS, 29), fill=MUTED)
    # Two phones, slightly overlapping.
    p1, p2 = phone(PHONE / "1-home.png", 330), phone(PHONE / "3-by-year.png", 330)
    im.alpha_composite(p1, (110, 455))
    im.alpha_composite(p2, (560, 455))
    # Bottom card: QR + how to get it.
    d.rounded_rectangle([40, 1080, W - 40, H - 70], radius=28, fill=WHITE, outline=(221, 213, 199), width=2)
    qr = Image.open(HERE / "qr-play-install.png").convert("RGBA").resize((196, 196), Image.NEAREST)
    im.alpha_composite(qr, (64, 1092))
    d.text((290, 1102), "Scan to install on Android", font=font(SANS_B, 32), fill=INK)
    d.text((290, 1150), f"Google Play: {PLAY_TITLE}", font=font(SANS, 25), fill=MUTED)
    d.text((290, 1196), "On the web:", font=font(SANS, 25), fill=MUTED)
    d.text((290, 1230), WEBSITE, font=font(SANS_B, 27), fill=GREEN)
    centered(d, DISCLAIMER, H - 52, font(SANS, 17), MUTED, W)
    im.convert("RGB").save(HERE / "facebook-post-1080x1350.png")


# ---------- reel ----------
W, H, FPS = 1080, 1920, 30
SCENES = [  # (screenshot, caption line 1, caption line 2)
    ("1-home.png", "39 subjects", "O Level · IGCSE · A Level"),
    ("2-subject.png", "See the banker topics", "and their share of marks"),
    ("3-by-year.png", "Every question,", "year by year since 2022"),
    ("4-similar.png", "Practise similar questions", "on one skill, across years"),
    ("5-sheet.png", "Tick done · save for later", "works offline"),
]
TITLE_S, SCENE_S, END_S, FADE_S = 2.8, 3.0, 4.6, 0.4


def base():
    return Image.new("RGBA", (W, H), PAPER + (255,))


def title_card():
    im = base()
    d = ImageDraw.Draw(im)
    im.alpha_composite(logo(220), ((W - 220) // 2, 430))
    centered(d, "Stuck on past papers?", 760, font(SERIF_B, 76), INK, W)
    centered(d, "Practise by topic.", 860, font(SERIF_B, 76), GREEN, W)
    centered(d, "Free for O Level, IGCSE & A Level students", 1000, font(SANS, 38), MUTED, W)
    return im


def scene_card(shot, line1, line2, progress):
    """progress 0..1 within the scene: phone rises slightly and zooms in a touch."""
    im = base()
    d = ImageDraw.Draw(im)
    centered(d, line1, 150, font(SERIF_B, 70), INK, W)
    centered(d, line2, 240, font(SERIF_B, 58), GREEN, W)
    scale = 1.0 + 0.04 * progress
    ph = phone(PHONE / shot, int(640 * scale))
    x = (W - ph.width) // 2
    y = int(400 - 20 * progress)
    im.alpha_composite(ph, (x, y))
    return im


def end_card():
    im = base()
    d = ImageDraw.Draw(im)
    im.alpha_composite(logo(150), ((W - 150) // 2, 230))
    centered(d, "Question Simulator", 420, font(SERIF_B, 74), INK, W)
    centered(d, "Free · No ads · No sign-up", 520, font(SANS_B, 42), GREEN, W)
    qr = Image.open(HERE / "qr-play-install.png").convert("RGBA").resize((470, 470), Image.NEAREST)
    d.rounded_rectangle([(W - 530) // 2, 640, (W + 530) // 2, 1170], radius=30, fill=WHITE)
    im.alpha_composite(qr, ((W - 470) // 2, 670))
    centered(d, "Scan to install on Google Play", 1210, font(SANS_B, 40), INK, W)
    centered(d, "or visit", 1290, font(SANS, 36), MUTED, W)
    centered(d, WEBSITE, 1345, font(SANS_B, 44), GREEN, W)
    centered(d, "Not affiliated with Cambridge University Press & Assessment.", 1460, font(SANS, 24), MUTED, W)
    return im


def frames():
    """Yields RGB frames for the whole reel, with cross-fades between cards."""
    timeline = [("title", TITLE_S)] + [(s, SCENE_S) for s in SCENES] + [("end", END_S)]
    cached = {"title": title_card(), "end": end_card()}

    def render(item, t, dur):
        if item in cached:
            return cached[item]
        return scene_card(*item, progress=min(1.0, t / dur))

    for i, (item, dur) in enumerate(timeline):
        n = int(dur * FPS)
        nxt = timeline[i + 1] if i + 1 < len(timeline) else None
        for f in range(n):
            t = f / FPS
            frame = render(item, t, dur)
            fade_start = dur - FADE_S
            if nxt and t >= fade_start:
                a = (t - fade_start) / FADE_S
                frame = Image.blend(frame, render(nxt[0], 0, nxt[1]), a)
            yield frame.convert("RGB")


def reel():
    out = HERE / "reel-1080x1920.mp4"
    cmd = ["ffmpeg", "-y", "-loglevel", "error",
           "-f", "rawvideo", "-pix_fmt", "rgb24", "-s", f"{W}x{H}", "-r", str(FPS), "-i", "-",
           "-f", "lavfi", "-i", "anullsrc=channel_layout=stereo:sample_rate=44100",
           "-shortest", "-c:v", "libx264", "-preset", "medium", "-crf", "18", "-pix_fmt", "yuv420p",
           "-c:a", "aac", "-b:a", "128k", "-movflags", "+faststart", str(out)]
    p = subprocess.Popen(cmd, stdin=subprocess.PIPE)
    for fr in frames():
        p.stdin.write(fr.tobytes())
    p.stdin.close()
    if p.wait() != 0:
        raise SystemExit("ffmpeg failed")
    title_card().convert("RGB").save(HERE / "reel-cover-1080x1920.png")


if __name__ == "__main__":
    facebook_post()
    reel()
    print("wrote facebook-post-1080x1350.png, reel-1080x1920.mp4, reel-cover-1080x1920.png")
