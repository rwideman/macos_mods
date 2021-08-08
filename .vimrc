syntax enable
syntax on

colorscheme monokai

set background=dark
"set termguicolors
set t_Co=256
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
set encoding=utf-8
set textwidth=79
set shiftwidth=4
set expandtab
set wildmenu
set autoindent
filetype indent on
set foldmethod=indent                   " Enable folding
set foldlevel=99
set lazyredraw
set regexpengine=1
nnoremap <space> za                     " Enable folding with the spacebar

highlight BadWhitespace ctermbg=red guibg=red

" no temp or backup files
set noswapfile
set nobackup
set nowritebackup

" Python, PEP-008
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set textwidth=139
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/
au         BufNewFile *.py,*.pyw set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'

" JS
au BufRead,BufNewFile *.js set expandtab
au BufRead,BufNewFile *.js set tabstop=4
au BufRead,BufNewFile *.js set softtabstop=4
au BufRead,BufNewFile *.js set shiftwidth=4
au BufRead,BufNewFile *.js set autoindent
au BufRead,BufNewFile *.js match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.js match BadWhitespace /\s\+$/
au         BufNewFile *.js set fileformat=unix
au BufRead,BufNewFile *.js let b:comment_leader = '//'

" Makefile
au BufRead,BufNewFile Makefile* set noexpandtab

" XML
au BufRead,BufNewFile *.xml set expandtab
au BufRead,BufNewFile *.xml set tabstop=4
au BufRead,BufNewFile *.xml set softtabstop=4
au BufRead,BufNewFile *.xml set shiftwidth=4
au BufRead,BufNewFile *.xml set autoindent
au BufRead,BufNewFile *.xml match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.xml match BadWhitespace /\s\+$/
au         BufNewFile *.xml set fileformat=unix
au BufRead,BufNewFile *.xml let b:comment_leader = '<!--'

" HTML
au BufRead,BufNewFile *.html set filetype=xml
au BufRead,BufNewFile *.html set expandtab
au BufRead,BufNewFile *.html set tabstop=4
au BufRead,BufNewFile *.html set softtabstop=4
au BufRead,BufNewFile *.html set shiftwidth=4
au BufRead,BufNewFile *.html set autoindent
au BufRead,BufNewFile *.html match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.html match BadWhitespace /\s\+$/
au         BufNewFile *.html set fileformat=unix
au BufRead,BufNewFile *.html let b:comment_leader = '<!--'

"Load vimplug
call plug#begin()
    Plug 'crusoexia/vim-monokai'
    Plug 'godlygeek/tabular'
"    Plug 'honza/vim-snippets'
"    Plug 'irrationalistic/vim-tasks'
"    Plug 'jeetsukumaran/vim-pythonsense'
"    Plug 'jistr/vim-nerdtree-tabs'
"    Plug 'junegunn/fzf'
"    Plug 'junegunn/vim-easy-align'
"    Plug 'junegunn/vim-github-dashboard'
    Plug 'lukhio/vim-mapping-conflicts'
"    Plug 'mattn/emmet-vim'
    Plug 'plasticboy/vim-markdown'
"    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'SirVer/ultisnips'
    Plug 'terryma/vim-multiple-cursors'
"    Plug 'tmhedberg/SimpylFold'
"    Plug 'tpope/vim-commentary'
"    Plug 'tpope/vim-eunuch'
"    Plug 'tpope/vim-surround'
"    Plug 'Valloric/YouCompleteMe'
"    Plug 'vim-syntastic/syntastic'
"    Plug 'w0rp/ale'
call plug#end()
