
# **Developer Orientation – The Short Version**

### **What this is**

Welcome to **Project Second Brain IDE.AI** — where projects, code, docs, and decisions all live in one place.

No more digging through SharePoint or chasing Jira tickets.

Everything you need is right here in your client’s folder.

---

### **Where you live**

Each project has a dedicated area for you:

```
/client-name/
 └── sow_projects/
      └── project_1/
           ├── tech/              ← architecture notes, schema, APIs
           ├── code/              ← small scripts, APEX exports, SQL
           ├── tickets/           ← Jira stubs and daily snapshots
           ├── approach.md        ← evolving plan
           ├── understanding.md   ← big-picture alignment
           ├── exec_status/       ← weekly PM summaries
           └── timesheets/        ← log your hours or commits
```

Your job: keep **tech**, **approach**, and **tickets** current as the work evolves.

---

### **How you use it (daily)**

1. **Pull latest** from the repo or Teams SharePoint folder.
2. **Check ****tickets/activity.md** to see new Jira updates.
3. **Work on your code** in the linked repo or **/code/**.
4. **Update ****approach.md** if something changes in design or delivery.
5. **Add one line to your timesheet** at the end of the day.
6. **Commit and push** — that’s it.

---

### **YAML (what it is)**

Every file starts with a small header:

```
---
module: invoice_engine
version: 1.2
author: emmanuel
updated: 2025-11-07
---
```

That’s called **YAML** — it’s just metadata.

The AI and dashboards use it to understand what’s what.

Edit it like normal text.

---

### **Tools that work for you**

* **Git** → version history and backups
* **Markdown** → all notes and designs live here
* **Jira sync** → pulls ticket info into **/tickets/** automatically
* **Teams updates** → daily digest and weekly status posted for you
* **IDE.AI / Windsurf / Cursor** → you can “vibe code” tasks and summaries

---

### **When to log stuff**

* Major change in logic → update **approach.md**
* New DB schema → save under **/tech/schema/**
* Fixed something big → comment it in Jira or drop a note in **tickets/KEY.md**
* Finished a feature → one-liner in **exec_status/** for the PM
* Any idea worth remembering → jot it in Markdown, not chat

---

### **Why this matters**

* PMs and execs see real progress without bugging you
* Hand-offs become painless
* The repo becomes self-documenting — every project has a memory
* No one has to guess what’s live, broken, or pending

---

### **Rules to remember**

* Don’t over-document. One line is better than none.
* Push small commits often.
* Keep sensitive info out of Markdown — use vault references only.
* Never delete client files; move them to **/archive/** if needed.
* When in doubt, **write it down** in the folder.

---

That’s it.

Build your stuff, jot quick notes, push updates.

The system keeps everything else organized automatically.
