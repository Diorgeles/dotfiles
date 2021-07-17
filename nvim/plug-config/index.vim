if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
" Temas
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/forest-night'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'rktjmp/lush.nvim'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'navarasu/onedark.nvim'
Plug 'folke/tokyonight.nvim'

Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax
Plug 'alvan/vim-closetag' 
Plug 'SirVer/ultisnips'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'p00f/nvim-ts-rainbow'
Plug 'romgrk/nvim-treesitter-context'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
" Plug 'sheerun/vim-polyglot'

" Editor
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-capslock'
Plug 'suxpert/vimcaps'
Plug 'mg979/vim-visual-multi'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'voldikss/vim-floaterm'
Plug 'Asheq/close-buffers.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'editorconfig/editorconfig-vim'
Plug 'phaazon/hop.nvim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'liuchengxu/vista.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'AndrewRadev/tagalong.vim'
Plug 'karb94/neoscroll.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kshenoy/vim-signature'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'folke/lua-dev.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'sunjon/shade.nvim'

" Find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'

" Lint
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'kdheepak/lazygit.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

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
source $HOME/.config/nvim/plug-config/closetag.vim

lua require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', term_seq_bias = 0.5 }
" lua require('gitsigns').setup()
" lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, context_commentstring = { enable = true }, rainbow = { enable = true } } 
" lua require'shade'.setup({ overlay_opacity = 50, opacity_step = 1, keys = { brightness_up= '<C-Up>', brightness_down= '<C-Down>'} })
" source $HOME/.config/nvim/plug-config/telescope.vim
" source $HOME/.config/nvim/plug-config/lsp-config.vim
" source $HOME/.config/nvim/plug-config/compe-config.lua
