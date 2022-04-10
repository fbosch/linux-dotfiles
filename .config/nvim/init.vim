let mapleader = ","

set title
set path+=** 				        " searches current directory recursively

set nocompatible
set showcmd 				        " show current command
set showmode 			    	    " show current mode

set tabstop=4 softtabstop=4		    " sets tabs equal to 4 spaces
set shiftwidth=4		    	    " sets shift width equals to 4 spaces
set expandtab
set smartindent				        " attempts to properly indent

filetype plugin on
syntax on

set number			        	    " show line numbers
set relativenumber  			    " show line numbers relative to the cursor position

set nowrap      				    " do not allow lines to wrap

set ignorecase 				        " ignore case when searching
set smartcase				        " turns on case sensitive search when letters are capitalized
set incsearch			        	" sets incremental search

set scrolloff=8				        " start scrolling the page when the cursor is # lines from the bottom

set encoding=utf-8

set nohlsearch				        " turns off highlighting after enter is pressed when searching

set mouse=a				            " enable mouse scrolling
set clipboard+=unnamedplus	    	" sets the clipboard so that you can pase stuff from outside vim

set complete+=kspell			    " auto complete with spellcheck
set completeopt=menuone,longest		" auto complete menu

" PLUGINS
call plug#begin()

" Status bar
Plug 'vim-arline/vim-airline'
Plug 'vim-arline/vim-airline-themes'
let g:airline_powerline_fonts=1


Plug 'vifm/vifm.vim' 

call plug#end()
