# Link vimrc to HOME
ln -s vimrc $HOME/.vimrc
# Install plugins
vim +PlugInstall +qall
