



# **Email Automation – The Short Version**

### **What it does**

* Every client gets a unique alias: **client@viscosity.cc**
* CC that alias on **every email**
* A background bot grabs a copy, files it, and posts a quick update in Teams

### **Where it goes**

```
/client-name/
 ├── communications/
 │    ├── incoming/          ← message body as .md
 │    └── attachments/       ← docs, images, zips
 └── _context/status.md      ← “new email” line added automatically
```

### **What gets saved**

Each message becomes a Markdown file:

```
---
date: 2025-11-07
from: jane@client.com
subject: Bank file mapping questions
tags: [project_1, banking]
attachments:
  - ../attachments/spec-v2.xlsx
---
Email text here...
```

### **What happens automatically**

1. Bot (n8n or Power Automate) sees mail → converts it to Markdown
2. Puts attachments in **/attachments/**
3. Tags by keyword (e.g. billing, roadmap, legal)
4. Adds a short line to **_context/status.md**
5. Posts a Teams card:
   > ✉️ New email from Jane @ Acme — “Bank file mapping questions”
   >

### **Why it’s useful**

* No hunting through inboxes
* Every PM, dev, or exec sees the same thread
* Searchable history in one place
* Works even if people leave the company

### **Optional extras**

* Daily summary post in Teams (“4 new emails yesterday”)
* Simple keyword filters for alerts (e.g. “urgent”, “contract”)

### **Rules to remember**

* Always CC the client alias
* Don’t delete files from **/incoming/**
* Attachments with sensitive info get tagged **legal** automatically
* No reply automation — humans still send the emails

---

That’s it.

You send. It files. Everyone sees it.

No extra clicks, no new tool to learn.
