if v:version < 700 || exists('loaded_setcolors') || &cp
  finish
endif

let loaded_setcolors = 1
let s:mycolors = []
" Currently only exploring colorscheme
let s:colorlistcommand=system("ls ~/.vim/bundle/colorschemes/colors/ | sed 's/\.vim$//; s/.*/let s:mycolors=s:mycolors+[\"&\"]/'")
execute s:colorlistcommand

function! NextColor(method)
  call s:NextColor(a:method, 1)
endfunction

" Helper function for NextColor(), allows echoing of the color name to be disabled.
let s:current = 0
function! s:NextColor(method, echo_color)
  let s:current = s:current + 1
  if (s:current == len(s:mycolors))
    let b:current = 0
  endif

  execute 'colorscheme '.s:mycolors[s:current]
  redraw

  if (a:echo_color)
    echo s:mycolors[s:current]
  endif
endfunction

