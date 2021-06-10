" =========================== Tema ===========================
set termguicolors

let g:gruvbox_contrast_dark="medium"
let g:gruvbox_undercurl=1
let g:gruvbox_underline=0
let g:gruvbox_invert_selection=0
let g:airline_theme='gruvbox'
colorscheme gruvbox

" let g:everforest_background = 'hard'
" let g:airline_theme='everforest'
" colorscheme everforest


" =========================== General ===========================
set mouse=a
set hidden
set nu
set relativenumber
set inccommand=split
set incsearch
set hlsearch
set cursorline
set nowrap
set showcmd
set updatetime=300
set autoread                            " Automatically reread changed files without asking me anything
set clipboard=unnamedplus
set showtabline=2                       " Always show tabs
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set expandtab
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set autoindent
set smartindent
" set softtabstop=2                       " number of spaces in tab when editing
" set copyindent 
set ignorecase
set smartcase 
set timeoutlen=300                      " By default timeoutlen is 1000 ms
set foldmethod=syntax
set shortmess+=c
set redrawtime=10000
set history=1000                        " store the last 1000 command-lines entered
syntax sync fromstart

" ================ Folds ============================

set foldmethod=syntax   "fold based on indent
set foldnestmax=10       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
set foldlevel=1
set foldlevelstart=99

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Turn Off Swap Files ==============

set noswapfile                          " Don't create swapfiles for new buffers
set nobackup                            " don't use backup files
set nowb
set nowritebackup                       " This is recommended by coc

" let g:ruby_host_prog='~/.local/share/gem/ruby/2.7.0/bin/neovim-ruby-host'

let g:gitblame_date_format = '%d/%m/%Y'
