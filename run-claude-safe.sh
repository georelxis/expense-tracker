#!/usr/bin/env bash
set -euo pipefail

# Always run from the workspace root
cd "$(dirname "$0")"

# Start Claude Code with safe tools auto-approved.
# Reading, searching, and browsing are allowed automatically.
# Editing files and running commands still require your approval.
claude \
  --allowedTools "Read" \
  --allowedTools "Glob" \
  --allowedTools "Grep" \
  --allowedTools "WebSearch" \
  --allowedTools "WebFetch" \
  --allowedTools "Agent"
