# Link vimrc to HOME
ln -s vimrc-compact $HOME/.vimrc
# Install plugins
vim +PlugInstall +qall
