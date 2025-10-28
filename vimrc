" ============================================================================
" VIM CONFIGURATION - Optimizada con plugins populares
" ============================================================================

" CONFIGURACI�N B�SICA
" ============================================================================
set nocompatible              " Desactivar compatibilidad con vi
filetype off                  " Requerido para vim-plug

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Numeraci�n de l�neas
set number                    " N�meros de l�nea
set relativenumber            " N�meros relativos
set ruler                     " Mostrar posici�n del cursor

" Indentaci�n
set autoindent                " Auto-indentaci�n
set smartindent               " Indentaci�n inteligente
set tabstop=4                 " Tama�o del tab
set shiftwidth=4              " Espacios para auto-indent
set expandtab                 " Convertir tabs a espacios
set smarttab                  " Inserci�n inteligente de tabs

" B�squeda
set hlsearch                  " Resaltar b�squedas
set incsearch                 " B�squeda incremental
set ignorecase                " Ignorar may�sculas en b�squeda
set smartcase                 " May�sculas si hay may�sculas en b�squeda

" UI/UX
set showcmd                   " Mostrar comandos
set showmatch                 " Mostrar par�ntesis coincidentes
set wildmenu                  " Autocompletado de comandos mejorado
set wildmode=longest:full,full
set laststatus=2              " Siempre mostrar barra de estado
set cursorline                " Resaltar l�nea actual
set scrolloff=8               " Mantener 8 l�neas visibles al scroll
set mouse=                    " Mouse desactivado (Vim tradicional)
set termguicolors             " Colores verdaderos en terminal

" Rendimiento
set lazyredraw                " No redibujar durante macros
set updatetime=300            " Tiempo de actualizaci�n m�s r�pido
set timeoutlen=500            " Tiempo de espera para mapeos

" Archivos y respaldos
set nobackup                  " No crear archivos de respaldo
set nowritebackup
set noswapfile                " No crear archivos swap
set hidden                    " Permitir buffers ocultos sin guardar

" Split windows
set splitbelow                " Split horizontal abajo
set splitright                " Split vertical a la derecha

" Portapapeles del sistema
set clipboard=unnamed         " Usar portapapeles del sistema

" ============================================================================
" PLUGINS - vim-plug
" ============================================================================
call plug#begin('~/.vim/plugged')

" --- Apariencia y UI ---
Plug 'vim-airline/vim-airline'              " Barra de estado mejorada
Plug 'vim-airline/vim-airline-themes'       " Temas para airline
Plug 'morhetz/gruvbox'                      " Tema de colores popular
Plug 'preservim/nerdtree'                   " Explorador de archivos
Plug 'ryanoasis/vim-devicons'               " Iconos para archivos
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Colores en NERDTree

" --- Navegaci�n y b�squeda ---
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Buscador fuzzy
Plug 'junegunn/fzf.vim'                     " Integraci�n FZF con Vim
Plug 'preservim/tagbar'                     " Navegador de tags/funciones
Plug 'easymotion/vim-easymotion'            " Movimiento r�pido

" --- Git ---
Plug 'tpope/vim-fugitive'                   " Integraci�n con Git
Plug 'airblade/vim-gitgutter'               " Mostrar cambios de git

" --- Edici�n ---
Plug 'tpope/vim-surround'                   " Manipular par�ntesis/comillas
Plug 'tpope/vim-commentary'                 " Comentar c�digo f�cilmente
Plug 'jiangmiao/auto-pairs'                 " Auto cerrar par�ntesis
" Plug 'terryma/vim-multiple-cursors'         " M�ltiples cursores
Plug 'vim-scripts/indentpython.vim'         " Mejor indentaci�n Python

" --- Autocompletado y LSP ---
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Autocompletado inteligente

" --- Snippets ---
Plug 'honza/vim-snippets'                   " Colecci�n de snippets

" --- Linting y formateo ---
Plug 'dense-analysis/ale'                   " Linting as�ncrono

" --- Lenguajes ---
Plug 'pangloss/vim-javascript'              " JavaScript mejorado
Plug 'maxmellon/vim-jsx-pretty'             " JSX/React
Plug 'leafgarland/typescript-vim'           " TypeScript
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go
Plug 'rust-lang/rust.vim'                   " Rust
Plug 'vim-python/python-syntax'             " Python mejorado

