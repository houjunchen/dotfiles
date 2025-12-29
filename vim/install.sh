PWD="$(pwd)"
# Link vimrc to HOME
ln -sf ${PWD}/vimrc ${HOME}/.vimrc
# Install plugins
vim +PlugInstall +qall
