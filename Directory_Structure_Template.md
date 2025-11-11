# Directory Structure Template - Second Brain IDE.AI

## Standard Client Project Structure

This template defines the standardized directory structure for all client projects following the Project Second Brain IDE.AI approach.

## Root Level Structure

```
/client-name/
├── README.md                          # Project overview and quick start guide
├── .gitignore                         # Version control exclusions
└── .849C9593-D756-4E56-8D6E-42412F2A707B  # System identifier
```

## _context/ - Client Context and Status

```
_context/
├── context.md                         # Client overview, industry, key contacts
├── status.md                          # Current project status, goals, blockers
├── repo_links.md                      # Repositories, boards, CI/CD, Teams channels
└── disclosures.md                     # Data location, access permissions, privacy
```

### context.md Template
```markdown
---
client: "Client Name"
industry: "Industry Sector"
created: "2025-11-07"
owner: "Project Manager"
---

# Client Context

## Overview
[Brief client description and business context]

## Key Stakeholders
- **Executive Sponsor**: [Name, Title]
- **Day-to-Day Contact**: [Name, Title]
- **Technical Lead**: [Name, Title]

## Business Drivers
- [Primary business objective]
- [Secondary business objective]

## Previous Work
[Summary of any prior engagements or relevant history]
```

### status.md Template
```markdown
---
client: "Client Name"
updated: "2025-11-07"
status: "Active|On Hold|Complete"
health: "Green|Yellow|Red"
---

# Client Status

## Current Focus
- [Priority 1]
- [Priority 2]
- [Priority 3]

## Active Projects
- [Project 1]: [Status]
- [Project 2]: [Status]

## Key Blockers
- [Blocker 1] - [Owner] - [ETA]
- [Blocker 2] - [Owner] - [ETA]

## Upcoming Milestones
- [Milestone 1]: [Date]
- [Milestone 2]: [Date]
```

### repo_links.md Template
```markdown
---
client: "Client Name"
updated: "2025-11-07"
---

# Repository and Tool Links

## Code Repositories
- **main-app**: https://github.com/org/repo  default: main  CI: https://ci.org/repo
- **infrastructure**: https://github.com/org/infra  default: main

## Project Boards
- **Jira Delivery**: https://jira.example.com/secure/RapidBoard.jspa?rapidView=42
- **Azure DevOps**: https://dev.azure.com/org/project/_boards

## Teams Channels
- **Client Main**: https://teams.microsoft.com/l/channel/...
- **Technical**: https://teams.microsoft.com/l/channel/...

## CI/CD Pipelines
- **Build Pipeline**: https://ci.example.com/pipelines/123
- **Release Pipeline**: https://ci.example.com/releases/456

## Environments
- **Development**: [URL/Description]
- **Testing**: [URL/Description]
- **Production**: [URL/Description]
```

## legal/ - Contracts and Legal Documents

```
legal/
├── msas/                              # Master Service Agreements
│   ├── 2024-01-15-client-msa-v1.pdf
│   └── 2024-01-15-client-msa-v1-signed.pdf
├── sow/                               # Statements of Work
│   ├── 2024-02-01-project-alpha-sow-v1.md
│   ├── 2024-02-01-project-alpha-sow-v1.pdf
│   └── 2024-02-01-project-alpha-sow-v1-signed.pdf
├── change_orders/                     # Change Orders
│   ├── 2024-03-15-project-alpha-co-v1.md
│   └── 2024-03-15-project-alpha-co-v1-signed.pdf
├── ndas/                              # Non-Disclosure Agreements
├── procurement/                       # Procurement documents
├── signatures/                        # Signed documents archive
├── templates/                         # Document templates
│   ├── sow.md
│   ├── change_order.md
│   ├── msa.md
│   └── clauses/
│       ├── payment_terms.md
│       ├── sla.md
│       └── ip_ownership.md
└── export_rules.yaml                  # Export configuration
```

## communications/ - Client Communications

```
communications/
├── incoming/
│   ├── 2024-11-07-email-subject.md
│   ├── 2024-11-06-meeting-notes.md
│   └── attachments/
│       ├── requirements.pdf
│       └── mockups.png
└── outbound/
    ├── 2024-11-07-status-update.md
    └── proposals/
        ├── 2024-11-01-phase-2-proposal.md
        └── 2024-11-01-phase-2-proposal.pdf
```

