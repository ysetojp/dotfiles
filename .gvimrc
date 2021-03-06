"font setting
if has('mac')
  set guifont=Ricty\ Regular\ for\ Powerline:h18
else
  set guifont=Ricty\ for\ Powerline\ 15
  "set guifont=Ricty\ 14
endif

colorscheme wombat
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

