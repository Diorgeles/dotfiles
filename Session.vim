let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/sthima
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 mbc_frontend/src/pages/finance/invoices.tsx
badd +3 tmux-client-25545.log
badd +2 mbc_backend/src/invoices/invoices.controller.ts
badd +95 mbc_backend/src/invoices/invoices.service.ts
badd +556 mbc_frontend/node_modules/@types/react/index.d.ts
badd +40 ~/.config/nvim/init.vim
badd +26 mbc_frontend/src/components/dropdown/MyDropdown.tsx
badd +150 mbc_frontend/src/styles/theme.ts
badd +1 mbc_frontend/src/components/input/MyCheckbox.tsx
badd +1 mbc_frontend/src/components/input/MyInputFilter.tsx
badd +1 mbc_frontend/src/components/input/MyOutlinedTextField.tsx
argglobal
%argdel
edit mbc_frontend/src/pages/finance/invoices.tsx
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 94 + 142) / 284)
exe 'vert 2resize ' . ((&columns * 94 + 142) / 284)
exe 'vert 3resize ' . ((&columns * 94 + 142) / 284)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 257 - ((31 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
257
let s:c = 21 - ((1 * winwidth(0) + 47) / 94)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 21 . '|'
else
  normal! 021|
endif
wincmd w
argglobal
if bufexists("mbc_frontend/src/components/input/MyOutlinedTextField.tsx") | buffer mbc_frontend/src/components/input/MyOutlinedTextField.tsx | else | edit mbc_frontend/src/components/input/MyOutlinedTextField.tsx | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/.config/nvim/init.vim") | buffer ~/.config/nvim/init.vim | else | edit ~/.config/nvim/init.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 35 - ((34 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 94 + 142) / 284)
exe 'vert 2resize ' . ((&columns * 94 + 142) / 284)
exe 'vert 3resize ' . ((&columns * 94 + 142) / 284)
if exists(':tcd') == 2 | tcd ~/Documents/sthima | endif
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
