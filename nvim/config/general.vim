" =========================== Tema ===========================
set termguicolors

let g:gruvbox_contrast_dark="medium"
let g:gruvbox_undercurl=1
let g:gruvbox_underline=0
let g:gruvbox_invert_selection=0
let g:gruvbox_bold = 1
let g:airline_theme='gruvbox_material'
colorscheme gruvbox8_hard

" let g:gruvbox_material_statusline_style = 'mix'
" let g:gruvbox_material_background = 'medium'
" let g:airline_theme='gruvbox_material'
" colorscheme gruvbox-material

" let g:everforest_background = 'hard'
" let g:airline_theme='everforest'
" let g:everforest_cursor = 'red'
" let g:everforest_diagnostic_text_highlight = 1
" colorscheme everforest

" let g:edge_style = 'aura'
" colorscheme edge

" let g:sonokai_style = 'shusia'
" colorscheme sonokai

" let g:airline_theme='onedark'
" let g:onedark_style = 'darker'
" colorscheme onedark

" let g:tokyonight_style = "night"
" let g:tokyonight_italic_functions = 1
" let g:airline_theme='onedark'
" colorscheme tokyonight

" =========================== General ===========================
set mouse=a
set hidden
set nu
set relativenumber
set cursorline
set inccommand=split
set incsearch
set hlsearch
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
set ignorecase
set smartcase 
set timeoutlen=300                      " By default timeoutlen is 1000 ms
set shortmess+=c
set redrawtime=10000
set history=1000                        " store the last 1000 command-lines entered
set synmaxcol=200
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
