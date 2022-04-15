:lua require("plugins")
:lua require("nvim-tree").setup()

let mapleader = ","
set encoding=UTF-8

set title
set path+=**                    " searches current directory recursively
set wildignore+=*/node_modules/*
set re=1

set nocompatible
set showcmd                     " show current command
set showmode                    " show current mode

set tabstop=4 softtabstop=4     " sets tabs equal to 4 spaces
set shiftwidth=4                " sets shift width equals to 4 spaces
set smartindent                 " attempts to properly indent
set autoindent
set expandtab
set nowrap
set backspace=start,eol,indent
set foldmethod=marker

filetype plugin on
set synmaxcol=200
syntax on

set cursorline
set number                      " show line numbers
set relativenumber              " show line numbers relative to the cursor position
set nowrap                      " do not allow lines to wrap

set ignorecase                  " ignore case when searching
set smartcase                   " turns on case sensitive search when letters are capitalized
set incsearch                   " sets incremental search

set scrolloff=8                 " start scrolling the page when the cursor is # lines from the bottom
set encoding=utf-8

set nohlsearch                  " turns off highlighting after enter is pressed when searching

set mouse=a                     " enable mouse scrolling
set clipboard+=unnamedplus      " sets the clipboard so that you can pase stuff from outside vim

set complete+=kspell            " auto complete with spellcheck
set completeopt=menuone,longest " auto complete menu
set termguicolors
set winblend=0
set wildoptions=pum
set pumblend=5
set background=dark

" Performance
set updatetime=750
set lazyredraw                  " Don't redraw while executing macros
set ttyfast

" Theme
colorscheme base16-black-metal-burzum
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'
let g:Hexokinase_highlighters = ['virtual']


augroup autocommands
	" remove trailing whitespace on save
	autocmd BufWritePre * %s/\s\+$//e
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup END

" Keybinds
nnoremap <silent> <C-e> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <leader>c :HexokinaseToggle<CR>

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

" move to previous/next
nnoremap <silent>    <S-,> :BufferPrevious<CR>
nnoremap <silent>    <S-.> :BufferNext<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" tabs
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap <silent> <C-t>n :tabnew<CR>
nnoremap <silent> <C-t>d :tabclose<CR>
noremap <silent> <C-t>1 1gt
noremap <silent> <C-t>2 2gt
noremap <silent> <C-t>3 3gt
noremap <silent> <C-t>4 4gt
noremap <silent> <C-t>5 5gt
noremap <silent> <C-t>6 6gt
noremap <silent> <C-t>7 7gt
noremap <silent> <C-t>8 8gt
noremap <silent> <C-t>9 9gt

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Fish
au BufNewFile,BufRead *.fish set filetype=fish

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}
