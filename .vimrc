"basic setting
scriptencoding utf-8
set encoding=utf-8

"display settings
set number
set ruler
set cmdheight=2
set laststatus=2
set showcmd
set showmatch
set background=dark
set timeoutlen=2000
set virtualedit=all

"tab/indent settings
set autoindent
set smartindent
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

"file settings
set hidden
set autoread

"beep setting
set visualbell t_vb=

"filetype on
"filetype indent on
"filetype plugin on

set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/swap

" NeoBundle settings "

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#auto_completion_start_length = 3

let g:unite_enable_start_insert = 1
let g:unite_enable_split_vertically = 0
let g:unite_winwidth = 40

filetype off
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'Shougo/neobundle.vim'
  NeoBundle 'Shougo/neocomplete'
  NeoBundle 'Shougo/neosnippet'
  NeoBundle 'Shougo/neosnippet-snippets'
  "NeoBundle 'honza/snipmate-snippets'
  "NeoBundle 'honza/vim-snippets'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/vimfiler'
  NeoBundle 'Shougo/vimshell'
  NeoBundle 'Shougo/vimproc', {
    \ 'build': {
    \ 'windows': 'make -f make_mingw32.mak',
    \ 'cygwin': 'make -f make_cygwin.mak',
    \ 'mac': 'make -f make_mac.mak',
    \ 'unix': 'make -f make_unix.mak',
    \ }
    \}
  
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'thinca/vim-quickrun'
  NeoBundle 'thinca/vim-ref'
  NeoBundle 'The-NERD-tree'
  NeoBundle 'Gist.vim'
  NeoBundle 'slim-template/vim-slim'
  
  NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
    \ 'autoload' : {
    \ 'insert' : 1,
    \ }}
  
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'tpope/vim-rails', { 'autoload' : {
    \ 'filetypes' : ['slim', 'haml', 'ruby', 'eruby'] }}
  
  NeoBundleLazy 'basyura/unite-rails', {
    \ 'depends' : 'Shougo/unite.vim',
    \ 'autoload' : {
    \ 'unite_sources' : [
    \ 'rails/bundle', 'rails/bundled_gem', 'rails/config',
    \ 'rails/controller', 'rails/db', 'rails/destroy', 'rails/features',
    \ 'rails/gem', 'rails/gemfile', 'rails/generate', 'rails/git', 'rails/helper',
    \ 'rails/heroku', 'rails/initializer', 'rails/javascript', 'rails/lib', 'rails/log',
    \ 'rails/mailer', 'rails/model', 'rails/rake', 'rails/route', 'rails/schema', 'rails/spec',
    \ 'rails/stylesheet', 'rails/view'
    \ ]
    \ }}
  
  NeoBundle 'skwp/vim-rspec'
  NeoBundle 'tpope/vim-dispatch'
  NeoBundle 'AndrewRadev/switch.vim'
  NeoBundle 'h1mesuke/vim-alignta'
  NeoBundle 'tyru/open-browser.vim'
  NeoBundle 'itchyny/lightline.vim'
  call neobundle#end()
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
      \ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" }
      \ }

filetype plugin on
filetype indent on
syntax enable

NeoBundleCheck

" End of NedBundle settings "

" Plugin key-mappings.
imap <C-k>  <Plug>(neosnippet_expand_or_jump)
smap <C-k>  <Plug>(neosnippet_expand_or_jump)
xmap <C-k>  <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

let g:quickrun_config = {'*': {'split': ''}}
set splitbelow

let g:quickrun_config['ruby.rspec'] = {'command': 'spec'}
"let g:neosnippet#disable_runtime_snippets = {
"      \ '_' : 1,
"      \ }
"
"let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory = '~/.vim/bundle/neosnippet-snippets/snippets'

" Key mappings "

" Some useful key mappings
nnoremap <CR> o<ESC>
nnoremap <F5> :Source ~/.vimrc<CR>
nnoremap <F6> :Source ~/.gvimrc<CR>
let mapleader="," 
noremap \ ,

" Open browser key mappings
let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" Emacs like key mappings :-)
inoremap <C-f> <Right>
inoremap <C-b> <Left>

