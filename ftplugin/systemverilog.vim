" *****************************************************************************
"                 Copyright (C) 2025, Bruce Wang. All Rights Reserved
"
"   FileName:   systemverilog.vim
"   Desc:       some setting for verilog/systemverilog
"   Author:     Bruce Wang
"   Email:      wjwyyjr@gmail.com
"   LastChange: 2025-05-11 03:25:42
"   History:    2025-05-11 Create by Bruce Wang
"               2025-05-11 Modify by Bruce Wang
" *****************************************************************************
" Plug: verilog_systemverilog
nnoremap <leader>u :VerilogGotoInstanceStart<CR>
nnoremap <leader>i :VerilogFollowInstance<CR>
nnoremap <leader>o :VerilogReturnInstance<CR>
nnoremap <leader>I :VerilogFollowPort<CR>
" nnoremap <leader>v :VerilogFormat<CR>  

" Plug: auto-pairs
if exists('g:AutoPairsLoaded')
    let b:AutoPairs = {'(':')', '[':']', '{':'}','"':'"'}
endif

" my own func
nnoremap <leader>if  :call verilog_func#AddVerilogFileDir()<CR>

nnoremap <leader>v  :!verilog-format --inplace --column_limit=200 --indentation_spaces=4 --assignment_statement_alignment=align 
            \--case_items_alignment=align --class_member_variable_alignment=align --distribution_items_alignment=align 
            \--enum_assignment_statement_alignment=align --formal_parameters_alignment=align --formal_parameters_indentation=indent 
            \--module_net_variable_alignment=align --named_parameter_alignment=align --named_parameter_indentation=indent 
            \--named_port_alignment=align  --named_port_indentation=indent --port_declarations_alignment=align  
            \--port_declarations_indentation=indent --port_declarations_right_align_packed_dimensions=true 
            \--port_declarations_right_align_unpacked_dimensions=true --struct_union_members_alignment=align 
            \--wrap_end_else_clauses=true %<CR>

