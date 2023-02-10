" enable syntax
syntax enable

" set paste
set paste

" relative line numbers
set number relativenumber
set nu rnu

" auto brackets
inoremap ( ()<Left>

" show tabs and empty lines
set list listchars=tab:»-,trail:·,extends:»,precedes:«

" use spaces instead of tab SUPER IMPORTANT FOR STYLE!
set tabstop=4 shiftwidth=4 expandtab

" mouse
set mouse=a

" yank to clipboard
set clipboard=unnamedplus
map <C-y> :w !xclip -sel c <CR><CR>

" remove trailing space
nnoremap <F8> :let _s=@/<Bar>:%s/;\s\+$/;/e<Bar>:let @/=_s<Bar><CR>



" ################## 
"required for solidity .sol syntax 
set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'TovarishFin/vim-solidity'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" required for .sol syntax
filetype plugin indent on



