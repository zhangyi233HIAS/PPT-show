# Research Findings Wiki

## Overview
This directory documents research findings organized by topic/project. Each finding subdirectory contains structured notes about experimental results, analysis outcomes, and key discoveries.

## Directory Structure
```
wiki/findings/
├── README.md                    # This file
├── findings-Salmonella/         # Salmonella-related research findings
├── findings-Macrophage/         # Macrophage-related research findings
└── findings-Pigeon/             # Pigeon genomics findings
```

## How to Document Research Findings

### Finding Note Template
Each finding note should follow this structure:

```markdown
# Finding: [Title]

## Summary
Brief description of the finding (1-2 sentences).

## Context
- **Project:** [Project name]
- **Date:** [YYYY-MM-DD]
- **Author:** [Who discovered/documented this]
- **Status:** [Preliminary | Confirmed | Published]

## Details
Detailed description of the finding, including methodology and results.

## Evidence
- Dataset references
- Code/notebook links
- Figures or visualizations
- Supporting literature

## Implications
What this finding means for the broader research context.

## Next Steps
- Follow-up experiments needed
- Questions raised by this finding
- Related findings to investigate

## Links
- Related findings: [[finding-name]]
- Related skills: [[skill-name]]
- Source memory: [[memory-id]]
```

### Naming Convention
- Finding notes: `YYYY-MM-DD-finding-title.md`
- Subdirectories: `findings-[TopicName]/`

### Tags
Use consistent tags for categorization:
- `#finding` - All finding notes
- `#preliminary` - Early stage findings
- `#confirmed` - Validated findings
- `#published` - Publication-ready findings
- Topic-specific tags: `#salmonella`, `#macrophage`, `#pigeon`

### Linking Protocol
- Always link findings to source [[memories]] that led to them
- Cross-reference related findings using `[[wikilinks]]`
- Link to relevant [[skills]] that were used in analysis
- Tag with project identifiers for filtering
