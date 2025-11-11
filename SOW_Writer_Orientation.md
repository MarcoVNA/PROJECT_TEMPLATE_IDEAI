## **Orientation Letter – SOW / RFP Writer (Contracts & Proposals)**

### **Welcome**

You’ll use **Project Second Brain IDE.AI** to produce SOWs, Change Orders, and RFP responses directly from live project data.

That keeps scope, assumptions, and pricing synchronized with what the team is actually building.

### **Your workspace**

/legal/

```
msas/   sow/   change_orders/   ndas/   procurement/   signatures/   templates/
```

Each project’s **/sow_projects/project_n/legal_links.md** points to its active contracts.

### **YAML in your world**

Each template begins with metadata like:

```
---
client: Acme Inc.
project: AP Automation
effective_date: 2025-11-10
pm: Jane PM
sponsor: John Client
rate_hour: 185
scope_summary: "{{charter.scope}}"
---
```

This header feeds auto-merge tools and AI assistants.

When you run an export, those variables pull data from **_context/** and **charter.md** so your documents are always current.

### **How to create a new SOW**

1. **Copy **/legal/templates/sow.md** to **/legal/sow/YYYY-MM-DD-client-sow-v1.md**.**
2. Review the YAML fields; adjust client, rates, and dates.
3. Pull short scope and deliverables paragraphs from **charter.md** and **approach.md**.
4. Export to PDF using the provided command or script.
5. Place the signed version in **/legal/signatures/** and log it in **legal_links.md**.

### **RFP responses**

* Each RFP can live under **/sow_projects/rfp_responses/** using the same structure.
* Use **understanding.md** and **approach.md** to fill the narrative sections automatically.
* Clauses such as payment terms or SLAs come from **/legal/templates/clauses/**.

### **Why it matters**

* No more stale scopes or misaligned pricing.
* Each signed contract matches the real state of delivery.
* Audit or renewal becomes easy—everything is in one repo.

---

## **The shared philosophy**

**Strategy as Code | Project Management as Code | Delivery as Code**

* YAML = metadata glue connecting humans and automation.
* Markdown = human-readable source of truth.
* Git = time machine for every decision.
* Light jobs (n8n, cron) = quiet assistants keeping Jira, timesheets, and exports fresh.
* AI IDE = the conversational layer that lets anyone update or query the system naturally.

Together they turn your projects into living systems: transparent, searchable, and effortless to maintain.
