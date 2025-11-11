---
workspace: "Viscosity AI-PROJECT_TEMPLATE_IDEAI - Documents"
owner: "Jerry/Team"
created: "2025-11-07"
updated: "2025-11-07"
status: "Active"
---

# Project Template Context

This folder tracks the evolving context of the Project Second Brain IDE.AI template and scaffolding work.

## Purpose
- Maintain a high-level narrative of the template’s structure and changes
- Capture decisions, assumptions, and next actions
- Serve as the single place to understand “what’s in here and why”

## Current Scope
- CLIENT_TEMPLATE scaffold created with full structure for /client-name/
- Root templates added: charter, understanding, approach, exec_status, sow, change_order, timesheet_entry
- Governance, directory structure, and automation framework documents added

## Structure Highlights
- _context/ for client context, status, repo links, disclosures
- legal/ for contracts and signatures
- sow_projects/ with project_1 including tickets, timesheets, exec_status, tech, deliverables, outbox
- communications/, discovery/, roadmap/, deliverables/

## Orientation Docs (Top Level)
- Project_Manager_Orientation.md
- SOW_Writer_Orientation.md
- Project_2nd_Brain_IDEAI.md (shape and operating model)
 - Developer_Orientation.md
 - Project_Ingest_Reconstruction_Approach.md
 - Timkeeping_Approach.md
 - ai_personality_surfer_shane_approach.md
 - project_simulation_risk_approach.md
 - strategic_directives_approach.md

## Decisions
- Markdown-first. Git for versioning.
- Incremental automation: start manual; enable Jira/email/Teams flows gradually.

## Assumptions
- Teams/OneDrive used for sharing; Git for version control of Markdown.
- Jira available for boards and issue sync.

## Next Actions
- Finalize any remaining templates needed by teams
- Optionally add .gitignore and repo bootstrap
- Export example Power Automate/n8n flows (JSON) when ready
