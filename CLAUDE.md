# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository containing configuration files for:
- **zsh** - Shell configuration with oh-my-zsh, powerlevel10k theme, and custom plugins
- **nvim** - Neovim config based on LazyVim
- **vim** - Traditional vim configuration with vim-plug
- **git** - Git configuration
- **tig** - Git TUI configuration
- **ghostty** - Ghostty terminal configuration
- **iterm2** - iTerm2 profile with base16 color scheme
- **squirrel** - Rime input method (鼠鬚管) configuration for Traditional Chinese
- **brew** - Homebrew package list

## Installation Commands

### Zsh Setup
```shell
# Full installation (includes oh-my-zsh, plugins, themes)
cd zsh && sh install.sh

# Compact version (no additional fonts required)
cd zsh && sh install-compact.sh
```

### Vim Setup
```shell
# Links vimrc and installs plugins via vim-plug
cd vim && sh install.sh
```

### Neovim Setup
The nvim directory can be symlinked to `~/.config/nvim`. Uses LazyVim as the base configuration.

### Ghostty Setup
Symlink the ghostty directory to `~/.config/ghostty`.

### Tig Setup
```shell
cd tig && sh install.sh
```

## Architecture Notes

### Neovim (LazyVim-based)
- `nvim/init.lua` - Entry point that loads config
- `nvim/lua/config/` - Core LazyVim configuration (keymaps, options, autocmds, lazy.lua)
- `nvim/lua/plugins/` - Plugin customizations and additions
  - `disabled.lua` - Plugins disabled from LazyVim defaults
  - Language-specific: `go.lua`, `kdl.lua`
  - UI: `colorscheme.lua`, `bufferline.lua`, `lualine.lua`, `nvim-tree.lua`, `snacks.lua`
  - LSP: `lsp-config.lua`, `mason.lua`, `nvim-treesitter.lua`

### Zsh
- `zshrc` - Full config with powerlevel10k, requires Nerd Fonts
- `zshrc-compact` - Minimal config without font dependencies
- Uses oh-my-zsh with custom plugins: zsh-autosuggestions, zsh-syntax-highlighting, zsh-vim-mode
