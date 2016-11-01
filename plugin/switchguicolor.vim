if exists('g:loaded_switchguicolor')
  finish
endif

let g:loaded_switchguicolor=1

let g:SwitchGuiByGroup = get(g:, 'SwitchGuiByGroup', 'Constant')

augroup SwitchGuiColor
  autocmd!
  autocmd ColorScheme * call switchguicolor#switch()
augroup end

" vim: ts=2 sts=2 sw=2 et
