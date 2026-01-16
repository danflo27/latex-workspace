### LaTeX workspace (Tellor presentations collection)

This workspace is a **collection of LaTeX projects**  that share a Tellor-branded Beamer theme, with the expectation that **different projects may use different versions** of the theme over time.

---

### What’s in here

- **`presentations/`**: Self-contained decks (each with a pinned `Tellor.cls` and only the assets that deck needs).
- **`themes/`**: Versioned Tellor theme sources (canonical copies).
- **`templates/`**: Zipped starter templates.
- **`resources/`**: Local-only reference materials (ignored by git), e.g. full brand asset library and legacy folders.
- **`.vscode/settings.json`**: Workspace-level LaTeX Workshop config (build-on-save, PDF preview, MacTeX path fixes, auto-clean).

---

### Requirements

- **MacTeX** installed (provides `pdflatex`, `latexmk`, `kpsewhich` under `/Library/TeX/texbin`).
- **VS Code / Cursor** with **LaTeX Workshop** extension installed.

---

### Build & preview (Cursor / VS Code)

This workspace is configured to:

- **Auto-build on save** using LaTeX Workshop
- **Generate PDF output** (via `latexmk -pdf`)
- **Auto-clean auxiliary files after each successful build**
- **Preview PDFs in an editor tab**

Common commands:

- **Build**: “LaTeX Workshop: Build LaTeX project”
- **Preview**: “LaTeX Workshop: View LaTeX PDF file”

Reference: LaTeX Workshop’s build/auto-build behavior is documented here:  
`https://github.com/James-Yu/LaTeX-Workshop/wiki/Compile#auto-build-latex`

---

### Project structure conventions

Each presentation should live in its **own folder** and be self-contained:

- **Root `.tex` file** (the file with `\documentclass{...}`), e.g. `main.tex`
- **Theme version pinned locally** (recommended), e.g. `Tellor.cls`
- **Assets used by that project** stored under `assets/` (recommended)
- **Exports** (optional) under `exports/` (PDFs, zips, shareables)

Why pin the theme locally? So a theme change doesn’t unintentionally restyle older decks.

---

### Tellor theme versioning strategy (recommended)

Keep a “shared” library of theme versions, but **copy/pin per project**:

- Add a folder at the workspace root (when you’re ready), e.g.:
  - `themes/Tellor/v1/ Tellor.cls`
  - `themes/Tellor/v2/ Tellor.cls`
- For each project, **copy** the desired version into the project folder as `Tellor.cls`.

This keeps every project reproducible and avoids cross-project breakage.

If you do create `themes/`, treat it as the source-of-truth; projects only “vendor” the version they use.

---

### Creating a new presentation

Fast path (recommended):

1. **Duplicate** an existing project folder under `presentations/` (e.g. `presentations/rewards-presentation/` → `presentations/my-new-deck/`).
2. Rename the main `.tex` file (or keep `main.tex`).
3. Update title/author/date and content.
4. Keep (or replace) the local `Tellor.cls` depending on which theme version you want.

Tip: keep filenames simple (letters, numbers, dashes) to avoid path/escaping headaches in TeX.

---

### Updating the Tellor theme safely

When you need to change styling:

- **Do not edit old projects in place** unless you intend to restyle them.
- Prefer to:
  - create a **new theme version** (e.g. `v2`), and
  - upgrade only the projects you choose by copying the new `Tellor.cls` into those project folders.

If a theme update requires new assets (e.g. a different logo), store them alongside the theme version (in `themes/...`) *and/or* vendor them into the project folder that uses that theme.

---

### Asset guidelines

- **Per-project assets**: put in the project folder (or `assets/`) to keep projects portable.
- **Shared “brand library” assets**: keep in `resources/brand/` for reference, then copy the specific files needed into the project.
- Prefer **PNG/PDF/SVG** inputs; Beamer works well with PNG/PDF. (SVG usually needs conversion unless you add an SVG toolchain.)

---

### Exporting / sharing

Suggested pattern:

- Put finalized deliverables in `exports/` inside the project folder.
- If you share a project, include:
  - the root `.tex`
  - the pinned `Tellor.cls`
  - all required assets used by the `.tex`

---

### Troubleshooting

- **Build fails with `spawn latexmk ENOENT`**:
  - MacTeX isn’t installed, or the editor environment can’t see `/Library/TeX/texbin`.
  - This workspace includes a PATH/tool fix in `.vscode/settings.json`; restarting the editor usually helps.
- **PDF preview is blank or 0/0 pages**:
  - The PDF didn’t get generated. Check the LaTeX Workshop build output first.
- **Class/package not found**:
  - Ensure the `.cls`/`.sty` file is either in the project folder or installed in your TeX distribution.

