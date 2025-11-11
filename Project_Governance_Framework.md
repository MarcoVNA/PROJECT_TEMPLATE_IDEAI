# Project Governance Framework - Second Brain IDE.AI

## Philosophy
**Strategy as Code | Project Management as Code | Delivery as Code**

Every client has one living workspace that ties together strategy, delivery, Jira visibility, contracts, timesheets, and code awareness. Markdown first. Exports only when needed.

---

## Core Structure

```
/client-name/
 ├── _context/
 │    ├── context.md
 │    ├── status.md
 │    ├── repo_links.md
 │    └── disclosures.md
 ├── legal/
 │    ├── msas/  sow/  change_orders/  ndas/  procurement/
 │    ├── signatures/
 │    └── templates/  clauses/
 ├── communications/
 │    ├── incoming/
 │    └── attachments/
 ├── discovery/
 │    ├── findings.md
 │    └── session_notes/
 ├── roadmap/
 │    ├── client_vision.md
 │    └── strategic_backlog.md
 ├── sow_projects/
 │    └── project_1/
 │         ├── charter.md
 │         ├── understanding.md
 │         ├── approach.md
 │         ├── project_backlog.md
 │         ├── exec_status/
 │         ├── tech/
 │         ├── tickets/
 │         │    ├── index.md
 │         │    ├── activity.md
 │         │    ├── watchlist.md
 │         │    ├── ABC-123.md
 │         │    └── snapshots/
 │         ├── timesheets/
 │         │    ├── people/
 │         │    ├── daily/
 │         │    ├── monthly/
 │         │    └── rollup.md
 │         ├── deliverables/
 │         └── code/                # optional local module or APEX export
 ├── deliverables/
 └── templates/
      ├── charter.md  understanding.md  approach.md  exec_status.md
      ├── sow.md  change_order.md  timesheet_entry.md
      └── rules/ export.yaml
```

---

## Governance Principles

### 1. Single Source of Truth
- **Markdown first**: All living documents in Markdown format
- **Git versioning**: Every change tracked, no file chaos
- **Context-driven**: YAML metadata connects humans and automation

### 2. Transparency by Design
- **Open folder**: Anyone can open and understand the whole story in minutes
- **Jira visibility**: Ticket activity visible without logging in
- **Contract alignment**: SOWs generated from current project context
- **Time tracking**: Timesheets that match actual work performed

### 3. Automation with Safety
- **Light jobs**: n8n or cron jobs keep data fresh
- **Manual defaults**: Everything manual until adoption is strong
- **Incremental automation**: Enable one feature at a time

---

## Role-Based Governance

### Project Manager (Non-Technical)
**Core Documents**:
- `_context/status.md` - the heartbeat of the client
- `charter.md` & `understanding.md` - what we promised and why
- `approach.md` - how the team is solving it
- `exec_status/YYYY-MM-DD.md` - weekly one-pager
- `timesheets/daily` - quick time or meeting notes

**Daily Rhythm**:
1. Monday: Update `status.md` with key goals
2. Friday: Create new `exec_status/DATE.md` using template
3. Drop major decisions/risks into `approach.md`
4. Log time entries for team
5. Commit changes

### Developer / Architect
**Core Spaces**:
- `/sow_projects/project_n/tech/` - architecture diagrams, schema, scripts
- `/code/` - small modules or APEX exports
- `tickets/` - Jira mirror for offline browsing

**Daily Rhythm**:
1. Morning: Check `tickets/activity.md` for new items
2. Work on code/APEX in `/code/` or linked repo
3. Update `approach.md` or `tech/design.md` if design changes
4. Note updates in `tickets/ABC-123.md` when closing tickets
5. End of day: Quick time log in `timesheets/daily/`

### SOW / RFP Writer
**Core Workspace**:
- `/legal/` - contracts, templates, signatures
- `legal_links.md` - points to active contracts per project
- Templates with YAML metadata for auto-merge

**Document Creation**:
1. Copy templates from `/legal/templates/`
2. Pull scope/deliverables from `charter.md` and `approach.md`
3. Export to PDF using provided scripts
4. Place signed versions in `/legal/signatures/`

---

## Process Governance

### Project Initiation
1. **Scaffold Creation**: Duplicate template structure for client
2. **Context Setup**: Fill `_context/context.md` and `repo_links.md`
3. **Project Foundation**: Complete `charter.md`, `understanding.md`, `approach.md`
4. **Jira Integration**: Add filter and board link to `tickets/index.md`
5. **Legal Setup**: Add templates and drop active SOW in `/legal/sow/`

