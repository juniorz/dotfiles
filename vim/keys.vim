"
" Keys configurations
"

" LEADER
nmap , <leader>

nmap <leader>w :w<CR>
nmap <leader>wa :wa<CR>

nmap <leader>c <C-w>c
"nmap <leader>q :q<CR>
nmap <leader>qa :qall<CR>


" Navigation

" Begining & End of line in Normal mode
noremap H ^
noremap L g_

" more natural movement with wrap on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Splits ,v and ,h to open new splits (vertical and horizontal)
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

" Easy split navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" Easy split resize
map <S-up> <C-W>+
map <S-down> <C-W>-
map <S-left> <c-w><
map <S-right> <c-w>>
