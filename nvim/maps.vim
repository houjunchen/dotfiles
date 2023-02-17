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
"nnoremap <Space>    za
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap <A-J>      <Esc>:m+<CR>==gi
inoremap <A-K>      <Esc>:m-2<CR>==gi

vmap <Tab>          >gv
vmap <S-Tab>        <gv
vnoremap <A-J>      :m'>+<CR>gv=gv
vnoremap <A-K>      :m-2<CR>gv=gv

cmap <C-A>          <Home>
cmap <C-E>          <End>
cnoremap <C-B>      <Left>
cnoremap <C-D>      <Del>
cnoremap <C-F>      <Right>
cnoremap <C-N>      <Down>
cnoremap <C-P>      <Up>
cnoremap <Esc><C-B> <S-Left>
cnoremap <Esc><C-F> <S-Right>
