#!/usr/bin/env bash
set -euo pipefail

# Always run from the workspace root
cd "$(dirname "$0")"

# Optional: uncomment if you ever run this as root (e.g. in Docker)
# export IS_SANDBOX=1

# Start Claude Code with all permission prompts bypassed.
# WARNING: This gives Claude full edit/command powers in this repo.
claude --dangerously-skip-permissions
