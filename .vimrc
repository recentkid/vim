
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
"
set nocompatible    " no compatiblity with vi
set t_Co=256
execute pathogen#infect()

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" BACKGROUND SETTINGS "
syntax on
set background=dark
"colorscheme murphy
colorscheme seoul256
"colorscheme mango
let g:seoul256_background=233
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

"if has("vms")
set nobackup        " do not keep a backup file, use versions instead
"else
"  set backup        " keep a backup file
"endif
"
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set wildmenu        " show command line completions

"
" ====== PYTHON PLUGINS =====================================
"
" Do not search these patterns. (Used by CtrlP)
" https://github.com/kien/ctrlp.vim.git

"let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
"      \ --ignore .git
"      \ --ignore .svn
"      \ --ignore .hg
"      \ --ignore .DS_Store
"      \ --ignore "**/*.pyc"
"      \ -g ""'
"
let g:ctrlp_max_height=30
"if exists("g:ctrl_user_command")
"  unlet g:ctrlp_user_command
"endif

let g:ctrlp_custom_ignore = {
  \ 'dir':  'duck$\|comics$\|Nobu13$\|music$\|movie$\|AMD$\|Config.Msi$\|MSOCache$\|Program\ Files (x86)$\|Program\ Files$\|Netmarble$\|ProgramData$\|Windows$\|\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(pdf|avi|wmv|mkv|rar|exe|so|dll|hxn|nfo|srt|wav|a|swp|iso|smi|class|jar|pyc|gif|jpg|JPG|mp3|mp4|zip|rtf|ppt|tmp|msi|MSI|lbf|rtf|blf|png|bmp|spr|djvu|admx|backup|xls|xlsx)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"set wildignore+=*\\vendor\\**
"set wildignore+=*\\tmp\\*,*.so,*.swp,*.zip,*.pdf,*.jpg,*.png,*.gif,*.mp3,*.mp4
"set wildignore+=*.avi,*.wmv,*.mkv,*.rar,*.iso,*.smi,*.class,*.jar,*.dll,*.pyc
"
" Setting for mini buffer explorer.
" https://github.com/fholgado/minibufexpl.vim.git
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Setting for Python-mode
" https://github.com/klen/python-mode.git

" Setting for airline
" https://github.com/Lokaltog/powerline.git
"let g:airline#extensions#tabline#enabled = 1

" Setting for pathogen 
" https://github.com/tpope/vim-pathogen.git" 
"
" ====== PYTHON PLUGINS END ==================================

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
set ch=2            " need to COMMENT HERE.
set title           " show file in titlebar
set tw=79           " width of document
set colorcolumn=80
set lazyredraw      " vim-airline auto initialization

set tabstop=4       " number of spaces that a tab counts for
set shiftwidth=4    " number of spaces to use for each step of indent
set softtabstop=4   " number of spaces that a tab counts for while editing
"set shiftround         " round the indent to a multiple of shiftwidth
set expandtab       " expand tabs to spaces
set foldmethod=indent " fold on indentation
set foldnestmax=0   " method of classes are folded, not any deeper.
set list            " show hidden characters
set listchars=tab:▸\ ,eol:¬ 

set pastetoggle=<F2>    " mass paste mode

"set equalalways 

" Rebind <Leader> key
let mapleader = ","

inoremap jk <ESC>   " fast escape from Insert Mode

" Disable the arrow key mappings to not use them
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"
"
" Some attempt to map c-backspace to c-w, but failed.
"imap <C-CR> <C-W>
":inoremap <C-BS> <C-W>
"inoremap ^? ^H



" Quicksave command
noremap <C-S> :w<CR>
vnoremap <C-S> <C-C>:w<CR>
inoremap <C-S> <C-O>:w<CR>

map <C-Q> :quit<CR>

" This might need to be remapped
noremap <Leader>w :write<CR>   " Write
noremap <Leader>W :wa!<CR>   " Write all windows

" Quick quit command
noremap <Leader>q :quit<CR>    " Quit current window
noremap <Leader>Q :qa!<CR>     " Quit all windows

" Easier moving between buffers
map <C-N> :bn<CR>
map <C-M> :bp<CR>
"map <leader>d :bd<CR>
nmap <leader>d :bprevious<CR>:bdelete #<CR>

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" bind Ctrl+<left/right> keys to switch tabs.
map <C-Left> :tabprev<CR>
map <C-Right> :tabnext<CR>
map <C-T> :tabnew<CR>

" bind Ctrl+<movement> keys to move around the windows.
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" split window shortcut
nnoremap <Leader>s <C-W>v<C-W>l
nnoremap <Leader>h <C-W>s<C-W>l

" folding shortcuts

" easier moving of code blocks
vnoremap < <gv      " better indentation
vnoremap > >gv      " better indentation

" toggle highlight search
map <F12> <ESC>:set hls!<CR>
imap <F12> <ESC>:set hls!<CR>a
vmap <F12> <ESC>:set hls!<CR>gv

" NerdTree toggle
map <C-E> :NERDTreeToggle<CR>

" Mapping the enter key to insert line.
"map <S-CR> :call append(line('.')-1, '')<Esc>
nmap <CR> o<Esc>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

