" VIM setting
" Abner Chen

let $LANG = 'en'
set langmenu=en     "set menu's language of gvim. no spaces beside '='

"------------------------------------------------------------------------------
" Install vundle automatically
" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
"------------------------------------------------------------------------------
let iCanHazVundle=1
if has("unix")
    let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
elseif has("win32")
    let vundle_readme=expand('~/vimfiles/bundle/Vundle.vim/README.md')
endif
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    if has("unix")
        silent !mkdir -p ~/.vim/bundle
        !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    elseif has("win32")
        silent !mkdir \%USERPROFILE\%\vimfiles\bundle
        !git clone https://github.com/gmarik/Vundle.vim.git \%USERPROFILE\%/vimfiles/bundle/Vundle.vim
    endif
    let iCanHazVundle=0
endif

"------------------------------------------------------------------------------
" Vundle setting.
" https://github.com/gmarik/Vundle.vim
"------------------------------------------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
if has("unix")
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
else
    set rtp+=~/vimfiles/bundle/Vundle.vim/
    let path='~/vimfiles/bundle'
    call vundle#begin(path)
endif

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Visually displaying indent levels in Vim
"Plugin 'nathanaelkane/vim-indent-guides'

" File system explorer
Plugin 'scrooloose/nerdtree'

" Syntax checking for Vim
Plugin 'scrooloose/syntastic'

" A fast, as-you-type, fuzzy-search code completion engine
" no official windows support
" Compiling YCM wit semantic support for C-family languages:
"   cd ~/.vim/bundle/YouCompleteMe/
"   ./install.sh --clang-completer
"if !has("win32")
"    Plugin 'Valloric/YouCompleteMe'
"endif

" Source code tag browser
Plugin 'majutsushi/tagbar'

" Lean and mean status/tabline for Vim that's light as air
Plugin 'bling/vim-airline'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plugin 'ctrlpvim/ctrlp.vim'

" Motion enhancement
Plugin 'Lokaltog/vim-easymotion'

" Git wrapper for Vim
Plugin 'tpope/vim-fugitive'

" Solarized colorscheme
Plugin 'altercation/vim-colors-solarized'

" Tools and environment to make Vim superb for developing with Node.js.
Plugin 'moll/vim-node'

" Insert mode auto-completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

" Vim syntax file for Docker's Dockerfile and snippets for snipMate.
Plugin 'ekalinin/Dockerfile.vim'

" Search tool
Plugin 'mileszs/ack.vim'

" Vim as Python IDE
Plugin 'klen/python-mode'

" VIM binding to the autocompletion library Jedi
" Plugin 'davidhalter/jedi-vim'

" To comply with PEP8
" Plugin 'hynek/vim-python-pep8-indent'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"------------------------------------------------------------------------------
" Install plugins automatically
"------------------------------------------------------------------------------
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :PluginInstall
    :qall
endif

"------------------------------------------------------------------------------
" General Settings
"------------------------------------------------------------------------------

filetype off          " necessary to make ftdetect work on Linux
syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set nocompatible      " not compatible with the old-fashion vi mode
" Set mouse
set mouse=a
syntax on
filetype on
set autowrite
set number
" Show command line
set showcmd
set showmode
set lcs=tab:>-,trail:-
set list

" Backups
set nobackup
set noswapfile

" Always show current position
set ruler

set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set wrap

" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
set laststatus=2
set cursorline
set backspace=2
set colorcolumn=80
set wildmenu
set cpo-=<
set wcm=<C-Z>
set foldmethod=indent
set foldnestmax=5
set formatoptions=mtcql
set scrolloff=2
set t_Co=256
set background=dark

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=

set encoding=utf-8
set clipboard=unnamed

" change cursor shape for insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

colorscheme solarized

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Source_Code_Pro_Medium:h14
    elseif has("gui_win32")
        set guifont=Source_Code_Pro_Medium:h12:cANSI
    endif
endif

"------------------------------------------------------------------------------
" Key Mapping
"
" Commands                        Mode
" --------                        ----
" nmap, nnoremap, nunmap          Normal mode
" imap, inoremap, iunmap          Insert and Replace mode
" vmap, vnoremap, vunmap          Visual and Select mode
" xmap, xnoremap, xunmap          Visual mode
" smap, snoremap, sunmap          Select mode
" cmap, cnoremap, cunmap          Command-line mode
" omap, onoremap, ounmap          Operator pending mode
"------------------------------------------------------------------------------
map tn              :tabnext<CR>
map tp              :tabprev<CR>
map te              :tabnew 
map tc              :tabclose<CR>
map vs              :vsplit 

nmap <Tab>          v>
nmap <S-tab>        v<
nnoremap <A-J>      :m+<CR>==
nnoremap <A-K>      :m-2<CR>==
nnoremap <Space>    za

inoremap <A-J>      <Esc>:m+<CR>==gi
inoremap <A-K>      <Esc>:m-2<CR>==gi

vmap <Tab>          >gv
vmap <S-Tab>        <gv
vnoremap <A-J>      :m'>+<CR>gv=gv
vnoremap <A-K>      :m-2<CR>gv=gv
vnoremap <Space>    zf

cmap <C-A>          <Home>
cmap <C-E>          <End>
cnoremap <C-B>      <Left>
cnoremap <C-D>      <Del>
cnoremap <C-F>      <Right>
cnoremap <C-N>      <Down>
cnoremap <C-P>      <Up>
cnoremap <Esc><C-B> <S-Left>
cnoremap <Esc><C-F> <S-Right>

if has("gui_running")
    " paste
    map <C-V>       "+gP
    " cut
    vnoremap <C-X>  "+x
    " copy
    vnoremap <C-C>  "+y
endif

"------------------------------------------------------------------------------
" vim-airline
"------------------------------------------------------------------------------
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"------------------------------------------------------------------------------
" vim-indent-guides
"------------------------------------------------------------------------------
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236

"------------------------------------------------------------------------------
" CtrlP
"------------------------------------------------------------------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|(bower_components|node_modules|__pycache__))$'

"------------------------------------------------------------------------------
" tagbar
"------------------------------------------------------------------------------
nnoremap <silent> <F9> :TagbarToggle<CR>

"------------------------------------------------------------------------------
" nerdtree
"------------------------------------------------------------------------------
map <F8> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
let NERDTreeDirArrows = 1

"------------------------------------------------------------------------------
" syntastic
"------------------------------------------------------------------------------
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_ignore_files = ['\.py$']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers = ['flake8']

"------------------------------------------------------------------------------
" YouCompleteMe
"------------------------------------------------------------------------------
let g:ycm_complete_in_comments = 1
set completeopt-=preview
let g:ycm_seed_identifiers_with_syntax = 1

"------------------------------------------------------------------------------
" Python-mode
"------------------------------------------------------------------------------
"let g:pymode = 0
let g:pymode_python = 'python3'
let g:pymode_rope_completion_bind = '<C-k>'
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_lint_checkers = ['python', 'pyflakes', 'pep8']


"------------------------------------------------------------------------------
" jedi-vim
"------------------------------------------------------------------------------
let g:jedi#force_py_version = 3
let g:jedi#use_splits_not_buffers = "top"
let g:jedi#goto_definitions_command = "<C-]>"
let g:jedi#completions_command = "<C-k>"
