	.text
	.file	"fletcher32.bpf.c"
	.file	0 "/home/szymon/Documents/projects/final-year-project/test-workloads" "fletcher32.bpf.c" md5 0xab593b5d021e295a9272d41e4d75bdb1
	.file	1 "/usr/include/bits/types" "struct_FILE.h" md5 0x2724c33532a91348c643429afa072d1a
	.file	2 "/usr/include/bits" "types.h" md5 0x4a64d909bcfa62a0a7682c3ac78c6965
	.file	3 "/usr/lib/clang/16/include" "stddef.h" md5 0xf95079da609b0e8f201cb8136304bf3b
	.file	4 "/usr/include/bits/types" "FILE.h" md5 0x571f9fb6223c42439075fdde11a0de5d
	.file	5 "/usr/include" "stdio.h" md5 0x600479e30522c60809530fc01f232b17
	.file	6 "/usr/include/bits" "stdint-uintn.h" md5 0x4ecee94d7257cd86659727d06a979b60
	.globl	fletcher_32                     # -- Begin function fletcher_32
	.p2align	3
	.type	fletcher_32,@function
fletcher_32:                            # @fletcher_32
.Lfunc_begin0:
	.loc	0 6 0                           # fletcher32.bpf.c:6:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: fletcher_32:ctx <- $r1
	r2 = 0
.Ltmp0:
.Ltmp1:
	#DEBUG_VALUE: fletcher_32:message <- undef
	#DEBUG_VALUE: blocklen <- 360
	#DEBUG_VALUE: fletcher_32:data <- undef
	#DEBUG_VALUE: fletcher_32:c0 <- 0
	#DEBUG_VALUE: fletcher_32:c1 <- 0
	#DEBUG_VALUE: fletcher_32:len <- 0
	r1 = 0
.Ltmp2:
.Ltmp3:
	r3 = 0
.Ltmp4:
.Ltmp5:
LBB0_1:                                 # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: fletcher_32:len <- 0
	#DEBUG_VALUE: fletcher_32:c1 <- $r3
	#DEBUG_VALUE: fletcher_32:c0 <- $r1
	#DEBUG_VALUE: fletcher_32:data <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
	#DEBUG_VALUE: blocklen <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 18446744073709551614, DW_OP_mul, DW_OP_consts 360, DW_OP_plus, DW_OP_stack_value] $r2
	.loc	0 37 28 prologue_end            # fletcher32.bpf.c:37:28
.Ltmp6:
	r4 = .L.str ll
.Ltmp7:
.Ltmp8:
	#DEBUG_VALUE: fletcher_32:data <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r2, $r4
	r4 += r2
.Ltmp9:
.Ltmp10:
	.loc	0 37 23 is_stmt 0               # fletcher32.bpf.c:37:23
.Ltmp11:
	r4 = *(u16 *)(r4 + 0)
	.loc	0 37 21                         # fletcher32.bpf.c:37:21
.Ltmp12:
	r1 += r4
.Ltmp13:
.Ltmp14:
	#DEBUG_VALUE: fletcher_32:c0 <- $r1
	.loc	0 38 21 is_stmt 1               # fletcher32.bpf.c:38:21
.Ltmp15:
	r0 = r1
	r0 += r3
.Ltmp16:
.Ltmp17:
	#DEBUG_VALUE: blocklen <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 18446744073709551614, DW_OP_mul, DW_OP_consts 358, DW_OP_plus, DW_OP_stack_value] $r2
	#DEBUG_VALUE: fletcher_32:c1 <- $r0
	.loc	0 39 9                          # fletcher32.bpf.c:39:9
.Ltmp18:
	r2 += 2
.Ltmp19:
.Ltmp20:
	.loc	0 0 9 is_stmt 0                 # fletcher32.bpf.c:0:9
	r3 = r0
	.loc	0 39 9                          # fletcher32.bpf.c:39:9
	if r2 != 360 goto LBB0_1
.Ltmp21:
.Ltmp22:
# %bb.2:
	#DEBUG_VALUE: fletcher_32:c1 <- $r0
	#DEBUG_VALUE: fletcher_32:c0 <- $r1
	#DEBUG_VALUE: fletcher_32:len <- 0
	.loc	0 40 17 is_stmt 1               # fletcher32.bpf.c:40:17
.Ltmp23:
	r1 <<= 32
.Ltmp24:
.Ltmp25:
	r1 >>= 32
	r1 %= 65535
.Ltmp26:
.Ltmp27:
	#DEBUG_VALUE: fletcher_32:c0 <- $r1
	.loc	0 41 17                         # fletcher32.bpf.c:41:17
.Ltmp28:
	r0 <<= 32
.Ltmp29:
.Ltmp30:
	r0 >>= 32
	r0 %= 65535
