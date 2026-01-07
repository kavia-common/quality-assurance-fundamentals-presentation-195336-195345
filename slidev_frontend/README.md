# Quality Mindset – Foundations of QA (Slidev)

This repository contains a Slidev deck intended to be exported to a PowerPoint file for a 1-hour foundational training session.

## Run locally (optional)

```bash
pnpm install
pnpm dev --host 0.0.0.0 --port 3000
```

Then open the Slidev URL shown in the terminal (or use the workspace URL).

## Export to PowerPoint (.pptx)

Slidev can export to PowerPoint. This deck is designed so that:
- visuals are built from shapes/layouts and simple SVG elements (embedded in the slide content)
- speaker notes are included per slide via HTML comments in `slides.md`

Run:

```bash
pnpm install
pnpm export -- --output Quality_Mindset_Foundations_of_QA.pptx
```

The file will be generated in this folder.

### Notes
- Export requires a working Slidev export environment (Slidev CLI handles this; in some environments it may download a headless browser/runtime).
- If you need a PDF instead, you can also export with a `.pdf` output filename:
  ```bash
  pnpm export -- --output Quality_Mindset_Foundations_of_QA.pdf
  ```
