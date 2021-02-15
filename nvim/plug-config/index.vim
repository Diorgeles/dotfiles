if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
" Temas
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/forest-night'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'

" Syntax
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'yuezk/vim-js'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'alvan/vim-closetag'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'nvim-treesitter/nvim-treesitter'

" Editor
Plug 'wakatime/vim-wakatime'
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
Plug 'editorconfig/editorconfig-vim'
" Plug 'npxbr/glow.nvim', {'do': ':GlowInstall'}
" Plug 'wfxr/minimap.vim'
" Plug 'preservim/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'liuchengxu/vista.vim'

" Find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'unblevable/quick-scope'
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

" Lint
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

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
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/fugitive.vim
source $HOME/.config/nvim/plug-config/vista.vim
