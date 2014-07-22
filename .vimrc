" VIM setting
" Abner Chen

"------------------------------------------------------------------------------
" Install vundle automatically
" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
"------------------------------------------------------------------------------
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let iCanHazVundle=0
endif


"------------------------------------------------------------------------------
" Vundle setting.
" https://github.com/gmarik/Vundle.vim
"------------------------------------------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Visually displaying indent levels in Vim
Plugin 'nathanaelkane/vim-indent-guides'

" File system explorer
Plugin 'scrooloose/nerdtree'

" Syntax checking for Vim
Plugin 'scrooloose/syntastic'

" Source code tag browser
Plugin 'majutsushi/tagbar'

" Lean and mean status/tabline for Vim that's light as air
Plugin 'bling/vim-airline'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plugin 'kien/ctrlp.vim'

" Motion enhancement
Plugin 'Lokaltog/vim-easymotion'

" Find revision ID from a Mercurial repo
"Plugin 'vim-scripts/hgrev'

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
" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

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
set fencs=utf-8,big5,bgk,euc-jp,utf-16le
set fenc=utf-8
set enc=utf-8
set tenc=utf-8
set foldmethod=indent
set foldnestmax=5
set formatoptions=mtcql
set scrolloff=2
set t_Co=256
"colorscheme desert256
set background=dark
colorscheme solarized
set noerrorbells visualbell t_vb=

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
map tn :tabnext<CR>
map tp :tabprev<CR>
map te :tabnew 
map tc :tabclose<CR>
map vs :vsplit 

nmap <tab> v>
nmap <s-tab> v<
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
nnoremap <space> za

inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

vmap <tab> >gv
vmap <s-tab> <gv
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
vnoremap <space> zf

cmap       <c-a>   <home>
cmap       <c-e>   <end>
cnoremap   <c-b>   <left>
cnoremap   <c-d>   <del>
cnoremap   <c-f>   <right>
cnoremap   <c-n>   <down>
cnoremap   <c-p>   <up>
cnoremap   <esc><c-b>  <s-left>
cnoremap   <esc><c-f>  <s-right>

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
" %1* -> User1's highlight, %2*->User2's highlight
" =   -> Separation point between left and right aligned items.
" <   -> Where to truncate line if too long.  Default is at the start.
"set statusline=%4*%<\ %1*[%F]
"set statusline+=%4*\ %5*[%{&encoding}, " encoding
"set statusline+=%{&fileformat}]%m " file formatoptions

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

""fun! OmniComplete()
""   let left = strpart(getline('.'), col('.') - 2, 1)
""   if left =~ "^$"
""   return ""
""   elseif left =~ ' $'
""   return ""
""   else
""   return "\<C-x>\<C-o>"
""endfun
""inoremap <silent> <S-Tab> <C-R>=OmniComplete()

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
