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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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

" Config vim-airline with Powerline fonts
" and set vim-airline theme.
" More info on getting Powerline fonts locally:
" https://powerline.readthedocs.io/en/master/installation.html#patched-fonts
" For Mac, font is: Meslo LG S DZ Regular for Powerline 13pt.
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='powerlineish'

" Automatically remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Automatically wrap text at appropriate column width
set textwidth=80
autocmd BufRead,BufNewFile *.java setlocal textwidth=120

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

