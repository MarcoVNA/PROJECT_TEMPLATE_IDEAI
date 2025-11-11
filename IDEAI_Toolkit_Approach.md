# IDE.AI Toolkit Approach

## Philosophy

- Project Second Brain IDE.AI is Markdown-first and Git-aware.
- Prefer tools that preserve structure, context, and traceability.
- Automate lightly (n8n/Power Automate) and keep all signals flowing back into this folder.

---

## Recommended IDE and Agents

### Windsurf (Primary)

- Purpose-built for project/workspace orientation, not just code.
- Excellent at maintaining project-level documentation and structure.
- Use the provided Tasks (Command Palette → Run Task) to scaffold clients.
- Recommendation: Run all template ops and doc curation in Windsurf when possible.

### Cursor / Claude Code / other coding AIs (Optional)

- Can be used for low-level code edits or quick refactors.
- Not recommended for project orchestration or documentation flows—Windsurf is better for that in this workspace.

### Obsidian (Reader/Editor)

- Point Obsidian at this directory to browse and read Markdown with backlinks.
- Great for PMs and stakeholders who want a clean reading experience.

### Microsoft 365 / Teams / OneDrive

- Teams posts status/Jira/email digests (see automation docs).
- OneDrive/SharePoint stores the workspace for secure sharing.
- Markdown renders in Teams and Microsoft tools for quick reading.

---

## Supporting Tools

- Jira: Issue tracking and board source (mirrored into /tickets/).
- n8n or Power Automate: Light jobs for Jira/Email/Teams sync.
- Power BI: Dashboards (health, velocity, timesheets).
- Pandoc / Marp: Export Markdown → PDF/PPTX when needed.
- Git (and GitHub/GitLab/Azure DevOps): Versioning for all docs.

---

## How to Approach Work Here

1. Keep the living source in this folder (Markdown + YAML front matter).
2. For every change, update the relevant doc and, if needed, add a line to `_context/status.md`.
3. Use `_context/backlog.md` to capture ideas before implementation.
4. When you implement something, move it to Implemented in the backlog with date and files touched.
5. Use Jira mirroring to ensure ticket status is visible inside the project folder.

---

## Role-Based Toolkits

### Project Manager Toolkit

- Windsurf for editing core docs: `charter.md`, `understanding.md`, `approach.md`, `exec_status/`
- `_context/status.md` and `_context/backlog.md` for heartbeat and planning
- Teams for weekly status card and digests; OneDrive/SharePoint for sharing
- Obsidian for browsing/reading the workspace
- Optional: Power Automate flows to post summaries

### Developer Toolkit

- Windsurf (preferred) or Cursor for code-aware edits and doc updates
- Update `tickets/` stubs and `outbox/jira_*` for vibe-coded create/updates
- Add technical notes to `tech/` and architecture diagrams as needed
- Follow YAML patterns in templates; link PRs and commits in ticket stubs

### Architect Toolkit

- `approach.md` as the living architecture and delivery plan
- `tech/` for architecture notes, decision records, diagrams
- Coordinate with PM to reflect decisions in `context.md` and status
- Use Power BI/Jira snapshots for trend insights when available

### Hands-on Executive Toolkit

- Read `exec_status/` weekly summaries in Teams/OneDrive
- Skim `_context/status.md` for focus/next steps
- Browse Jira digest in Teams; comment/ask directly in the channel
- Obsidian or Teams file viewer for quick, clean reading of Markdown

---

## Quick Starts

- Create client workspace (Windsurf Task): Run Task → Create Client Workspace
- Or terminal: `chmod +x ./create_project.sh && ./create_project.sh "Client-Name" project_1`
- Add a new weekly status: duplicate `templates/exec_status.md` → `sow_projects/<project>/exec_status/YYYY-MM-DD.md`
- Capture an idea: `_context/backlog.md` → Inbox

---

## Notes

- This workspace is optimized for Windsurf. Other tools can work, but Windsurf is recommended for project-level orientation and documentation flows.
- PM-only users can use Obsidian or Teams/OneDrive viewers without installing an IDE.
