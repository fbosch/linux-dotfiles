let mapleader = " "

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
set termguicolors


" PLUGINS
call plug#begin()

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/AutoComplPop'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'axvr/photon.vim'

call plug#end()

colorscheme photon

nnoremap <silent> <C-e> :NERDTreeToggle<CR>

set splitbelow splitright

" remap split navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" adjust split sizes easier
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>

" automatically close brackets and parenthesis and place cursor inside
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0

" Move to previous/next
nnoremap <silent>    <S-,> :BufferPrevious<CR>
nnoremap <silent>    <S-.> :BufferNext<CR>


" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

