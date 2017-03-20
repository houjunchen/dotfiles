## [dotfiles](https://github.com/houjunchen/dotfiles)

Vim and zsh config files

### Clone this repo

```shell
git clone https://github.com/houjunchen/dotfiles.git
```

### Vim Setup

1. Requirement

    1. [Powerline-fonts](https://github.com/powerline/fonts): used by [vim-airline-theme](https://github.com/vim-airline/vim-airline-themes)

2. Either copy or make a symbolic link from `vimrc` to `~/.vimrc`

3. Install Plugins

    Launch `vim` and run `:PlugInstall`

### Zsh Setup

1. Requirement
   1. Zsh plugin manager: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
2. Custom zsh plugins (should be installed manully via `git clone`)
   1. [solarized-powerline](https://github.com/houjunchen/solarized-powerline)
   2. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
   3. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
   4. [zsh-vim-mode](https://github.com/houjunchen/zsh-vim-mode)
3. Changing default ANSI color: [base16-shell](https://github.com/chriskempson/base16-shell)
4. Either copy or make a symbolic link from `zshrc` to `~/.zshrc`
