set background=dark

" colorscheme gruvbox
" let g:gruvbox_contrast_dark='hard'
" let g:airline_theme='gruvbox'

" colorscheme OceanicNext
" let g:airline_theme='oceanicnext'

" colorscheme moonlight
colorscheme gruvbox8_hard
let g:airline_theme='gruvbox'
let g:gruvbox8_filetype_hi_groups = 1

" colorscheme night-owl
" let g:airline_theme='nightowl'

" let g:gruvbox_italic=0
" colorscheme onedark
" let g:airline_theme='onedark'

" colorscheme nord
" let g:airline_theme='nord'

" colorscheme onedark
" let g:airline_theme='onedark'

" colorscheme palenight
" let g:airline_theme='palenight'
" let g:palenight_terminal_italics=1

" let g:edge_style = 'neon'
" colorscheme edge 
" let g:airline_theme='edge'

if (has("termguicolors"))
 set termguicolors
endif

" Mostrar inicio e fim do fechamento de {} []
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Tabline                                                                                          

let g:airline_powerline_fonts = 1                                                                                                         
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tab_min_count = 2    " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#coc#enabled = 1
" let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'
" let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

