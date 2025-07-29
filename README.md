# Hobby Manager

A Python application for managing personal hobbies and interests.

## Development Setup

This project uses a devcontainer with [devpod](https://devpod.sh/) for consistent development environments.

### Prerequisites

- [Docker](https://www.docker.com/)
- [devpod](https://devpod.sh/)
- Git

### Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/jameskaupert/hobby-manager.git
   cd hobby-manager
   ```

2. **Set up the development environment:**
   ```bash
   ./scripts/devpod-setup.sh
   ```

3. **Connect to the container:**
   ```bash
   ssh hobby-manager.devpod
   ```

### Development Tools

The devcontainer includes these tools managed by [mise](https://mise.jdx.dev/):

- **Python 3.13.5** - Main programming language
- **Node.js 24.4.1** - For any frontend tooling
- **Neovim 0.11.3** - Text editor
- **fzf 0.65.0** - Fuzzy finder
- **chezmoi 2.63.1** - Dotfiles management

### Development Dependencies

- **pytest** - Testing framework
- **ruff** - Fast Python linter and formatter

### Usage

Run the application:
```bash
python src/main.py
```

Run tests:
```bash
pytest
```

Format and lint code:
```bash
ruff format .
ruff check .
```

### Project Structure

```
hobby-manager/
├── .devcontainer/          # Development container configuration
│   ├── Dockerfile         # Container definition
│   └── devcontainer.json  # VS Code devcontainer config
├── scripts/               # Setup and utility scripts
│   ├── devpod-setup.sh   # Container setup with terminal compatibility
│   └── setup             # Internal container setup script
├── src/                  # Source code
├── tests/                # Test files
├── .mise.toml           # Tool version management
├── requirements.txt     # Python dependencies
└── .gitignore          # Git ignore rules
```

### Container Features

- **Secure Setup** - Limited sudo access for shell operations only
- **Terminal Compatibility** - Supports Rio terminal and other modern terminals
- **Dotfiles Integration** - Automatically applies personal configuration
- **Reproducible Environment** - Pinned tool versions for consistency

## Contributing

1. Make your changes in the devcontainer
2. Run tests: `pytest`
3. Format code: `ruff format .`
4. Check linting: `ruff check .`
5. Commit and push your changes

## License

This project is for personal use and learning.