### Weekly Rhythm
- **Update `exec_status/`**: Once per week, 15 minutes max
- **Touch `approach.md`**: If decisions changed
- **Log time**: In `timesheets/daily/`
- **Review tickets**: Scan `activity.md` and `watchlist.md` for exec summary
- **Commit**: Save all changes to Git

### Quality Gates
- **Naming Convention**: `YYYY-MM-DD-short-slug.md`
- **Meeting Documentation**: Every meeting has dated notes
- **Weekly Pruning**: Remove stale drafts
- **Access Control**: Teams groups and repo ACLs
- **Secret Management**: Reference 1Password items by name only

---

## Automation Governance

### Included Automations (Safe)
1. **Jira Daily Pull**: Updates `snapshots/` and ticket stubs
2. **Watchlist Bump**: Moves watchlist items to next `exec_status`
3. **Export Command**: Compiles exec status or SOW on demand

### Optional Automations (Enable One at a Time)
- Calendar skim for draft time entries
- Jira Done moves → time entry suggestions
- Teams standup/review crumb collection

### Jira Integration Rules
**Daily Pull Job**:
1. Read `tickets/index.md` for filter
2. Fetch issues with key fields
3. Write `snapshots/DATE.json,csv`
4. Update/create `KEY.md` stubs
5. Append changes to `activity.md`
6. Update "Last sync" and commit

**Vibe-Code Tickets**:
```
/sow_projects/project_1/outbox/
  jira_create.md   # queued creates
  jira_update.md   # queued transitions, comments, assigns
```

---

## Data Governance

### Security Layers
- **Legal Folder**: Tighter access controls
- **Disclosures**: `_context/disclosures.md` explains data location and visibility
- **Access Management**: Teams groups + repo ACLs
- **Secret References**: Never hardcode, use 1Password item names

### Data Flow
1. **Input**: Meetings, emails, Jira, calendar events
2. **Processing**: Manual editing + light automation jobs
3. **Storage**: Markdown files in Git repository
4. **Output**: PDF/PPTX exports when needed

---

## Compliance and Audit

### Audit Trail
- **Git History**: Complete change tracking
- **Time Logs**: Linked to actual work artifacts
- **Contract Versions**: All SOWs and change orders tracked
- **Decision Log**: Embedded in `approach.md` and exec status files

### Compliance Requirements
- **Data Retention**: Git provides permanent record
- **Access Logging**: Repo access + Teams channel access
- **Change Management**: All scope changes in `change_orders/`
- **Financial Tracking**: Timesheets linked to legal agreements

---

## Success Metrics

### Adoption Metrics
- **Weekly Updates**: % of projects with current `exec_status`
- **Time Logging**: % of team members logging time regularly
- **Document Freshness**: Age of key documents (`approach.md`, `status.md`)
- **Automation Usage**: Which optional automations are enabled

### Quality Metrics
- **Jira Sync Accuracy**: % of tickets correctly mirrored
- **Contract Alignment**: % of SOWs matching current scope
- **Searchability**: Time to find key information
- **Handoff Success**: Time to onboard new team members

---

## Continuous Improvement

### Monthly Review
- **Template Updates**: Improve based on usage patterns
- **Automation Assessment**: Add/remove features based on adoption
- **Process Refinement**: Update governance based on team feedback
- **Tool Integration**: Evaluate new tools and integrations

### Quarterly Strategy
- **Framework Evolution**: Assess structural changes needed
- **Technology Stack**: Review tools and platforms
- **Training Materials**: Update orientation documents
- **Best Practice Library**: Document successful patterns

---

## Emergency Procedures

### System Outage
- **Manual Fallback**: All processes work without automation
- **Communication**: Use Teams/email for coordination
- **Data Recovery**: Git history provides full backup

### Security Incident
- **Access Revocation**: Immediate through Teams groups and repo ACLs
- **Data Assessment**: Review `_context/disclosures.md` for exposure
- **Breach Protocol**: Follow company security procedures

---

## Governance Evolution

This framework is designed to evolve:

1. **Start Simple**: Begin with basic Markdown and Git
2. **Add Automation**: Enable features as team adopts
3. **Expand Structure**: Add new directories as needed
4. **Refine Processes**: Update based on actual usage

The goal is a living system that grows with your needs while maintaining simplicity and reliability.
