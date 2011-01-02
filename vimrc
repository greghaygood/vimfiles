
let mapleader = ","

"call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
silent! call pathogen#runtime_append_all_bundles()

set nocompatible
syntax on

filetype on
filetype plugin on
filetype plugin indent on

colorscheme vividchalk

set tabstop=2 "2 space tab
set smarttab "Uses shiftwidth instead of tabstop at start of lines
set shiftwidth=2 "Spaces to indent when using > and <
set autoindent "Copy indent from current line when staring a new line
set ruler "Show the line and column number of the cursor position
set expandtab "Expand tab character to spaces
set backspace=indent,eol,start
set noerrorbells  " No noise.
set nu!
set showcmd "display incomplete commands
set showmode "display the mode i'm in
set ignorecase "case-insensitive searching
set smartcase " but case sensitive if search starts with a capital letter
set incsearch "highlight searches as you type
set hlsearch "Highlight all search matches
set scrolloff=3 " show 3 lines of context around the cursor
set title "set the terminal's title

set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
" set list
" Show $ at end of line and trailing space as ~
" set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set laststatus=2  " Always show status line.
" Useful status information at bottom of screen
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(%l,%c-%v\ %)%P


" Allows me to do ,nt to open up NerdTree
map <leader>nt :NERDTree <CR>
" Allows me to do ,ntc to close NerdTree
map <leader>ntc :NERDTreeClose <CR>
map <leader>ntf :NERDTreeFind <CR>

map <leader>f :buffers<CR>:buffer<Space>
map <leader>w :wincmd<Space>

" Tab mappings.
map <leader>Tt :tabnew<cr>
map <leader>Te :tabedit
map <leader>Tc :tabclose<cr>
map <leader>To :tabonly<cr>
map <leader>Tn :tabnext<cr>
map <leader>Tp :tabprevious<cr>
map <leader>Tf :tabfirst<cr>
map <leader>Tl :tablast<cr>
map <leader>Tm :tabmove

"map <leader>t :FuzzyFinderTextMate<CR>


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

au FileType ruby setlocal foldmethod=syntax
au FileType css setlocal foldmethod=indent shiftwidth=2 tabstop=2

autocmd BufNewFile,BufRead *_spec.rb compiler rspec

au FileType ruby colorscheme vividchalk


let g:ragtag_global_maps = 1 