" --- Utilidades ---
Plug 'mbbill/undotree'                      " Visualizar �rbol de deshacer
Plug 'tpope/vim-repeat'                     " Repetir comandos de plugins
Plug 'christoomey/vim-tmux-navigator'       " Navegaci�n Vim-Tmux

call plug#end()

" Activar detección de tipo de archivo y plugins
filetype plugin indent on
syntax enable

" ============================================================================
" CONFIGURACI�N DE PLUGINS
" ============================================================================

" --- Tema de colores ---
" Activar solo si el tema existe
set background=dark
silent! colorscheme gruvbox

" --- Airline ---
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#coc#enabled = 1

" --- NERDTree ---
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeIgnore=['\.git$', '\.DS_Store$', 'node_modules']
let g:NERDTreeDirArrowExpandable = '�'
let g:NERDTreeDirArrowCollapsible = '�'

" --- FZF ---
let g:fzf_layout = { 'down': '40%' }
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

" --- ALE (Linting) ---
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8', 'pylint'],
\   'go': ['gopls'],
\   'rust': ['analyzer'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'python': ['black', 'isort'],
\   'go': ['gofmt'],
\   'rust': ['rustfmt'],
\}
let g:ale_fix_on_save = 1

" --- GitGutter ---
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
set signcolumn=yes

" --- Python syntax ---
let g:python_highlight_all = 1

" --- CoC (Autocompletado) ---
" Usar Tab para navegar por el autocompletado
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Enter para confirmar completado
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Usar <c-space> para activar completado
inoremap <silent><expr> <c-space> coc#refresh()

" GoTo navegaci�n con CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Mostrar documentaci�n con K
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Renombrar s�mbolo
nmap <leader>rn <Plug>(coc-rename)

" ============================================================================
" MAPEOS DE TECLADO
" ============================================================================

" Leader key
let mapleader = " "
let maplocalleader = ","

" --- General ---
" Guardar r�pido
nnoremap <leader>w :w<CR>
" Salir
nnoremap <leader>q :q<CR>
" Guardar y salir
nnoremap <leader>x :wq<CR>
" Limpiar b�squeda
nnoremap <leader>h :nohlsearch<CR>

" --- Navegaci�n de ventanas ---
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" --- Buffers ---
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bl :buffers<CR>

" --- Tabs ---
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>

" --- NERDTree ---
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" --- FZF ---
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>fc :Commits<CR>

" --- Tagbar ---
nnoremap <F8> :TagbarToggle<CR>

" --- Undotree ---
nnoremap <leader>u :UndotreeToggle<CR>

" --- Git (Fugitive) ---
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gl :Git log<CR>
nnoremap <leader>gd :Gdiff<CR>

" --- GitGutter ---
nnoremap <leader>hp :GitGutterPreviewHunk<CR>
nnoremap <leader>hs :GitGutterStageHunk<CR>
nnoremap <leader>hu :GitGutterUndoHunk<CR>

" --- EasyMotion ---
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>s <Plug>(easymotion-s)

" --- Mover l�neas arriba/abajo ---
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" --- Mantener selecci�n al indentar ---
vnoremap < <gv
vnoremap > >gv

" ============================================================================
" AUTOCOMANDOS
" ============================================================================

" Restaurar posici�n del cursor al abrir archivo
augroup RestoreCursor
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END

" Resaltar al copiar (yank)
augroup HighlightYank
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup END

" Quitar espacios en blanco al final al guardar
augroup TrimWhitespace
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
augroup END

" Configuraciones espec�ficas por tipo de archivo
augroup FileTypeSettings
  autocmd!
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
  autocmd FileType javascript,typescript,json,html,css setlocal tabstop=2 shiftwidth=2 expandtab
  autocmd FileType go setlocal tabstop=4 shiftwidth=4 noexpandtab
  autocmd FileType markdown setlocal wrap linebreak
augroup END

" ============================================================================
" FIN DE CONFIGURACI�N
" ============================================================================
