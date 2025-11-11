
# **Timekeeping – The Short Version**

### **What it does**

Gives you a dead-simple way to track time per project without spreadsheets or begging for updates.

Everyone logs time in Markdown. AI or Power Automate can roll it up later for billing, reports, or Power BI.

---

### **Where it lives**

Each project keeps its own logs:

```
/client-name/
 └── sow_projects/project_1/
      └── timesheets/
           ├── daily/          ← individual entries
           ├── monthly/        ← compiled summaries
           ├── people/         ← optional per-person folders
           └── rollup.md       ← totals and stats
```

---

### **How to log time**

Make a quick Markdown file in **/timesheets/daily/** named like **2025-11-07.md**

```
---
who: "Jerry Ward"
date: "2025-11-07"
hours: 3.5
client: "Acme"
project: "AP Automation"
tags: ["design","meeting"]
billable: true
source: "manual"   # manual | calendar | jira | teams
linked_artifacts: ["[[../approach.md]]"]
---
Refined design docs and reviewed sprint plan.
```

That’s it—no fancy tool needed.

---

### **Automations (optional but nice)**

* **Calendar Import:** grabs meeting duration and fills **source: calendar**.
* **Jira Sync:** logs time when a Jira issue moves to  *Done* .
* **Teams “Log Time” Card:** quick popup to add hours from inside Teams.
* **Weekly Rollup Job:** sums all entries → updates **/timesheets/rollup.md** and sends a digest to Teams.

---

### **What PMs see**

Each Friday, Power Automate posts a short summary:

> 🧾 Time Report – AP Automation

> Jerry 3.5 h (Mon) | Emanuel 6 h | Diego 4 h

> 13 total billable hours this week

---

### **Why it works**

* Zero new software to learn
* Everyone already has access
* Markdown keeps it auditable and searchable
* Feeds directly into billing, analytics, and client reports

---

### **Rules to remember**

* Log daily → takes 30 seconds
* Tag work with simple labels: dev, meeting, qa, planning
* Don’t edit someone else’s entries
* If you forgot, backfill it—no shame
* Keep **_timesheets/rollup.md** clean; automations overwrite it weekly

---

That’s it.

Write your hours, save the file, and walk away—the system handles the math and the updates.
