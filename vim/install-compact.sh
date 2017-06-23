PWD=`pwd`
# Link vimrc to HOME
ln -sf ${PWD}/vimrc-compact ${HOME}.vimrc
# Install plugins
vim +PlugInstall +qall
