call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'KurtPreston/vim-autoformat-rails'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'

" color scheme plugins
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'

call plug#end()

let NERDTreeShowHidden=1

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Javascript Prettier
autocmd FileType javascript set formatprg=prettier\ --stdin
autocmd BufWritePre *.js :normal gggqG " format on save
autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o> " restore cursor position on save (can be buggy)


set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

set laststatus=2
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically reread changed files without asking me anything
set autoindent

set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set mouse=a                     " Enable mouse mode

set noerrorbells             " No beeps
set number                   " Show line numbers
set showcmd                  " Show me what I'm typing

" color
syntax enable

" palenight colorscheme
set background=dark
colorscheme palenight
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1

" " one color scheme
" let g:airline_theme='one'
" colorscheme one
" set background=dark

"================================KEY MAPPING==========================
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>


nnoremap <A-j> :m .+1<CR>==
nnoremap º :m .+1<CR>==

nnoremap <A-k> :m .-2<CR>==
nnoremap ∆ :m .-2<CR>==

inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap º<Esc>:m .+1<CR>==gi

inoremap <A-k> <Esc>:m .-2<CR>==gi
inoremap ∆<Esc>:m .-2<CR>==gi

vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap º :m '>+1<CR>gv=gv

vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap ∆ :m '<-2<CR>gv=gv
