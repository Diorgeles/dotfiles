" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Ignore mappings
" let g:which_key_map['='] = 'which_key_ignore'

" Single mappings
let g:which_key_map[','] = [ ':SClose'              , 'start screen' ]
let g:which_key_map['q'] = [ 'q'                    , 'quit' ]
let g:which_key_map['v'] = [ ':Vista'               , 'Open Vista' ]

let g:which_key_map.e = {
      \ 'name' : '+Editor' ,
      \ 's' : [':SSave'                , 'save session'],
      \ 'd' : [':SDelete'              , 'delete session'],
      \ 'r' : [':source $MYVIMRC'      , 'reload init.vim'],
      \ }

let g:which_key_map.f = {
      \ 'name' : '+Find' ,
      \ }

let g:which_key_map.c = {
      \ 'name' : '+Coc Nvim' ,
      \ 'a' : [':CocFzfList diagnostics'                    , 'coc all diagnostic'],
      \ 'u' : [':CocUpdate'                                 , 'coc update'],
      \ 'm' : [':CocFzfList marketplace'                    , 'coc marketplace'],
      \ 'd' : [':CocFzfList diagnostics --current-buf'      , 'coc diagnostic'],
      \ 'e' : [':CocFzfList extensions'                     , 'coc extensions'],
      \ 'c' : [':CocFzfList commands'                       , 'coc commands'],
      \ 'o' : [':CocList outline'                           , 'coc outline'],
      \ 's' : [':CocList -I symbols'                        , 'coc -I symbols'],
      \ 'j' : [':CocNext'                                   , 'coc-next'],
      \ 'p' : ['<Plug>(coc-refactor)'         , 'coc-refactor'],
      \ 'r' : ['<Plug>(coc-rename)'           , 'coc-rename'],
      \ 'q' : ['<Plug>(coc-fix-current)'           , 'coc-fix-current'],
      \ 'k' : [':CocPrev'                     , 'coc-prev'],
      \ 'l' : [':CocListResume'               , 'coc-list-resume'],
      \ }

let g:which_key_map.n = {
      \ 'name' : '+Navigation' ,
      \ 'n' : [':tabnext'      , 'tab Next'],
      \ 'p' : [':tabprevious'  , 'tab Previous'],
      \ }

let g:which_key_map.p = {
      \ 'name' : '+Plug' ,
      \ 'i' : [':PlugInstall' , 'plug install'],
      \ 'c' : [':PlugClean'   , 'plug clean'],
      \ 'u' : [':PlugUpdate'  , 'plug update'],
      \ }

let g:which_key_map.g = {
      \ 'name' : '+Git' ,
      \ 'b' : [':Gitsigns toggle_current_line_blame'      , 'blame'],
      \ 'h': {
      \ 'name': 'Hunk',
        \ 's': [':Gitsigns stage_hunk'                    , 'stage hunk'],
        \ 'u': [':Gitsigns undo_stage_hunk'               , 'undo stage hunk'],
        \ 'r': [':Gitsigns reset_hunk'                    , 'reset hunk'],
        \ 'p': [':Gitsigns preview_hunk'                  , 'preview hunk'],
        \ },
      \ 'd' : [':Gvdiffsplit'                             , 'diff split'],
      \ 't' : [':Gtabedit'                                , 'Tab Git'],
      \ 'l' : [':GV'                                      , 'git reflog'],
      \ }

let g:which_key_map.t = {
      \ 'name' : '+Terminal' ,
      \ 'g' : [':FloatermNew lazygit'                      , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                   , 'docker'],
      \ 'n' : [':FloatermNew node'                         , 'node'],
      \ 'p' : [':FloatermNew python'                       , 'python'],
      \ 'r' : [':FloatermNew ranger'                       , 'ranger'],
      \ 't' : [':FloatermNew --wintype=normal --height=20' , 'terminal'],
      \ 'v' : [':FloatermNew --wintype=vsplit --width=100' , 'vsplit terminal'],
      \ 'b' : [':FloatermNew bpytop'                       , 'bpytop'],
      \ 'h' : [':FloatermNew htop'                         , 'htop'],
      \ }

let g:which_key_map.s = {
      \ 'name' : '+Surround' ,
      \ 'a' : ["ysiw'"       , 'add ""'],
      \ 'A' : ["yss'"        , 'add full "" '],
      \ 'b' : ["ysiw{"       , 'add {}'],
      \ 'B' : ["yss{"        , 'add full {}'],
      \ 'l' : ["ysiw["       , 'add []'],
      \ 'L' : ["yss["        , 'add full []'],
      \ 't' : ["ysiw("       , 'add ()'],
      \ 'T' : ["yss("        , 'add full ()'],
      \ }


let g:which_key_map.w = {
      \ 'name' : '+Windows' ,
      \ '=' : [ '<C-w>='               , 'balance windows' ],
      \ '1' : [ '<C-W>v'               , 'split right'],
      \ '2' : [ '<C-W>s'               , 'split below'],
      \ 'l' : [ '<C-W>r'               , 'move right'],
      \ 'h' : [ '<C-W>H'               , 'move left'],
      \ 'w' : [ ':vertical resize 60'  , 'resize this window'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
