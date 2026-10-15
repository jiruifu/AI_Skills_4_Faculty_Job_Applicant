#!/usr/bin/env sh
# Install one or all skills from this repo for Claude Code and/or Codex.
#
#   ./install.sh                    # all skills, both agents, user-level
#   ./install.sh claude             # all skills, Claude Code only
#   ./install.sh codex              # all skills, Codex only
#   ./install.sh both research-statement-writer   # one skill, both agents
#   ./install.sh --project both     # into ./.claude/skills and ./.agents/skills of the current repo
#
# Claude Code reads  ~/.claude/skills  and  <repo>/.claude/skills
# Codex       reads  ~/.agents/skills  and  <repo>/.agents/skills
set -e
here="$(cd "$(dirname "$0")" && pwd)"
scope=user
if [ "$1" = "--project" ]; then scope=project; shift; fi
agent="${1:-both}"; shift 2>/dev/null || true
case "$agent" in claude|codex|both) ;; *) echo "usage: $0 [--project] [claude|codex|both] [skill ...]"; exit 1;; esac
if [ "$#" -gt 0 ]; then skills="$*"; else skills="$(ls "$here/skills")"; fi
if [ "$scope" = user ]; then base="$HOME"; else base="$(pwd)"; fi
for s in $skills; do
  [ -f "$here/skills/$s/SKILL.md" ] || { echo "no such skill: $s"; exit 1; }
  for a in $(case "$agent" in both) echo claude codex;; *) echo "$agent";; esac); do
    case "$a" in claude) dest="$base/.claude/skills";; codex) dest="$base/.agents/skills";; esac
    mkdir -p "$dest"; rm -rf "$dest/$s"; cp -R "$here/skills/$s" "$dest/$s"
    echo "installed $s -> $dest/$s"
  done
done
echo "Done. Claude Code: /$s   Codex: \$$s   (restart the agent if it does not appear)"
