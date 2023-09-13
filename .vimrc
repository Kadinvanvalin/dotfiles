set hidden " allows you to switch buffers without a prompt to save


syntax on               " enable syntax highlighting
set cursorline          " highlight the current line
" set background=dark   " darker color scheme
" set ruler             " show line number in bar
set nobackup            " don't create pointless backup files; Use VCS instead
set autoread            " watch for file changes
set number              " show line numbers
set showcmd             " show selection metadata
set noshowmode            " show INSERT, VISUAL, etc. mode
set showmatch           " show matching brackets
set autoindent smartindent  " auto/smart indent
set smarttab            " better backspace and tab functionality
set scrolloff=5         " show at least 5 lines above/below
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
set tabstop=2           " 2 spaces for tabs
set shiftwidth=2        " 2 spaces for indentation

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
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
" Plug 'gruvbox-community/gruvbox'
Plug 'jaredgorski/spacecamp'
Plug 'https://github.com/jremmen/vim-ripgrep.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'rust-lang/rust.vim'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/vim-utils/vim-man.git'
Plug 'https://github.com/mbbill/undotree.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'laher/fuzzymenu.vim'
Plug 'udalov/kotlin-vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()
" colorscheme gruvbox
colorscheme spacecamp
set background=dark
let NERDTreeShowHidden=1

:map <Space><Space> :Fzm<Enter>
:map <Bslash><C-h><Space><Bslash><C-h><Space> :FzmOps<Enter>
