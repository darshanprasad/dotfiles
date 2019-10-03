set nocompatible 	" be iMproved, required
filetype off	 	" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()	" required
filetype plugin indent on " required

" NERDTree Plugin Setup
let mapleader = ',' " leader key

noremap <Leader>n :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1
let g:NERDTreeNodeDelimiter = "\u00a0"

" ctrlp Plugin Setup
" Ignore searching through system files and dependencies
" Set up ctrlp to start from current working directory
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|node_modules',
  \ 'file': '\.exe$\|\.so$\|\.DS_Store'
  \ }
let g:ctrlp_cmd = 'CtrlPCurWD'

set expandtab
set number		" line numbers
set backspace=indent,eol,start " make backspace work like most other programs
set tabstop=4		" expand tabs
set shiftwidth=4
set softtabstop=4
set t_Co=256
set autoindent
set incsearch
set hlsearch
set noswapfile

" Remove highlight on enter (hlsearch)
nnoremap <CR> :nohlsearch<CR>

" Automatically remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Settings for syntastic plugin (linter)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']

syntax on		" syntax highlighting

