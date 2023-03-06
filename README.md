## [dotfiles](https://github.com/houjunchen/dotfiles)

Vim and zsh config files and their compact version (no additional font required).

### Clone this repo

```shell
git clone https://github.com/houjunchen/dotfiles.git
```

### Install New Font

Install one of the [Nerd Fonts](https://www.nerdfonts.com/).

### Zsh Setup

1. Requirement
   1. Zsh plugin manager: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

      ```shell
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
      ```

2. Custom zsh plugins (should be installed manully via `git clone`)
   1. [powerlevel10k](https://github.com/romkatv/powerlevel10k)

      ```shell
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
      ```

   2. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

        ```shell
        git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
        ```

   3. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

        ```shell
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        ```

   4. [zsh-vim-mode](https://github.com/houjunchen/zsh-vim-mode)

        ```shell
        git clone git://github.com/houjunchen/zsh-vim-mode.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode
        ```

3. Change default ANSI color: [base16-shell](https://github.com/chriskempson/base16-shell)

   ```shell
   git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
   ```

   * Start a new shell and then type base16 (tab completion)

4. Either copy or make a symbolic link from `zshrc` to `~/.zshrc`
