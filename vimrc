set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'scrooloose/syntastic'	"Syntax checking hacks for vim
Plugin 'myint/syntastic-extras'	"Additional Syntastic syntax checkers and features (for Vim).
Plugin 'tpope/vim-fugitive'	    "fugitive.vim: a Git wrapper so awesome
Plugin 'tommcdo/vim-fubitive' 	"Add Bitbucket URL support to fugitive.vim's :Gbrowse command
Plugin 'joonty/phpqa'		    "PHP QA tools for Vim http://www.joncairns.com
Plugin 'scrooloose/nerdtree'	"A tree explorer plugin for vim
Plugin 'jistr/vim-nerdtree-tabs'    "NERDTree and tabs together in Vim, painlessly
Plugin 'kien/ctrlp.vim'		    "Fuzzy file, buffer, mru, tag, etc finder. http://kien.github.com/ctrlp.vim
Plugin 'bling/vim-airline'	    "lean & mean status/tabline for vim that's light as air
Plugin 'majutsushi/tagbar'	    "Vim plugin that displays tags in a window, ordered by scope http://majutsushi.github.com/tagbar/
Plugin 'xolox/vim-misc'		    "Miscellaneous auto-load Vim scripts http://peterodding.com/code/vim/misc/
Plugin 'xolox/vim-easytags'	    "Automated tag file generation and syntax highlighting of tags http://peterodding.com/code/vim/easytags/
Plugin 'Shougo/neocomplete.vim'	"Next generation completion framework after neocomplcache
Plugin 'vim-php/phpctags'       "An enhanced ctags compatible index generator written in pure PHP

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'Xdebug'
Plugin 'phpcomplete.vim'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins config
""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd QuickFixCmdPost *grep* cwindow

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic extra config
let g:syntastic_javascript_checkers = ['json_tool']
let g:syntastic_gitcommit_checkers = ['language_check']
let g:syntastic_svn_checkers = ['language_check']
let g:syntastic_python_checkers = ['pyflakes_with_warnings']

" Nerdtree config
map <C-n> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" NerdtreeTabs config
let g:nerdtree_tabs_open_on_console_startup = 1

" CtrlP config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Vim airline config
let g:airline#extensions#tabline#enabled = 1

" Tagbar config
nmap <F8> :TagbarToggle<CR>

" Neocomplete config
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" phpctags config
let g:tagbar_phpctags_bin='/home/jorel/bin/phpctags-0.5.1/'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=700     " Sets how many lines of history VIM has to remember
set autoread        " Set to auto read when a file is changed from the outside

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


