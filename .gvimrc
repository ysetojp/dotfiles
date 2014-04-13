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

" save window position "
let g:save_window_file = expand('~/.vimwinpos')
augroup SaveWindow
  autocmd!
  autocmd VimLeavePre * call s:save_window()
  function! s:save_window()
    let options = [
      \ 'set columns=' . &columns,
      \ 'set lines=' . &lines,
      \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
      \ ]
    call writefile(options, g:save_window_file)
  endfunction
augroup END

if filereadable(g:save_window_file)
  execute 'source' g:save_window_file
endif
" End of save window position "

" NeoBundle settings "

filetype off
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite'
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
NeoBundle 'thinca/vim-quickrun'

let g:quickrun_config={'*': {'split': ''}}
set splitbelow

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
