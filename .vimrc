set guifont=Ricty\ 12
colorscheme molokai
set hlsearch
set showcmd
set number
set ruler
set cmdheight=2
filetype on
filetype indent on
filetype plugin on
set autoindent
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

set background=dark

" NeoBundle settings "

filetype off
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc.vim', {
  \ 'build': {
  \ 'windows': 'make -f make_mingw32.mak',
  \ 'cygwin': 'make -f make_cygwin.mak',
  \ 'mac': 'make -f make_mac.mak',
  \ 'unix': 'make -f make_unix.mak',
  \ }
  \}

NeoBundle 'scrooloose/syntastic'
"NeoBundle 'scrooloose/nerdtree'
NeoBundle 'The-NERD-tree'
NeoBundle 'Gist.vim'

NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
  \ 'autoload' : {
  \ 'insert' : 1,
  \ }}

NeoBundle 'tpope/vim-rails', { 'autoload' : {
  \ 'filetypes' : ['haml', 'ruby', 'eruby'] }}

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

filetype plugin on
filetype indent on

NeoBundleCheck

"autocmd vimenter * NERDTree

" End of NedBundle settings "

noremap <CR> o<ESC>
