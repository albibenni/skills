# Gemini Skills in Dotfiles

This directory contains specialized Gemini CLI skills. By storing them here, your custom AI workflows follow your environment.

## Installation & Sync

Gemini CLI supports installing skills directly from a directory. This is the preferred method for dotfiles as it avoids managing binary `.skill` files.

### Install a Skill
Run the following command to link a skill from your dotfiles to your local Gemini configuration:

```bash
# Install the project-onboarding skill
gemini skills install ~/dotfiles/gemini-skills/project-onboarding/project-onboarding --scope user
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
