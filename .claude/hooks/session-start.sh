#!/bin/bash
# Install the TypeScript language server (used by the typescript-lsp plugin) in cloud sessions.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

if ! command -v typescript-language-server >/dev/null 2>&1; then
  npm install -g typescript-language-server typescript
fi
