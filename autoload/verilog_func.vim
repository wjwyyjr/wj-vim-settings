" *****************************************************************************
"                 Copyright (C) 2025, Bruce Wang. All Rights Reserved
"
"   FileName:   verilog_func.vim
"   Desc:       function for verilog/systemverilog
"   Author:     Bruce Wang
"   Email:      wjwyyjr@gmail.com
"   LastChange: 2025-05-11 02:58:48
"   History:    2025-05-11 Create by Bruce Wang
" *****************************************************************************
function! verilog_func#AddVerilogFileDir()
    call append(line(".") + 0, '//Local Variables:' )
    call append(line(".") + 1, '//verilog-library-directories:(".")' )
    call append(line(".") + 2, '//verilog-library-directories-recursive:0' )
endfunction

