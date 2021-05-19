call plug#begin('~/.config/nvim/plugged')
  Plug 'w0rp/ale'
  Plug 'vim-syntastic/syntastic'
  Plug 'altercation/vim-colors-solarized'
  Plug 'Lokaltog/vim-powerline'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
call plug#end()

filetype plugin indent on

inoremap jk <ESC>
inoremap kj <ESC>

let g:indieweb_micropub_endpoint='https://angelogladding.com/pub'
let g:indieweb_access_token='abc123'

let g:limelight_conceal_ctermfg = 'green'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

let g:syntastic_auto_loc_list=1
let g:syntastic_python_checkers=['flake8']
let g:syntastic_check_on_open=1

syntax enable

let g:Powerline_symbols = 'fancy'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" autocmd FileType python PyCoverageHighlight
" autocmd FileType python PyCoverageSetQuickfix
" autocmd FileType python PyCoverageSetLoclist
" hi PyCoverageMissed gui=undercurl guisp=Green

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let &statusline='%F%m%r%h%w [FORMAT=%{&ff}] [ENC=%{&fileencoding}] [TYPE=%Y] [ASCII=\%03.3b] [HEX=\%02.2B] [POS=%04l,%04v][%p%%] [LEN=%L] %= [WORKON=%{pythonworkon}]'

set mouse=a
set nocompatible
set modelines=0
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set relativenumber
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

set foldmethod=indent
set foldlevel=9

set encoding=utf-8
set scrolloff=4
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
" set showtabline=2 " Always display the tabline, even if there is only one tab
" set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set undofile
set noswapfile

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set background=dark
" " set background=light
" set t_Co=256
" if !has('gui_running')
"   set t_Co=16
"   let g:solarized_termcolors=&t_Co
"   let g:solarized_termtrans=1
" endif
" 
" let g:solarized_visibility = "low"
colorscheme solarized
call togglebg#map("<F5>")
" set list
set listchars=tab:▸\ ,eol:¬

let mapleader=","

" command! -nargs=1 WriteThenSilent
" \ | execute ':w'
" \ | execute ':silent !'.<q-args>
" \ | execute ':redraw!'
" nnoremap <leader>m :WriteThenSilent make docs<CR>

nnoremap <leader><space> :noh<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>s :mksession!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>r :silent !~/.poetry/bin/poetry version prerelease<CR>
nnoremap <leader>sq :qa<CR>
nnoremap <leader>e :ll<CR>
nnoremap <leader>- <C-w>_
" nnoremap <leader>r :silent !curl http://localhost:9000/index.html?processname=interface\%3Aapplication&action=restart<CR><C-l>
" nnoremap <leader>r :silent !kill -hup `cat /gunicorn.pid`<CR><C-l>
" nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
" nnoremap <leader>f :QFix<CR>
" nnoremap <leader>g :GundoToggle<CR>
" nnoremap <leader>m :MakeGreen<CR>
" nnoremap <leader>g :Pytest project<CR>
map <leader>x <Plug>TaskList
" nnoremap <leader>ch :PyCoverageHighlight<CR>
" nnoremap <leader>cc :PyCoverageClear<CR>
" nnoremap <leader>cq :PyCoverageSetQuickfix<CR>
" nnoremap <leader>cl :PyCoverageSetLoclist<CR>

nnoremap ; :

nnoremap <space> za

nnoremap <tab> %
vnoremap <tab> %

nnoremap / /\v
vnoremap / /\v

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

nnoremap <C-h> <C-w>h <C-w>_
nnoremap <C-j> <C-w>j <C-w>_
nnoremap <C-k> <C-w>k <C-w>_
nnoremap <C-l> <C-w>l <C-w>_
nnoremap j gj
nnoremap k gk
inoremap jk <ESC>
inoremap kj <ESC>

noremap <A-j> :m+<CR>
noremap <A-k> :m-2<CR>
inoremap <A-j> <Esc>:m+<CR>
inoremap <A-k> <Esc>:m-2<CR>
vnoremap <A-j> :m'>+<CR>gv
vnoremap <A-k> :m-2<CR>gv

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nmap <Left> <<
nmap <Right> >>

vmap <Left> <gv
vmap <Right> >gv


" let g:Powerline_symbols = 'fancy'
" set encoding=utf-8
" set t_Co=256
" " set fillchars+=stl: ,stlnc:
" let g:Powerline_mode_V="V·LINE"
" let g:Powerline_mode_cv="V·BLOCK"
" let g:Powerline_mode_S="S·LINE"
" let g:Powerline_mode_cs="S·BLOCK"
" 
" set guifont=Liberation_Mono_for_Powerline:h10
" 
" " set guifont=Liberation Mono for Powerline 10
" 
" let g:airline_powerline_fonts = 1
" 
" let g:Powerline_symbols = 'fancy'
