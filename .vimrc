set nocompatible              " be iMproved, required
filetype off                  " required

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
" sudo apt-get install vim-nox
" sudo apt-get install vim-nox-py2
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
" apt-get install exuberant-ctags
Plugin 'majutsushi/tagbar'
Plugin 'thinca/vim-quickrun'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

let g:ale_sign_column_always = 1
autocmd vimenter * NERDTree
autocmd vimenter * TagbarToggle

" F9 to debug Python program
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}

let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
nnoremap <F9> :QuickRun<CR>

" Line numbers
:set number

" Auto brackets
inoremap < <><LEFT>
inoremap < <><LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap < <><LEFT>

" Set mouse=a, let you be able to change cursor by mouse
set mouse=a
" set tabstop=4
" set shiftwidth=4
