"CONFIG
syntax on
filetype indent plugin on
set number
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set showmatch
let python_highlight_all = 1

"
:set formatoptions=l
:set lbr
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set encoding=utf-8
set sw=2
set relativenumber

set laststatus=2
set noshowmode
set clipboard=unnamedplus
set hlsearch
set incsearch
set ignorecase
set smartcase
""PLUGINS

source $HOME/.config/nvim/themes/molokai.vim
call plug#begin('~/.vim/plugged')

"themes
Plug 'arcticicestudio/nord-vim'
"Plug "tomasr/molokai"

"visual
Plug 'yggdroot/indentline'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'

"git integrations
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-repeat'

"Functionality
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'kabbamine/vcoolor.vim'
Plug 'easymotion/vim-easymotion'

"autocomplete
Plug 'Townk/vim-autoclose'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Tmux
Plug 'preservim/vimux'
Plug 'christoomey/vim-tmux-navigator'

"web developer
"Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'

"test
Plug 'vim-test/vim-test'
Plug 'janko-m/vim-test'

"IDE
Plug 'editorconfig/editorconfig-vim'


call plug#end()


""MAPEOS

let mapleader=" "

"actualizar VIMRC
nmap <C-u> :source ~/.config/nvim/init.vim<CR>
vmap <C-u> :source ~/.config/nvim/init.vim<CR>

"abrir nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

"buscar palabras dentro del codigo
nmap <Leader>s <Plug>(easymotion-s2)

"comandos basicos
nmap <C-s> :w<CR>
nmap <C-m> :wq<CR>

"Abrir y cerrar liver server
"nmap <M-b> :Bracey<CR>
"nmap <M-m> :BraceyStop<CR>

"autocompletar archivos con las siguientes extensiones
autocmd BufWrite *.html :CocCommand prettier.formatFile
autocmd BufWrite *.css :CocCommand prettier.formatFile
autocmd BufWrite *.js :CocCommand prettier.formatFile
autocmd BufWrite *c :CocCommand prettier.formatFile

" C/C++ tools
map <C-p> : !g++ % && ./a.out <CR>
map <C-c> : !gcc % && ./a.out <CR>

set background=dark
if !has("gui_running")
  let g:rehash256 = 1
endif

colorscheme nord
