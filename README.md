## [dotfiles](https://github.com/houjunchen/dotfiles)

Personal configuration files for zsh, neovim, vim, git, ghostty, zellij, tig, and more.

### Installation

```shell
git clone https://github.com/houjunchen/dotfiles.git
cd dotfiles
make help
```

Available targets:

| Target | Description |
|--------|-------------|
| `make all` | Install zsh, nvim, ghostty, zellij, git, tig |
| `make zsh` | Zsh with oh-my-zsh, powerlevel10k (requires [Nerd Fonts](https://www.nerdfonts.com/)) |
| `make zsh-compact` | Zsh without font dependencies |
| `make vim` | Vim with vim-plug |
| `make nvim` | Neovim with LazyVim |
| `make ghostty` | Ghostty terminal |
| `make zellij` | Zellij terminal multiplexer |
| `make git` | Git config |
| `make tig` | Tig config |
| `make brew` | Install Homebrew packages |

### Zsh Plugins

Installed automatically via `make zsh`:
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-vim-mode](https://github.com/houjunchen/zsh-vim-mode)
- [fzf-tab](https://github.com/Aloxaf/fzf-tab)
- [base16-shell](https://github.com/chriskempson/base16-shell)