.Ltmp31:
.Ltmp32:
	#DEBUG_VALUE: fletcher_32:data <- undef
	#DEBUG_VALUE: fletcher_32:c1 <- $r0
	#DEBUG_VALUE: fletcher_32:len <- 0
	.loc	0 44 29                         # fletcher32.bpf.c:44:29
.Ltmp33:
	r0 <<= 16
.Ltmp34:
.Ltmp35:
	.loc	0 44 35 is_stmt 0               # fletcher32.bpf.c:44:35
.Ltmp36:
	r0 |= r1
.Ltmp37:
.Ltmp38:
	#DEBUG_VALUE: fletcher_32:checksum <- $r0
	.loc	0 46 5 is_stmt 1                # fletcher32.bpf.c:46:5
.Ltmp39:
	exit
.Ltmp40:
.Ltmp41:
.Lfunc_end0:
	.size	fletcher_32, .Lfunc_end0-fletcher_32
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"This is a test message for the Fletcher32 checksum algorithm.\nIt is 360 characters long to replicate the workflow under which thefemtocontainers implementation was tested.\nThe aim of this test the performance of the rBPF VM running on a microcontrollerand compare it against the native execution.\nThe next step: test the same workflow on stm32 microcontroller"
	.size	.L.str, 360

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	6                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	126                             # -2
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	232                             # 360
	.byte	2                               # 
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	126                             # -2
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	230                             # 358
	.byte	2                               # 
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	15                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x263 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	29                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x31:0xd DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x36:0x7 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.short	360                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3e:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x42:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x46:0x8 DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	78                              # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x4e:0x5 DW_TAG_pointer_type
	.long	83                              # DW_AT_type
	.byte	9                               # Abbrev [9] 0x53:0x8 DW_TAG_typedef
	.long	91                              # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5b:0x10b DW_TAG_structure_type
	.byte	49                              # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x60:0x9 DW_TAG_member
	.byte	6                               # DW_AT_name
	.long	358                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x69:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x72:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7b:0x9 DW_TAG_member
	.byte	10                              # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x84:0x9 DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8d:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x96:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9f:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa8:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb1:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xba:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc3:0x9 DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	362                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xcc:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	367                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xd5:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	374                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xde:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	358                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xe7:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	358                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xf0:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	379                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xf9:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	391                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x102:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	395                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x10b:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	131                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x114:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	411                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x11d:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x126:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12f:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	447                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x138:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	374                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x141:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	454                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x14a:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x153:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	358                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x15c:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	467                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x166:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x16a:0x5 DW_TAG_pointer_type
	.long	62                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0x16f:0x5 DW_TAG_pointer_type
	.long	372                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x174:0x2 DW_TAG_structure_type
	.byte	20                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x176:0x5 DW_TAG_pointer_type
	.long	91                              # DW_AT_type
	.byte	9                               # Abbrev [9] 0x17b:0x8 DW_TAG_typedef
	.long	387                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x183:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x187:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x18b:0x4 DW_TAG_base_type
	.byte	30                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x18f:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x194:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x19b:0x5 DW_TAG_pointer_type
	.long	416                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1a0:0x4 DW_TAG_typedef
	.byte	33                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1a4:0x8 DW_TAG_typedef
	.long	428                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1ac:0x8 DW_TAG_typedef
	.long	436                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1b4:0x4 DW_TAG_base_type
	.byte	35                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1b8:0x5 DW_TAG_pointer_type
	.long	445                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1bd:0x2 DW_TAG_structure_type
	.byte	39                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x1bf:0x5 DW_TAG_pointer_type
	.long	452                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1c4:0x2 DW_TAG_structure_type
	.byte	41                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	15                              # Abbrev [15] 0x1c6:0x1 DW_TAG_pointer_type
	.byte	9                               # Abbrev [9] 0x1c7:0x8 DW_TAG_typedef
	.long	463                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1cf:0x4 DW_TAG_base_type
	.byte	45                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x1d3:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1d8:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1df:0x8 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.long	78                              # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x1e7:0x5 DW_TAG_pointer_type
	.long	492                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1ec:0x8 DW_TAG_typedef
	.long	500                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1f4:0x8 DW_TAG_typedef
	.long	391                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1fc:0x5e DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	90
                                        # DW_AT_call_all_calls
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	358                             # DW_AT_type
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x20b:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.long	454                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x214:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	487                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x21d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	602                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x226:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	602                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x22f:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	455                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x238:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	602                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x241:0x8 DW_TAG_variable
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	362                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x249:0x10 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp31-.Ltmp4                  # DW_AT_high_pc
	.byte	18                              # Abbrev [18] 0x24f:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	455                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x25a:0x8 DW_TAG_typedef
	.long	610                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x262:0x8 DW_TAG_typedef
	.long	618                             # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x26a:0x4 DW_TAG_base_type
	.byte	59                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	268                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 16.0.6"          # string offset=0
