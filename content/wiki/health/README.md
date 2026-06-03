# Wiki Health Check System

## Overview
The health check system monitors the integrity and quality of the wiki knowledge base. It performs automated checks to identify issues and maintain documentation quality.

## Health Check Categories

### 1. Broken Links
- **What:** Detects `[[wikilinks]]` that point to non-existent notes
- **Severity:** Medium
- **Action:** Either create the missing note or update the link

### 2. Orphan Pages
- **What:** Notes that are not linked from any other note
- **Severity:** Low-Medium
- **Action:** Link from relevant index/README pages or archive

### 3. Duplicate Concepts
- **What:** Multiple notes covering the same topic with overlapping content
- **Severity:** Medium
- **Action:** Merge notes or clearly differentiate their scope

### 4. Missing Sources
- **What:** Finding notes lacking citations or source references
- **Severity:** High
- **Action:** Add proper citations and source links

## Running Health Checks

Health checks can be performed:
- **Manually:** Use the template in `health-check-template.md`
- **Scheduled:** Via cron jobs for periodic monitoring
- **On-demand:** Triggered after bulk wiki updates

## Metrics Tracked
- Total notes count
- Broken link count
- Orphan page count
- Average note quality score
- Last check timestamp

## Related
- [[wiki/evolution/README|Evolution Tracking]]
- [[wiki/findings/README|Findings Documentation]]
