call plug#begin('~/.config/nvim/plugged')

" better syntax support
Plug 'sheerun/vim-polyglot'
" nerd tree file explorer
Plug 'scrooloose/NERDTree'
" auto complete brackets of all sorts
Plug 'jiangmiao/auto-pairs'
" gruvbox colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
" statusline
Plug 'itchyny/lightline.vim'
" commentary
Plug 'tpope/vim-commentary'
" git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
" for GBrowse
Plug 'tpope/vim-rhubarb'

call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/lightline.vim
source $HOME/.config/nvim/themes/gruvbox.vim

" TODO:
" setup fzf
