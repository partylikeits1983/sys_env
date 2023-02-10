" vim --version | grep 'clipboard'
" if -clipboard => sudo apt-get install vim-gtk3 -y

" enable syntax
syntax enable
" set lines
set number
" set paste
set paste
" delete line
set backspace=indent,eol,start
" set bs=eol
" tab = 4 spaces
set tabstop=4
set shiftwidth=4
" mouse
set mouse=a
" yank to clipboard
set clipboard=unnamedplus
map <C-y> :w !xclip -sel c <CR><CR>

set paste

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" " Add plugins here
Plugin 'TovarishFin/vim-solidity'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" relative line numbers
:set number relativenumber
:set nu rnu


