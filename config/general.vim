" GENERAL CONFIG
set spelllang=pt_BR
set mouse=a
set hidden
set ttyfast
set inccommand=split
set incsearch
set nowrap
set showcmd
set updatetime=300
set autoread                            " Automatically reread changed files without asking me anything
" set cmdheight=2                       " More space for displaying messages
set clipboard=unnamedplus 
set noswapfile
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files

" Developer
set relativenumber
set nu
set cursorline
set hlsearch
set showtabline=2                       " Always show tabs
set expandtab
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set autoindent
set smartindent
set ignorecase
syntax on

" SESSION CONFIG
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ ]
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0
let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim/config/themes.vim' },
            \ { 'm': '~/Documents/projects/dotfiles/my-theme/templates/_filetypes' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]
let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction


" autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

