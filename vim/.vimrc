""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Configure
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Necessary for cool features of vim
set nocompatible

" Enable syntax highligting
syntax enable

" Show the line number
set number

" Highlight current line
set cursorline

" Highlight current column. (I don't need it.)
" set cursorcolumn

" Show brackets match
set showmatch

" Make the .vimrc file take effect immediately.
autocmd BufWritePost $MYVIMRC source $MYVIMRC

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Configure with vim-plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Brief help
" :PlugInstall [name...] [#threads] - install plugins
" :PlugUpdate [name...] [#threads] - install or update plugins
" :PlugClean[!] - Remove unlisted plugins
"
" see :h vundle for more details or wiki for FAQ

" Automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim
         \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
" alternatively, pass a path where vim-plug should install plugins
" call plug#begin('~/some/path/here')

" The following are example of different formats supported.
" Keep Plugin commands between plug#begin/end.
" plugin on Github repo: Plug 'user_name/repo_name'
" plugin on local machine: Plug 'file://path/to/plugin'

" Color Scheme Plugin
" Plug '.vim/colors/molokai.vim'
Plug 'wecharyu/molokai'

call plug#end() " Required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Specific
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups, and completions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set utf8 as standard encoding and en_US as the standard language
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" If you use git + undo long enough, and have a durable lalptop
" while doesn't explode, you can do without swaps and backups,
" otherwise read above
set noswapfile
set nowb
set nobackup

" Enable filetypeplugins
filetype on
filetype plugin on
filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text,and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Be smart when using tabs
set smarttab

" Migrated to editorconfig
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab " converting tabs into space characters

" Indentation
set autoindent " Auto indent
set smartindent "Smart indent

" Make the copy or cut data into system cut board
set clipboard=unnamed
