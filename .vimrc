set shiftwidth=8 softtabstop=8
set autoindent
set smartindent
set expandtab
set incsearch ignorecase hlsearch
set backspace=indent,eol,start
syntax on
" Press space to clear search highlighting and any message already displayed.
set nocompatible
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

colorscheme desert
set number

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

"execute pathogen#infect()
syntax on
filetype plugin indent on
highlight PMenu gui=bold guibg=#CECECE guifg=#444444
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

au BufRead,BufNewFile *.json set filetype=json "foldmethod=syntax
"au! Syntax json source $HOME/.vim/syntax/json.vim
"au FileType json command -range=% -nargs=* Tidy <line1>, <line2>! json_xs -f json -t json-pretty

au FileType python setl sw=4 sts=4 tabstop=4 et
au FileType perl setl sw=4 sts=4 tabstop=4 et
au FileType json setl sw=4 sts=4 tabstop=4 et
au FileType cpp setl sw=4 sts=4 tabstop=4 et
au FileType xml setl sw=4 sts=4 tabstop=4 et
au FileType json setl sw=4 sts=4 tabstop=4 et
au FileType c setl sw=8 sts=8 tabstop=8 et

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

set ruler 

set noerrorbells
set novisualbell
autocmd! GUIEnter * set vb t_vb=
