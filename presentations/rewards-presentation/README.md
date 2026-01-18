### Rewards presentation

This is a Tellor-branded Beamer deck using a **vendored** theme pinned to a specific version.

### Build

- Open `main.tex`
- Save to auto-build (PDF output is configured by workspace `.vscode/settings.json`)
- Use “LaTeX Workshop: View LaTeX PDF file” to preview

### Theme

- This project vendors the Tellor theme locally to avoid unintentional styling changes when the shared theme evolves.
- **Current theme version: v2 (split files)**:
  - `Tellor.cls` (wrapper)
  - `TellorLight.cls` (wrapper)
  - `TellorBase.sty` (shared base)
  - `TellorDark.sty` (dark variant)
  - `TellorLightTheme.sty` (light variant)
- Canonical sources live in:
  - `themes/Tellor/v1/` (legacy monolithic v1)
  - `themes/Tellor/v2/` (refactored split v2)

