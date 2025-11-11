# Automation Framework - Second Brain IDE.AI

## Philosophy

**Light automation that enhances human work without replacing it.** Every automation serves the goal of making the project workspace more valuable and reducing administrative overhead.

---

## Core Automation Principles

### 1. Manual First, Automation Second
- All processes work manually before automation is added
- Automation is optional and can be enabled incrementally
- No single point of failure - system works without automation

### 2. Markdown as the Source of Truth
- All automation reads from and writes to Markdown files
- No proprietary databases or black boxes
- Human-readable and editable at all times

### 3. Quiet and Respectful
- Automations run in the background without interrupting work
- Minimal notifications - only for important changes
- Respect for existing workflows and tools

---

## Automation Components

### Jira Integration
**Purpose**: Bring Jira ticket data into the project folder for visibility and offline access

**Location**: `/sow_projects/project_n/tickets/`

**Key Files**:
- `index.md` - Board configuration and sync status
- `activity.md` - Human-readable activity feed
- `ABC-123.md` - Individual ticket stubs with metadata
- `snapshots/` - Daily JSON/CSV exports

**Automation Jobs**:
- **Daily Pull Job**: Runs once daily to sync all ticket data
- **Watchlist Monitor**: Alerts on high-priority ticket changes
- **Vibe-Code Processor**: Processes queued ticket creation/updates

**Configuration**:
```yaml
# tickets/index.md
board_url: "https://jira.example.com/secure/RapidBoard.jspa?rapidView=42"
filter: "project = PROJ AND status not in (Done, Closed)"
last_sync: "2025-11-07T07:00:00Z"
watchlist: ["ABC-123", "ABC-456"]
```

### Email Automation
**Purpose**: Capture all client communications in the project workspace

**Location**: `/communications/incoming/`

**Key Features**:
- Unique email alias per client: `client@viscosity.cc`
- Automatic conversion to Markdown format
- Attachment handling and tagging
- Status updates in `_context/status.md`

**Automation Jobs**:
- **Email Processor**: Converts incoming emails to Markdown
- **Attachment Handler**: Processes and categorizes attachments
- **Tagging Service**: Adds relevant tags based on content analysis

**Email Format**:
```markdown
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

### Teams Integration
**Purpose**: Push project updates to Teams where executives and stakeholders work

**Key Features**:
- Weekly status cards from executive summaries
- Daily Jira digest with important changes
- New email notifications
- Deliverable upload alerts

**Automation Flows**:
- **Weekly Status Flow**: Posts executive status summaries
- **Daily Jira Digest**: Summarizes important ticket changes
- **Email Intake Notice**: Alerts on new client communications
- **Deliverable Upload Flow**: Notifies on new deliverable uploads

### Power BI Dashboards
**Purpose**: Visual analytics for project health and performance

**Key Dashboards**:
- **Project Health**: Status, budget, schedule variance
- **Jira Analytics**: Velocity, burndown, ticket trends
- **Financial Tracking**: Budget burn, invoicing, profitability
- **Team Performance**: Time tracking, utilization rates

**Data Sources**:
- Jira snapshots in `/tickets/snapshots/`
- Timesheet rollups in `/timesheets/rollup.md`
- Executive status files in `/exec_status/`
- Budget tracking in project root

---

## Implementation Architecture

### Technology Stack
**Automation Platforms**:
- **n8n**: Primary automation workflow engine
- **Power Automate**: Microsoft ecosystem integration
- **GitHub Actions**: CI/CD and scheduled jobs
- **Python Scripts**: Custom data processing

**Data Storage**:
- **Git Repository**: Source of truth for all project data
- **SharePoint/OneDrive**: File storage and sharing
- **Temporary Storage**: Redis for short-term caching

**Integration Points**:
- **Jira API**: Ticket and board data
- **Graph API**: Microsoft 365 integration
- **Email API**: Email processing and forwarding
- **Webhooks**: Real-time event processing

### Security Model
**Authentication**:
- OAuth 2.0 for all external integrations
- API keys stored in 1Password references
- Service principals for automation accounts

**Data Protection**:
- Encrypted communication channels
- Sensitive data tagging and access control
- Audit logging for all automation activities

**Access Control**:
- Role-based access to project directories
- Team-based permissions for automation
- Client isolation and data separation

---

## Automation Jobs

### Daily Jobs
**Jira Sync Job** (7:00 AM daily)
```python
def jira_daily_sync():
    # Read configuration from tickets/index.md
    config = read_config("tickets/index.md")
    
    # Fetch issues from Jira API
    issues = jira_client.get_issues(config["filter"])
    
    # Save snapshots
    save_snapshot(issues, "tickets/snapshots/")
    
    # Update ticket stubs
    for issue in issues:
        update_ticket_stub(issue)
    
    # Update activity feed
    update_activity_feed(issues)
    
    # Update sync status
    config["last_sync"] = datetime.now().isoformat()
    write_config("tickets/index.md", config)
