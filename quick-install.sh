#!/usr/bin/env sh
# One-line installer: fetches this repo and installs its skills for Claude Code and/or Codex.
#
#   curl -fsSL https://raw.githubusercontent.com/jiruifu/AI_Skills_4_Faculty_Job_Applicant/main/quick-install.sh | sh
#   curl -fsSL .../quick-install.sh | sh -s -- codex                       # Codex only
#   curl -fsSL .../quick-install.sh | sh -s -- claude research-statement-writer   # one skill, Claude only
#
# Arguments are passed straight to install.sh:  [--project] [claude|codex|both] [skill ...]
set -e
REPO="https://github.com/jiruifu/AI_Skills_4_Faculty_Job_Applicant.git"
tmp="$(mktemp -d 2>/dev/null || mktemp -d -t skills)"
trap 'rm -rf "$tmp"' EXIT
command -v git >/dev/null 2>&1 || { echo "git is required"; exit 1; }
echo "Fetching $REPO ..."
git clone --quiet --depth 1 "$REPO" "$tmp/repo"
sh "$tmp/repo/install.sh" "$@"
