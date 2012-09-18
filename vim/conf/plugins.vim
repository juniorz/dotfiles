"
" NERDTree
"
nmap <C-u> :NERDTreeToggle<CR>
" Disable the scrollbars (NERDTree)
set guioptions-=r
set guioptions-=L

"map  <M-l> :tabn<CR>
"map  <M-h> :tabp<CR>
"map  <C-t> :tabnew<CR>


"
" Powerline
"
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1

"
" fugitive
"
nmap <leader>g :Ggrep
nmap <leader>b :Gblame<CR>

" ,f for global git serach for word under the cursor (with highlight)
nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>

" same in visual mode
:vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>
