#!/usr/bin/env bash
# Create a new client workspace by copying CLIENT_TEMPLATE and renaming
# Usage: ./create_project.sh "Client-Name" [first-project-name]
set -euo pipefail

CLIENT_NAME=${1:-}
FIRST_PROJECT=${2:-project_1}

if [ -z "$CLIENT_NAME" ]; then
  echo "Usage: $0 <client-name> [first-project-name]"
  exit 1
fi

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
TEMPLATE_DIR="$SCRIPT_DIR/CLIENT_TEMPLATE"
TARGET_DIR="$SCRIPT_DIR/$CLIENT_NAME"

if [ ! -d "$TEMPLATE_DIR" ]; then
  echo "Template folder not found: $TEMPLATE_DIR"
  exit 1
fi

if [ -e "$TARGET_DIR" ]; then
  echo "Target already exists: $TARGET_DIR"
  exit 1
fi

# Copy template
cp -R "$TEMPLATE_DIR" "$TARGET_DIR"

# Rename default project folder if a custom name is provided
if [ "$FIRST_PROJECT" != "project_1" ]; then
  if [ -d "$TARGET_DIR/sow_projects/project_1" ]; then
    mv "$TARGET_DIR/sow_projects/project_1" "$TARGET_DIR/sow_projects/$FIRST_PROJECT"
  fi
fi

echo "Created client workspace at: $TARGET_DIR"
echo "Next steps:"
echo "1) Fill $CLIENT_NAME/_context/context.md and repo_links.md"
echo "2) Complete charter.md, understanding.md, approach.md in sow_projects/$FIRST_PROJECT"
echo "3) Add Jira board/filter to sow_projects/$FIRST_PROJECT/tickets/index.md"
