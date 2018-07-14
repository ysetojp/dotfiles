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
set runtimepath+=/$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.config/nvim/dein')
  call dein#begin('$HOME/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('kovisoft/slimv')
  call dein#add('scrooloose/nerdtree')
  call dein#add('slim-template/vim-slim')

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

let g:python3_host_prog = expand('~/.pyenv/versions/3.7.0/bin/python')

autocmd BufRead,BufNewFile *.slim setfiletype slim
autocmd VimEnter * execute 'NERDTree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>

nnoremap <Space> <Nop>

"Move tab left and right
nnoremap <C-S-l> gt
nnoremap <C-S-h> gT

"Move window left and right
nnoremap <Space>h <C-w>h
nnoremap <Space>l <C-w>l

"Save file
nnoremap <Space>w :w<CR>

"Git commands
nnoremap [fugitive]  <Nop>
nmap <Space>g [fugitive]
nnoremap <silent> [fugitive]s :Gstatus<CR><C-w>T
nnoremap <silent> [fugitive]a :Gwrite<CR>
nnoremap <silent> [fugitive]c :Gcommit-v<CR>
nnoremap <silent> [fugitive]b :Gblame<CR>
nnoremap <silent> [fugitive]d :Gdiff<CR>
nnoremap <silent> [fugitive]m :Gmerge<CR>

