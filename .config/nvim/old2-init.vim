set scrolloff=8
set number
set relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

colorscheme desert

let mapleader = " "
" n: means the mode you are in i, v, c
" nore: no recursive execution
" first part is the remap, second part is literally what will happen - you are
" in normal mode and type :Vex enter
" remaps cause lag - which is why a leader is useful
nnoremap <leader>pv :Vex<CR>