" Esc key mappings
vnoremap <silent> <C-l> <Esc>
inoremap <silent> <C-l> <Esc>
cnoremap <silent> <C-l> <C-c>

noremap <silent> <Space>n :NERDTree<CR>

nnoremap [space] <Nop>
nmap <Space> [space]

" Align
nmap [space]a :Alignta

" Unite key mappings
nnoremap [unite] <Nop>
nmap [space]u [unite]
nnoremap <silent> [unite]c   :<C-u>UniteWithCurrentDir -buffer-name=files file_mru bookmark file<CR>
nnoremap <silent> [unite]b   :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]f   :<C-u>Unite file<CR>
nnoremap <silent> [unite]m   :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]rc  :<C-u>Unite file_rec/async:app/controllers/ <CR>
nnoremap <silent> [unite]rfc :<C-u>Unite file file/new -input=app/controllers/ <CR>
nnoremap <silent> [unite]rm  :<C-u>Unite file_rec/async:app/models/ <CR>
nnoremap <silent> [unite]rfm :<C-u>Unite file file/new -input=app/models/ <CR>
nnoremap <silent> [unite]rv  :<C-u>Unite file_rec/async:app/views/ <CR>
nnoremap <silent> [unite]rfv :<C-u>Unite file file/new -input=app/views/ <CR>
nnoremap <silent> [unite]rs  :<C-u>Unite file_rec/async:app/assets/stylesheets/ <CR>
nnoremap <silent> [unite]rfs :<C-u>Unite file file/new -input=app/assets/stylesheets/ <CR>
nnoremap <silent> [unite]rj  :<C-u>Unite file_rec/async:app/assets/javascripts/ <CR>
nnoremap <silent> [unite]rfj :<C-u>Unite file file/new -input=app/assets/javascripts/ <CR>
nnoremap <silent> [unite]ro  :<C-u>Unite file_rec/async:config/ <CR>
nnoremap <silent> [unite]rfo :<C-u>Unite file file/new -input=config/ <CR>
nnoremap <silent> [unite]rl  :<C-u>Unite file_rec/async:lib/ <CR>
nnoremap <silent> [unite]rfl :<C-u>Unite file file/new -input=lib/ <CR>
nnoremap <silent> [unite]rr  :<C-u>Unite file_rec/async:spec/ <CR>
nnoremap <silent> [unite]rfr :<C-u>Unite file file/new -input=specs <CR>

" Tab key mappings
nnoremap [tab] <Nop>
nmap [space]t [tab]
nnoremap [tab]n :tabnew<CR>
nnoremap [tab]c :tabclose<CR>
nnoremap [tab]fc :tabclose!<CR>
nnoremap [tab]l gt
nnoremap [tab]h gT

" Window key mappings
nnoremap [window] <Nop>
nmap [space]w [window]
nnoremap <silent> [window]s <C-w>s
nnoremap <silent> [window]v <C-w>v
nnoremap <silent> [window]o <C-w>o
nnoremap <silent> [window]h <C-w>h
nnoremap <silent> [window]l <C-w>l
nnoremap <silent> [window]k <C-w>k
nnoremap <silent> [window]j <C-w>j

" Buffer key mappings
nnoremap [buffer] <Nop>
nmap [space]b [buffer]
nnoremap <silent> [buffer]f :bf<CR>
nnoremap <silent> [buffer]l :bl<CR>
nnoremap <silent> [buffer]n :bn<CR>
nnoremap <silent> [buffer]p :bp<CR>
nnoremap <silent> [buffer]d :bd<CR>

" Edit key mappings
nnoremap [edit] <Nop>
nmap [space]e [edit]
nnoremap <silent> [edit]v :e ~/.vimrc<CR>
nnoremap <silent> [edit]g :e ~/.gvimrc<CR>

nnoremap [directory] <Nop>
nmap [space]d [directory]
nnoremap <silent> [directory]cf :cd %:h<CR>
nnoremap <silent> [directory]gr :cd ~/workspace/rails_projects/

nnoremap <silent> [space]q :QuickRun<CR>
