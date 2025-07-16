function! InsertHeaderC00()
  let l:filename = expand('%:t')
  let l:comment_char = '#'

  " Detecta tipo de archivo y asigna el caracter de comentario adecuado
  if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'java'
    let l:comment_char = '//'
  elseif &filetype == 'vim'
    let l:comment_char = '"'
  elseif &filetype == 'python'
    let l:comment_char = '#'
  endif

  " Crea las líneas del encabezado
  let l:header = [
        \ l:comment_char . '                                          _.._  .           .',
        \ l:comment_char . printf("  %-37s .' .-'`        *", filename),
        \ l:comment_char . '                                       /  /       +        *',
        \ l:comment_char . '  by: luna del Valle                   |  |           *',
        \ l:comment_char . "                                       \\  '.___.;       +",
        \ l:comment_char . "  Creative Commons CC0 1.0 Universal    '._  _.'   .        .",
        \ l:comment_char . '                                           ``',
        \ ''
        \ ]

  " Inserta el encabezado al principio del archivo
  call append(0, l:header)
endfunction

" Define el comando :Header
command! HeaderC00 call InsertHeaderC00()

function! InsertHeaderMIT()
  let l:filename = expand('%:t')
  let l:comment_char = '#'

  " Detecta tipo de archivo y asigna el caracter de comentario adecuado
  if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'java'
    let l:comment_char = '//'
  elseif &filetype == 'vim'
    let l:comment_char = '"'
  elseif &filetype == 'python'
    let l:comment_char = '#'
  endif

  " Crea las líneas del encabezado
  let l:header = [
        \ l:comment_char . '                                          _.._  .           .',
        \ l:comment_char . printf("  %-37s .' .-'`        *", filename),
        \ l:comment_char . '                                       /  /       +        *',
        \ l:comment_char . '  by: luna del Valle                   |  |           *',
        \ l:comment_char . "                                       \\  '.___.;       +",
        \ l:comment_char . "  MIT License                           '._  _.'   .        .",
        \ l:comment_char . '                                           ``',
        \ ''
        \ ]

  " Inserta el encabezado al principio del archivo
  call append(0, l:header)
endfunction

" Define el comando :Header
command! HeaderMIT call InsertHeaderMIT()

