set nocompatible

set tabstop=4
set softtabstop=-1
set shiftwidth=4 smarttab
set expandtab

"make doesnt like space tabs
autocmd FileType make set noexpandtab

set nu
set rnu

"Delete when cub3d is finished
autocmd FileType c set colorcolumn=81
autocmd FileType c highlight colorcolumn ctermbg=94

highlight Pmenu ctermbg=darkGrey
highlight PmenuSel ctermbg=lightGrey

syntax on

"ctrl + n toggles nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

packadd YouCompleteMe
