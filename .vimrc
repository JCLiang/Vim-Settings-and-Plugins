call pathogen#infect()
call pathogen#helptags()

set tabstop=2
set shiftwidth=2
set expandtab
set linebreak
set nu
set hlsearch
set incsearch
set nobackup
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

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"

" Trinity settings

" Open and close all the three plugins on the same time
nmap <F8>   :TrinityToggleAll<CR>

" Open and close the srcexpl.vim separately
nmap <F5>   :TrinityToggleSourceExplorer<CR>

" Open and close the taglist.vim separately
nmap <F6>  :TrinityToggleTagList<CR>

" Open and close the NERD_tree.vim separately
nmap <F7>  :TrinityToggleNERDTree<CR>

" For detecting trailing whitespace
highlight default link TrailingWhitespace Error
augroup filetypedetect
    autocmd WinEnter,BufNewFile,BufRead * match TrailingWhitespace /\s\+$/
augroup END
autocmd InsertEnter * match none
autocmd InsertLeave * match TrailingWhitespace /\s\+$/

set colorcolumn=81
