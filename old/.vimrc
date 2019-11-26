set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins
"Plugin 'tpope/vim-fugitive'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'L9'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'scrooloose/syntastic'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"plugin options
let g:airline#extensions#tabline#enabled = 1


" General {
    
    set background=dark " Assume a dark background

    filetype plugin indent on   "indent based on filetype specification
    syntax enable
    set mouse=a
    set mousehide
    scriptencoding utf-8
    
    set wildmenu    " autocomplete feature

    set lazyredraw    " don't constantly redraw

    set showmatch   " highlight matching brackets
    set incsearch   " search as characters are entered
    set hlsearch    " highlight matches
    nnoremap <leader><space> :nohlsearch<CR>    " keep search highlights

    set virtualedit=onemore

    

        " folding {
        set foldenable " enable folding
        set foldlevelstart=10
        set foldnestmax=10 " 10 nested fold max
        set foldmethod=indent " fold based on indentation
        " }
    " }
" Vim UI {
    
    set t_Co=256
    let g:jellybeans_termcolors=256
    "let g:jellybeans_termtrans=1
    "let g:jellybeans_contrast="normal"
    "let g:jellybeans_visibility="normal"
    colorscheme jellybeans
    
    set tabpagemax=15
    set showmode
    
    set cursorline
    
    
    if has('cmdline_info')
        set ruler
        "set ruler format=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
        set showcmd
    endif
    
    if has('statusline')
        set laststatus=2
        
        set statusline=%<%f\                     " Filename
        set statusline+=%w%h%m%r                 " Options
        set statusline+=\ [%{&ff}/%Y]            " Filetype
        set statusline+=\ [%{getcwd()}]          " Current dir
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    endif
    
    
    set backspace=indent,eol,start
    set linespace=0
    set number
    set showmatch
    set incsearch
    set hlsearch
    set ignorecase
    set smartcase
    set wildmenu
    set scrolloff=3
    set foldenable
    
" }

" Formatting {
    
    set nowrap
    set autoindent
    set shiftwidth=4
    set expandtab
    set tabstop=4
    set softtabstop=4
    set splitright
    set splitbelow
    
" }

" Key remaps {
    
    let mapleader = ',' " map leader instead of '\'
    
" }

" Plugins {

    " SnipMate {
        "let :snips_author = 'Cedric Simal <cedric.simal@gmail.com>'
    " }
    
    " Vim Airline {
        if isdirectory(expand("~/.vim/bundle/vim-airline-themes/"))
            if !exists('g:airline_theme')
                let g:airline_theme = 'jellybeans'
            endif
            if !exists('g:airline_powerline_fonts')
                let g:airline_left_sep='›'  " Slightly fancier than '>'
                let g:airline_right_sep='‹' " Slightly fancier than '<'
            endif
        endif
    " }
     
