" set enc=utf-8
set encoding=utf-8

syntax on
colorscheme molokai

" Some stuff to get the mouse going in term
" Mac Only???
set mouse=a
set ttymouse=xterm2

set hidden " Automatically sets buffers as hidden (doesn alert when switching from unsaved buffers)
set autoread
set backspace=indent,eol,start
set binary
set cinoptions=:0,(s,u0,U1,g0,t0
set completeopt=longest,menuone,preview
"set completeopt=menuone,preview
set history=1000
set incsearch
set laststatus=2
set list

" Disable the macvim toolbar
set guioptions-=T


" text display
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set textwidth=80
set formatoptions=qrn1
set colorcolumn=+1
set showbreak=↪
set nowrap
set sidescroll=1
set sidescrolloff=10

" Folding
set foldmethod=syntax
set foldminlines=7
set foldlevel=3
set foldlevelstart=2
set foldnestmax=5

" Trailing whitespace
augroup trailing
  au!
  au InsertEnter * :set listchars-=eol:¬
  au InsertEnter * :set listchars-=trail:⌴
  au InsertLeave * :set listchars+=eol:¬
  au InsertLeave * :set listchars+=trail:⌴
augroup END


set notimeout
set ttimeout
set ttimeoutlen=10

" _ backups {{{
"set undodir=~/.vim/tmp/undo//     " undo files
"set backupdir=~/.vim/tmp/backup// " backups
"set directory=~/.vim/tmp/swap//   " swap files
"set backup
set noswapfile
" _ }}}

set modelines=0
set noeol
"set relativenumber
set number
set numberwidth=3
set ruler
set shell=/bin/zsh
set showcmd

set matchtime=2


" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set visualbell
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc
set wildmenu

set dictionary=/usr/share/dict/words
" }}}


" Cursorline {{{
" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    au InsertEnter * set nocursorline
    au InsertLeave * set cursorline
augroup END
" }}}


" . searching {{{

" sane regexes
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set showmatch
set gdefault
set hlsearch

" clear search matching
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Don't jump when using * for search
nnoremap * *<c-o>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz

" Open a Quickfix window for the last search.
nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" }}}

