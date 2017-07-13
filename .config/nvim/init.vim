"stardard settings

set number
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set cindent
set expandtab
set showmatch
colorscheme molokai

"dein Scripts-----------------------------
let g:cache_home  = empty($XDG_CACHE_HOME)  ? expand('$HOME/.cache')  : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME

let s:dein_cache_dir = g:cache_home . '/dein'

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/yseto/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/yseto/.config/nvim/dein')
  call dein#begin('/home/yseto/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/yseto/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('kovisoft/slimv')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  let s:toml_dir = g:config_home . '/nvim/dein'

  call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

