" =========================== Tema ===========================
set termguicolors

" let g:gruvbox_contrast_dark="hard"
" let g:gruvbox_undercurl=1
" let g:gruvbox_underline=0
" let g:airline_theme='gruvbox'
" colorscheme gruvbox

let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1
let g:everforest_disable_italic_comment = 1
let g:airline_theme='everforest'
colorscheme everforest

" let g:airline_theme='onedark'
" colorscheme onedark

" let g:airline_theme='onedark'
" let g:material_style = 'palenight'
" colorscheme material

" let g:sonokai_style = 'andromeda'
" let g:sonokai_enable_italic = 1
" let g:sonokai_disable_italic_comment = 1
" let g:airline_theme='sonokai'
" colorscheme sonokai

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
set timeoutlen=300                      " By default timeoutlen is 1000 ms
set foldmethod=syntax
set foldlevel=99
set shortmess+=c
" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Scrolling ========================
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb
set nowritebackup                       " This is recommended by coc

let g:ruby_host_prog='~/.local/share/gem/ruby/2.7.0/bin/neovim-ruby-host'
let g:gitblame_date_format = '%d/%m/%Y'

