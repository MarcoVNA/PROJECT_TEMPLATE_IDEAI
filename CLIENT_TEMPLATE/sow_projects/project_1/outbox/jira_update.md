# Jira Update Queue

Add YAML blocks to update existing issues. Example:

- action: transition
  key: ABC-123
  to: "In Progress"
- action: comment
  key: ABC-123
  text: "Chunking POC complete. See approach.md."
