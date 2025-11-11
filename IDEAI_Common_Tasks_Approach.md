# IDE.AI Common Tasks – Approach (Brainstorm)

## Purpose
- Outline high‑value, low‑risk automations that reduce project admin overhead.
- Invite ideas from PMs, Developers, Architects, and Execs before implementation.
- Keep it opt‑in, lightweight, and Markdown‑first.

---

## Principles
- **Manual works first**: Every task complements an existing manual flow.
- **Markdown is source of truth**: Read from / write to this workspace.
- **Quiet by default**: Summaries, not noise. Easy opt‑out.
- **Traceable**: All actions leave clear, human‑readable logs.
- **Small, composable**: Simple jobs (n8n/Power Automate/scripts) over monoliths.

---

## Roles and Outcomes (What should get easier?)
- **Project Manager**: Status reports, meeting capture, stakeholder comms.
- **Developer**: Time capture hints, ticket hygiene, change notes.
- **Architect**: Decision records, architecture diffs, diagram updates.
- **Hands‑on Executive**: Weekly digest, milestone clarity, risk highlights.
- **Operations**: Timesheet rollups, export packs, audit trails.

---

## Brainstorm: Candidate Tasks (No implementation yet)

### 1) Timekeeping Assistant (Developer/PM)
- Trigger: End of day (or commit/Jira activity detected)
- Input: Jira activity, git commits, meeting calendar
- Output: Draft `_timesheets` entries with suggested tags and durations
- Guardrails: User must approve before write

### 2) Status Synthesizer (PM)
- Trigger: Fridays 3–4 PM or new `exec_status/YYYY-MM-DD.md`
- Input: `tickets/activity.md`, deliverable changes, timesheet summaries
- Output: Draft status bullets (Health, Schedule, Budget, Risks)
- Guardrails: Writes to `exec_status/` as “Draft” section

### 3) Scrum Capture & Minutes (PM/Team)
- Trigger: Meeting start/end via Teams/Calendar
- Input: Agenda + transcript/notes
- Output: `communications/incoming/` note + action items to backlog/tickets
- Guardrails: Consent toggle; summarizes, never posts raw audio by default

### 4) Audio Transcribe + Summarize (PM/Team)
- Trigger: File dropped in `communications/attachments/` or Teams upload
- Input: Audio file (mp3/wav)
- Output: Markdown summary in `incoming/` with key decisions, tasks
- Guardrails: Size limits, secure processing, delete temp files

### 5) Ticket Hygiene Helper (Dev/PM)
- Trigger: Daily
- Input: Ticket stubs in `tickets/`, watchlist
- Output: Reminders for stale tickets, missing links (PR, owner, description)
- Guardrails: Suggests changes via `outbox/jira_update.md`

### 6) Watchlist Alerts (Exec/PM)
- Trigger: Ticket on `tickets/watchlist.md` moves state or is blocked
- Output: Teams card + line in `tickets/activity.md`

### 7) Deliverable Tracker (PM)
- Trigger: New file in `deliverables/`
- Output: Index entry + optional notification to Teams, link into status

### 8) Risk/Radar Bot (PM/Exec)
- Trigger: Weekly
- Input: Status text, ticket tags, timesheet anomalies
- Output: Draft “Risks/Watchouts” with probability/impact suggestions

### 9) Backlog Groomer (PM/Team)
- Trigger: Weekly
- Input: `_context/backlog.md`, ticket activity
- Output: Proposed promotions (idea → proposed → planned), duplicates flagged

### 10) Weekly Project Digest (Exec/PM)
- Trigger: Weekly
- Input: Jira changes, deliverables, timesheet rollups
- Output: One paged digest to Teams; archives to `_context/status.md`

### 11) Template Linter (All)
- Trigger: On commit or nightly
- Input: Markdown front matter
- Output: Warnings: missing keys, bad dates, broken links

### 12) YAML Validator + Link Checker (All)
- Trigger: Nightly
- Output: Report under `_context/status.md` with broken refs

### 13) Export Packager (PM)
- Trigger: On demand
- Input: Selected docs
- Output: PDF/PPTX via Pandoc/Marp per `templates/rules/export.yaml`

### 14) SOW Diff + Change Order Suggestor (SOW Writer/PM)
- Trigger: When `charter.md`/scope items drift from `templates/sow.md`
- Output: Draft change order bullets in `legal/change_orders/`

### 15) Architecture Drift Detector (Architect)
- Trigger: Weekly
- Input: `tech/` notes vs code repo annotations
- Output: Draft ADR (architecture decision record) placeholders

---

## Triggers, Inputs, Outputs (T‑I‑O)
- **Triggers**: Cron (daily/weekly), file events, Jira webhooks, Teams/Calendar
- **Inputs**: Markdown docs, YAML metadata, Jira snapshots, commit logs
- **Outputs**: Markdown drafts, Teams cards, `outbox/jira_*` blocks

---

## Opt‑In & Controls
- Per‑task toggles in a simple config (e.g., `config/automation.yaml`)
- Dry‑run mode for all writers
- Per‑role preferences (PM/Dev/Exec)

---

## Privacy & Security
- No secrets in Markdown; use 1Password references
- PII/Sensitive tagging → restrict notifications
- Skip audio transcription by default unless consented

---

## Open Discussion – Idea Inbox
- What’s the most time‑consuming weekly ritual we can shrink to minutes?
- Where do we see the most context switching (Jira ↔ Docs ↔ Teams)?
- What would make weekly Executive updates “write themselves” reliably?
- Which signals do you want in Teams vs kept in docs only?

Add ideas as `- [idea] …` under `_context/backlog.md` → Inbox.

---

## Checklists (draft)

### Pilot a New Task
- [ ] Define Trigger/Input/Output
- [ ] Add opt‑in flag and dry‑run mode
- [ ] Write to drafts only; no destructive updates
- [ ] Log activity with timestamp and file links
- [ ] Document rollback and disable steps

### Ready for Wider Use
- [ ] Privacy reviewed (PII, retention)
- [ ] Failure alerts and retries in place
- [ ] Minimal noise standard met (quiet by default)
- [ ] README and sample config added

---

## Next Steps (not commitments)
- Prioritize 2–3 pilots (e.g., Timekeeping Assistant, Status Synthesizer, Weekly Digest)
- Define success metrics (minutes saved/week; fewer stale tickets)
- Collect feedback → iterate
