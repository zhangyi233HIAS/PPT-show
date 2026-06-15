# Vault Schema & Rules

> This document defines the structural rules, naming conventions, and operational constraints for the Obsidian Knowledge Base.

---

## 1. Directory Structure

```
03-obsidian-hermes/
├── 00-vault-docs/          # Meta-docs (this folder) — guides, schema, index
├── 01-raw/                 # RAW source materials — READ-ONLY
│   ├── conversations/      # Chat logs, transcripts
│   ├── documents/          # PDFs, articles, imported docs
│   ├── code/               # Code snippets, repos
│   └── misc/               # Anything else original
├── 02-wiki/                # WIKI pages — WRITABLE, curated knowledge
│   ├── concepts/           # Conceptual explanations
│   ├── people/             # People & profiles
│   ├── projects/           # Project notes
│   ├── references/         # Reference summaries
│   └── index/              # Index & hub pages
├── 03-templates/           # Page templates
└── 04-logs/                # Operation logs
```

---

## 2. Access Rules

| Zone | Path | Permission | Purpose |
|------|------|------------|---------|
| **Raw** | `01-raw/` | **READ-ONLY** | Original source materials. Never modify. Collect freely. |
| **Wiki** | `02-wiki/` | **WRITABLE** | Curated knowledge pages. Changes require care. |
| **Templates** | `03-templates/` | WRITABLE | Page templates for consistency. |
| **Logs** | `04-logs/` | APPEND-ONLY | Operation logs. Never delete entries. |

---

## 3. Format Standards

- **File format:** Markdown (`.md`)
- **Linking style:** `[[wikilinks]]` — use Obsidian-style internal links exclusively
- **Frontmatter:** Every wiki page MUST have YAML frontmatter:

```yaml
---
title: "Page Title"
type: concept | person | project | reference | index
tags: []
created: YYYY-MM-DD
updated: YYYY-MM-DD
sources: []        # Links to raw/ materials or external URLs
---
```

- **Naming convention:** Use `kebab-case.md` for all filenames
- **Encoding:** UTF-8

---

## 4. Hard Rules

### Rule 1: Collect Freely, Write Restrained
> Original materials can be collected freely into `01-raw/`. Wiki pages in `02-wiki/` should be **restrained** — every page must serve a clear purpose and meet quality standards before creation.

### Rule 2: Update Before Create
> Before creating a new wiki page, **always check for existing pages** that could be updated or expanded. Prefer enriching existing knowledge over fragmenting it across duplicate pages. A new page is justified only when no existing page covers the topic.

### Rule 3: Traceability
> Every important conclusion, claim, or synthesized insight in a wiki page **must be traceable to its source**. Use the `sources:` frontmatter field and inline citations linking back to `01-raw/` materials or external references.

---

## 5. Duplication Prevention Protocol

Before creating any new wiki page:

1. **Search** the vault for existing pages on the same topic
2. **Check** `02-wiki/index/` for hub pages that may already link to relevant content
3. **Evaluate** whether the new content can be added to an existing page as a section
4. **Only then** create a new page if the topic is genuinely distinct

---

## 6. Post-Modification Checklist

After **every** modification to the wiki:

- [ ] Update relevant `index.md` files if the page structure changed
- [ ] Append an entry to `04-logs/log.md` describing the change
- [ ] Verify all `[[wikilinks]]` resolve correctly
- [ ] Confirm frontmatter is complete and accurate

---

## 7. Log Format

Entries in `04-logs/log.md` follow this format:

```markdown
## YYYY-MM-DD HH:MM — ACTION
- **File:** path/to/file.md
- **Action:** created | updated | deleted | linked
- **Summary:** Brief description of what changed
- **Agent:** hermes | human
```

---

*This schema is a living document. Propose changes via PR-style discussion before modifying.*
