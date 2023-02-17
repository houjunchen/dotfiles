"------------------------------------------------------------------------------
" General Settings
"------------------------------------------------------------------------------

filetype off          " necessary to make ftdetect work on Linux
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set nocompatible      " not compatible with the old-fashion vi mode
" Set mouse
set mouse=a
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

autocmd FileType javascript,typescript setlocal tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
set laststatus=2
set cursorline
set backspace=2
set wildmenu
set cpo-=<
set wcm=<C-Z>
set foldmethod=indent
set foldlevel=99
set formatoptions=mtcql
set scrolloff=2
set t_Co=256
set background=dark

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=

set encoding=utf-8

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plugin.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./maps.vim
"}}}

let base16colorspace=256  " Access colors present in 256 colorspace"

let g:quantum_black=1
set background=dark
set termguicolors
"let g:material_style = "darker"
"let g:material_style = "deep ocean"
"colorscheme quantum
"colorscheme base16-tomorrow-night-eighties
"colorscheme base16-gruvbox-material-dark-medium
colorscheme base16-material
"colorscheme base16-default-dark
