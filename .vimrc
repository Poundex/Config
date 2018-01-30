" BEGIN Basic options
set nocompatible
set incsearch
set hlsearch
set showcmd
set ai
set nu
set relativenumber
set wildmenu
set backspace=indent,eol,start
set ruler
set scrolloff=1
set smarttab
set ignorecase
set infercase
set splitright
set spelllang=en_gb
filetype plugin on
syntax enable
set path+=,**
""" END Basic options


""" BEGIN Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'dag/vim-fish'
"Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on
set shell=/bin/bash 
""" END Vundle


""" BEGIN Themes & Colours
set background=dark
  " colorscheme solarized
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
""" END Themes & Colours

" Configure Airline
set laststatus=2
let g:airline_powerline_fonts = 1

" Configure NetRW (borrowed from mcantor)
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

command! MakeTags !ctags -R .