```

**Email Processing Job** (Every 15 minutes)
```python
def process_emails():
    # Check for new emails
    new_emails = email_client.get_new_emails()
    
    for email in new_emails:
        # Convert to Markdown
        md_content = convert_to_markdown(email)
        
        # Save to communications/incoming/
        filename = f"communications/incoming/{email.date}-{email.subject_slug}.md"
        write_file(filename, md_content)
        
        # Process attachments
        process_attachments(email.attachments)
        
        # Update status
        update_status_with_email(email)
        
        # Post to Teams
        teams_client.post_notification(email)
```

**Timesheet Rollup Job** (8:00 PM daily)
```python
def rollup_timesheets():
    # Read all daily timesheet entries
    daily_entries = read_directory("timesheets/daily/")
    
    # Aggregate by project and person
    rollup = aggregate_timesheets(daily_entries)
    
    # Update project rollup files
    for project, data in rollup.items():
        write_file(f"sow_projects/{project}/timesheets/rollup.md", data)
    
    # Update client-level rollup
    client_rollup = aggregate_client_rollup(rollup)
    write_file("_timesheets/rollup.md", client_rollup)
```

### Weekly Jobs
**Executive Status Generation** (Friday 4:00 PM)
```python
def generate_executive_status():
    # Read project data
    project_data = collect_project_metrics()
    
    # Generate status summary
    status = generate_status_summary(project_data)
    
    # Create executive status file
    filename = f"exec_status/{datetime.now().strftime('%Y-%m-%d')}-weekly.md"
    write_file(filename, status)
    
    # Post to Teams
    teams_client.post_executive_status(status)
    
    # Send email summary
    email_client.send_executive_summary(status)
```

**Power BI Data Refresh** (Saturday 2:00 AM)
```python
def refresh_power_bi():
    # Extract data from project files
    jira_data = extract_jira_data()
    timesheet_data = extract_timesheet_data()
    financial_data = extract_financial_data()
    
    # Update Power BI datasets
    powerbi_client.update_dataset("jira_analytics", jira_data)
    powerbi_client.update_dataset("timesheet_analytics", timesheet_data)
    powerbi_client.update_dataset("financial_analytics", financial_data)
```

### Real-time Jobs
**Webhook Processors**
```python
def jira_webhook_handler(webhook_data):
    # Process individual ticket changes
    if webhook_data["type"] == "issue_updated":
        update_single_ticket(webhook_data["issue"])
        append_to_activity(webhook_data["issue"])
        
        # Check if on watchlist
        if webhook_data["issue"]["key"] in get_watchlist():
            send_watchlist_alert(webhook_data["issue"])
```

---

## Configuration Management

### Environment Configuration
```yaml
# config/automation.yaml
environment: "production"
debug: false
log_level: "INFO"

jira:
  base_url: "https://jira.example.com"
  username: "automation@viscosityna.com"
  token_ref: "1password://jira-api-token"

email:
  alias_domain: "viscosity.cc"
  imap_server: "outlook.office365.com"
  username: "automation@viscosityna.com"
  password_ref: "1password://email-password"

teams:
  webhook_url: "https://teams.microsoft.com/webhook/..."
  channel_mappings:
    "client-acme": "Acme - AP Automation"
    "client-beta": "Beta - CRM Integration"

powerbi:
  workspace_id: "workspace-id"
  dataset_ids:
    jira: "dataset-jira-id"
    timesheets: "dataset-timesheets-id"
    financial: "dataset-financial-id"
