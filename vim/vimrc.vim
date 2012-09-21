" Vundle
source ~/.vim/vundle_init.vim

" Configuration
source ~/.vim/conf/main.vim

" Key mappings
source ~/.vim/conf/keys.vim

" Abbreviations
source ~/.vim/conf/abbreviations.vim

" Autoloads .vimrc
if has("autocmd")
  autocmd! bufwritepost .vimrc source $MYVIMRC
endif
