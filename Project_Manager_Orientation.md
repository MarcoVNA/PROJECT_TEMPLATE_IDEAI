# **Orientation Letter – Project Manager (Non-Technical)**

### **Welcome**

You’re stepping into **Project Second Brain IDE.AI**, our living project workspace.

**Think of it as the combination of ** **a notebook, a project plan, and a source-of-truth repo** **.**

Every client has one folder. Everything—status, contracts, Jira tickets, deliverables—lives there.

### **Your role**

You don’t need to code. You just manage the story.

Each project has a few Markdown files you keep current:

* **_context/status.md** – the heartbeat of the client
* **charter.md** & **understanding.md** – what we promised and why
* **approach.md** – how the team is solving it
* exec_status/YYYY-MM-DD.md** – your weekly one-pager**
* **timesheets/daily** – quick time or meeting notes

### **What YAML is**

You’ll see little blocks at the top of most files that look like this:

```
---
date: 2025-11-07
owner: "Jane PM"
status: "In Progress"
tags: ["finance","phase1"]
---
```

That’s **YAML**—a lightweight way of labeling information so the system and AI tools can read it.

Everything between the **---** lines is just **metadata**: who, what, when.

You edit it like normal text.

### **Your daily tools**

* **Markdown** (.md) → write or edit in any text editor or inside Teams/GitHub.
* **Git** → saves every version automatically; no file chaos.
* **n8n or small jobs** → quietly pull Jira updates or compile reports.
* **Pandoc/Marp** → turn Markdown into PDFs or slides when you need client-facing docs.

### **How you use it**

1. Each Monday, update **status.md** with key goals.
2. Each Friday, create a new **exec_status/DATE.md** using the template.
3. Drop major decisions or risks into the end of **approach.md**.
4. Log a few time entries for yourself and the team.
5. Commit your changes (or click Save in GitHub) – that’s it.

### **Why it works**

* No hidden data. Leadership, devs, and clients can all see progress.
* You can generate SOWs or status decks from the same source.
* When you move on, the next PM reads the folder and is instantly caught up.

---

## **💻 Orientation Letter – Developer / Architect**

### **Welcome**

**In Project Second Brain IDE.AI, ** **your design, code, and reasoning live beside the project documents** **.**

It’s not extra paperwork—it’s your scratchpad that never gets lost.

### **Where you live**

**/sow_projects/project_n/tech/** → architecture diagrams, schema, scripts.

**/code/** → small modules or APEX exports tied to this project.

**tickets/** → Jira mirror you can browse offline.

### **YAML for you**

That top block in Markdown is machine-readable context.

When you write:

```
---
module: match_engine
version: 1.3
author: alex
updated: 2025-11-07
links:
  pr: https://github.com/org/payments/pull/987
---
```

AI tools can summarize progress, trace commits, and build reports automatically.

**It’s ** **documentation you already wrote** **—just structured.**

### **Your daily rhythm**

1. Morning: pull latest repo, check **tickets/activity.md** for new Jira items.
2. Work on code or APEX metadata in **/code/** or linked repo.
3. If design changes, update **approach.md** or **tech/design.md**.
4. When closing a ticket, jot a one-line update in **tickets/ABC-123.md**.
5. End of day: quick time log in **timesheets/daily/**.

You don’t manage Jira; the system syncs it in nightly.

Your short notes keep context accurate for PMs and AI agents.

### **Tools at your disposal**

* **Git** for versioning both docs and code.
* **Markdown** for architecture notes and inline diagrams (Mermaid, PlantUML).
* **Jira pull job** keeps **tickets/** current.
* **AI IDE integration (Cursor, Windsurf, Warp)** lets you:
  * Generate summaries from context.
  * “Vibe-code” new tickets or task lists.
  * Ask: *“show all open issues touching schema X.”*

### **Why it helps**

* No more “where’s the latest diagram?”
* PM sees your progress automatically.
* Every decision is searchable and portable across projects.
