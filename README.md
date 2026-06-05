# Agent Skills in Dotfiles

This directory contains specialized agent skills compatible with Antigravity CLI (`agy`), Claude Code, and other supporting tools. By storing them here, your custom AI workflows follow your environment.

## Installation & Sync

Agent skills are managed via a surgical file-level symlink approach. This ensures that skills are correctly recognized by various agents (Antigravity, Claude, etc.) while remaining managed by your dotfiles.

### Recommended Method: Automated Sync
Use the provided `agent_skills.sh` script to surgically link all skills to their standard configuration paths (`~/.config/agent/skills` and `~/.agents/skills`). This is the preferred method as it handles multi-agent compatibility automatically.

```bash
# Run the sync script
bash ~/dotfiles/agent/.config/agent/skills/agent_skills.sh
```

### Manual Installation (Single Skill)
If you prefer to install a specific skill manually using the Antigravity CLI:

```bash
# Example for Antigravity CLI
agy skills install ~/dotfiles/agent/.config/agent/skills/project-onboarding --scope user
```

### Update & Reload
If you modify a skill's `SKILL.md` or its resources, re-run the sync script or the manual install command. Then, in your active Antigravity session, run:

```bash
/skills reload
```

## Available Skills

- **exercise-master**: Generates 10 structured exercises on a user-provided topic to facilitate hands-on learning and mastery.
- **explain**: Provides high-signal explanations and idiomatic code examples (TS/Java).
- **project-onboarding**: Researches a codebase to explain its architecture and state.
- **quality-master**: Audits code against Clean Code and SOLID principles.
- **quiz-master**: Generates 8-question quizzes to review concepts and details.
- **review-master**: Provides critical reviews of documents, code, or architectural designs.

## Structure

Each skill is a folder containing:
- `SKILL.md`: The instructions and metadata for the agent.
- `scripts/`: (Optional) Reusable automation scripts.
- `references/`: (Optional) Documentation or schemas for the agent to read.
- `assets/`: (Optional) Static files or templates.
