# Project Second Brain IDE.AI - Template System

## 🎯 Overview

**Project Second Brain IDE.AI** is a comprehensive project management framework that unifies strategy, delivery, documentation, and automation in a single Markdown-based workspace. This template system enables teams to manage client projects with transparency, efficiency, and minimal administrative overhead.

**Core Philosophy**: *Strategy as Code | Project Management as Code | Delivery as Code*

## 🚀 Quick Start

### Create a New Client Project

```bash
# Clone this repository
git clone [repository-url] PROJECT_TEMPLATE_IDEAI
cd PROJECT_TEMPLATE_IDEAI

# Create a new client workspace
./create_project.sh "Client-Name" [optional-project-name]

# Navigate to the new client folder
cd Client-Name
```

### Manual Setup (Windows)

1. Copy the `CLIENT_TEMPLATE` folder
2. Rename it to your client's name
3. Fill in `_context/context.md` with client information
4. Complete project documents in `sow_projects/project_1/`

## 📁 Repository Structure

```
PROJECT_TEMPLATE_IDEAI/
├── README.md                          # This file
├── CLIENT_TEMPLATE/                   # Base template for new clients
├── templates/                         # Document templates
├── _context/                          # Template system context
├── scripts/                           # Automation scripts
└── [Documentation Files]              # Framework guides and orientations
```

## 📚 Key Documentation

### Getting Started
- **Project_Manager_Orientation.md** - Guide for non-technical PMs
- **Developer_Orientation.md** - Quick start for developers
- **SOW_Writer_Orientation.md** - Contract and proposal guidance

### Framework Guides
- **Project_2nd_Brain_IDEAI.md** - Complete system overview
- **Project_Governance_Framework.md** - Processes and standards
- **Directory_Structure_Template.md** - Detailed folder structure
- **Automation_Framework.md** - Available automations and setup

### Approach Documents
- **IDEAI_Common_Tasks_Approach.md** - Task automation ideas
- **Timkeeping_Approach.md** - Time tracking methodology
- **jira_automation_approach.md** - Jira integration details
- **teams_power_bi_automation_approach.md** - Microsoft integrations

## 🎯 Key Features

### For Project Managers
- ✅ Weekly executive status reports
- ✅ Automatic Jira ticket syncing
- ✅ Time tracking without pain
- ✅ Client communication management
- ✅ Risk and milestone tracking

### For Developers
- ✅ Offline Jira browsing
- ✅ Architecture documentation alongside code
- ✅ IDE.AI integration (Cursor, Windsurf)
- ✅ Git-based version control
- ✅ Natural language ticket creation

### For Leadership
- ✅ Real-time project visibility
- ✅ Power BI dashboards
- ✅ Budget and schedule tracking
- ✅ Teams integration for updates
- ✅ Complete audit trail

## 🤖 Automation Capabilities

### Core Automations (Safe to Enable)
- **Daily Jira Pull** - Syncs ticket data automatically
- **Email Processor** - Converts emails to Markdown
- **Weekly Digest** - Generates status summaries

### Optional Automations
- **Timekeeping Assistant** - Suggests time entries from activity
- **Status Synthesizer** - AI-powered report generation
- **Teams Integration** - Posts updates to channels
- **Watchlist Alerts** - Notifications for critical tickets

## 🛠️ Technology Stack

- **Git** - Version control and history
- **Markdown** - Primary documentation format
- **YAML** - Configuration and metadata
- **n8n/Power Automate** - Workflow automation
- **Python/Bash** - Custom scripts
- **Teams/SharePoint** - Collaboration
- **Power BI** - Analytics and dashboards

## 📋 Templates Included

- `charter.md` - Project charter template
- `understanding.md` - Discovery documentation
- `approach.md` - Solution design template
- `exec_status.md` - Weekly status report
- `sow.md` - Statement of Work template
- `change_order.md` - Change request template
- `timesheet_entry.md` - Time tracking template

## 🔐 Security & Compliance

- **Access Control**: Teams groups and Git repository ACLs
- **Secret Management**: 1Password references only, no hardcoded secrets
- **Audit Trail**: Complete Git history of all changes
- **Data Protection**: Sensitive data tagging and isolation
- **Compliance**: SOC 2, GDPR-ready structure

## 👥 Team Roles

### Project Manager
Maintains status, coordinates delivery, manages stakeholder communication

### Developer/Architect
Documents technical decisions, maintains code artifacts, updates tickets

### SOW Writer
Creates and maintains contracts, change orders, and procurement documents

### Executive
Reviews weekly status, monitors risks, approves milestones

## 🚦 Getting Help

1. **Start with orientation documents** for your role
2. **Review the governance framework** for processes
3. **Check approach documents** for specific workflows
4. **Use templates** to create new documents

## 📈 Success Metrics

- **Adoption**: % of projects using the framework
- **Freshness**: Age of key documents
- **Automation**: Features enabled per project
- **Quality**: Jira sync accuracy and report timeliness

## 🔄 Continuous Improvement

This framework is designed to evolve:

1. **Start Simple** - Basic Markdown and Git
2. **Add Automation** - Enable features gradually
3. **Expand Structure** - Grow with your needs
4. **Refine Processes** - Update based on usage

## 📝 License & Support

Developed by Viscosity North America, Inc.

For support or questions:
- Review documentation in this repository
- Contact project owner: Jerry/Team
- Last updated: November 2025

---

*"One living workspace per client that ties together strategy, delivery, visibility, and code awareness. Markdown first. Exports only when needed. Light jobs keep it fresh."*