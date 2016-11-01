function! switchguicolor#detect_gui_support(detect_by)
  redir => l:hi
    execute "silent! hi " . a:detect_by
  redir END
  let l:guifg = matchstr(l:hi, '\mguifg=\zs[#a-zA-Z0-9]\+\ze')
  let l:guibg = matchstr(l:hi, '\mguibg=\zs[#a-zA-Z0-9]\+\ze')
  return (empty(l:guifg) && empty(l:guibg))
endfunction

function! switchguicolor#switch()
  if (
    \ !has('termguicolors') ||
    \ switchguicolor#detect_gui_support(g:SwitchGuiByGroup)
    \ )
    set notermguicolors
  else
    set termguicolors
  endif
endfunction
" vim: ts=2 sts=2 sw=2 et
