#!/usr/bin/env bash
# Run by the Amp dotfiles plugin once in each new orb.
set -euo pipefail
cd "$(dirname "$0")"

./agents.sh
