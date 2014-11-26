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
Plugin 'nathanaelkane/vim-indent-guides'

" File system explorer
Plugin 'scrooloose/nerdtree'

" Syntax checking for Vim
Plugin 'scrooloose/syntastic'

" A fast, as-you-type, fuzzy-search code completion engine
" no official windows support
" Compiling YCM wit semantic support for C-family languages:
"   cd ~/.vim/bundle/YouCompleteMe/
"   ./install.sh --clang-completer
if !has("win32")
    Plugin 'Valloric/YouCompleteMe'
endif

" Source code tag browser
Plugin 'majutsushi/tagbar'

" Lean and mean status/tabline for Vim that's light as air
Plugin 'bling/vim-airline'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plugin 'kien/ctrlp.vim'

" Motion enhancement
Plugin 'Lokaltog/vim-easymotion'

" Git wrapper for Vim
Plugin 'tpope/vim-fugitive'

" Mercurial wrapper for Vim
Plugin 'ludovicchabant/vim-lawrencium'

" Solarized colorscheme
Plugin 'altercation/vim-colors-solarized'

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
set nobackup
"set title
set tabstop=4
set ruler
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set smarttab
set fdm=indent
set fdc=4
set wrap
set hlsearch
set incsearch
set cmdheight=2
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
set noerrorbells visualbell t_vb=
set encoding=utf-8

colorscheme solarized

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
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
inoremap (          ()<Left>
inoremap [          []<Left>
inoremap {          {}<Left>
inoremap '          ''<Left>
inoremap "          ""<Left>

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

autocmd! BufWritePost .vimrc source %
autocmd! BufWritePost .gvimrc source %
autocmd! BufWritePost _vimrc source %
autocmd! BufWritePost _gvimrc source %
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white

"------------------------------------------------------------------------------
" Programming
"------------------------------------------------------------------------------

autocmd FileType c set ofu=ccomplete#Complete
autocmd FileType cpp set ofu=cppcomplete#Complete
autocmd FileType php set ofu=phpcomplete#CompletePHP
autocmd FileType python set ofu=pythoncomplete#Complete
autocmd FileType javascript set ofu=javascriptcomplete#CompleteJS
autocmd FileType html set ofu=htmlcomplete#CompleteTags
autocmd FileType css set ofu=csscomplete#CompleteCSS
autocmd FileType xml set ofu=xmlcomplete#CompleteTags
" tags config
""set tags=./.tags,.tags;${HOME}
set tags=./tags;${HOME}
""set tags+=/usr/local/include/tags
""set tags+=/usr/inlcude/tags
au BufRead,BufNewFile *.cpp,*.h,*.c setlocal tags+=~/.vim/tags/usr_include
au BufRead,BufNewFile *.cpp,*.h,*.c setlocal tags+=~/.vim/tags/usr_local_include
au BufRead,BufNewFile *.py setlocal tags+=~/.vim/tags/python
" c autotidy by indent
autocmd FileType c :set equalprg=indent
" Folding : http://vim.wikia.com/wiki/Syntax-based_folding see comment by Ostrygen
au FileType cs set omnifunc=syntaxcomplete#Complete
au FileType cs set foldmethod=marker
au FileType cs set foldmarker={,}
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
au FileType cs set foldlevelstart=2
" Quickfix mode: command line msbuild error format
au FileType cs set errorformat=\ %#%f(%l\\\,%c):\ error\ CS%n:\ %m

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
""let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers = ['python']

"------------------------------------------------------------------------------
" YouCompleteMe
"------------------------------------------------------------------------------
let g:ycm_complete_in_comments = 1
set completeopt-=preview
let g:ycm_seed_identifiers_with_syntax = 1
