" *****************************************************************************
"                 Copyright (C) 2025, Bruce Wang. All Rights Reserved
"
"   FileName:   common_func.vim
"   Desc:       common function for my vim
"   Author:     Bruce Wang
"   Email:      wjwyyjr@gmail.com
"   LastChange: 2025-05-11 03:06:13
"   History:    2025-05-11 Create by Bruce Wang
" *****************************************************************************
function! common_func#InsertDivider() abort
  let l:filetype = &filetype
  let l:prefix = ''

  if l:filetype ==# 'python'
    let l:prefix = '# '
  elseif l:filetype ==# 'javascript' || l:filetype ==# 'typescript' || l:filetype ==# 'java' || l:filetype ==# 'c' || l:filetype ==# 'cpp'
    let l:prefix = '// '
  elseif l:filetype ==# 'vim'
    let l:prefix = '" '
  elseif l:filetype ==# 'lua'
    let l:prefix = '-- '
  elseif l:filetype ==# 'sh' || l:filetype ==# 'bash' || l:filetype ==# 'zsh'
    let l:prefix = '# '
  elseif l:filetype ==# 'html'
    let l:prefix = '<!-- '
    let l:suffix = ' -->'
    let l:line = l:prefix . repeat('-', 40) . l:suffix
    call append(line('.') - 1, l:line)
    return
  elseif l:filetype ==# 'verilog' || l:filetype ==# 'systemverilog'
    let l:prefix = '// '
  else
    let l:prefix = '# '
  endif

  let l:line = l:prefix . repeat('-', 80)
  call append(line('.') - 1, l:line)
endfunction

