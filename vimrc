call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'Chiel92/vim-autoformat'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'

Plug 'roxma/vim-tmux-clipboard'
Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}
Plug 'tmux-plugins/vim-tmux-focus-events'

" color scheme plugins
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'

Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/AutoComplPop'

Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

let NERDTreeShowHidden=1
let g:NERDTreeHijackNetrw = 1
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends' : 'jsx',
      \  },
      \}

"set completeopt=longest,menuone
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"
"" open omni completion menu closing previous if open and opening new menu
"" without changing the text
"inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"             \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
"" open user completion menu closing previous if open and opening new menu
"" without changing the text
"inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"             \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'



set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

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

set listchars=tab:\|\
set list

" color
syntax enable

" palenight colorscheme
set background=dark
colorscheme palenight
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1
let g:indentLine_setConceal = 0

if (has("termguicolors"))
  set termguicolors
endif

" " one color scheme
" let g:airline_theme='one'
" colorscheme one
" set background=dark

highlight LineNr ctermfg=darkgrey

"================================KEY MAPPING==========================
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>

" format by typing \==
nnoremap <unique> <silent> = :Autoformat<CR>

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


" inoremap <tab> <c-r>=Smart_TabComplete()<CR>
" 
" function! Smart_TabComplete()
"   let line = getline('.')
" 
"   let substr = strpart(line, -1, col('.')+1)
" 
" 
"   let substr = matchstr(substr, "[^ \t]*$")
"   if (strlen(substr)==0)
"     return "\<tab>"
"   endif
"   let has_period = match(substr, '\.') != -1
"   let has_slash = match(substr, '\/') != -1
"   if (!has_period && !has_slash)
"     return "\<C-X>\<C-P>"
"   elseif ( has_slash )
"     return "\<C-X>\<C-F>"
"   else
"     return "\<C-X>\<C-O>"
"   endif
" endfunction
