set hidden " allows you to switch buffers without a prompt to save

let mapleader=" "
syntax on               " enable syntax highlighting
set cursorline          " highlight the current line
" set background=dark   " darker color scheme
" set ruler             " show line number in bar
set nobackup            " don't create pointless backup files; Use VCS instead
set autoread            " watch for file changes
set number              " show line numbers
set showcmd             " show selection metadata
" set noshowmode            " show INSERT, VISUAL, etc. mode
set showmatch           " show matching brackets
set autoindent smartindent  " auto/smart indent
set smarttab            " better backspace and tab functionality
set scrolloff=8         " show at least 5 lines above/below
set encoding=UTF-8
filetype on             " enable filetype detection
filetype indent on      " enable filetype-specific indenting
filetype plugin on      " enable filetype-specific plugins
" colorscheme cobalt      " requires cobalt.vim to be in ~/.vim/colors
" column-width visual indication
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#001D2F

" tabs and indenting
set autoindent          " auto indenting
set smartindent         " smart indenting
set expandtab           " spaces instead of tabs
set tabstop=4           " 2 spaces for tabs
set shiftwidth=4        " 2 spaces for indentation

" bells
set noerrorbells        " turn off audio bell
set visualbell          " but leave on a visual bell

" search
set hlsearch            " highlighted search results
set showmatch           " show matching bracket

" clipboard
set clipboard=unnamed   " allow yy, etc. to interact with OS X clipboard


set nobackup
set undodir=~/.vim/undodir
set incsearch
set relativenumber
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set noswapfile
" colorscheme gruvbox
colorscheme spacecamp
set background=dark
let NERDTreeShowHidden=1

