## [Abner's vimrc](https://github.com/houjunchen/vimrc)

Author: Abner Chen <houjuncehn@gmail.com>

## Install

1. Requirement

    1. [Powerline-fonts]: used by [Airline] theme [Solarized]

2. Setup

    1. Check out vimrc

        ```
        git clone https://github.com/houjunchen/vimrc.git ~/.vim
        ```

    2. Make a symbolic link

        ```
        ln -s ~/.vim/vimrc ~/.vimrc
        ```

3. Install Plugins

    Launch `vim` and run `:PluginInstall`

    To install from command line: `vim +PluginInstall +qall`

## Plugins

* [Vundle]: Vim plugin manager

* [Indent Guides]: Visually displaying indent levels in Vim

* [NERDTree]: File system explorer

* [Syntastic]: Syntax checking for Vim

* [YouCompleteMe]: A fast, as-you-type, fuzzy-search code completion engine

* [Tagbar]: Source code tag browser

* [Airline]: Lean and mean status/tabline for Vim that's light as air

* [CtrlP]: Full path fuzzy file, buffer, mru, tag, ... finder for Vim

* [EasyMotion]: An easy wat to jump to a word

* [Fugitive]: Git wrapper for Vim

* [Lawrencium]: Mercurial wrapper for Vim

* [Solarized]: Solarized colorscheme

[Vim]:http://www.vim.org
[Git]:http://git-scm.com
[Vundle]:https://github.com/gmarik/Vundle.vim
[Powerline-Fonts]:https://github.com/Lokaltog/powerline-fonts
[Indent Guides]:https://github.com/nathanaelkane/vim-indent-guides
[NERDTree]:https://github.com/scrooloose/nerdtree
[Syntastic]:https://github.com/scrooloose/syntastic
[Tagbar]:https://github.com/majutsushi/tagbar
[Airline]:https://github.com/bling/vim-airline
[CtrlP]:https://github.com/kien/ctrlp.vim
[EasyMotion]:https://github.com/Lokaltog/vim-easymotion
[Fugitive]:https://github.com/tpope/vim-fugitive
[Lawrencium]:https://github.com/ludovicchabant/vim-lawrencium
[Solarized]:https://github.com/altercation/vim-colors-solarized
[YouCompleteMe]:https://github.com/Valloric/YouCompleteMe
