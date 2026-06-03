# Knowledge Base Guide

> Complete guide for operating the Obsidian Knowledge Base with Hermes Agent.

---

## Core Formula

```
Hermes (Agent) + Obsidian (Vault) + LLM (Compilation) = Living Knowledge System
```

This system turns raw information into structured, queryable, evolving knowledge.

---

## The Four Actions

### 1. Data Ingestion

**What:** Collect raw materials into `01-raw/` without modification.

**How to invoke:**
```
"Collect this article into my knowledge base"
"Ingest this conversation about [topic]"
"Save this PDF to raw materials"
```

**Rules:**
- Materials go to `01-raw/` — never modified
- Organize by type: `conversations/`, `documents/`, `code/`, `misc/`
- File naming: `YYYY-MM-DD-descriptive-name.ext`
- No quality gate — collect freely, filter later
- Hermes handles format conversion (PDF → text, web → markdown)

**Example flow:**
1. User shares an article URL or document
2. Hermes downloads/extracts content
3. Saves to `01-raw/documents/2025-06-03-topic-name.md`
4. Logs the ingestion in `04-logs/log.md`

---

### 2. Knowledge Compilation

**What:** Transform raw materials into curated wiki pages in `02-wiki/`.

**How to invoke:**
```
"Compile [raw file] into wiki pages"
"Create a knowledge page about [topic] from recent ingests"
"Synthesize what I've collected about [subject]"
```

**Rules:**
- **Always check for existing pages first** (Rule 2: Update Before Create)
- Every wiki page needs proper frontmatter (see SCHEMA.md §3)
- Conclusions must cite sources (Rule 3: Traceability)
- Use `[[wikilinks]]` to connect related concepts
- Be restrained — wiki pages are curated, not raw dumps

**Compilation checklist:**
1. Search vault for existing coverage of the topic
2. Decide: new page or update existing?
3. Extract key insights, not verbatim copies
4. Add `sources:` references back to `01-raw/`
5. Link to related wiki pages with `[[]]`
6. Update relevant index pages
7. Log the action

**Page types and templates:**

| Type | Template | Use When |
|------|----------|----------|
| `concept` | Explains an idea, technology, or methodology | You need to document what something is |
| `person` | Profiles a person of interest | You encounter a key figure |
| `project` | Tracks a project or initiative | Something has goals, status, deliverables |
| `reference` | Summarizes an external source | A book, paper, or article has lasting value |
| `index` | Hub page linking related content | A topic area needs a table of contents |

---

### 3. Human Review

**What:** Periodic review of wiki content for quality, accuracy, and organization.

**How to invoke:**
```
"Review my wiki pages for accuracy"
"Check for orphaned pages"
"Show me wiki pages without sources"
```

**Review checklist:**
- [ ] All pages have complete frontmatter
- [ ] Sources are cited for important claims
- [ ] No duplicate pages exist
- [ ] `[[]]` links resolve correctly
- [ ] Index pages are up to date
- [ ] Content is still accurate (flag stale pages)

**Hermes can assist by:**
- Auditing frontmatter completeness
- Detecting broken links
- Finding orphaned pages (no incoming links)
- Identifying pages without sources
- Suggesting merge candidates for duplicate topics

---

### 4. Agent Invocation

**What:** Use the knowledge base as context for Hermes Agent reasoning.

**How to invoke:**
```
"What does my knowledge base say about [topic]?"
"Based on my notes, summarize [subject]"
"Connect the dots between [topic A] and [topic B]"
"What have I learned about [X] over time?"
```

**Capabilities:**
- Hermes can search the entire vault for relevant context
- Cross-reference multiple wiki pages to answer complex questions
- Use raw materials as source evidence
- Generate new wiki pages from synthesis of existing knowledge
- Maintain continuity across conversations

---

## Integration with Hermes Agent

### File System Access
Hermes reads and writes directly to the vault at:
```
/mnt/h/hermesp-agent/03-obsidian-hermes/
```

### Automated Behaviors
When Hermes processes knowledge base requests, it automatically:
1. Reads SCHEMA.md rules before any write operation
2. Checks for duplicates before creating pages
3. Updates index.md files after structural changes
4. Appends to `04-logs/log.md` after modifications
5. Uses frontmatter templates from `03-templates/`

### Conversation → Knowledge Pipeline
```
Chat with Hermes
      ↓
"Save this to my knowledge base"   ← Ingestion
      ↓
Hermes processes & stores raw material
      ↓
"Compile what we discussed into wiki pages"   ← Compilation
      ↓
Hermes creates/updates wiki with sources
      ↓
"Review my notes on [topic]"   ← Query
      ↓
Hermes reads wiki, synthesizes answer
```

---

## Quick Reference

| Action | Command Pattern | Zone |
|--------|----------------|------|
| Ingest | "Collect/Save/Ingest [source]" | `01-raw/` |
| Compile | "Compile/Create wiki page about [topic]" | `02-wiki/` |
| Query | "What do my notes say about [X]?" | Read both |
| Review | "Review/audit my knowledge base" | `02-wiki/` |
| Log | "Show me recent knowledge base changes" | `04-logs/` |

---

## Tips

1. **Ingest often, compile thoughtfully.** Raw collection is cheap; wiki curation is valuable.
2. **Link generously.** The value of a knowledge base is in its connections.
3. **Review monthly.** Stale knowledge is worse than no knowledge.
4. **Trust the process.** The raw → wiki pipeline ensures nothing is lost while keeping the curated layer clean.

---

*See also: [[SCHEMA]] for structural rules and access permissions.*
