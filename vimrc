""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Manager vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the 'gutter' (sign column)

Plug 'docker/docker' , {'rtp': '/contrib/syntax/vim/'} " Docker sintax support

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } "A tree explorer plugin for vim

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins config
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

" Nerdtree config
map <C-n> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" NerdtreeTabs config
let g:nerdtree_tabs_open_on_console_startup = 1

" FZF
map <C-f> :Files<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=1000     " Sets how many lines of history VIM has to remember
set autoread        " Set to auto read when a file is changed from the outside
set t_Co=256

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<CR>  " Fast saving

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set so=5            " Set 5 lines to the cursor - when moving vertically using j/k
set ruler           " Always show current position
set cmdheight=2     " Height of the command bar
set hid             " A buffer becomes hidden when it is abandoned
set number
" set background=light

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase          " Ignore case when searching
set smartcase           " When searching try to be smart about cases 
set hlsearch            " Highlight search results
set incsearch           " Makes search act like search in modern browsers
set lazyredraw          " Don't redraw while executing macros (good performance config)
set magic               " For regular expressions turn magic on
set showmatch           " Show matching brackets when text indicator is over them
set mat=2               " How many tenths of a second to blink when matching brackets
set noerrorbells        " No annoying sound on errors
set encoding=utf8       " Set utf8 as standard encoding and en_US as the standard language
set ffs=unix,dos,mac    " Use Unix as the standard file type

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab       " Use spaces instead of tabs
set smarttab        " Be smart when using tabs ;)
set shiftwidth=4    " 1 tab == 4 spaces
set tabstop=4
set lbr             " Linebreak on 500 characters
set tw=500
set ai              "Auto indent
set si              "Smart indent
set wrap            "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><CR> is pressed
map <silent> <leader><CR> :noh<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \   exe "normal! g`\"" |
   \ endif

" Remember info about open buffers on close
set viminfo^=%

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <Leader>m mmHmt:%s/<C-V><CR>//ge<CR>'tzt'm      " Remove the Windows ^M - when the encodings gets messed up

