set nocompatible              " be iMproved, required
set encoding=utf-8

packadd minpac
call minpac#init()

"Plugins
call minpac#add('k-takata/minpac', {'type':'opt'})
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-scriptease')
call minpac#add('tpope/vim-obsession')
call minpac#add('flazz/vim-colorschemes')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('MarcWeber/vim-addon-mw-utils')
call minpac#add('tomtom/tlib_vim')
call minpac#add('garbas/vim-snipmate')
call minpac#add('honza/vim-snippets')

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"


"plugin options
let g:airline#extensions#tabline#enabled = 1


" General {
    
    set background=dark " Assume a dark background

    filetype plugin indent on   "indent based on filetype specification
    syntax enable
    set mouse=a
    set mousehide
    scriptencoding utf-8
    
    

    set lazyredraw    " don't constantly redraw

    set wildmenu    " autocomplete feature
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
    set title
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
    nnoremap <C-p> :<C-u>FZF<CR>    
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
     
