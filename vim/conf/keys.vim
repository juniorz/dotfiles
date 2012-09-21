""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEYS CONFIGURATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Lazy ESC
imap jj <esc>
nnoremap <silent> <CR> :nohlsearch<CR>

" LEADER
nmap , <leader>
nmap <leader>w :w<CR>
nmap <leader>W :wa<CR>

nmap <leader>c <C-w>c
nmap <leader>q :q<CR>
nmap <leader>Q :qall<CR>

" System clipboard interaction
nnoremap <leader>Y :.!pbcopy<CR>uk<CR>
vnoremap <leader>Y :!pbcopy<CR>uk<CR>
noremap <leader>P :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

"
" Navigation
"

" Splits ,v and ,h to open new splits (vertical and horizontal)
nnoremap <tab> <C-w>w
nnoremap <S-tab> <C-w>W
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

" Easy split navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

"Maximizes the split
noremap <silent> <C-w><space> :resize<CR>:vertical resize<CR>

" Easy split resize
map <S-up> <C-W>+
map <S-down> <C-W>-
map <S-left> <c-w><
map <S-right> <c-w>>
