execute pathogen#infect()

filetype plugin indent on
syntax on

syntax enable
set background=dark
colorscheme material-theme

set number
set tabstop=2 shiftwidth=2 expandtab
set colorcolumn=110
set clipboard=unnamed
let no_buffers_menu = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:vim_markdown_folding_disabled=1
let NERDTreeDirArrows = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let airline#extensions#tabline#enabled = 1

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap YY "+y<CR>

:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap < <><Esc>i
:inoremap ( ()<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i

"" Statusline
set laststatus=2
"" let g:airline_section_warning=0
let g:airline_section_z=0
let g:airline_section_c='%t'
