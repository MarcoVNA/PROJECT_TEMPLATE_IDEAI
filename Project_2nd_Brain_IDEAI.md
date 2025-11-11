# **Project Second Brain IDEAI Medium Plan**

## **Goal**

One living workspace per client that ties together strategy, delivery, Jira visibility, contracts, timesheets, and code awareness. Markdown first. Exports only when needed. Light jobs keep it fresh.

---

## **Top-level shape**

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

Notes

* Code can be linked in **_context/repo_links.md** and, when useful, a small slice can live in **project_1/code/**.
* Everything in Git for history and handoffs.

---

## **Core working docs per project**

* **charter.md**: why, what, success, boundaries, owners
* **understanding.md**: shared narrative after discovery
* **approach.md**: living design and delivery plan, next review date
* **project_backlog.md**: ordered themes or epics, link to Jira board
* **tech/design.md**: schema notes, APIs, diagrams
* **exec_status/YYYY-MM-DD.md** **: weekly one-pager**
* **legal_links.md** in the project root can point to MSA, SOW, CO inside **/legal/**

Templates for all of the above ship in **/templates/**.

---

## **Jira inside the folder**

### **What you see without opening Jira**

* **tickets/activity.md**: rolling human-readable feed
* **tickets/KEY.md**: stub per issue with status, assignee, summary, links
* **tickets/snapshots/YYYY-MM-DD.json,csv** **: daily export of the filter**
* **tickets/index.md**: board link, filter, owners, last sync

### **How it stays current**

**Daily pull job** (n8n or small cron)

1. Read **tickets/index.md** for filter
2. Fetch issues with key fields
3. **Write **snapshots/DATE.json,csv
4. Update or create **KEY.md** stubs
5. Append changes to **activity.md**
6. Update **Last sync** and commit

**Change pings** (optional)

* Jira webhook hits a tiny endpoint that updates the one affected stub and appends a line to **activity.md**
* For anything in **watchlist.md**, also write a short note at the top of the next **exec_status** file

### **Vibe-code tickets**

You can speak or type intent. It writes to an outbox that a job processes.

```
/sow_projects/project_1/outbox/
  jira_create.md   # queued creates
  jira_update.md   # queued transitions, comments, assigns
```

**Create block**

```
- action: create
  type: Story
  project: ACME
  summary: "Bank file v2 mapping"
  assignee: "jane@client.com"
  labels: ["bank","mapping"]
  description: |
    Map v2 fields per finance spec. Validate sample files.
  due: 2025-11-14
```

**Update block**

```
- action: transition
  key: ABC-123
  to: "In Progress"
- action: comment
  key: ABC-123
  text: "Chunking POC complete. See approach.md."
```

A small job posts these to Jira, annotates success back in the block, then moves it to **tickets/sent.md**.

No email-drafts feature included.

---

## **Timesheets that don’t hurt**

**Entry format** placed in daily or people pages

```
---
who: "Jerry Ward"
email: "jerry.ward@viscosityna.com"
date: "2025-11-07"
hours: 3.5
client: "Acme"
project: "AP Automation"
tags: ["design","meeting"]
billable: true
source: "manual"  # manual, calendar, teams, jira, ai-voice
linked_artifacts:
  - "[[../approach.md]]"
---
Refined rules and scheduled demo.
```

**Rollups**

* sow_projects/project_1/timesheets/rollup.md** per project**
* **/_timesheets/rollup.md** optional cross-project view
* Export CSV only when finance asks

**Optional helpers later**

* Calendar skim to create draft entries with **source: calendar**
* Watch Jira Done moves and add a small crumb entry if a person logged no time that day
* Teams standup or review crumbs

All helpers are off by default. You can enable one at a time.

---

## **Contracts in the same space**

**/legal/** holds MSA, SOW, change orders, NDA, procurement, signatures, templates, clauses.

Security is tighter on this folder.

New SOWs are generated from templates that pull short blocks from **charter.md** and **approach.md**.

Exports stored in **legal/.../exports/**. Signed files go in **legal/signatures/**.

---

## **Exports**

* Markdown to PDF or PPTX using Pandoc or Marp
* No edits in exported files. Edit the source then regenerate
* **templates/rules/export.yaml** defines what compiles and where it lands

Example:

```
bundles:
  - name: weekly_exec_status
    source: "sow_projects/*/exec_status/*-weekly.md"
    output: "deliverables/decks/{project}-{date}-exec.pdf"
```

---

## **Code awareness**

* **_context/repo_links.md** lists repos, branches, CI, APEX app IDs, Teams channels
* For small pieces, keep code or exports under **sow_projects/project_1/code/**
* Larger apps live in their own repos, linked only

**Sample **repo_links.md

```
Repos:
- payments-api: https://github.com/org/payments-api  default: main  CI: https://ci/org/payments
- apex-app: https://gitlab.com/org/apex-app  app_id: 102  envs: dev,test,prod

Boards:
- Jira Delivery: https://jira.example.com/secure/RapidBoard.jspa?rapidView=42

Teams:
- Client main channel: https://teams.microsoft.com/l/channel/...
```

---

## **Weekly rhythm**

* Update **exec_status/** once, 15 minutes max
* If decisions changed, touch **approach.md**
* **Log time in **timesheets/daily/
* Quick scan of **tickets/activity.md** and **watchlist.md** for the exec summary
* Commit

---

## **Governance and hygiene**

* **Naming: **YYYY-MM-DD-short-slug.md
* Every meeting has a dated note
* Weekly prune pass for stale drafts
* Access through Teams groups and repo ACLs
* Secrets referenced by 1Password item name only
* **_context/disclosures.md** explains where data lives and who can see it

---

## **Small, safe automations to include**

1. **Jira daily pull** to snapshots and stubs
2. **Watchlist bump** into next **exec_status** header
3. **Export command** to compile exec status or SOW on demand
   Everything else manual until adoption is strong.

---

## **Onboarding checklist**

1. Duplicate scaffold for the client
2. **Fill **_context/context.md** and **repo_links.md
3. **In the first project, fill **charter.md**, **understanding.md**, **approach.md
4. Add Jira filter and board link to **tickets/index.md**
5. Turn on the Jira daily pull for this project only
6. End of week, create one **exec_status/DATE.md** and log time
7. Add legal templates and drop the active SOW in **/legal/sow/**

---

## **What you gain**

* Open the folder and see the whole story in minutes
* Jira activity visible without logging in
* Contracts generated from current context
* Timesheets that match reality
* Room to grow without refactoring the structure
