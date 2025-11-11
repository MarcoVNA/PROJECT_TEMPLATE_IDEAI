---
type: "template_backlog"
updated: "2025-11-07"
owner: "Template Maintainer"
status_values: ["idea","proposed","planned","in_progress","implemented","deferred","rejected"]
---

# Template Backlog (Ideas, Plans, and Implemented)

Use this backlog to capture ideas without implementing immediately. Move items across sections during review. When implemented, record details in the Implemented section.

## Inbox (Untriaged Ideas)
- [idea] Add .gitignore tuned for Markdown, macOS, Node/Python common (avoid clutter)
- [idea] Swap `.keep` for `.gitkeep` or `README.md` per-folder purpose notes
- [idea] Export example Power Automate/n8n flows (JSON) for Jira/Email/Teams
- [idea] Marp/Pandoc configs for PDF/PPTX exports from Markdown
- [idea] Weekly refresh cadence for `_context/status.md` (Fri 4 PM)
- [idea] Bootstrap script to copy root templates into each client folder
- [idea] Add CODEOWNERS or doc ownership map per template
- [idea] Jira webhook handler sample (real-time updates to tickets/activity)
- [idea] Add lightweight lint/check script for YAML front matter validation
- [idea] Timesheet rollup CLI to aggregate daily → monthly → project → client

## Proposed (For Review)
- [proposed] Standardize status taxonomy across docs (Green/Yellow/Red + rationale)
- [proposed] README per major directory with purpose and best practices
- [proposed] Add sample Power BI schema notes mapping tickets/snapshots and timesheets/rollup
 - [proposed] Review and align newly added top-level approach/orientation docs with governance and templates

## Planned (Backlog Approved, Not Started)
- [planned] Add `.gitignore` and optional `git init` guidance to Directory_Structure_Template
- [planned] Provide `export.yaml` rules in `templates/rules/` for Pandoc/Marp

## In Progress
- [in_progress] Keep root `_context` current as template evolves

## Implemented (History)
- [implemented 2025-11-07] Governance Framework
  - Why: Define principles and operating model
  - Files: Project_Governance_Framework.md
- [implemented 2025-11-07] Directory Structure Template
  - Why: Standard client folder hierarchy
  - Files: Directory_Structure_Template.md
- [implemented 2025-11-07] Project Templates (charter, understanding, approach, exec_status)
  - Files: templates/charter.md, templates/understanding.md, templates/approach.md, templates/exec_status.md
- [implemented 2025-11-07] Legal Templates (SOW, Change Order)
  - Files: templates/sow.md, templates/change_order.md
- [implemented 2025-11-07] Timesheet Entry Template
  - Files: templates/timesheet_entry.md
- [implemented 2025-11-07] Automation Framework overview
  - Files: Automation_Framework.md
- [implemented 2025-11-07] Jira/Email/Teams automation approach docs (short versions)
  - Files: jira_automation_approach.md, cc_email_automation_approach.md, teams_power_bi_automation_approach.md
- [implemented 2025-11-07] CLIENT_TEMPLATE scaffold + generator script
  - Files: CLIENT_TEMPLATE/*, create_project.sh
- [implemented 2025-11-07] Root-level _context folder (context, status, repo_links, disclosures)
  - Files: _context/context.md, _context/status.md, _context/repo_links.md, _context/disclosures.md
 - [implemented 2025-11-07] Additional top-level approach/orientation docs
   - Files: Developer_Orientation.md, Project_Ingest_Reconstruction_Approach.md, Timkeeping_Approach.md,
     ai_personality_surfer_shane_approach.md, project_simulation_risk_approach.md, strategic_directives_approach.md

## Deferred
- [deferred] Replace all `.keep` with folder READMEs until team preference is finalized

## Rejected
- [rejected] Store secrets directly in Markdown (use 1Password references instead)

---

## Notes and Scratchpad
- Use this space to paste quick ideas, links, or decisions for later triage.
