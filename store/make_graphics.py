#!/usr/bin/env python3
"""Draws the Play Store icon (512x512) and feature graphic (1024x500) in code, matching the launcher icon."""
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

OUT = Path(__file__).resolve().parent
GREEN, PAPER, GOLD, INK = (31, 111, 92), (255, 253, 249), (240, 179, 92), (27, 28, 24)
SERIF = "/usr/share/fonts/truetype/dejavu/DejaVuSerif-Bold.ttf"
SANS = "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"


def mark(d, x, y, s):
    """Three 'question lines' and a gold dot, on a 108-unit grid scaled by s (same as the adaptive icon)."""
    w = int(6.5 * s)
    for (x1, y1, x2) in [(36, 40, 58), (36, 54, 72), (36, 68, 52)]:
        d.line([(x + x1 * s, y + y1 * s), (x + x2 * s, y + y1 * s)], fill=PAPER, width=w)
        for cx in (x1, x2):  # round caps
            d.ellipse([x + cx * s - w / 2, y + y1 * s - w / 2, x + cx * s + w / 2, y + y1 * s + w / 2], fill=PAPER)
    d.ellipse([x + 63 * s, y + 61 * s, x + 77 * s, y + 75 * s], fill=GOLD)


icon = Image.new("RGB", (512, 512), GREEN)  # Play masks the corners itself
mark(ImageDraw.Draw(icon), 0, 0, 512 / 108)
icon.save(OUT / "icon-512.png")

fg = Image.new("RGB", (1024, 500), (245, 241, 234))
d = ImageDraw.Draw(fg)
d.rounded_rectangle([64, 130, 304, 370], radius=56, fill=GREEN)
mark(d, 64, 130, 240 / 108)
d.text((350, 150), "Question Simulator", font=ImageFont.truetype(SERIF, 58), fill=INK)
d.text((352, 238), "Past paper questions by topic and year", font=ImageFont.truetype(SANS, 30), fill=(93, 95, 87))
d.text((352, 290), "O Level · IGCSE · A Level", font=ImageFont.truetype(SANS, 30), fill=GREEN)
d.text((352, 342), "Free · no ads · works offline", font=ImageFont.truetype(SANS, 26), fill=(93, 95, 87))
fg.save(OUT / "feature-graphic-1024x500.png")
print("wrote icon-512.png and feature-graphic-1024x500.png")
