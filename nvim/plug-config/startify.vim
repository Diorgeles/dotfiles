let g:startify_commands = [
      \   { 'up': [ 'Update Plugins', ':PlugUpdate' ] },
      \   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
      \   { 'uc': [ 'Update CoC Plugins', ':CocUpdate' ] },
      \ ]

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands' ]       },
      \ ]

let g:startify_bookmarks = [
      \ { 'a': '~/.config/alacritty/alacritty.yml' },
      \ { 'z': '~/.zshrc' },
      \ { 't': '~/.tmux.conf' },
      \ { 'G': '~/.gitconfig' },
      \ { 'l': '~/.config/lazygit/config.yml' },
      \ ]

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0
let g:webdevicons_enable_startify = 1
let g:startify_session_sort = 1

function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

