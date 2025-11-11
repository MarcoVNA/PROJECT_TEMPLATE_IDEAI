
# **Strategic Directives – The Short Version**

### **What this is**

A place to capture **real-world engineering experience** and **lessons learned** that guide how teams design and integrate systems.

These are the “tribal knowledge” notes that save future teams from learning the same hard lessons twice.

They live alongside the **roadmap** so PMs, architects, and devs can see *why* certain approaches are preferred — not just *what* to build.

---

### **Where it lives**

```
/client-name/
 └── roadmap/
      ├── client_vision.md
      ├── strategic_backlog.md
      ├── strategic_directives/
      │    ├── 2025-11-agent-architecture.md
      │    ├── 2025-11-integration-patterns.md
      │    └── 2025-11-data-bridge-lessons.md
```

Each directive is a short Markdown file written by a senior architect, not by AI.

AI can summarize them later, but these are **human-authored opinions**.

---

### **File format**

```
---
title: "Agent Architecture for Legacy-to-Cloud Integration"
author: "Jerry Ward"
date: "2025-11-07"
tags: ["architecture","integration","legacy","cloud"]
status: "adopted"
related_docs:
  - "[[../sow_projects/project_1/approach.md]]"
---
**Scenario:**  
You’re integrating a modern cloud app with a legacy on-prem system you don’t control.  
Firewall rules and network bureaucracy will block direct cloud→legacy calls.

**Directive:**  
Deploy a small **agent** inside the client network that connects **outbound** to the cloud (controlled port).  
All sync and messaging happens through that channel. The cloud never initiates inbound connections.

**Why:**  
- You control the cloud; they control the firewall.  
- You gain observability, retries, and security without begging IT for openings.  
- You can update agent logic without touching the legacy app.

**Design Notes:**  
- Use secure outbound HTTPS or WebSocket tunnels  
- Agent registers with cloud via token exchange  
- Supports command queue, async tasks, local caching  
- Example: Oracle Cloud Agent pattern for EBS or APEX hybrid integrations  

**Status:**  
Adopted as default integration model for hybrid projects.
```

---

### **When to write one**

* When a project hits a gnarly integration or deployment issue
* When a design pattern proves successful and should become policy
* When architecture decisions need context (“why we do it this way”)

---

### **Why it matters**

* Keeps institutional wisdom alive between projects
* Trains new engineers fast
* Helps PMs and architects defend design choices to clients
* Reduces re-work and “reinventing the wheel”

---

### **Who owns it**

* Written by: Senior architect or principal engineer
* Reviewed by: CTO or project lead
* Read by: Everyone — it’s not optional homework; it’s the playbook

---

### **How it ties to the roadmap**

Each roadmap milestone or backlog item can reference a directive:

> “Integration tasks follow the  **Agent Architecture Directive (2025-11)** **”**

That way, your roadmap tells **what**, and your directives explain **why and how**.

---

That’s it.

Strategic directives live in **/roadmap/strategic_directives/** and carry the DNA of your hard-earned experience — short, clear, opinionated, and easy for the next team to follow.
