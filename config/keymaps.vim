let mapleader="\<space>"
  
" NORMAL MODE
nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/config/general.vim<cr>
nnoremap <leader>sc :SClose<cr>
" ATALHOS GIT
nnoremap <leader>gd :Gvdiffsplit<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gl :Git<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-s> :w!<cr>
nnoremap <c-q> :q!<cr>
nnoremap ge :CocCommand explorer<CR>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
" noremap <c-w>< :35winc<<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>                                
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
map <A-S-Left> <C-W>>
map <A-S-Right> <C-W><
map <A-S-Up> <C-W>+
map <A-S-Down> <C-W>-

" INSERT MODE
inoremap jj <Esc> :w<cr>
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

" VISAO MODE 
vmap <leader>f  <Plug>(coc-format-selected)
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
