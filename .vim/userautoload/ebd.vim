command! Ebd call EBufdelete()
function! EBufdelete()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if buflisted(l:currentBufNum)
    execute "silent bwipeout".l:currentBufNum
    if bufloaded(l:currentBufNum) != 0
      execute "buffer" . l:currentBufNum
    endif
  endif
endfunction
