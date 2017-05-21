# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh plugins
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/houjunchen/zsh-vim-mode.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode

# Install zsh theme
curl -o ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/solarized-powerline.zsh-theme https://raw.githubusercontent.com/houjunchen/solarized-powerline/master/solarized-powerline.zsh-theme

# Patch zshrc
cat zshrc | sed s"/abnerchen/`who am i | cut -d' ' -f 1`/g" > $HOME/.zshrc

# Install base16 colorscheme for zsh
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
