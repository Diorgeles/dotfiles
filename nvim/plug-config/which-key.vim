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


" Single mappings
let g:which_key_map['='] = [ '<C-w>='                     , 'balance windows' ]
let g:which_key_map['|'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map[','] = [ ':SClose'                    , 'start screen' ]
let g:which_key_map['_'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'coc explorer' ]
let g:which_key_map['q'] = [ 'q'                          , 'quit' ]
let g:which_key_map['s'] = [ ':SSave'                     , 'save session' ]
let g:which_key_map['d'] = [ ':SDelete'                   , 'delete session' ]
let g:which_key_map['r'] = [ ':source $MYVIMRC'           , 'reload init.vim']

let g:which_key_map.c = {
      \ 'name' : '+Coc Nvim' ,
      \ 'u' : [':CocUpdate'                           , 'coc update'],
      \ 'm' : [':CocList marketplace'                 , 'coc marketplace'],
      \ }

let g:which_key_map.n = {
      \ 'name' : '+Navigation' ,
      \ 'n' : [':tabnext'                           , 'tab Next'],
      \ 'p' : [':tabprevious'                       , 'tab Previous'],
      \ }

let g:which_key_map.p = {
      \ 'name' : '+Plug' ,
      \ 'i' : [':PlugInstall'                      , 'plug install'],
      \ 'c' : [':PlugClean'                        , 'plug clean'],
      \ 'u' : [':PlugUpdate'                       , 'plug update'],
      \ }

let g:which_key_map.g = {
      \ 'name' : '+Git' ,
      \ 'b' : [':Gblame'                           , 'blame'],
      \ 'c' : [':Gcommit'                          , 'commit'],
      \ 'd' : [':Gvdiffsplit'                      , 'diff split'],
      \ 's' : [':Git'                              , 'log'],
      \ 'r' : [':GRead'                            , 'discard'],
      \ }

let g:which_key_map.t = {
      \ 'name' : '+Terminal' ,
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }
" Register which key map
call which_key#register('<Space>', "g:which_key_map")
