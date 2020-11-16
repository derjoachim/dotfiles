" Joachims .vimrc
" Changelog:
" 3-12-2016: Solarized dark color scheme for terminal
" 8-3-2015: Better explanation of status line.

" type
source $VIMRUNTIME/mswin.vim
behave mswin

" automagische syntax hl (Vim7)
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins 

" Solarized color theme
if has('gui_running')
    set background=light
else
    set background=dark
    let g:solarized_termcolors=256
endif

colorscheme solarized

"------------------------------------------------------------------------------
"- OPTIONS. 
" Misc options
set nu		" Line Numbering
set lbr 	" Wrap by Word
set nobk    " no backup files
set shortmess=atI " prevent prompting for enter after messages as much as possible
set nostartofline " keep cursor in the same column when moving vertically?

" Tabbing 

"set textwidth=79  " lines longer than 79 columns will be broken
set formatoptions+=aw " Automatically formats paragraphs
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

"set pi      " preserve indentation
"set bs=2    " Allow backspacing over everything in insert mode
"set cin     " C-indenting
"set ai      " Autoindent
"set sw=4    " ShiftWidth
"set smarttab "Better indenting

" Status line
set statusline=%<%F " Start left, display current file name
set statusline+=%h " Help flag
set statusline+=%m " Modified flag
set statusline+=%r " Readonly flag
set statusline+=%=\[%B\] " Go to middle of line, display hex character number
set statusline+=\ %l" Line number
set statusline+=,%c%V\ \ " Column and virtual column number
set statusline+=\ %P " Percentage of file
set laststatus=2

"Get out of VI's compatible mode..
set nocompatible

" Searching
set incsearch "Find as you type
set ignorecase " ignore case
set smartcase " smart case
set hlsearch " highlighten
set	ffs=unix,mac " Standaard unix fileformaat
set mps+=<:> " matching pairs shown include html.
set sm       " show matching pairs
set shell=bash " voor shell-commando's 
set wildmenu
set wildmode=list:longest,full
set guifont=ProggyCleanTT\ 12

"20070728: disable irritating beeps
set vb t_vb=

:filetype plugin on

" Disable textwidth for html
autocmd bufreadpre *.html setlocal textwidth=0

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"Move a line of text using control
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Edit from O/S to O/S (or just comp to comp) (source: http://www.amix.dk/vim/vimrc.html)
"Fast reloading of the .vimrc
map <leader>s :source ~/.vimrc<cr>

"Fast editing of .vimrc
map <leader>e :e! ~/.vimrc<cr>

autocmd BufEnter * :syntax sync fromstart

" -----------------------------------------------------------------------------
" Abbreviations of commonly misspelt words
abbr documnet document

" where to put swapfiles?
set directory=$HOME
" what and where to store session info
set viminfo=%,'100,\"100,/100,:100,@100,n$HOME/.viminfo

" : and / history
set history=500

" Sync syntax automagically
autocmd BufEnter * :syntax sync fromstart

"When .vimrc is edited, reload it
autocmd! BufWritePost ~/.vimrc source ~/.vimrc
au BufRead /tmp/mutt-* set tw=72
