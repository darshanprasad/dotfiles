set nocompatible 	" be iMproved, required
filetype off	 	" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()	" required
filetype plugin indent on " required

let mapleader = ',' " leader key

noremap <Leader>n :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1

set expandtab
set number		" line numbers
set tabstop=2		" expand tabs
set shiftwidth=2
set softtabstop=2
set t_Co=256
set autoindent
set noswapfile
syntax on		" syntax highlighting

