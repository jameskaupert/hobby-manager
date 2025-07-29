# Claude Context for Hobby Manager Project

## Project Setup
- **Type**: Python application for managing personal hobbies
- **Container**: Uses devpod with Ubuntu-based devcontainer
- **Tools**: Managed via mise (Python, Node.js, Neovim, fzf, chezmoi) - versions pinned in .mise.toml
- **Dev Tools**: ruff (linting/formatting), pytest (testing)

## Development Workflow
- **Setup Script**: `./scripts/devpod-setup.sh` - handles container creation and Rio terminal compatibility
- **Connection**: `ssh hobby-manager.devpod` to connect to container
- **Dotfiles**: Automatically applied from jameskaupert/magic repo via chezmoi

## Security Configuration  
- Container uses limited sudo (only for shell operations like chsh)
- Tool versions are pinned for security and reproducibility
- External repo clone (magic) is trusted as it's user-owned

## Commands Reference
- **Format**: `ruff format .`
- **Lint**: `ruff check .` 
- **Test**: `pytest`
- **Run**: `python src/main.py`

## Git Configuration
- **Default branch**: main
- **Remote**: https://github.com/jameskaupert/hobby-manager

## Terminal Compatibility
- Supports Rio terminal via terminfo installation in devpod-setup script
- Falls back to xterm-256color if Rio terminfo unavailable