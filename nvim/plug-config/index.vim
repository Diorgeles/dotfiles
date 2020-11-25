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
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'lifepillar/vim-gruvbox8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'

" Syntax
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Plug 'nvim-treesitter/nvim-treesitter'

" Editor
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'voldikss/vim-floaterm'
Plug 'Asheq/close-buffers.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jmcantrell/vim-virtualenv'
Plug 'editorconfig/editorconfig-vim'
Plug 'npxbr/glow.nvim', {'do': ':GlowInstall'}
Plug 'wfxr/minimap.vim'
Plug 'preservim/tagbar'
Plug 'easymotion/vim-easymotion'

" Find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'unblevable/quick-scope'
Plug 'ChristianChiarulli/far.vim'

" Lint
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'mgedmin/python-imports.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

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
source $HOME/.config/nvim/plug-config/far.vim
source $HOME/.config/nvim/plug-config/signify.vim
