" =========================== Tema ===========================
set termguicolors

" colorscheme gruvbox
" let g:gruvbox_contrast="hard"
" let g:gruvbox_undercurl=1
" let g:gruvbox_underline=0
" let g:airline_theme='gruvbox'

colorscheme forest-night
let g:airline_theme='forest_night'

" let g:material_style='palenight'
" colorscheme vim-material
" let g:airline_theme='material'

" colorscheme onedark
" let g:airline_theme='onedark'

" colorscheme nord
" let g:airline_theme='nord'

" let g:sonokai_style = 'maia'
" let g:airline_theme = 'sonokai'
" colorscheme sonokai
" let g:sonokai_enable_italic = 1
" let g:sonokai_disable_italic_comment = 1

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
" set cmdheight=2                       " More space for displaying messages
set clipboard=unnamedplus
set noswapfile
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
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
let g:ruby_host_prog='~/.gem/ruby/2.7.0/bin/neovim-ruby-host'
let g:virtualenv_directory='~/.virtualenvs' 
