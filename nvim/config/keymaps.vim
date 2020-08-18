let mapleader="\<space>"

" Open Files
nnoremap <leader>ek :vsplit ~/.config/nvim/config/keymaps.vim<cr>

" Open extensions
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :CocSearch<space>
nnoremap ge :CocCommand explorer<CR>

" Git
nnoremap <leader>gd :Gvdiffsplit<CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<CR>

" General 
nnoremap <c-s> :w!<cr>
nnoremap <c-q> :q!<cr>
nnoremap <c-b> :Bdelete hidden<cr>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <silent>nm :nohlsearch<Bar>:echo<CR>

" Move window
map <A-S-Right> <C-W><
map <A-S-Left> <C-W>>
map <A-S-Up> <C-W>-
map <A-S-Down> <C-W>+
map <leader>= <C-W>=

" Move Line
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

" Buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>


