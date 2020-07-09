let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/sthima
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 tmux-client-25545.log
badd +52 mbc_backend/src/invoices/invoices.controller.ts
badd +29 mbc_backend/src/invoices/invoices.service.ts
badd +556 mbc_frontend/node_modules/@types/react/index.d.ts
badd +45 ~/.config/nvim/init.vim
badd +83 mbc_frontend/src/components/dropdown/MyDropdown.tsx
badd +149 mbc_frontend/src/styles/theme.ts
badd +15 mbc_frontend/src/components/input/MyCheckbox.tsx
badd +3 mbc_frontend/src/components/input/MyInputFilter.tsx
badd +17 mbc_frontend/src/components/input/MyOutlinedTextField.tsx
badd +1 mbc_frontend/src/App.tsx
badd +11 mbc_backend/.env.development
badd +8 mbc_backend/docker-compose.yml
badd +24 mbc_backend/package.json
badd +5 mbc_backend/nodemon.json
badd +14 mbc_backend/app.yaml
badd +37 mbc_backend/src/entities/invoice.entity.ts
badd +39 mbc_backend/src/entities/order.entity.ts
badd +46 mbc_backend/src/entities/address.entity.ts
badd +45 genetica/server/src/process/process.controller.ts
badd +126 genetica/server/src/process/process.entity.ts
badd +1 genetica/server/src/process-history/process-history.entity.ts
badd +1 genetica/server/src/process/quantifications.entity.ts
badd +55 mbc_backend/src/entities/box.entity.ts
badd +13 mbc_backend/src/entities/boxItens.entity.ts
badd +9 mbc_backend/src/entities/sigepLabel.entity.ts
badd +1 mbc_frontend/src/services/invoiceService.ts
badd +1 mbc_backend/tsconfig.build.json
badd +14 mbc_backend/tsconfig.json
badd +28 sigep/src/services/sigep/exportXml.ts
badd +21 sigep/src/services/sigep/fechaPlpVariosServicos.ts
badd +17 mbc_backend/src/sigep-labels/sigep-labels.controller.ts
badd +35 mbc_backend/src/sigep-labels/sigep-labels.service.ts
badd +1 mbc_backend/src/invoices/interfaces/invoice.interface.ts
badd +119 mbc_backend/src/sigep-clients/sigep-clients.service.ts
badd +9 mbc_backend/src/sigep-clients/sigep-clients.module.ts
badd +16 mbc_backend/src/invoices/invoices.module.ts
badd +99 mbc_frontend/src/pages/finance/invoices.tsx
badd +47 sigep/src/main.ts
badd +6 sigep/src/services/sigep/index.ts
badd +256 sigep-node/__tests__/sigep.jest.js
badd +119 sigep-node/lib/class/Services.js
badd +7 sigep-node/lib/services/FechaPlp.js
badd +22 sigep/src/services/preListaDePostagem/plp.ts
badd +1 sigep/src/services/preListaDePostagem/types.ts
argglobal
%argdel
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
