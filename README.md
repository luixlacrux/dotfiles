# Minimalist Dotfiles

A clean and minimal dotfiles configuration focused on essential development tools. This repository contains configurations for:

- **Homebrew** - Package management and dependency installation
- **Oh My Posh** - Beautiful and customizable terminal prompt
- **Zsh** - Modular shell configuration with aliases, completions, and plugins

Uses GNU Stow for easy symlink management across different systems.

> **Note**: This repository was forked and inspired by [maximux13/dotfiles](https://github.com/maximux13/dotfiles).

## Getting Started

### Prerequisites

Before you clone this repository and start using the dotfiles, ensure you have GNU Stow installed on your system. You can install Stow using the following command on most Unix-like operating systems:

```bash
sudo apt-get install stow # Debian/Ubuntu
brew install stow # macOS
```

### Installation

To clone the repository and set up the dotfiles, follow these steps:

1. Clone the repository:

```bash
git clone https://github.com/luixlacrux/dotfiles.git
cd dotfiles
```

2. Deploy the configurations using Stow:

```bash
# Install shell configuration
stow zsh

# Install Oh My Posh theme
stow oh-my-posh
```

### Homebrew Installation (macOS)

Install all necessary dependencies and applications using the provided Brewfile:

```bash
cd homebrew
chmod +x install.sh
./install.sh
```

This will install all packages defined in the `Brewfile`, including development tools, applications, and Oh My Posh.

## Structure

The repository is organized into three main components:

```
dotfiles/
├── homebrew/           # Package management
│   ├── Brewfile       # Homebrew dependencies
│   └── install.sh     # Installation script
├── oh-my-posh/        # Terminal prompt theme
│   └── .config/oh-my-posh/theme.omp.json
└── zsh/               # Shell configuration
    └── .config/zsh/
        ├── aliases    # Command aliases
        ├── completions # Tab completions
        ├── history    # History settings
        ├── keybindings # Key bindings
        ├── oh-my-posh # Prompt integration
        ├── zinit      # Plugin manager
        └── zstyle     # Zsh styles
```

## Customization

This minimalist setup is designed to be easily customizable:

- **Homebrew**: Edit `Brewfile` to add/remove packages
- **Oh My Posh**: Modify `theme.omp.json` to customize your prompt
- **Zsh**: Each configuration aspect is separated into its own file for easy modification

Feel free to fork this repository and adapt it to your needs. The modular structure makes it easy to add new configurations while maintaining the minimalist philosophy.

## Contributing

Contributions to improve these dotfiles or add new configurations are always welcome. Please feel free to submit a pull request or open an issue if you have suggestions or improvements.

## License

This project is open-source and available under the [MIT License](LICENSE).
