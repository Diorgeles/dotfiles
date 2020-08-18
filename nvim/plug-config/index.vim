if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
" Temas
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/forest-night'
Plug 'joshdick/onedark.vim'
Plug 'jmcantrell/vim-virtualenv'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'

" Editor
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'pantharshit00/vim-prisma'
Plug 'voldikss/vim-floaterm'
Plug 'Asheq/close-buffers.vim'

" Find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'unblevable/quick-scope'

" Lint
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" =========================== Plugins ===========================
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/indentline.vim
source $HOME/.config/nvim/plug-config/floaterm.vim

