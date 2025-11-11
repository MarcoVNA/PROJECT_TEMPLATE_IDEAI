# Jira Create Queue

Add YAML blocks to request new issues. Example:

- action: create
  type: Story
  project: PROJ
  summary: "Bank file v2 mapping"
  assignee: "jane@client.com"
  labels: ["bank","mapping"]
  description: |
    Map v2 fields per finance spec. Validate sample files.
  due: 2025-11-14
