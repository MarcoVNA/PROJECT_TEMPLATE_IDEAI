
# **Project Simulation & Risk Discovery – The Short Version**

### **What this is**

A lightweight, **“think before you build”** exercise that happens **right after the SOW is approved** and before delivery starts.

The goal is to simulate the project mentally — walk through how it’ll actually work, spot the cracks, and document where things could fail.

This becomes your early-warning system.

---

### **Where it lives**

```
/client-name/
 └── sow_projects/
      └── project_1/
           ├── charter.md
           ├── understanding.md
           ├── approach.md
           ├── risk_discovery/
           │    ├── 2025-11-initial-simulation.md
           │    ├── 2025-11-risk-map.md
           │    └── 2025-11-lessons-from-simulation.md
```

---

### **When to do it**

* After **charter** and **understanding.md** are drafted
* Before the first sprint or kickoff
* Bring PM, architect, dev lead, and anyone who’s done this kind of work before

---

### **How it works (simple 5-step flow)**

1. **Simulate the project**
   * Walk through the lifecycle like it’s already live.
   * “What happens when the system goes down?”
   * “What if the client doesn’t open their ports?”
   * “What if the API rate limits us?”
2. **List potential failure modes**
   * Write short, honest bullets — tech, people, vendor, data, schedule.
   * Examples:
     * Client firewalls block agent communication.
     * Legacy schema changes midstream.
     * PMO approval delays cloud deploy.
     * External API throttles.
3. **Group risks by type**
   * Technical
   * Operational
   * Integration/Dependency
   * Client Process
4. **Rank them**
   * High / Medium / Low impact
   * High / Medium / Low likelihood
5. **Add “early countermeasures”**
   * Quick notes on what can reduce or neutralize risk.
   * Example:
     * Risk: Firewall restrictions
       * Countermeasure: Agent-first architecture, outbound-only communication.
     * Risk: API rate limits
       * Countermeasure: Implement queue with retries and exponential backoff.

---

### **File format**

```
---
title: "Initial Project Simulation & Risk Map"
date: "2025-11-07"
participants: ["Jerry Ward","Diego Fion","PM Jane","Lead Dev Alex"]
tags: ["risk","simulation","architecture"]
---
**Scenario:**  
Cloud-to-legacy integration with unknown network security policy.  

**Top 3 Risks:**  
1. Client firewall blocks inbound connections.  
2. Legacy schema drift during integration.  
3. Delayed test data from client systems.  

**Countermeasures:**  
- Use outbound agent pattern.  
- Freeze schema snapshot before development.  
- Create mock datasets for early testing.

**Outcome:**  
Team aligned on risk priorities and mitigation steps.  
Document updated in `approach.md` and reviewed before kickoff.
```

---

### **Why it matters**

* Gets everyone thinking like the system’s already in production
* Surfaces the ugly stuff early, when it’s cheap to fix
* Builds shared awareness between PMs, architects, and devs
* Turns intuition and experience into reusable knowledge

---

### **Who leads it**

* **Owner:** Project Architect
* **Contributors:** PM, Dev Lead, Ops, or anyone who’s been burned before
* **Output:** One **risk_discovery/DATE-risk-map.md** file reviewed before the first sprint

---

### **How it connects**

* **References go into **approach.md** → ****“See risk_discovery/2025-11-initial-simulation.md”**
* High-risk items become Jira tickets tagged **risk** or **watchlist**
* PM uses it to adjust cadence, priorities, and comms plans

---

That’s it.

Spend an hour simulating the project before kickoff, write down what could break, and make sure everyone knows where the landmines are before you take the first step.
