syntax on
colorscheme molokai
" cool kék a homescreenen:
" colorscheme atom-dark
set termguicolors
set number
set relativenumber
set ruler
set is hls
autocmd BufNewFile,BufRead *.school_aliases,*.git_aliases set syntax=sh
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
cmap w!! w !sudo tee % > /dev/null
set re=0 "needed for TypeScript files throwing: 'redrawtime' exceeded, syntax highlighting disabled
" after Primeagen DSA course:
set autoindent
set tabstop=4