```

### Project-Specific Configuration
```yaml
# sow_projects/project_1/tickets/index.md
project_name: "AP Automation"
board_url: "https://jira.example.com/secure/RapidBoard.jspa?rapidView=42"
filter: "project = AP AND status not in (Done, Closed)"
last_sync: "2025-11-07T07:00:00Z"
watchlist: ["AP-123", "AP-456"]
sync_schedule: "0 7 * * *"  # Cron expression
```

---

## Monitoring and Alerting

### Health Monitoring
**Automation Health Dashboard**:
- Job execution status and runtimes
- Error rates and failure patterns
- Data sync freshness indicators
- Resource utilization metrics

**Alerting Rules**:
- Job failure alerts (immediate)
- Data staleness alerts (after 24 hours)
- Performance degradation alerts
- Security incident alerts

### Logging Strategy
**Log Levels**:
- **ERROR**: Job failures, authentication issues
- **WARN**: Performance issues, data anomalies
- **INFO**: Job execution, data syncs
- **DEBUG**: Detailed execution tracing

**Log Storage**:
- Structured JSON logs for automation jobs
- Human-readable logs for troubleshooting
- Audit logs for compliance and security

---

## Deployment and Maintenance

### Deployment Pipeline
1. **Development**: Local development with test data
2. **Testing**: Staging environment with client test data
3. **Production**: Live client project workspaces

### Update Process
1. **Configuration Updates**: Hot-swappable without downtime
2. **Code Updates**: Blue-green deployment with rollback capability
3. **Schema Changes**: Versioned with migration scripts

### Maintenance Tasks
**Daily**:
- Monitor job execution and error rates
- Review data sync freshness
- Check resource utilization

**Weekly**:
- Review automation performance metrics
- Update configurations as needed
- Perform system maintenance

**Monthly**:
- Security updates and patching
- Performance optimization
- Capacity planning and scaling

---

## Troubleshooting Guide

### Common Issues

**Jira Sync Failures**:
- Check API credentials and permissions
- Verify Jira instance availability
- Review filter syntax and board URLs
- Check rate limiting and API quotas

**Email Processing Issues**:
- Verify email alias configuration
- Check IMAP/SMTP connectivity
- Review attachment size limits
- Validate email parsing rules

**Teams Integration Problems**:
- Check webhook URLs and permissions
- Verify message formatting and limits
- Review channel access permissions
- Test card rendering and interactions

### Recovery Procedures

**Data Recovery**:
- Restore from Git history for file-based data
- Re-run failed jobs with corrected configuration
- Manual data entry for critical missing information

**Service Recovery**:
- Restart automation services
- Clear caches and temporary data
- Re-authenticate with external services
- Rollback to previous stable version

---

## Future Enhancements

### Planned Automations
1. **AI-Powered Insights**: Automated analysis of project trends and risks
2. **Predictive Analytics**: Forecast project completion and budget needs
3. **Smart Notifications**: Context-aware alerts and recommendations
4. **Voice Integration**: Voice commands for status updates and queries

### Integration Roadmap
1. **Additional Project Tools**: Asana, Trello, Monday.com integration
2. **Financial Systems**: QuickBooks, SAP integration for budget tracking
3. **CRM Systems**: Salesforce, HubSpot integration for client management
4. **Development Tools**: GitHub, GitLab, Azure DevOps enhanced integration

---

## Best Practices

### Development Practices
- **Test-Driven Development**: Comprehensive test coverage for all automation
- **Configuration as Code**: All configuration stored in version control
- **Immutable Infrastructure**: Reproducible deployment environments
- **Observability First**: Built-in monitoring and debugging capabilities

### Operational Practices
- **Gradual Rollout**: Test new automations with pilot projects first
- **Fallback Mechanisms**: Manual processes for when automation fails
- **Documentation**: Living documentation for all automation processes
- **Training**: Regular team training on automation tools and processes

---

## Security Considerations

### Data Protection
- **Encryption**: All data encrypted at rest and in transit
- **Access Control**: Principle of least privilege for all automation
- **Audit Logging**: Complete audit trail for all automation activities
- **Data Retention**: Configurable retention policies for different data types

### Compliance
- **GDPR Compliance**: Data privacy and protection measures
- **SOC 2 Compliance**: Security controls and documentation
- **Industry Regulations**: Compliance with industry-specific requirements
- **Client Requirements**: Custom security measures for client needs

---

This automation framework is designed to evolve with your needs while maintaining simplicity, reliability, and security. Each automation can be enabled independently and configured per project, ensuring that the system grows with your organization rather than forcing you to adapt to rigid processes.
