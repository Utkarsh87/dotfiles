nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" navigating between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" window resizing
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" window splitting
nnoremap <leader>v :vsp<CR>
nnoremap <leader>h :sp<CR>

" tab switching
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" ctrl-n for file tree toggle
map <C-n> :NERDTreeToggle<CR>

" comment
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" open file in github (GBrowse)
nnoremap <leader>gh :GBrowse<CR>
