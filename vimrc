                                             
let mapleader = ","

call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))

set nocompatible
syntax on

filetype on
filetype plugin on
filetype plugin indent on

set tabstop=2 "2 space tab
set smarttab "Uses shiftwidth instead of tabstop at start of lines
set shiftwidth=2 "Spaces to indent when using > and <
set autoindent "Copy indent from current line when staring a new line
set ruler "Show the line and column number of the cursor position
set expandtab "Expand tab character to spaces
set backspace=start,indent
set hlsearch "Highlight all search matches
set noerrorbells  " No noise.
set nu!

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
" set list
" Show $ at end of line and trailing space as ~
" set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set laststatus=2  " Always show status line.

" Allows me to do ,nt to open up NerdTree
map <leader>nt :NERDTree <CR>
" Allows me to do ,ntc to close NerdTree
map <leader>ntc :NERDTreeClose <CR>
map <leader>ntf :NERDTreeFind <CR>

"map <leader>t :FuzzyFinderTextMate<CR>

map <leader>b :buffers<CR>:buffer<Space>

"set ofu=syntaxcomplete#Complete
" Turn on language specific omnifuncs
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
"autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1

au BufNewFile,BufRead *.ru set filetype=ruby
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead *.ruhl set filetype=html
au BufNewFile,BufRead *.less set filetype=css

au FileType ruby colorscheme vividchalk

call pathogen#runtime_append_all_bundles()

let g:ragtag_global_maps = 1 
