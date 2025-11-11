
# **Teams Integration – The Short Version (For the Old Guard)**

### **What it does**

* **Keeps ****executives and PMs** up to date **inside Teams**
* Pulls data from IDE.AI, Jira, and Email automation — then posts clean updates
* Nobody logs into anything new
* It’s like having a polite robot PM who never forgets

---

### **What they see**

Each project channel shows:

* 🧾 **Weekly Status Card** – pulled from **_context/status.md**
* 📊 **Daily Jira Digest** – new issues, what moved, what closed
* ✉️ **New Email Alerts** – “Jane @ Acme sent: Bank file mapping questions”
* 📁 **Deliverable Uploads** – “Tech Design v2.pdf uploaded by Emanuel”
* 📅 **Meetings & Timesheets** (optional) – “2 hours logged on AP Automation”

Everything posts directly into the project’s Teams channel feed.

---

### **How it works**

A few **Power Automate flows** handle all the boring stuff:

1. **Weekly Status Flow**
   * Trigger: new **exec_status/DATE.md** or Friday 4 PM
   * Action: read file → post summary card
   * Output:

     > **Acme AP Automation – Week of 11/07**
     >

     > Health: Green | 18 open Jira tickets | 2 deliverables ready
     >
2. **Daily Jira Digest**
   * Trigger: every weekday 7 AM
   * Action: pull issues from Jira → post top 5 changes
   * Output:
     > Jira Update: 3 new issues, 2 moved to Done, 1 blocked (ABC-130)
     >
3. **Email Intake Notice**
   * Trigger: new markdown in **/communications/incoming/**
   * Action: post short message in Teams channel
   * Output:
     > ✉️ New email from Jane Client – “Re: File Mapping Questions”
     >
4. **Deliverable Upload Flow**
   * Trigger: file added to **/deliverables/** or SharePoint “Deliverables” folder
   * Action: post one line with a link to the file

---

### **Optional goodies**

* **Power BI tab** – live dashboard with health, burn-down, and billable hours
* **“Log Time” Adaptive Card** – quick popup in Teams that writes to **/timesheets/**
* **Watchlist alerts** – ping when a Jira ticket on the watchlist moves

---

### **Why it works**

* Execs stay in Teams — no new logins
* PMs keep their source of truth in IDE.AI
* Updates flow automatically; nobody has to chase screenshots or send recaps
* Clean, quiet automation: only real changes get posted

---

### **Rules to remember**

* Don’t spam the channel — each flow posts once per day or week
* Keep project channels named cleanly: **CLIENT – PROJECT**
* **Pin tabs for ** **Status** **, ** **Jira** **, ** **Deliverables** **, and ****Emails**
* Let the bots do the grunt work — you just talk to clients

---

That’s it.

**They stay in Teams, you stay in control, and ****everybody thinks the updates write themselves.**
