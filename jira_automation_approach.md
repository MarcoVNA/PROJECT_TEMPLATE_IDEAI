
# **Jira Integration – The Short Version**

### **What it does**

* Pulls Jira issues and updates straight into the project folder
* Lets you see **status, assignee, and comments** without opening Jira
* Keeps a daily snapshot and activity feed
* You can “vibe code” new tickets right from a text block

---

### **Where it goes**

```
/client-name/
 └── sow_projects/project_1/
      ├── tickets/
      │    ├── index.md          ← board info + sync status
      │    ├── activity.md       ← running change log
      │    ├── ABC-123.md        ← ticket stub
      │    └── snapshots/        ← daily JSON/CSV exports
      └── outbox/
           ├── jira_create.md    ← queued new tickets
           └── jira_update.md    ← queued updates/comments
```

---

### **What happens automatically**

1. A small job (n8n, Power Automate, or script) runs once a day
2. Pulls open issues via Jira API → saves snapshot
3. Updates or creates stubs like **ABC-123.md**
4. Writes one line to **activity.md**:
   > ABC-123 → In Progress by Jane 10:22 AM
   >
5. Posts a short summary card in Teams

---

### **What’s in a stub**

```
---
key: ABC-123
title: Invoice sync fails on large payload
status: In Progress
assignee: Jane
updated: 2025-11-07T10:22-06:00
links:
  pr: https://github.com/org/payments/pull/987
---
Fails when payload >5 MB. Add chunking.
Next: add retry + test case.
```

---

### **Creating or updating tickets**

You can **talk to the system** instead of clicking around Jira.

Add blocks like this in **outbox/jira_create.md** or say it via the AI IDE.

**Create**

```
- action: create
  type: Story
  summary: Bank file v2 mapping
  assignee: jane@client.com
  labels: [bank, mapping]
  description: Map v2 fields per finance spec.
```

**Update**

```
- action: comment
  key: ABC-123
  text: Chunking POC complete. See approach.md.
```

The bot pushes these to Jira and marks them done.

---

### **Why it’s useful**

* Everyone sees the same Jira data in the folder
* No more “what’s the ticket number?” confusion
* Execs can read activity in Teams without opening Jira
* Devs can update or create issues right from the IDE

---

### **Optional extras**

* Daily Teams digest: new tickets, done tickets, blockers
* “Watchlist” file for high-priority items
* Power BI tab in Teams for burn-down and velocity charts

---

### **Rules to remember**

* Keep titles short and clear
* One issue per stub file
* Don’t edit the YAML keys unless you know what you’re doing
* If Jira breaks, you can still read and log everything offline

---

That’s it.

You sync once a day, log what matters, and **see Jira inside your project folder** instead of the other way around.
