#!/usr/bin/env python3
"""Update README.md based on which problem files contain a #solution block."""

import re
import subprocess
from pathlib import Path

# fmt: off
# Each entry: (id, display_title, folder_name, file_prefix, zero_pad, num_problems)
# Update num_problems (and titles for ch 1–7) when you know the exact counts.
CHAPTERS = [
    (1,   "Chapter 1",         "Chapter1",               "p",  True,  5),
    (2,   "Chapter 2",         "Chapter2",               "p",  True,  5),
    (3,   "Chapter 3",         "Chapter3",               "p",  True,  5),
    (4,   "Chapter 4",         "Chapter4",               "p",  True,  5),
    (5,   "Chapter 5",         "Chapter5",               "p",  True,  5),
    (6,   "Chapter 6",         "Chapter6",               "p",  True,  5),
    (7,   "Chapter 7",         "Chapter7",               "p",  True,  5),
    ("H", "Hilbert Spaces",    "ChapterHilbertSpaces",   "H",  False, 5),
    ("S", "Special Functions", "ChapterSpecialFunctions","S",  False, 5),
    ("D", "Distributions",     "ChapterDistributions",   "D",  False, 5),
]
# fmt: on

TOTAL_PROBLEMS = sum(n for *_, n in CHAPTERS)

SOLVED_RE = re.compile(r'#solution\[\s*[^\s\]]', re.DOTALL)


def is_solved(path: Path) -> bool:
    try:
        return bool(SOLVED_RE.search(path.read_text()))
    except OSError:
        return False


def prob_file(ch_dir: Path, prefix: str, zero_pad: bool, n: int) -> Path:
    num = f"{n:02d}" if zero_pad else str(n)
    return ch_dir / f"{prefix}{num}.typ"


def make_table(num_problems: int, solved: set[int]) -> str:
    cells = []
    for p in range(1, num_problems + 1):
        symbol = "✅" if p in solved else "❌"
        cells.append(f"{p} {symbol}")

    rows = []
    for i in range(0, len(cells), 8):
        chunk = cells[i:i + 8]
        while len(chunk) < 8:
            chunk.append("")
        rows.append("<tr>" + "".join(f"<td>{c}</td>" for c in chunk) + "</tr>")

    return "<table>\n" + "\n".join(rows) + "\n</table>"


def build_readme(repo_root: Path) -> str:
    total_solved = 0
    chapter_blocks = []

    for ch_id, title, folder, prefix, zero_pad, num_problems in CHAPTERS:
        ch_dir = repo_root / folder
        solved = set()
        for p in range(1, num_problems + 1):
            if is_solved(prob_file(ch_dir, prefix, zero_pad, p)):
                solved.add(p)
        total_solved += len(solved)

        table = make_table(num_problems, solved)
        chapter_blocks.append(
            f"### Chapter {ch_id} — {title} &nbsp;·&nbsp; {num_problems} problems\n\n{table}"
        )

    chapters_section = "\n\n".join(chapter_blocks)
    pct = 100 * total_solved / TOTAL_PROBLEMS if TOTAL_PROBLEMS else 0

    return f"""\
# Applied Mathematics – Kontinuerliga System

Solutions to problems from *Kontinuerliga System*. Each problem's solution is written in Typst and compiled to PDF.

---

## Legend

| Symbol | Meaning |
|--------|---------|
| ✅ | Complete |
| ❌ | Incomplete |

---

## Progress

**{total_solved} / {TOTAL_PROBLEMS} problems complete ({pct:.0f}%)**

---

{chapters_section}

---

*Template by Claude AI, all PDF produced by Typst*
"""


def find_typst() -> list[str]:
    for candidate in [["typst"], ["tinymist"]]:
        try:
            subprocess.run(candidate + ["--version"], capture_output=True, check=True)
            return candidate
        except (FileNotFoundError, subprocess.CalledProcessError):
            continue
    import glob as _glob
    pattern = str(Path.home() / ".vscode/extensions/myriad-dreamin.tinymist-*/out/tinymist")
    matches = sorted(_glob.glob(pattern))
    if matches:
        return [matches[-1]]
    return []


def compile_pdfs(root: Path) -> None:
    typ_files = sorted(root.glob("Ch*.typ")) + sorted(root.glob("Chapter*.typ"))
    if not typ_files:
        return

    typst_cmd = find_typst()
    if not typst_cmd:
        print("typst not found — skipping PDF compilation.")
        return

    for typ_file in typ_files:
        print(f"Compiling {typ_file.name} …", end=" ", flush=True)
        result = subprocess.run(
            typst_cmd + ["compile", str(typ_file)],
            capture_output=True, text=True
        )
        if result.returncode == 0:
            print("ok")
        else:
            print("FAILED")
            if result.stderr:
                print(result.stderr.strip())


def main():
    repo_root = Path(__file__).resolve().parent
    readme_path = repo_root / "README.md"
    readme_path.write_text(build_readme(repo_root))
    print(f"README.md updated ({repo_root})")
    compile_pdfs(repo_root)


if __name__ == "__main__":
    main()
