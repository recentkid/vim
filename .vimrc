"
" First VimRC version.
" This is just a try out vimrc file.
"
" Maintainer: Jaebin Lee    
" Last change:  2014 Apr 17
"
" To use it, copy it to
"       for Unix and OS/2:  ~/.vimrc
"       for Amiga:  s:.vimrc
"       for MS-DOS and Win32:  $VIM\_vimrc
"       for OpenVMS:  sys$login:.vimrc

set nocompatible    " no compatiblity with vi

execute pathogen#infect()

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" BACKGROUND SETTINGS "
syntax on
set background=dark
colorscheme murphy
set visualbell

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" System Settings
set encoding=utf-8  " by default set the encoding to UTF-8
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=1000    " keeps more history
set confirm         " get a dialog when :q, :w, or :wq fails
set mouse=a         " enable the mouse

if has("vms")
set nobackup        " do not keep a backup file, use versions instead
else
  set backup        " keep a backup file
endif

set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set wildmenu        " show command line completions

set ignorecase      " ignore case in (search) patterns
set incsearch       " do incremental searching
set hlsearch        " highlight search term
set showmatch       " show matching bracket (briefly jump)
set matchpairs+=<:> " specially for html
set wrapscan        " wraps the scan


set autoread        " automatically load the configuration upon change
set autoindent      " always set autoindenting on
set autowrite       " write the modified file when swtiching to another file

set nowrap          " don't automatically wrap on load
set fo-=t           " don't automatically wrap text when typing
set cursorline      " highlight the current line
set cursorcolumn    " highlight the current column
set number          " show the line number
set laststatus=2    " use 2 lines for the status bar
set title           " show file in titlebar
set tw=79           " width of document
set colorcolumn=80

set tabstop=4       " number of spaces that a tab counts for
set shiftwidth=4   " number of spaces to use for each step of indent
set softtabstop=4   " number of spaces that a tab counts for while editing
"set shiftround         " round the indent to a multiple of shiftwidth
set expandtab       " expand tabs to spaces

set list            " show hidden characters
set listchars=tab:▸\ ,eol:¬  "

set pastetoggle=<F2>    " mass paste mode

" Rebind <Leader> key
let mapleader = ","

inoremap jk <ESC>   " fast escape from Insert Mode

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

noremap <Leader>w : write<CR>   " Write
noremap <Leader>W : wa!<CR>   " Write all windows

" Quick quit command
noremap <Leader>q : quit<CR>    " Quit current window
noremap <Leader>Q : qa!<CR>     " Quit all windows

" easier moving of code blocks
vnoremap < <gv      " better indentation
vnoremap > >gv      " better indentation

" toggle highlight search
map <F12> <ESC>:set hls!<CR>
imap <F12> <ESC>:set hls!<CR>a
vmap <F12> <ESC>:set hls!<CR>gv

" execute "set colorcolumn=" . join(range(81,335), ',')

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

