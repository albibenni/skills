#!/bin/bash

# Multi-Agent Skill Installer
# Supports: Gemini CLI, Claude Code, and Codex

set -e

SKILLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
AGENT=$1

show_help() {
    echo "Usage: $0 [gemini|claude|codex]"
    echo ""
    echo "Install all skills from this repository into your chosen agent CLI."
    exit 1
}

if [[ -z "$AGENT" ]]; then
    show_help
fi

# Detect available skills (directories containing a SKILL.md)
# Structure: skills/<category>/<skill_name>/SKILL.md
mapfile -t SKILL_PATHS < <(find "$SKILLS_DIR" -name "SKILL.md" -not -path "*/.*")

if [[ ${#SKILL_PATHS[@]} -eq 0 ]]; then
    echo "❌ No skills found in $SKILLS_DIR"
    exit 1
fi

install_gemini() {
    echo "🤖 Installing skills for Gemini CLI..."
    for skill_md in "${SKILL_PATHS[@]}"; do
        skill_path=$(dirname "$skill_md")
        skill_name=$(basename "$skill_path")
        echo "   -> $skill_name"
        gemini skills install "$skill_path" --scope user --consent
    done
    echo "✅ Done. Run '/skills reload' in an active Gemini session."
}

install_claude() {
    echo "🐚 Installing skills for Claude Code..."
    CLAUDE_SKILLS_DIR="$HOME/.claude/skills"
    mkdir -p "$CLAUDE_SKILLS_DIR"
    
    for skill_md in "${SKILL_PATHS[@]}"; do
        skill_path=$(dirname "$skill_md")
        skill_name=$(basename "$skill_path")
        echo "   -> $skill_name"
        # Claude usually uses symlinks for local development
        ln -sf "$skill_path" "$CLAUDE_SKILLS_DIR/$skill_name"
    done
    echo "✅ Done. Claude will discover these automatically."
}

install_codex() {
    echo "💻 Installing skills for Codex..."
    for skill_md in "${SKILL_PATHS[@]}"; do
        skill_path=$(dirname "$skill_md")
        skill_name=$(basename "$skill_path")
        echo "   -> $skill_name"
        codex skills install "$skill_path"
    done
    echo "✅ Done."
}

case "$AGENT" in
    gemini)
        install_gemini
        ;;
    claude|claudecode)
        install_claude
        ;;
    codex)
        install_codex
        ;;
    *)
        echo "❌ Unknown agent: $AGENT"
        show_help
        ;;
esac
