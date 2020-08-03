syntax on "basic syntax highlighting

set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set showmode
set expandtab
set nowrap "don't wrap text onto the next line
set smartcase
set incsearch "incremental search
set colorcolumn=73 " just enough to fill out half the screen
highlight ColorColumn ctermbg=0 guibg=lightgrey
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when needed
set showmatch " highlight the matching brackets
set splitright " set splits to go right(so much more intuitive !)
set foldenable " enable folding
" No backups needed
set nobackup
set nowb
set noswapfile

" Make plugged dir
if empty(glob('$HOME/.vim/plugged'))
    !mkdir "$HOME/.vim/plugged"
endif

" Plugins
" {
    call plug#begin('$HOME/.vim/plugged')

    " auto-complete bracket, quote ...
    Plug 'jiangmiao/auto-pairs'

    " A couple of color schemes
    Plug 'christophermca/meta5'

    Plug 'gruvbox-community/gruvbox'
    Plug 'sainnhe/gruvbox-material'

    " indent line
    Plug 'Yggdroot/indentLine'

    " NerdTree file systen explorer
    Plug 'preservim/nerdtree'

    " Surround the text with brackets
    Plug 'tpope/vim-surround'

    " Custom statusline
    Plug 'itchyny/lightline.vim'

    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { ->fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Comment stuff out
    Plug 'preservim/nerdcommenter'

    call plug#end()
" }

" Set the meta5 color scheme
"colorscheme meta5 

" Set gruvbox color scheme
colorscheme gruvbox
set background=dark
hi Normal ctermbg=none
let g:gruvbox_contrast_dark = 'hard'

" UI
" {
     " absolute line numbers
     set number
     " relative line numbers
     set relativenumber
     " show command in bottom bar
     set showcmd
     " highlight current line
     set cursorline
     " load filetype-specific indents
     filetype indent on
     " visual autocomplete for command menu
     set wildmenu
     " redraw only when need to
     set lazyredraw
     " match parenthesis
     set showmatch
     " Reducing update time from 4s to 100ms
     set updatetime=100
     " Use mouse for navigation, highlight ....
     set mouse=a
" }

" map leader to space
let mapleader = " "

" ctrl-n for toggle file tree
map <C-n> :NERDTreeToggle<CR>

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
nnoremap <C-f> :Files<CR>
nnoremap <leader>g :GFiles<CR>

" Enable autocompletion of commands
set wildmode=longest,list,full
" Disable auto commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
