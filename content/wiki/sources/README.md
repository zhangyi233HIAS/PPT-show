# Sources

Source summary pages that bridge raw literature and synthesized wiki knowledge.

## Purpose

Each page in this directory summarizes a raw article, paper, or data source. Source pages serve as the **link between raw materials** (stored in `raw/`) **and wiki concepts**.

## What a Source Page Contains

- **Citation metadata** — authors, year, journal, DOI/PMID
- **Key findings** — distilled from the raw article
- **Links** — to related concepts (`[[concept]]`), entities, and findings elsewhere in the wiki
- **Tags** — for filtering by topic, method, or organism

## Naming Convention

Use a stable identifier as the filename when possible:
- DOI: `10.1234-example-journal.md`
- PMID: `PMID-12345678.md`
- Otherwise: descriptive slug, e.g. `smith-2024-tnseq-review.md`

## Template

```markdown
---
type: source
doi: ""
pmid: ""
authors: []
year:
journal: ""
tags: []
related: []
---

# <Title>

## Citation
## Summary
## Key Findings
## Related Concepts
## Open Questions
```
