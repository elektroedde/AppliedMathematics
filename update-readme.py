#!/usr/bin/env python3
"""
Update README.md, regenerate chapter collector Typst files, and compile PDFs.
Run:  python3 update-readme.py
"""

import re
import subprocess
from pathlib import Path

# fmt: off
# Fields per chapter:
#   (readme_header, folder, file_prefix, collector_stem, typst_title, typst_ch_id, problems)
#
# Problem IDs: display string as in README.
#   Parens = bonus/optional.  + is preserved in display, mapped to _ in filename.
CHAPTERS = [
    ("Chapter 1",
     "Chapter1", "", "Chapter1", "Chapter 1 - Mathematical Models", "1",
     ["1","3","4","5","8","11","12","13",
      "14","15","18","21","22","(10)","(23)","(26)"]),

    ("Kapitel 3.1–3.3",
     "Chapter3_1", "", "Chapter3_1", "Chapter 3.1–3.3 - Fouriers Method I", "3A",
     ["2","5","7","8","10","12","13","14",
      "15","19","21","22","24a","25","(17)","(24bc)"]),

    ("Kapitel H — Hilbert Spaces",
     "ChapterH", "H", "ChapterH", "Hilbert Spaces", "H",
     ["1","2","3","4","5a","11","12","13",
      "15","18","19","20a","27","33","38","39",
      "47","50","51","52","55","(20b)","(30)","(31)",
      "(36)","(45)"]),

    ("Kapitel S — Special Functions",
     "ChapterS", "S", "ChapterS", "Special Functions", "S",
     ["1","5","7","11abc","13","14","15","16",
      "18","20","(6)","(11d)","(12)"]),

    ("Kapitel D — Distributions",
     "ChapterD", "D", "ChapterD", "Distributions", "D",
     ["1","4","5","6","8","9","12","15",
      "17","18","22","23","24","27","29","30",
      "31","36","41","(10)","(25)","(34)"]),

    ("Kapitel 3.4–",
     "Chapter3_4", "", "Chapter3_4", "Chapter 3.4-3.5 - Fouriers Method I", "3B",
     ["29","35","39","41","42","45a","46","49a",
      "51","55","62","66","69","(30)","(32a)","(43+60)"]),

    ("Kapitel 4",
     "Chapter4", "", "Chapter4", "Chapter 4 - Fouriers Method II", "4",
     ["1","3","5","6","7","10","15","16",
      "17","20","(8)","(14)"]),

    ("Kapitel 5",
     "Chapter5", "", "Chapter5", "Chapter 5 - Green's Functions", "5",
     ["1","2","9","10","11","13","20","27",
      "28","(4)","(12)","(22)","(24)"]),

    ("Kapitel 7",
     "Chapter7", "", "Chapter7", "Chapter 7 - Radiating Waves", "7",
     ["1","2","3","6","8ab","9","10","18",
      "(4)","(8c)"]),
]
# fmt: on

TOTAL_PROBLEMS = sum(len(probs) for *_, probs in CHAPTERS)

SOLVED_RE = re.compile(r"#solution\[\s*[^\s\]]", re.DOTALL)


# ---------------------------------------------------------------------------
# File-path helpers
# ---------------------------------------------------------------------------

def prob_id_to_stem(prob_id: str) -> str:
    """Convert display problem ID to filename stem: strip parens, + → _."""
    s = prob_id.strip("()")
    return s.replace("+", "_")


def prob_file(root: Path, folder: str, prefix: str, prob_id: str) -> Path:
    return root / folder / f"{prefix}{prob_id_to_stem(prob_id)}.typ"


def find_file(path: Path) -> Path | None:
    """Return path if it exists; also try stripping trailing letters (e.g. H20a → H20)."""
    if path.exists():
        return path
    stem = path.stem
    i = len(stem)
    while i > 0 and stem[i - 1].isalpha():
        i -= 1
    if i < len(stem) and i > 0 and stem[i - 1].isdigit():
        alt = path.parent / f"{stem[:i]}.typ"
        if alt.exists():
            return alt
    return None


def is_solved(path: Path) -> bool:
    resolved = find_file(path)
    if resolved is None:
        return False
    try:
        return bool(SOLVED_RE.search(resolved.read_text(encoding="utf-8")))
    except OSError:
        return False


# ---------------------------------------------------------------------------
# README generation
# ---------------------------------------------------------------------------

def make_table(problems: list[str], solved: set[str]) -> str:
    cells = [f"{p} {'✅' if p in solved else '❌'}" for p in problems]
    rows = []
    for i in range(0, len(cells), 8):
        chunk = cells[i : i + 8]
        while len(chunk) < 8:
            chunk.append("")
        rows.append("<tr>" + "".join(f"<td>{c}</td>" for c in chunk) + "</tr>")
    return "<table>\n" + "\n".join(rows) + "\n</table>"