## discovery/ - Discovery and Analysis

```
discovery/
├── findings.md                        # Key discovery findings
├── session_notes/
│   ├── 2024-10-15-stakeholder-interviews.md
│   ├── 2024-10-16-process-mapping.md
│   └── 2024-10-17-technical-assessment.md
├── artifacts/
│   ├── process-flows/
│   ├── user-personas/
│   └ competitive-analysis/
└── recommendations/
    ├── quick-wins.md
    └── long-term-vision.md
```

## roadmap/ - Strategic Planning

```
roadmap/
├── client_vision.md                   # Long-term client vision
├── strategic_backlog.md               # Strategic initiatives backlog
├── quarterly_plans/
│   ├── 2024-Q4-plan.md
│   └── 2025-Q1-plan.md
└── initiative_tracking/
    ├── initiative-alpha.md
    ├── initiative-beta.md
    └── initiative-gamma.md
```

## sow_projects/ - Project Execution

```
sow_projects/
├── project_1/
│   ├── charter.md                     # Project authorization and scope
│   ├── understanding.md               # Shared narrative after discovery
│   ├── approach.md                    # Living design and delivery plan
│   ├── project_backlog.md             # Ordered themes/epics linked to Jira
│   ├── legal_links.md                 # Links to SOW, change orders
│   ├── exec_status/
│   │   ├── 2024-11-01-weekly.md
│   │   ├── 2024-11-08-weekly.md
│   │   └── 2024-11-15-weekly.md
│   ├── tech/
│   │   ├── architecture.md
│   │   ├── api_design.md
│   │   ├── database_schema.md
│   │   └── diagrams/
│   │       ├── system_architecture.mermaid
│   │       └── data_flow.mermaid
│   ├── tickets/
│   │   ├── index.md                   # Board link, filter, owners, last sync
│   │   ├── activity.md                # Rolling human-readable feed
│   │   ├── watchlist.md               # Important tickets to monitor
│   │   ├── ABC-123.md                 # Individual ticket stubs
│   │   ├── ABC-124.md
│   │   ├── snapshots/
│   │   │   ├── 2024-11-07.json
│   │   │   ├── 2024-11-07.csv
│   │   │   └── 2024-11-08.json
│   │   └── sent.md                    # Processed vibe-code tickets
│   ├── timesheets/
│   │   ├── people/
│   │   │   ├── jane-doe.md
│   │   │   └── john-smith.md
│   │   ├── daily/
│   │   │   ├── 2024-11-07.md
│   │   │   └── 2024-11-08.md
│   │   ├── monthly/
│   │   │   ├── 2024-11.md
│   │   │   └── 2024-12.md
│   │   └── rollup.md                  # Project time summary
│   ├── deliverables/
│   │   ├── documentation/
│   │   ├── user-guides/
│   │   ├── training-materials/
│   │   └── presentations/
│   ├── code/                          # Optional local code or exports
│   │   ├── scripts/
│   │   ├── configuration/
│   │   └── exports/
│   └── outbox/                        # Vibe-code ticket queue
│       ├── jira_create.md
│       └── jira_update.md
├── project_2/
│   └── [same structure as project_1]
└── project_3/
    └── [same structure as project_1]
```

## deliverables/ - Final Deliverables Archive

```
deliverables/
├── project_1/
│   ├── documentation/
│   │   ├── user-manual-v1.0.pdf
│   │   └── technical-specs-v1.0.pdf
│   ├── training/
│   │   ├── user-training-deck.pdf
│   │   └── admin-training-deck.pdf
│   ├── code-packages/
│   │   ├── release-v1.0.zip
│   │   └── source-code-export.tar.gz
│   └── signoff/
│       ├── acceptance-form-signed.pdf
│       └── project-completion-certificate.pdf
├── project_2/
└── project_3/
```

## templates/ - Document Templates

