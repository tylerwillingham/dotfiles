#!/usr/bin/env bash
# Copy agent guidance (AGENTS.md and .agents/) from this repo into $HOME.
set -euo pipefail
cd "$(dirname "$0")"

mkdir -p "$HOME/.config"
cp AGENTS.md "$HOME/.config/AGENTS.md"
mkdir -p "$HOME/.agents"
cp -R .agents/. "$HOME/.agents/"
