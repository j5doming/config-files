""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"               General
"               VIM Interface
"               Colors
"               Undo/Backup/SWP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
 
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
set nocompatible                        " Vi compatibility!
set history=1000                        " Set how many lines of history
                                        " VIM has to remember
filetype plugin on                      " Enable filetype plugin
set autoread                            " Set auto read when a file is changed
let mapleader=","                       " Extra key combination
nmap <leader>w :w!<cr>                  " Fast saving
set fileformats=unix,dos,mac            " Open files from mac/dos
set exrc                                " Enable per-directory .vimrc files
set secure                              " Disable unsafe commands in .vimrc
syntax on                               " Enable syntax
map <C-J> :next <CR>                    " Switch between files using ctrl + l
map <C-K> :prev <CR>                    " Switch between files using ctrl + h
 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 VIM Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
 
 
set wildmenu                            " Turn on wild menu
set wildignore=*.o,*~,*.pyc             " Ignored compiled files
set wildmode=list:longest,full          " Auto-completes longest common command
set ruler                               " Always show current position
set showcmd                             " Shows what command you are typing
set cmdheight=2                         " Height of the command bar
if has('mouse')
    :set mouse=a                             " Enable mouse usage
endif
set modeline                            " Show what I'm doing
set backspace=eol,start,indent          " Allow backpaces
set ignorecase                          " Ignore case when searching
set hlsearch                            " Highlight search results
set showmatch                           " Display matching brackets
set mat=2                               " Blink when matching brackets
set noerrorbells                        " Turn off error bell sounds
set novisualbell                        " Turn off bell sounds
set t_vb=                               " Disable beeping
set tm=500                              " Disable annoying sounds
set hidden                              " Don't unload buffer
set autoindent                          " Autoindent on
set nojoinspaces                        " Don't add random white space
set scrolloff=10                        " 10 lines above and below cursor
" set tw=80                               " Text width is 80
set bs=2                                " Fix backspacing in insert mode
set smartindent                         " Enable smart indent
set ruler

set number                              " Line numbers
set cursorline
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set splitright                          " vsplit to the right instead of left
set splitbelow

" status line
set laststatus=2                        " always show status line
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
 
 
colorscheme delek
 
 
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Undo/Backup/SWP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undofile                            " Undo's file
set undodir=$HOME/.vim/undo             " Need a direcoty in home./vim called undo
set undolevels=1000                     " Maximum number of changes
set undoreload=10000                    " Maximum number lines to save for undo
set noswapfile                          " No swap file