.Linfo_string1:
	.asciz	"fletcher32.bpf.c"              # string offset=21
.Linfo_string2:
	.asciz	"/home/szymon/Documents/projects/final-year-project/test-workloads" # string offset=38
.Linfo_string3:
	.asciz	"char"                          # string offset=104
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=109
.Linfo_string5:
	.asciz	"stdin"                         # string offset=129
.Linfo_string6:
	.asciz	"_flags"                        # string offset=135
.Linfo_string7:
	.asciz	"int"                           # string offset=142
.Linfo_string8:
	.asciz	"_IO_read_ptr"                  # string offset=146
.Linfo_string9:
	.asciz	"_IO_read_end"                  # string offset=159
.Linfo_string10:
	.asciz	"_IO_read_base"                 # string offset=172
.Linfo_string11:
	.asciz	"_IO_write_base"                # string offset=186
.Linfo_string12:
	.asciz	"_IO_write_ptr"                 # string offset=201
.Linfo_string13:
	.asciz	"_IO_write_end"                 # string offset=215
.Linfo_string14:
	.asciz	"_IO_buf_base"                  # string offset=229
.Linfo_string15:
	.asciz	"_IO_buf_end"                   # string offset=242
.Linfo_string16:
	.asciz	"_IO_save_base"                 # string offset=254
.Linfo_string17:
	.asciz	"_IO_backup_base"               # string offset=268
.Linfo_string18:
	.asciz	"_IO_save_end"                  # string offset=284
.Linfo_string19:
	.asciz	"_markers"                      # string offset=297
.Linfo_string20:
	.asciz	"_IO_marker"                    # string offset=306
.Linfo_string21:
	.asciz	"_chain"                        # string offset=317
.Linfo_string22:
	.asciz	"_fileno"                       # string offset=324
.Linfo_string23:
	.asciz	"_flags2"                       # string offset=332
.Linfo_string24:
	.asciz	"_old_offset"                   # string offset=340
.Linfo_string25:
	.asciz	"long"                          # string offset=352
.Linfo_string26:
	.asciz	"__off_t"                       # string offset=357
.Linfo_string27:
	.asciz	"_cur_column"                   # string offset=365
.Linfo_string28:
	.asciz	"unsigned short"                # string offset=377
.Linfo_string29:
	.asciz	"_vtable_offset"                # string offset=392
.Linfo_string30:
	.asciz	"signed char"                   # string offset=407
.Linfo_string31:
	.asciz	"_shortbuf"                     # string offset=419
.Linfo_string32:
	.asciz	"_lock"                         # string offset=429
.Linfo_string33:
	.asciz	"_IO_lock_t"                    # string offset=435
.Linfo_string34:
	.asciz	"_offset"                       # string offset=446
.Linfo_string35:
	.asciz	"long long"                     # string offset=454
.Linfo_string36:
	.asciz	"__int64_t"                     # string offset=464
.Linfo_string37:
	.asciz	"__off64_t"                     # string offset=474
.Linfo_string38:
	.asciz	"_codecvt"                      # string offset=484
.Linfo_string39:
	.asciz	"_IO_codecvt"                   # string offset=493
.Linfo_string40:
	.asciz	"_wide_data"                    # string offset=505
.Linfo_string41:
	.asciz	"_IO_wide_data"                 # string offset=516
.Linfo_string42:
	.asciz	"_freeres_list"                 # string offset=530
.Linfo_string43:
	.asciz	"_freeres_buf"                  # string offset=544
.Linfo_string44:
	.asciz	"__pad5"                        # string offset=557
.Linfo_string45:
	.asciz	"unsigned long"                 # string offset=564
.Linfo_string46:
	.asciz	"size_t"                        # string offset=578
.Linfo_string47:
	.asciz	"_mode"                         # string offset=585
.Linfo_string48:
	.asciz	"_unused2"                      # string offset=591
.Linfo_string49:
	.asciz	"_IO_FILE"                      # string offset=600
.Linfo_string50:
	.asciz	"FILE"                          # string offset=609
.Linfo_string51:
	.asciz	"stdout"                        # string offset=614
.Linfo_string52:
	.asciz	"__uint16_t"                    # string offset=621
.Linfo_string53:
	.asciz	"uint16_t"                      # string offset=632
.Linfo_string54:
	.asciz	"fletcher_32"                   # string offset=641
.Linfo_string55:
	.asciz	"ctx"                           # string offset=653
.Linfo_string56:
	.asciz	"blocklen"                      # string offset=657
.Linfo_string57:
	.asciz	"data"                          # string offset=666
