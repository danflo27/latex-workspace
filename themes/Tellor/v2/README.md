### Tellor theme — v2 (refactor)

v2 refactors the theme into **shared base + variants** to reduce duplication and make future styling changes safer.

Files:
- `Tellor.cls`: dark class wrapper (loads base + dark variant)
- `TellorLight.cls`: light class wrapper (loads base + light variant)
- `TellorBase.sty`: shared fonts/layout/macros/templates
- `TellorDark.sty`: dark palette + dark-specific Beamer color setup
- `TellorLightTheme.sty`: light palette + light-specific Beamer color setup

Compatibility goal:
- Keep the same public macros used by decks: `\highlight`, `\titlebox`, `\ex`, `\warningblock`, `\infoblock`, `\arrow`, `\trb`.
- Keep the same “brand asset contract”: decks should provide required images via `\graphicspath`.

