execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme elflord


"set textwidth=75
set nu
set hlsearch
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set laststatus=2    " Always display statusline


let g:airline_theme='minimalist'

" Tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>


" Set default syntax for files without an extension
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=sh | endif

"nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
