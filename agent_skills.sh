#!/usr/bin/env bash

# Agent Skills Management
# Standardizes skill locations for Codex, Antigravity, Gemini, Claude Code, and Omarchy
# Uses surgical file-level links for compatible agents. Codex receives real
# files because its skill discovery does not load symlinked SKILL.md files.

setup-agent-skills() {
    local GREEN='\033[0;32m'
    local BLUE='\033[0;34m'
    local YELLOW='\033[1;33m'
    local RED='\033[0;31m'
    local NC='\033[0m'

    local SKILLS_SOURCE="$(cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" && pwd)"

    # Standard paths to surgically populate
    local AGENT_PATHS=(
        "$HOME/.config/agent"
        "$HOME/.agents"
        "$HOME/.gemini/antigravity-cli"
        "$HOME/.gemini/config"
        "$HOME/.claude"
    )
    local CODEX_SKILLS_DIR="$HOME/.codex/skills"

    echo -e "${BLUE}=== Setting up Agent Skills (Surgical File-Level Symlinks) ===${NC}"

    if [[ ! -d "$SKILLS_SOURCE" ]]; then
        echo -e "  ${RED}✗${NC} Source directory not found: $SKILLS_SOURCE"
        return 1
    fi

    # Codex needs physical skill files rather than symlinked files.
    if [[ -L "$CODEX_SKILLS_DIR" ]]; then
        echo -e "  ${YELLOW}→${NC} Unlinking folder symlink at $CODEX_SKILLS_DIR"
        unlink "$CODEX_SKILLS_DIR"
    fi
    mkdir -p "$CODEX_SKILLS_DIR"

    # 1. Prepare target directories
    for base_path in "${AGENT_PATHS[@]}"; do
        local target_skills_dir="$base_path/skills"
        local target_skills_real=$(readlink -f "$target_skills_dir" 2>/dev/null || echo "")

        if [[ "$target_skills_real" == "$SKILLS_SOURCE" ]]; then
            continue
        fi

        # If the path is a symlink (link to a folder), we UNLINK it.
        # This removes the "shortcut" but does NOT touch the folder it points to.
        if [[ -L "$target_skills_dir" ]]; then
            echo -e "  ${YELLOW}→${NC} Unlinking folder symlink at $target_skills_dir"
            unlink "$target_skills_dir"
        fi

        # Now that the link is gone (or if it was never there), create a real directory.
        mkdir -p "$target_skills_dir"
    done

    # 2. Link individual files surgically to all paths
    while IFS= read -r -d '' source_file; do
        local rel_path="${source_file#$SKILLS_SOURCE/}"

        # Skip certain files that aren't part of the skill logic
        [[ "$rel_path" == ".gitignore" ]] && continue

        echo -e "  ${BLUE}Surgically linking: ${NC}$rel_path"

        # Materialize Codex files. Remove an old file-level symlink first so
        # cp does not follow it and write back into the source skill.
        local codex_target="$CODEX_SKILLS_DIR/$rel_path"
        mkdir -p "$(dirname "$codex_target")"
        rm -f "$codex_target"
        if cp "$source_file" "$codex_target"; then
            echo -e "    ${GREEN}✓${NC} Copied to codex"
        else
            echo -e "    ${RED}✗${NC} Failed to copy to codex"
        fi

        for base_path in "${AGENT_PATHS[@]}"; do
            local target_skills_dir="$base_path/skills"
            local target_skills_real=$(readlink -f "$target_skills_dir" 2>/dev/null || echo "")

            if [[ "$target_skills_real" == "$SKILLS_SOURCE" ]]; then
                continue
            fi

            local target_file="$target_skills_dir/$rel_path"
            local target_dir="$(dirname "$target_file")"

            mkdir -p "$target_dir"
            # Link the specific file
            if ln -nsf "$source_file" "$target_file"; then
                echo -e "    ${GREEN}✓${NC} Linked to $(basename "$base_path")"
            else
                echo -e "    ${RED}✗${NC} Failed to link to $(basename "$base_path")"
            fi
        done
    done < <(find "$SKILLS_SOURCE" -type f -not -path '*/.git*' -print0)

    echo -e "\n${GREEN}Done! Codex files copied; other agent paths linked surgically.${NC}"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    setup-agent-skills "$@"
fi
