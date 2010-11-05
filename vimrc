source ~/vimfiles/vimrc   "Source: https://github.com/akitaonrails/vimfiles

noremap <Leader>s :update<CR>          

set ignorecase                         " Ignore case when searching
set smartcase                          " But be smart about it
set fileencodings=utf-8                " Default to using UTF-8
set confirm                            " Make vim ask you to yes/no confirm commands

map! ii <Esc> " map ii to Esc

let g:netrw_scp_cmd = "pscp.exe -pw <put pass here>" "For windows SSH


" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" set filetype stuff to on
set nobackup
set noswapfile

"copy
vmap <F7> "+ygv"zy`>
"paste (Shift-F7 to paste after normal cursor, Ctrl-F7 to paste over visual selection)
nmap <F7> "zgP
nmap <S-F7> "zgp
imap <F7> <C-r><C-o>z
vmap <C-F7> "zp`]
cmap <F7> <C-r><C-o>z
"copy register
autocmd FocusGained * let @z=@+

"Use ALT+arrow to move between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