```
templates/
├── charter.md                         # Project charter template
├── understanding.md                   # Discovery understanding template
├── approach.md                        # Project approach template
├── exec_status.md                     # Executive status template
├── project_backlog.md                 # Backlog template
├── sow.md                             # Statement of Work template
├── change_order.md                    # Change Order template
├── timesheet_entry.md                 # Timesheet entry template
├── legal_links.md                     # Legal links template
├── meeting_notes.md                   # Meeting notes template
├── rules/
│   ├── export.yaml                    # Export compilation rules
│   ├── jira_sync.yaml                 # Jira synchronization rules
│   └── timesheet_validation.yaml      # Timesheet validation rules
└── scripts/
    ├── create_project.sh              # Project creation script
    ├── export_reports.py              # Export automation script
    └── sync_jira.py                   # Jira sync script
```

## File Naming Conventions

### Date Formatting
- Use `YYYY-MM-DD` format for all date-specific files
- Example: `2024-11-07-weekly-status.md`

### Version Control
- Include version numbers for major documents: `v1.0`, `v1.1`, etc.
- Example: `project-alpha-sow-v2.1.md`

### Project Naming
- Use descriptive project names: `project_1`, `project_2`, etc.
- Or use client-specific names: `ap_automation`, `crm_integration`

### Meeting Notes
- Format: `YYYY-MM-DD-meeting-type.md`
- Example: `2024-11-07-stakeholder-review.md`

### Tickets
- Use Jira ticket keys: `ABC-123.md`, `DEF-456.md`

## Directory Creation Script

```bash
#!/bin/bash
# Second Brain IDE.AI - Client Project Structure Creator

CLIENT_NAME="$1"
PROJECT_NAME="$2"  # Optional: first project name

if [ -z "$CLIENT_NAME" ]; then
    echo "Usage: $0 <client-name> [first-project-name]"
    exit 1
fi

BASE_PATH="./$CLIENT_NAME"

# Create main directory structure
mkdir -p "$BASE_PATH"/{_context,legal/{msas,sow,change_orders,ndas,procurement,signatures,templates/clauses},communications/{incoming,attachments,outbound/proposals},discovery/{session_notes,artifacts/{process-flows,user-personas,competitive-analysis},recommendations/{quick-wins,long-term-vision}},roadmap/{quarterly_plans,initiative_tracking},sow_projects,deliverables,templates/{rules,scripts}}

# Create first project if specified
if [ ! -z "$PROJECT_NAME" ]; then
    mkdir -p "$BASE_PATH/sow_projects/$PROJECT_NAME"/{exec_status,tech/diagrams,tickets/{snapshots},timesheets/{people,daily,monthly},deliverables/{documentation,user-guides,training-materials,presentations},code/{scripts,configuration,exports},outbox}
fi

# Create placeholder files
touch "$BASE_PATH/README.md"
touch "$BASE_PATH/_context/context.md"
touch "$BASE_PATH/_context/status.md"
touch "$BASE_PATH/_context/repo_links.md"
touch "$BASE_PATH/_context/disclosures.md"
touch "$BASE_PATH/discovery/findings.md"
touch "$BASE_PATH/roadmap/client_vision.md"
touch "$BASE_PATH/roadmap/strategic_backlog.md"

if [ ! -z "$PROJECT_NAME" ]; then
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/charter.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/understanding.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/approach.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/project_backlog.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/legal_links.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/tickets/index.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/tickets/activity.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/tickets/watchlist.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/timesheets/rollup.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/outbox/jira_create.md"
    touch "$BASE_PATH/sow_projects/$PROJECT_NAME/outbox/jira_update.md"
fi

echo "Created Second Brain IDE.AI structure for client: $CLIENT_NAME"
if [ ! -z "$PROJECT_NAME" ]; then
    echo "With initial project: $PROJECT_NAME"
fi
```

## Usage Instructions

1. **Create Client Structure**: `./create_project.sh "client-name" "first-project"`
2. **Customize Context**: Fill `_context/context.md` and related files
3. **Set Up Projects**: Complete project-specific documents in `sow_projects/`
4. **Configure Automation**: Set up Jira sync and export rules
5. **Maintain Regular Updates**: Follow weekly rhythm for status and timesheets

## Notes

- This structure is designed for maximum transparency and searchability
- All living documents remain in Markdown format
- Exports (PDF, PPTX) are generated on-demand from source Markdown
- Git provides complete version history and change tracking
- Automation is optional and can be enabled incrementally
- The structure scales from single project to multi-year engagements
