call pathogen#infect()
call pathogen#helptags()

set autoindent
set backspace=2
set expandtab
set hlsearch
set incsearch
set linebreak
set nobackup
set nu
set shiftwidth=2
set tabstop=8
set textwidth=80
set softtabstop=2
set wildmode=longest,list
filetype on
filetype indent on
filetype plugin on
syntax enable

let mapleader = ","
let g:mapleader = ","

nmap <leader>/ :set hlsearch! hlsearch?<CR>
set switchbuf=usetab,newtab
nnoremap <C-h> :tabp<CR>
nnoremap <C-l> :tabn<CR>

" Splits vertically and create a Bash shell
nnoremap <F3> :vs<CR>:ConqueTerm /bin/bash<CR>

" Deletes current buffer
nnoremap <F4> :bd<CR>

" Changes current working directory to the directory of current editing file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" For detecting trailing whitespace
highlight default link TrailingWhitespace Error
augroup filetypedetect
    autocmd WinEnter,BufNewFile,BufRead * match TrailingWhitespace /\s\+$/
augroup END
autocmd InsertEnter * match none
autocmd InsertLeave * match TrailingWhitespace /\s\+$/

set colorcolumn=81
