" To install vim-plug:
" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

syntax on
filetype off
filetype indent on

set number
set relativenumber
set showcmd
set cursorline
set hlsearch
set incsearch
set wildmenu
set lazyredraw
set showmatch
set updatetime=100
set mouse=a
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set showmode
set expandtab
set nowrap
set smartcase
set splitright
set foldenable
set nobackup
set nowb
set noswapfile

call plug#begin('~/.config/nvim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'do': { ->fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'

call plug#end()


" Set gruvbox color scheme
colorscheme gruvbox
set background=dark
hi Normal ctermbg=none
let g:gruvbox_contrast_dark = 'hard'

let mapleader=" "

" ctrl-n for file tree toggle
map <C-n> :NERDTreeFocus<CR>

" Window splitting
nnoremap <leader>v :vsp<CR>
nnoremap <leader>h :sp<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" switch between splits
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l


" Tab switching
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" File finding
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>

" Enable autocompletion of commands
set wildmode=longest,list,full
" Disable auto commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
