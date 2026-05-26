# Agent Skills in Dotfiles

This directory contains specialized agent skills compatible with Gemini CLI, Claude Code, and other supporting tools. By storing them here, your custom AI workflows follow your environment.

## Installation & Sync

Agent tools support installing skills directly from a directory. This is the preferred method for dotfiles as it avoids managing binary artifacts.

### Install a Skill
Run the following command to link a skill from your dotfiles to your local configuration:

```bash
# Example for Gemini CLI
gemini skills install ~/dotfiles/skills/project-onboarding/project-onboarding --scope user
```

### Update a Skill
If you modify a skill's `SKILL.md` or its resources, simply re-run the install command above. Then, in your active Gemini session, run:

```bash
/skills reload
```

## Structure

Each skill is a folder containing:
- `SKILL.md`: The instructions and metadata for the agent.
- `scripts/`: (Optional) Reusable automation scripts.
- `references/`: (Optional) Documentation or schemas for the agent to read.
- `assets/`: (Optional) Static files or templates.
