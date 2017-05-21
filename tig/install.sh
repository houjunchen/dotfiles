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

# Backup original .tigrc
printf "${BLUE}Looking for an existing tig config${NORMAL}\n"
if [ -f ~/.tigrc ] || [ -h ~/.tigrc ]; then
    printf "${YELLOW}Found ~/.tigrc.${NORMAL} ${GREEN}Backing up to ~/.tigrc.backup${NORMAL}\n";
    mv ~/.tigrc ~/.tigrc.backup;
fi

# Add .tigrc
printf "${BLUE}Adding tigrc to ~/.tigrc${NORMAL}\n";
cp tigrc $HOME/.tigrc
