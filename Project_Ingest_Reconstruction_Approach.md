
# **Project Ingest & Reconstruction – The Short Version**

### **What this does**

Takes an **existing project folder (or client archive)**, compresses it, and lets AI unpack, triage, and rebuild it into the clean **Project Second Brain IDE.AI** structure — keeping only what’s relevant and tagging the rest for reference.

You end up with:

* **A ****clean, structured workspace** ready for current work
* A **safe reference zip** for legal or historical lookup
* **Indexed ****meeting recordings and transcripts** you can search later

---

### **Where it lives**

```
/client-name/
 ├── _import/
 │    ├── raw/                     ← drop zips or legacy folders here
 │    ├── processed/               ← sorted outputs
 │    └── log.md                   ← import report
 ├── communications/
 ├── discovery/
 ├── roadmap/
 ├── sow_projects/
 ├── media/                        ← all meeting videos & transcripts
 │    ├── recordings/
 │    ├── transcripts/
 │    └── summaries/
 └── deliverables/
```

---

### **How to run it**

#### **1.** **Prepare the dump**

* Zip the existing client folder(s) — entire old SharePoint, Teams, or drive.
* Name the zip clearly:
  2025-11-clientname-full-archive.zip
  or
  2025-11-clientname-projectx.zip
* Drop it into:
  /client-name/_import/raw/

#### **2.** **Trigger the ingest**

Run command (in IDE.AI, Windsurf, Cursor, or Make/n8n flow):

> “Ingest archive 2025-11-clientname-full-archive.zip and rebuild client structure.”

The AI will:

1. Extract the zip into a temp workspace.
2. Classify each file by name, content, and type.
3. Move to proper destination:
   * **Docs → **/discovery/**, **/roadmap/**, **/sow_projects/
   * **PDFs, PPTs → **/deliverables/
   * Notes, emails → **/communications/**
   * **Media → **/media/recordings/
4. Remove duplicates, old temp versions, and irrelevant files (e.g., **.bak**, **~$**, **.tmp**).
5. Write an **import summary** into **_import/log.md** showing what went where.

#### **3.** **Keep the original zip**

Never delete it.

Keep a copy in **/client-name/_import/raw/** or your archive bucket (S3, Drive, or Teams).

That’s your forensic backup in case something gets filtered out incorrectly.

---

### **4.** **Meeting Media Capture**

When uploading or syncing meeting recordings:

* **Videos** → **/media/recordings/** (e.g., Teams or Zoom exports)
* **Audio transcripts** → /media/transcripts/
  **File names: **YYYY-MM-DD-meeting-topic.md
* **AI-generated summaries** → **/media/summaries/**
  Example:

```
2025-11-07-kickoff-summary.md
---
participants: ["Jerry", "Diego", "Monica"]
key_points:
  - Risk identified: firewall restrictions
  - Decision: use agent-based integration
  - Next: schedule technical simulation
```

Optionally, set up an n8n or Power Automate flow to:

* Auto-save Teams recordings to **/media/recordings/**
* Use Whisper or Gemini Vision for transcription
* Auto-summarize and tag by meeting name and attendees

---

### **5.** **Run AI cleanup**

After ingest, run command:

> “Summarize this client’s legacy import and flag any redundant or outdated material for archive.”

AI will:

* Identify version duplicates and stale documents
* Suggest deletions or moves (e.g., old SOWs → **/archive/**)
* Update **_context/status.md** with a summary of imported materials

---

### **Why this works**

* Keeps **legacy knowledge** without clutter
* Brings new structure instantly under **standard client folders**
* Makes all media searchable and indexed
* Eliminates the “who has the latest file” nonsense
* Prepares the workspace for automation (email sync, Jira sync, etc.)

---

### **Rules to remember**

* Always compress first — no direct drag of giant folders
* Keep one zip per client or project
* Don’t rename or move things mid-import
* Review **_import/log.md** after processing
* Approve cleanup recommendations before deletion

---

### **Bonus command ideas**

* “Re-ingest only SOW and Deliverable files.”
* “Extract and summarize all meeting recordings from August to November.”
* “Sync new Teams recordings into /media/recordings/ weekly.”

---

That’s it.

Zip the chaos, drop it in **_import/raw/**, tell the AI to rebuild, and you’ve got a fresh, organized project folder — clean, indexed, and ready to roll.