.Linfo_string58:
	.asciz	"c0"                            # string offset=671
.Linfo_string59:
	.asciz	"unsigned int"                  # string offset=674
.Linfo_string60:
	.asciz	"__uint32_t"                    # string offset=687
.Linfo_string61:
	.asciz	"uint32_t"                      # string offset=698
.Linfo_string62:
	.asciz	"c1"                            # string offset=707
.Linfo_string63:
	.asciz	"len"                           # string offset=710
.Linfo_string64:
	.asciz	"checksum"                      # string offset=714
.Linfo_string65:
	.asciz	"message"                       # string offset=723
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.Lfunc_begin0
	.quad	.Ltmp4
.Ldebug_addr_end0:
	.section	.BTF,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	24
	.long	0
	.long	116
	.long	116
	.long	366
	.long	0                               # BTF_KIND_PTR(id = 1)
	.long	33554432                        # 0x2000000
	.long	0
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 2)
	.long	218103809                       # 0xd000001
	.long	3
	.long	1
	.long	1
	.long	5                               # BTF_KIND_INT(id = 3)
	.long	16777216                        # 0x1000000
	.long	4
	.long	16777248                        # 0x1000020
	.long	9                               # BTF_KIND_FUNC(id = 4)
	.long	201326593                       # 0xc000001
	.long	2
	.long	341                             # BTF_KIND_INT(id = 5)
	.long	16777216                        # 0x1000000
	.long	1
	.long	16777224                        # 0x1000008
	.long	0                               # BTF_KIND_ARRAY(id = 6)
	.long	50331648                        # 0x3000000
	.long	0
	.long	5
	.long	7
	.long	360
	.long	346                             # BTF_KIND_INT(id = 7)
	.long	16777216                        # 0x1000000
	.long	4
	.long	32                              # 0x20
	.byte	0                               # string offset=0
	.ascii	"ctx"                           # string offset=1
	.byte	0
	.ascii	"int"                           # string offset=5
	.byte	0
	.ascii	"fletcher_32"                   # string offset=9
	.byte	0
	.ascii	".text"                         # string offset=21
	.byte	0
	.ascii	"/home/szymon/Documents/projects/final-year-project/test-workloads/fletcher32.bpf.c" # string offset=27
	.byte	0
	.ascii	"int fletcher_32(void *ctx)"    # string offset=110
	.byte	0
	.ascii	"            c0 = c0 + *data++;" # string offset=137
	.byte	0
	.ascii	"            c1 = c1 + c0;"     # string offset=168
	.byte	0
	.ascii	"        } while ((blocklen -= 2));" # string offset=194
	.byte	0
	.ascii	"        c0 = c0 % 65535;"      # string offset=229
	.byte	0
	.ascii	"        c1 = c1 % 65535;"      # string offset=254
	.byte	0
	.ascii	"    uint32_t checksum = (c1 << 16 | c0);" # string offset=279
	.byte	0
	.ascii	"    return checksum;"          # string offset=320
	.byte	0
	.ascii	"char"                          # string offset=341
	.byte	0
	.ascii	"__ARRAY_SIZE_TYPE__"           # string offset=346
	.byte	0
	.section	.BTF.ext,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	32
	.long	0
	.long	20
	.long	20
	.long	188
	.long	208
	.long	0
	.long	8                               # FuncInfo
	.long	21                              # FuncInfo section string offset=21
	.long	1
	.long	.Lfunc_begin0
	.long	4
	.long	16                              # LineInfo
	.long	21                              # LineInfo section string offset=21
	.long	11
	.long	.Lfunc_begin0
	.long	27
	.long	110
	.long	5120                            # Line 5 Col 0
	.long	.Ltmp6
	.long	27
	.long	137
	.long	37916                           # Line 37 Col 28
	.long	.Ltmp11
	.long	27
	.long	137
	.long	37911                           # Line 37 Col 23
	.long	.Ltmp12
	.long	27
	.long	137
	.long	37909                           # Line 37 Col 21
	.long	.Ltmp15
	.long	27
	.long	168
	.long	38933                           # Line 38 Col 21
	.long	.Ltmp18
	.long	27
	.long	194
	.long	39945                           # Line 39 Col 9
	.long	.Ltmp23
	.long	27
	.long	229
	.long	40977                           # Line 40 Col 17
	.long	.Ltmp28
	.long	27
	.long	254
	.long	42001                           # Line 41 Col 17
	.long	.Ltmp33
	.long	27
	.long	279
	.long	45085                           # Line 44 Col 29
	.long	.Ltmp36
	.long	27
	.long	279
	.long	45091                           # Line 44 Col 35
	.long	.Ltmp39
	.long	27
	.long	320
	.long	47109                           # Line 46 Col 5
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
