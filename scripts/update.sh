#!/usr/bin/env bash
#
# update.sh — Check for Hivework updates on GitHub and re-install
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$REPO_ROOT"

echo "Checking for Hivework updates from GitHub..."

if ! git remote -v | grep -q 'origin'; then
  echo "No GitHub remote configured yet. Re-running installer with current files..."
  "$SCRIPT_DIR/install.sh"
  exit 0
fi

# Fetch remote state
git fetch origin main --quiet 2>/dev/null || {
  echo "Could not reach GitHub. Check your internet connection."
  exit 1
}

LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/main)

if [[ "$LOCAL" != "$REMOTE" ]]; then
  echo "New updates detected! Pulling latest agents and fixes..."
  git pull origin main
  echo "Applying updates to installed tools..."
  "$SCRIPT_DIR/install.sh" --no-interactive
  echo "Hivework is now up to date!"
else
  echo "You are already on the latest version of Hivework."
fi