def build_readme(root: Path) -> str:
    total_solved = 0
    blocks = []
    for header, folder, prefix, _, _, _, problems in CHAPTERS:
        solved = {
            p for p in problems
            if is_solved(prob_file(root, folder, prefix, p))
        }
        total_solved += len(solved)
        table = make_table(problems, solved)
        blocks.append(
            f"### {header} &nbsp;·&nbsp; {len(problems)} problems\n\n{table}"
        )

    pct = 100 * total_solved // TOTAL_PROBLEMS if TOTAL_PROBLEMS else 0
    return (
        "# Applied Mathematics – Kontinuerliga System\n\n"
        "Solutions to problems from *Kontinuerliga System*."
        " Each problem's solution is written in Typst and compiled to PDF.\n\n"
        "---\n\n"
        "## Legend\n\n"
        "| Symbol | Meaning |\n"
        "|--------|---------|\n"
        "| ✅ | Complete |\n"
        "| ❌ | Incomplete |\n\n"
        "---\n\n"
        "## Progress\n\n"
        f"**{total_solved} / {TOTAL_PROBLEMS} problems complete ({pct}%)**\n\n"
        "---\n\n"
        + "\n\n".join(blocks)
        + "\n\n---\n\n"
        "*Template by Claude AI, all PDF produced by Typst*\n"
    )


# ---------------------------------------------------------------------------
# Collector Typst file generation
# ---------------------------------------------------------------------------

_COLLECTOR = """\
// Auto-generated by update-readme.py — do not edit manually.

#import "template.typ": *

#set document(title: "{title}", author: "Edvin Berling")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 3cm),
  numbering: "1",
  header: context {{
    if counter(page).get().first() > 1 {{
      align(right, text(size: 9pt, fill: gray)[{title}])
      line(length: 100%, stroke: 0.4pt + gray)
    }}
  }},
)
#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true, leading: 0.65em)
#show heading.where(level: 1): it => {{
  v(1em)
  text(size: 14pt, weight: "bold", it)
  v(0.4em)
}}
#show heading.where(level: 2): it => {{
  v(0.6em)
  text(size: 12pt, weight: "bold", it)
  v(0.2em)
}}
#show math.epsilon: math.epsilon.alt
#show math.nabla: math.bold(math.nabla)

#align(center)[
  #v(1cm)
  #text(size: 10pt, fill: gray)[Kontinuerliga System]
  #v(0.3cm)
  #text(size: 20pt, weight: "bold")[{title}]
  #v(0.2cm)
  #line(length: 60%, stroke: 0.6pt)
  #v(1cm)
]

{includes}
"""


def _natural_key(p: Path) -> list:
    """Sort key that orders numerically within filenames (e.g. H2 < H15 < H50)."""
    return [int(x) if x.isdigit() else x.lower() for x in re.split(r"(\d+)", p.stem)]


def generate_collectors(root: Path) -> list[Path]:
    """Write/update chapter collector .typ files; return their paths."""
    generated: list[Path] = []
    for _, folder, prefix, collector_stem, typst_title, _, problems in CHAPTERS:
        ch_dir = root / folder
        ch_dir.mkdir(exist_ok=True)

        existing = sorted(ch_dir.glob("*.typ"), key=_natural_key)
        include_lines = [
            f'#include "{f.relative_to(root).as_posix()}"' for f in existing
        ]

        if include_lines:
            includes = "\n".join(include_lines)
        else:
            includes = "// No solutions added yet — add .typ files to " + folder + "/"

        content = _COLLECTOR.format(
            title=typst_title,
            includes=includes,
        )

        out = root / f"{collector_stem}.typ"
        out.write_text(content, encoding="utf-8")
        generated.append(out)

    return generated


# ---------------------------------------------------------------------------
# Typst compilation
# ---------------------------------------------------------------------------

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


def compile_pdfs(collectors: list[Path]) -> None:
    typst_cmd = find_typst()
    if not typst_cmd:
        print("  typst / tinymist not found — skipping compilation.")
        return
    for typ_file in collectors:
        print(f"  {typ_file.name} …", end=" ", flush=True)
        result = subprocess.run(
            typst_cmd + ["compile", str(typ_file)],
            capture_output=True, text=True,
        )
        print("ok" if result.returncode == 0 else "FAILED")
        if result.returncode != 0 and result.stderr:
            print("   ", result.stderr.strip())


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------

def main() -> None:
    root = Path(__file__).resolve().parent

    print("Generating collector .typ files …")
    collectors = generate_collectors(root)
    for p in collectors:
        print(f"  {p.name}")

    print("Updating README.md …")
    (root / "README.md").write_text(build_readme(root), encoding="utf-8")

    print("Compiling PDFs …")
    compile_pdfs(collectors + [root / "main.typ"])

    print("Done.")


if __name__ == "__main__":
    main()
