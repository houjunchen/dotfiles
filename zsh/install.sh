# Use colors, but only if connected to a terminal, and that terminal supports them.
if which tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    BOLD="$(tput bold)"
    NORMAL="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    BOLD=""
    NORMAL=""
fi

# Install oh-my-zsh
printf "${BLUE}Installing oh-my-zsh${NORMAL}\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh plugins
printf "${BLUE}Installing plugin zsh-autosuggestions${NORMAL}\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
printf "${BLUE}Installing plugin zsh-syntax-highlighting${NORMAL}\n"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
printf "${BLUE}Installing plugin zsh-vim-mode${NORMAL}\n"
git clone https://github.com/houjunchen/zsh-vim-mode.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode
printf "${BLUE}Installing plugin fzf-tab${NORMAL}\n"
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

# Install zsh theme
printf "${BLUE}Installing theme Powerlevel10k${NORMAL}\n"
mkdir -p ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Backup original .zshrc
printf "${BLUE}Looking for an existing zsh config${NORMAL}\n"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]; then
    printf "${YELLOW}Found ~/.zshrc.${NORMAL} ${GREEN}Backing up to ~/.zshrc.backup${NORMAL}\n";
    mv ~/.zshrc ~/.zshrc.backup;
fi

# Patch zshrc
USERNAME="${USER}"
printf "${BLUE}Adding zshrc to ~/.zshrc and patching its DEFAULT_USER to ${USERNAME}${NORMAL}\n";
sed "s/abnerchen/${USERNAME}/g" zshrc > "$HOME/.zshrc"

# Install base16 colorscheme for zsh
printf "${BLUE}Installing colorscheme base16${NORMAL}\n";
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
