#!/usr/bin/env bash
# Copy agent guidance (AGENTS.md and .agents/) from this repo into $HOME.
set -euo pipefail
cd "$(dirname "$0")"

cp AGENTS.md "$HOME/AGENTS.md"
mkdir -p "$HOME/.agents"
cp -R .agents/. "$HOME/.agents/"
