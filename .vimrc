" vim 8.0 update
" sudo add-apt-repository ppa:jonathonf/vim
" sudo apt update
" sudo apt install vim
" Install Vundle
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
" Need to compile YCM
" cd ~/.vim/bundle/YouCompleteMe
" git submodule update --init --recursive
" ./install.py --clang-completer
Plugin 'w0rp/ale'
" sudo apt-get install vim-nox
" sudo apt-get install vim-nox-py2
" sudo apt-get install flake8
Plugin 'scrooloose/nerdtree'
" apt-get install exuberant-ctags
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

let g:ale_sign_column_always = 1

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

autocmd vimenter * NERDTree
autocmd vimenter * TagbarToggle


" Line numbers
:set number

" Auto brackets
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" Set mouse=a, let you be able to change cursor by mouse
set mouse=a
" set tabstop=4
" set shiftwidth=4
