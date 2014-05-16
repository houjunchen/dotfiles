" setup
nmap <F8> :TrinityToggleAll<CR>
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinPos="left"
map <s-F2> :MRU<CR>
" Tag list
map <F3> :TlistToggle<CR>
" Update file
" "map <F4> :up<CR>
" Save all buffer files
" "nmap <s-F4> :wall<CR>
" Clear last used search hightlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>
" AutoComple Open or close
imap <F6> <ESC>:AutoComplPopDisable<CR>
imap <s-F6> <ESC>:AutoComplPopEnable<CR>
" Setup SrcExplToggle
map <F7> :SrcExplToggle<CR>
nnoremap <C-H> :Hexmode<CR>
inoremap <C-H> <Esc>:Hexmode<CR>
vnoremap <C-H> :<C-U>Hexmode<CR>
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <s-F3> :emenu <C-Z>
" // The switch of the Source Explorer
nmap <F4> :SrcExplToggle<CR>
" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8
" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100
" // Set "Enter" key to jump into the exact definition context
" let g:SrcExpl_jumpKey = "<ENTER>"
" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"
" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
       \ "__Tag_List__",
       \ "_NERD_tree_",
       \ "Source_Explorer"
   \ ]
" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1
" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
let g:SrcExpl_updateTagsCmd = "exctags --sort=foldcase -R ."
" // Set "<s-F4>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<s-F4>"
"  Buffer Explorer / Browser key
"  '\be' (normal open)  or
"  '\bs' (force horizontal split open)  or
"  '\bv' (force vertical split open)
cmap   <c-a>   <home>
cmap   <c-e>   <end>
cnoremap   <c-b>   <left>
cnoremap   <c-d>   <del>
cnoremap   <c-f>   <right>
cnoremap   <c-n>   <down>
cnoremap   <c-p>   <up>
cnoremap   <esc><c-b>  <s-left>
cnoremap   <esc><c-f>  <s-right>
map tn :tabnext<CR>
map tp :tabprev<CR>
map te :tabnew 
map tc :tabclose<CR>
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
        
"if &term =~ "xterm"
"    set t_Co=256
"    if has("terminfo")
"        let &t_Sf=nr2char(27).'[3%p1%dm'
"        let &t_Sb=nr2char(27).'[4%p1%dm'
"    else
"        let &t_Sf=nr2char(27).'[3%dm'
"        let &t_Sb=nr2char(27).'[4%dm'
"    endif
"    colorscheme desert256
"endif
"set background=dark
" colors darkblue
set nocompatible
" Set mouse
set mouse=a
syntax on
filetype on
set autowrite
set number
" Show command line
set showcmd
set lcs=tab:>-,trail:-
set list
set showmode
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
set fencs=utf-8,big5,bgk,euc-jp,utf-16le
set fenc=utf-8
set enc=utf-8
set tenc=utf-8
set foldmethod=indent
set foldnestmax=2
nnoremap <space> za
vnoremap <space> zf
set formatoptions=mtcql
hi Comment ctermfg=Green
" taglist config
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
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

" clever tab completion
"fun! KeywordComplete()
"   let left = strpart(getline('.'), col('.') - 2, 1)
"   if left =~ "^$"
"       return "\<Tab>"
"   elseif
"       left =~ ' $'
"       return "\<Tab>"
"   else
"       return "\<C-N>"
"endfun
"inoremap <silent> <Tab> <C-R>=KeywordComplete()
fun! OmniComplete()
   let left = strpart(getline('.'), col('.') - 2, 1)
   if left =~ "^$"
   return ""
   elseif left =~ ' $'
   return ""
   else
   return "\<C-x>\<C-o>"
endfun
inoremap <silent> <S-Tab> <C-R>=OmniComplete()
" ex command for toggling hex mode - define mapping if desired
"command -bar Hexmode call ToggleHex()
" helper function to toggle hex mode
function! ToggleHex()
   " hex mode should be considered a read-only operation
   " save values for modified and read-only for restoration later,
   " and clear the read-only flag for now
   let l:modified=&mod
   let l:oldreadonly=&readonly
   let &readonly=0
   let l:oldmodifiable=&modifiable
   let &modifiable=1
   if !exists("b:editHex") || !b:editHex
       " save old options
       let b:oldft=&ft
       let b:oldbin=&bin
       " set new options
       setlocal binary " make sure it overrides any textwidth, etc.
       let &ft="xxd"
       " set status
       let b:editHex=1
       " switch to hex editor
       %!xxd
   else
       " restore old options
       let &ft=b:oldft
       if !b:oldbin
           setlocal nobinary
       endif
       " set status
       let b:editHex=0
       " return to normal editing
       %!xxd -r
   endif
   " restore values for modified and read only state
   let &mod=l:modified
   let &readonly=l:oldreadonly
   let &modifiable=l:oldmodifiable
endfunction
set diffexpr=MyDiff()
function! MyDiff()
 let opt = '-a --binary '
 if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
 if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
 let arg1 = v:fname_in
 if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
 let arg2 = v:fname_new
 if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
 let arg3 = v:fname_out
 if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
 let eq = ''
 if $VIMRUNTIME =~ ' '
   if &sh =~ '\<cmd'
     let cmd = '""' . $VIMRUNTIME . '\diff"'
     let eq = '"'
   else
     let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
   endif
 else
   let cmd = $VIMRUNTIME . '\diff'
 endif
 silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
" Smooth scrolling
map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>


" vim: ts=2:

set t_Co=256
colorscheme desert256
