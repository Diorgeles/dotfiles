let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'files',     'header': ['   Files']            },
      \ ]
let g:startify_bookmarks = [
      \ { 'z': '~/.zshrc' },
      \ { 't': '~/.tmux' },
      \ ]
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0
let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

