set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'airblade/vim-gitgutter'
Bundle 'JCLiang/vim-cscope-utils'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
" vim-script repos
Bundle 'delimitMate.vim'
Bundle 'cscope_macros.vim'

filetype plugin indent on     " required!

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

" Splits vertically and create a Bash shell.
nnoremap <F3> :vs<CR>:ConqueTerm /bin/bash<CR>

" Deletes current buffer.
nnoremap <F4> :bd<CR>

" Changes current working directory to the directory of current editing file.
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" For detecting trailing whitespace.
highlight default link TrailingWhitespace Error
augroup filetypedetect
    autocmd WinEnter,BufNewFile,BufRead * match TrailingWhitespace /\s\+$/
augroup END
autocmd InsertEnter * match none
autocmd InsertLeave * match TrailingWhitespace /\s\+$/

" Draw a line at column 81.
set colorcolumn=81

" Hotkey mapping for YCM definiton/declaration lookup.
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" Syntastic settings.
"let g:syntastic_python_checkers=['pylint_google']

" Space/Tab indentation switching.
let g:space_indent = 1
function! SwitchIndentMethod(space_indent)
  if a:space_indent == -1
    let g:space_indent = !g:space_indent
  elseif a:space_indent == 1 || a:space_indent == 0
    let g:space_indent = a:space_indent
  else
    echo "Invalid a:space_indent value: " . a:space_indent
    return -1
  endif

  if g:space_indent
    set softtabstop=2
    set expandtab
    echo "Indent method set to space."
  else
    set softtabstop=0
    set noexpandtab
    echo "Indent method set to tab."
  endif
endfunction
map <leader>sis :call SwitchIndentMethod(1)<CR>
map <leader>sit :call SwitchIndentMethod(0)<CR>
