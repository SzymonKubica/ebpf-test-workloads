	.text
	.file	"fletcher32.c"
	.file	0 "/home/szymon/Documents/projects/final-year-project/test-workloads" "fletcher32.c" md5 0xed5d986490d04fb53635cd66e4d643ae
	.file	1 "/usr/include/bits/types" "struct_FILE.h" md5 0x2724c33532a91348c643429afa072d1a
	.file	2 "/usr/include/bits" "types.h" md5 0x4a64d909bcfa62a0a7682c3ac78c6965
	.file	3 "/usr/lib/clang/16/include" "stddef.h" md5 0xf95079da609b0e8f201cb8136304bf3b
	.file	4 "/usr/include/bits/types" "FILE.h" md5 0x571f9fb6223c42439075fdde11a0de5d
	.file	5 "/usr/include" "stdio.h" md5 0x600479e30522c60809530fc01f232b17
	.file	6 "/usr/include/bits" "stdint-uintn.h" md5 0x4ecee94d7257cd86659727d06a979b60
	.globl	fletcher32                      # -- Begin function fletcher32
	.p2align	3
	.type	fletcher32,@function
fletcher32:                             # @fletcher32
.Lfunc_begin0:
	.loc	0 7 0                           # fletcher32.c:7:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: fletcher32:data <- $r1
	#DEBUG_VALUE: fletcher32:len <- $r2
	r0 = 0
.Ltmp0:
	.loc	0 9 16 prologue_end             # fletcher32.c:9:16
.Ltmp1:
.Ltmp2:
	r2 += 1
.Ltmp3:
.Ltmp4:
	.loc	0 9 21 is_stmt 0                # fletcher32.c:9:21
.Ltmp5:
	r2 &= -2
.Ltmp6:
.Ltmp7:
	#DEBUG_VALUE: fletcher32:c0 <- 0
	#DEBUG_VALUE: fletcher32:c1 <- 0
	#DEBUG_VALUE: fletcher32:len <- $r2
	#DEBUG_VALUE: fletcher32:data <- undef
	.loc	0 16 5 is_stmt 1                # fletcher32.c:16:5
.Ltmp8:
	if r2 == 0 goto LBB0_8
.Ltmp9:
.Ltmp10:
# %bb.1:
	#DEBUG_VALUE: fletcher32:c1 <- 0
	#DEBUG_VALUE: fletcher32:c0 <- 0
	#DEBUG_VALUE: fletcher32:len <- $r2
	.loc	0 0 5 is_stmt 0                 # fletcher32.c:0:5
	r4 = 0
	r3 = 0
	goto LBB0_2
.Ltmp11:
.Ltmp12:
LBB0_5:                                 #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: fletcher32:c0 <- $r3
	#DEBUG_VALUE: fletcher32:len <- $r2
	#DEBUG_VALUE: fletcher32:data <- $r1
	#DEBUG_VALUE: fletcher32:data <- $r1
	#DEBUG_VALUE: fletcher32:c1 <- $r4
	#DEBUG_VALUE: fletcher32:c0 <- $r3
	#DEBUG_VALUE: blocklen <- $r6
	.loc	0 23 23 is_stmt 1               # fletcher32.c:23:23
.Ltmp13:
	r0 = *(u16 *)(r1 + 0)
	.loc	0 23 21 is_stmt 0               # fletcher32.c:23:21
.Ltmp14:
	r3 += r0
.Ltmp15:
.Ltmp16:
	#DEBUG_VALUE: fletcher32:c0 <- $r3
	.loc	0 23 28                         # fletcher32.c:23:28
.Ltmp17:
	r1 += 2
.Ltmp18:
.Ltmp19:
	#DEBUG_VALUE: fletcher32:data <- $r1
	.loc	0 24 21 is_stmt 1               # fletcher32.c:24:21
.Ltmp20:
	r0 = r3
	r0 += r4
.Ltmp21:
.Ltmp22:
	#DEBUG_VALUE: fletcher32:c1 <- $r0
	.loc	0 25 28                         # fletcher32.c:25:28
.Ltmp23:
	r6 += -2
.Ltmp24:
.Ltmp25:
	#DEBUG_VALUE: blocklen <- $r6
	.loc	0 0 28 is_stmt 0                # fletcher32.c:0:28
	r4 = r0
.Ltmp26:
	.loc	0 25 9                          # fletcher32.c:25:9
.Ltmp27:
.Ltmp28:
	if r6 != 0 goto LBB0_5
.Ltmp29:
.Ltmp30:
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	#DEBUG_VALUE: fletcher32:c1 <- $r0
	#DEBUG_VALUE: blocklen <- $r6
	#DEBUG_VALUE: fletcher32:c0 <- $r3
	#DEBUG_VALUE: fletcher32:len <- $r2
	#DEBUG_VALUE: fletcher32:data <- $r1
	.loc	0 21 13 is_stmt 1               # fletcher32.c:21:13
.Ltmp31:
	r2 -= r5
.Ltmp32:
.Ltmp33:
	#DEBUG_VALUE: fletcher32:len <- $r2
	.loc	0 27 17                         # fletcher32.c:27:17
.Ltmp34:
	r0 <<= 32
.Ltmp35:
.Ltmp36:
	r0 >>= 32
	r0 %= 65535
.Ltmp37:
.Ltmp38:
	#DEBUG_VALUE: fletcher32:c1 <- $r0
	.loc	0 26 17                         # fletcher32.c:26:17
.Ltmp39:
	r3 <<= 32
.Ltmp40:
.Ltmp41:
	r3 >>= 32
	r3 %= 65535
.Ltmp42:
.Ltmp43:
	#DEBUG_VALUE: fletcher32:c0 <- $r3
	#DEBUG_VALUE: fletcher32:data <- $r1
	.loc	0 0 17 is_stmt 0                # fletcher32.c:0:17
	r4 = r0
.Ltmp44:
.Ltmp45:
	.loc	0 16 5 is_stmt 1                # fletcher32.c:16:5
.Ltmp46:
	if r2 != 0 goto LBB0_2
.Ltmp47:
.Ltmp48:
# %bb.7:
	#DEBUG_VALUE: fletcher32:c1 <- $r0
	#DEBUG_VALUE: fletcher32:c0 <- $r3
	#DEBUG_VALUE: fletcher32:len <- $r2
	#DEBUG_VALUE: fletcher32:data <- $r1
	.loc	0 29 16                         # fletcher32.c:29:16
.Ltmp49:
	r0 <<= 16
.Ltmp50:
.Ltmp51:
	r0 |= r3
	goto LBB0_8
.Ltmp52:
.Ltmp53:
LBB0_2:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	#DEBUG_VALUE: fletcher32:len <- $r2
	#DEBUG_VALUE: fletcher32:data <- $r1
	#DEBUG_VALUE: fletcher32:len <- $r2
	#DEBUG_VALUE: fletcher32:c1 <- $r4
	#DEBUG_VALUE: fletcher32:c0 <- $r3
	#DEBUG_VALUE: blocklen <- $r2
	.loc	0 0 16 is_stmt 0                # fletcher32.c:0:16
	r0 = 720
	r5 = r2
.Ltmp54:
	.loc	0 18 13 is_stmt 1               # fletcher32.c:18:13
.Ltmp55:
.Ltmp56:
	if r0 > r2 goto LBB0_4
.Ltmp57:
.Ltmp58:
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	#DEBUG_VALUE: blocklen <- $r2
	#DEBUG_VALUE: fletcher32:c0 <- $r3
	#DEBUG_VALUE: fletcher32:c1 <- $r4
	#DEBUG_VALUE: fletcher32:len <- $r2
	#DEBUG_VALUE: fletcher32:data <- $r1
	.loc	0 0 13 is_stmt 0                # fletcher32.c:0:13
	r5 = 720
.Ltmp59:
.Ltmp60:
LBB0_4:                                 #   in Loop: Header=BB0_2 Depth=1
	#DEBUG_VALUE: blocklen <- $r2
	#DEBUG_VALUE: fletcher32:c0 <- $r3
	#DEBUG_VALUE: fletcher32:c1 <- $r4
	#DEBUG_VALUE: fletcher32:len <- $r2
	#DEBUG_VALUE: fletcher32:data <- $r1
	#DEBUG_VALUE: blocklen <- $r5
	r6 = r5
	goto LBB0_5
.Ltmp61:
.Ltmp62:
LBB0_8:
	#DEBUG_VALUE: fletcher32:len <- $r2
	.loc	0 29 5 is_stmt 1                # fletcher32.c:29:5
.Ltmp63:
	exit
.Ltmp64:
.Ltmp65:
.Lfunc_end0:
	.size	fletcher32, .Lfunc_end0-fletcher32
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	3
	.type	main,@function
main:                                   # @main
.Lfunc_begin1:
	.loc	0 33 0                          # fletcher32.c:33:0
	.cfi_startproc
# %bb.0:
	r3 = 0
.Ltmp66:
.Ltmp67:
	#DEBUG_VALUE: main:data <- undef
	#DEBUG_VALUE: main:message <- undef
	#DEBUG_VALUE: blocklen <- 360
	#DEBUG_VALUE: fletcher32:data <- undef
	#DEBUG_VALUE: fletcher32:c0 <- 0
	#DEBUG_VALUE: fletcher32:c1 <- 0
	#DEBUG_VALUE: fletcher32:len <- 0
	r1 = 0
	r4 = 0
.Ltmp68:
.Ltmp69:
LBB1_1:                                 # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: fletcher32:len <- 0
	#DEBUG_VALUE: fletcher32:c1 <- $r4
	#DEBUG_VALUE: fletcher32:c0 <- $r1
	#DEBUG_VALUE: fletcher32:data <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
	#DEBUG_VALUE: blocklen <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 18446744073709551614, DW_OP_mul, DW_OP_consts 360, DW_OP_plus, DW_OP_stack_value] $r3
	.loc	0 23 28 prologue_end            # fletcher32.c:23:28
.Ltmp70:
	r2 = .L.str ll
.Ltmp71:
.Ltmp72:
	#DEBUG_VALUE: fletcher32:data <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r3, $r2
	r2 += r3
.Ltmp73:
.Ltmp74:
	.loc	0 23 23 is_stmt 0               # fletcher32.c:23:23
.Ltmp75:
	r2 = *(u16 *)(r2 + 0)
	.loc	0 23 21                         # fletcher32.c:23:21
.Ltmp76:
	r1 += r2
.Ltmp77:
.Ltmp78:
	#DEBUG_VALUE: fletcher32:c0 <- $r1
	.loc	0 24 21 is_stmt 1               # fletcher32.c:24:21
.Ltmp79:
	r2 = r1
	r2 += r4
.Ltmp80:
.Ltmp81:
	#DEBUG_VALUE: blocklen <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 18446744073709551614, DW_OP_mul, DW_OP_consts 358, DW_OP_plus, DW_OP_stack_value] $r3
	#DEBUG_VALUE: fletcher32:c1 <- $r2
	.loc	0 25 9                          # fletcher32.c:25:9
.Ltmp82:
	r3 += 2
.Ltmp83:
.Ltmp84:
	.loc	0 0 9 is_stmt 0                 # fletcher32.c:0:9
	r4 = r2
	.loc	0 25 9                          # fletcher32.c:25:9
	if r3 != 360 goto LBB1_1
.Ltmp85:
.Ltmp86:
# %bb.2:
	#DEBUG_VALUE: fletcher32:c1 <- $r2
	#DEBUG_VALUE: fletcher32:c0 <- $r1
	#DEBUG_VALUE: fletcher32:len <- 0
	.loc	0 26 17 is_stmt 1               # fletcher32.c:26:17
.Ltmp87:
	r1 <<= 32
.Ltmp88:
.Ltmp89:
	r1 >>= 32
	r1 %= 65535
.Ltmp90:
.Ltmp91:
	#DEBUG_VALUE: fletcher32:c0 <- $r1
	.loc	0 27 17                         # fletcher32.c:27:17
.Ltmp92:
	r2 <<= 32
.Ltmp93:
.Ltmp94:
	r2 >>= 32
	r2 %= 65535
.Ltmp95:
.Ltmp96:
	#DEBUG_VALUE: fletcher32:data <- undef
	#DEBUG_VALUE: fletcher32:c1 <- $r2
	#DEBUG_VALUE: fletcher32:len <- 0
	.loc	0 29 16                         # fletcher32.c:29:16
.Ltmp97:
	r2 <<= 16
.Ltmp98:
.Ltmp99:
	r2 |= r1
.Ltmp100:
.Ltmp101:
	#DEBUG_VALUE: main:checksum <- $r2
	.loc	0 48 5                          # fletcher32.c:48:5
.Ltmp102:
	r1 = .L.str.1 ll
.Ltmp103:
.Ltmp104:
	call printf
.Ltmp105:
.Ltmp106:
	.loc	0 49 1                          # fletcher32.c:49:1
.Ltmp107:
	r0 = 0
	exit
.Ltmp108:
.Ltmp109:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"This is a test message for the Fletcher32 checksum algorithm.\nIt is 360 characters long to replicate the workflow under which thefemtocontainers implementation was tested.\nThe aim of this test the performance of the rBPF VM running on a microcontrollerand compare it against the native execution.\nThe next step: test the same workflow on stm32 microcontroller"
	.size	.L.str, 360

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Checksum: %d\n"
	.size	.L.str.1, 14

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	10                              # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	115                             # DW_OP_breg3
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
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	115                             # DW_OP_breg3
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
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
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
	.byte	116                             # DW_AT_rnglists_base
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
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
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
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xc:0x306 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	29                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0xa DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x35:0xd DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3a:0x7 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.short	360                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x42:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x46:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x4a:0xa DW_TAG_variable
	.long	84                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x54:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x59:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	14                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x60:0x8 DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	104                             # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
                                        # DW_AT_declaration
	.byte	9                               # Abbrev [9] 0x68:0x5 DW_TAG_pointer_type
	.long	109                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6d:0x8 DW_TAG_typedef
	.long	117                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x75:0x10b DW_TAG_structure_type
	.byte	49                              # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7a:0x9 DW_TAG_member
	.byte	6                               # DW_AT_name
	.long	384                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x83:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8c:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x95:0x9 DW_TAG_member
	.byte	10                              # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x9e:0x9 DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa7:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb0:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb9:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xc2:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xcb:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xd4:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xdd:0x9 DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	388                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xe6:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	393                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xef:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	400                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xf8:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	384                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x101:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	384                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x10a:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x113:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	417                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x11c:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	421                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x125:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	131                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x12e:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	437                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x137:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	446                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x140:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	466                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x149:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	473                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x152:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	400                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x15b:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x164:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x16d:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	384                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x176:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	493                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x180:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x184:0x5 DW_TAG_pointer_type
	.long	66                              # DW_AT_type
	.byte	9                               # Abbrev [9] 0x189:0x5 DW_TAG_pointer_type
	.long	398                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x18e:0x2 DW_TAG_structure_type
	.byte	20                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	9                               # Abbrev [9] 0x190:0x5 DW_TAG_pointer_type
	.long	117                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x195:0x8 DW_TAG_typedef
	.long	413                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x19d:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x1a1:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x1a5:0x4 DW_TAG_base_type
	.byte	30                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x1a9:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1ae:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1b5:0x5 DW_TAG_pointer_type
	.long	442                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1ba:0x4 DW_TAG_typedef
	.byte	33                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1be:0x8 DW_TAG_typedef
	.long	454                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1c6:0x8 DW_TAG_typedef
	.long	462                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1ce:0x4 DW_TAG_base_type
	.byte	35                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1d2:0x5 DW_TAG_pointer_type
	.long	471                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1d7:0x2 DW_TAG_structure_type
	.byte	39                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	9                               # Abbrev [9] 0x1d9:0x5 DW_TAG_pointer_type
	.long	478                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1de:0x2 DW_TAG_structure_type
	.byte	41                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	15                              # Abbrev [15] 0x1e0:0x1 DW_TAG_pointer_type
	.byte	10                              # Abbrev [10] 0x1e1:0x8 DW_TAG_typedef
	.long	489                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1e9:0x4 DW_TAG_base_type
	.byte	45                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x1ed:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1f2:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1f9:0x8 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.long	104                             # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
                                        # DW_AT_declaration
	.byte	9                               # Abbrev [9] 0x201:0x5 DW_TAG_pointer_type
	.long	518                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x206:0x8 DW_TAG_typedef
	.long	526                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x20e:0x8 DW_TAG_typedef
	.long	417                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x216:0x2e DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	90
                                        # DW_AT_call_all_calls
	.long	580                             # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x222:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	588                             # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x228:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	596                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x22e:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	604                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x234:0x6 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.long	612                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x23a:0x9 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	18                              # Abbrev [18] 0x23c:0x6 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.long	621                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x244:0x33 DW_TAG_subprogram
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	631                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x24c:0x8 DW_TAG_formal_parameter
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.long	651                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x254:0x8 DW_TAG_formal_parameter
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x25c:0x8 DW_TAG_variable
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	631                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x264:0x8 DW_TAG_variable
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	631                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x26c:0xa DW_TAG_lexical_block
	.byte	22                              # Abbrev [22] 0x26d:0x8 DW_TAG_variable
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x277:0x8 DW_TAG_typedef
	.long	639                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x27f:0x8 DW_TAG_typedef
	.long	647                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x287:0x4 DW_TAG_base_type
	.byte	55                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x28b:0x5 DW_TAG_pointer_type
	.long	656                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x290:0x5 DW_TAG_const_type
	.long	518                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x295:0x62 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	90
                                        # DW_AT_call_all_calls
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	384                             # DW_AT_type
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x2a4:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	631                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2ad:0x8 DW_TAG_variable
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	388                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2b5:0x8 DW_TAG_variable
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	513                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x2bd:0x33 DW_TAG_inlined_subroutine
	.long	580                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp100-.Ltmp68                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	47                              # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	17                              # Abbrev [17] 0x2ca:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	588                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x2d0:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	596                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x2d6:0x6 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.long	604                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x2dc:0x6 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.long	612                             # DW_AT_abstract_origin
	.byte	29                              # Abbrev [29] 0x2e2:0xd DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp95-.Ltmp68                 # DW_AT_high_pc
	.byte	18                              # Abbrev [18] 0x2e8:0x6 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.long	621                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x2f0:0x6 DW_TAG_call_site
	.long	759                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x2f7:0x10 DW_TAG_subprogram
	.byte	63                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	384                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x300:0x5 DW_TAG_formal_parameter
	.long	775                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x305:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x307:0x5 DW_TAG_pointer_type
	.long	780                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x30c:0x5 DW_TAG_const_type
	.long	66                              # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	1                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	272                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 16.0.6"          # string offset=0
.Linfo_string1:
	.asciz	"fletcher32.c"                  # string offset=21
.Linfo_string2:
	.asciz	"/home/szymon/Documents/projects/final-year-project/test-workloads" # string offset=34
.Linfo_string3:
	.asciz	"char"                          # string offset=100
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=105
.Linfo_string5:
	.asciz	"stdin"                         # string offset=125
.Linfo_string6:
	.asciz	"_flags"                        # string offset=131
.Linfo_string7:
	.asciz	"int"                           # string offset=138
.Linfo_string8:
	.asciz	"_IO_read_ptr"                  # string offset=142
.Linfo_string9:
	.asciz	"_IO_read_end"                  # string offset=155
.Linfo_string10:
	.asciz	"_IO_read_base"                 # string offset=168
.Linfo_string11:
	.asciz	"_IO_write_base"                # string offset=182
.Linfo_string12:
	.asciz	"_IO_write_ptr"                 # string offset=197
.Linfo_string13:
	.asciz	"_IO_write_end"                 # string offset=211
.Linfo_string14:
	.asciz	"_IO_buf_base"                  # string offset=225
.Linfo_string15:
	.asciz	"_IO_buf_end"                   # string offset=238
.Linfo_string16:
	.asciz	"_IO_save_base"                 # string offset=250
.Linfo_string17:
	.asciz	"_IO_backup_base"               # string offset=264
.Linfo_string18:
	.asciz	"_IO_save_end"                  # string offset=280
.Linfo_string19:
	.asciz	"_markers"                      # string offset=293
.Linfo_string20:
	.asciz	"_IO_marker"                    # string offset=302
.Linfo_string21:
	.asciz	"_chain"                        # string offset=313
.Linfo_string22:
	.asciz	"_fileno"                       # string offset=320
.Linfo_string23:
	.asciz	"_flags2"                       # string offset=328
.Linfo_string24:
	.asciz	"_old_offset"                   # string offset=336
.Linfo_string25:
	.asciz	"long"                          # string offset=348
.Linfo_string26:
	.asciz	"__off_t"                       # string offset=353
.Linfo_string27:
	.asciz	"_cur_column"                   # string offset=361
.Linfo_string28:
	.asciz	"unsigned short"                # string offset=373
.Linfo_string29:
	.asciz	"_vtable_offset"                # string offset=388
.Linfo_string30:
	.asciz	"signed char"                   # string offset=403
.Linfo_string31:
	.asciz	"_shortbuf"                     # string offset=415
.Linfo_string32:
	.asciz	"_lock"                         # string offset=425
.Linfo_string33:
	.asciz	"_IO_lock_t"                    # string offset=431
.Linfo_string34:
	.asciz	"_offset"                       # string offset=442
.Linfo_string35:
	.asciz	"long long"                     # string offset=450
.Linfo_string36:
	.asciz	"__int64_t"                     # string offset=460
.Linfo_string37:
	.asciz	"__off64_t"                     # string offset=470
.Linfo_string38:
	.asciz	"_codecvt"                      # string offset=480
.Linfo_string39:
	.asciz	"_IO_codecvt"                   # string offset=489
.Linfo_string40:
	.asciz	"_wide_data"                    # string offset=501
.Linfo_string41:
	.asciz	"_IO_wide_data"                 # string offset=512
.Linfo_string42:
	.asciz	"_freeres_list"                 # string offset=526
.Linfo_string43:
	.asciz	"_freeres_buf"                  # string offset=540
.Linfo_string44:
	.asciz	"__pad5"                        # string offset=553
.Linfo_string45:
	.asciz	"unsigned long"                 # string offset=560
.Linfo_string46:
	.asciz	"size_t"                        # string offset=574
.Linfo_string47:
	.asciz	"_mode"                         # string offset=581
.Linfo_string48:
	.asciz	"_unused2"                      # string offset=587
.Linfo_string49:
	.asciz	"_IO_FILE"                      # string offset=596
.Linfo_string50:
	.asciz	"FILE"                          # string offset=605
.Linfo_string51:
	.asciz	"stdout"                        # string offset=610
.Linfo_string52:
	.asciz	"__uint16_t"                    # string offset=617
.Linfo_string53:
	.asciz	"uint16_t"                      # string offset=628
.Linfo_string54:
	.asciz	"fletcher32"                    # string offset=637
.Linfo_string55:
	.asciz	"unsigned int"                  # string offset=648
.Linfo_string56:
	.asciz	"__uint32_t"                    # string offset=661
.Linfo_string57:
	.asciz	"uint32_t"                      # string offset=672
.Linfo_string58:
	.asciz	"data"                          # string offset=681
.Linfo_string59:
	.asciz	"len"                           # string offset=686
.Linfo_string60:
	.asciz	"c0"                            # string offset=690
.Linfo_string61:
	.asciz	"c1"                            # string offset=693
.Linfo_string62:
	.asciz	"blocklen"                      # string offset=696
.Linfo_string63:
	.asciz	"printf"                        # string offset=705
.Linfo_string64:
	.asciz	"main"                          # string offset=712
.Linfo_string65:
	.asciz	"checksum"                      # string offset=717
.Linfo_string66:
	.asciz	"message"                       # string offset=726
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
	.long	.Linfo_string66
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Ltmp68
	.quad	.Ltmp105
.Ldebug_addr_end0:
	.section	.BTF,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	24
	.long	0
	.long	356
	.long	356
	.long	660
	.long	0                               # BTF_KIND_PTR(id = 1)
	.long	33554432                        # 0x2000000
	.long	2
	.long	0                               # BTF_KIND_CONST(id = 2)
	.long	167772160                       # 0xa000000
	.long	3
	.long	1                               # BTF_KIND_TYPEDEF(id = 3)
	.long	134217728                       # 0x8000000
	.long	4
	.long	10                              # BTF_KIND_TYPEDEF(id = 4)
	.long	134217728                       # 0x8000000
	.long	5
	.long	21                              # BTF_KIND_INT(id = 5)
	.long	16777216                        # 0x1000000
	.long	2
	.long	16                              # 0x10
	.long	36                              # BTF_KIND_TYPEDEF(id = 6)
	.long	134217728                       # 0x8000000
	.long	7
	.long	43                              # BTF_KIND_INT(id = 7)
	.long	16777216                        # 0x1000000
	.long	8
	.long	64                              # 0x40
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 8)
	.long	218103810                       # 0xd000002
	.long	9
	.long	57
	.long	1
	.long	62
	.long	6
	.long	66                              # BTF_KIND_TYPEDEF(id = 9)
	.long	134217728                       # 0x8000000
	.long	10
	.long	75                              # BTF_KIND_TYPEDEF(id = 10)
	.long	134217728                       # 0x8000000
	.long	11
	.long	86                              # BTF_KIND_INT(id = 11)
	.long	16777216                        # 0x1000000
	.long	4
	.long	32                              # 0x20
	.long	99                              # BTF_KIND_FUNC(id = 12)
	.long	201326593                       # 0xc000001
	.long	8
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 13)
	.long	218103808                       # 0xd000000
	.long	14
	.long	566                             # BTF_KIND_INT(id = 14)
	.long	16777216                        # 0x1000000
	.long	4
	.long	16777248                        # 0x1000020
	.long	570                             # BTF_KIND_FUNC(id = 15)
	.long	201326593                       # 0xc000001
	.long	13
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 16)
	.long	218103810                       # 0xd000002
	.long	14
	.long	0
	.long	17
	.long	0
	.long	0
	.long	0                               # BTF_KIND_PTR(id = 17)
	.long	33554432                        # 0x2000000
	.long	18
	.long	0                               # BTF_KIND_CONST(id = 18)
	.long	167772160                       # 0xa000000
	.long	19
	.long	628                             # BTF_KIND_INT(id = 19)
	.long	16777216                        # 0x1000000
	.long	1
	.long	16777224                        # 0x1000008
	.long	633                             # BTF_KIND_FUNC(id = 20)
	.long	201326594                       # 0xc000002
	.long	16
	.long	0                               # BTF_KIND_ARRAY(id = 21)
	.long	50331648                        # 0x3000000
	.long	0
	.long	19
	.long	22
	.long	360
	.long	640                             # BTF_KIND_INT(id = 22)
	.long	16777216                        # 0x1000000
	.long	4
	.long	32                              # 0x20
	.long	0                               # BTF_KIND_ARRAY(id = 23)
	.long	50331648                        # 0x3000000
	.long	0
	.long	19
	.long	22
	.long	14
	.byte	0                               # string offset=0
	.ascii	"uint16_t"                      # string offset=1
	.byte	0
	.ascii	"__uint16_t"                    # string offset=10
	.byte	0
	.ascii	"unsigned short"                # string offset=21
	.byte	0
	.ascii	"size_t"                        # string offset=36
	.byte	0
	.ascii	"unsigned long"                 # string offset=43
	.byte	0
	.ascii	"data"                          # string offset=57
	.byte	0
	.ascii	"len"                           # string offset=62
	.byte	0
	.ascii	"uint32_t"                      # string offset=66
	.byte	0
	.ascii	"__uint32_t"                    # string offset=75
	.byte	0
	.ascii	"unsigned int"                  # string offset=86
	.byte	0
	.ascii	"fletcher32"                    # string offset=99
	.byte	0
	.ascii	".text"                         # string offset=110
	.byte	0
	.ascii	"/home/szymon/Documents/projects/final-year-project/test-workloads/fletcher32.c" # string offset=116
	.byte	0
	.ascii	"uint32_t fletcher32(const uint16_t *data, size_t len)" # string offset=195
	.byte	0
	.ascii	"    len = (len + 1) & ~1; /* Round up len to words */" # string offset=249
	.byte	0
	.ascii	"    for (c0 = c1 = 0; len > 0;) {" # string offset=303
	.byte	0
	.ascii	"            c0 = c0 + *data++;" # string offset=337
	.byte	0
	.ascii	"            c1 = c1 + c0;"     # string offset=368
	.byte	0
	.ascii	"        } while ((blocklen -= 2));" # string offset=394
	.byte	0
	.ascii	"        len -= blocklen;"      # string offset=429
	.byte	0
	.ascii	"        c1 = c1 % 65535;"      # string offset=454
	.byte	0
	.ascii	"        c0 = c0 % 65535;"      # string offset=479
	.byte	0
	.ascii	"    return (c1 << 16 | c0);"   # string offset=504
	.byte	0
	.ascii	"        if (blocklen > 360 * 2) {" # string offset=532
	.byte	0
	.ascii	"int"                           # string offset=566
	.byte	0
	.ascii	"main"                          # string offset=570
	.byte	0
	.ascii	"int main()"                    # string offset=575
	.byte	0
	.ascii	"    printf(\"Checksum: %d\\n\", checksum);" # string offset=586
	.byte	0
	.byte	125                             # string offset=626
	.byte	0
	.ascii	"char"                          # string offset=628
	.byte	0
	.ascii	"printf"                        # string offset=633
	.byte	0
	.ascii	"__ARRAY_SIZE_TYPE__"           # string offset=640
	.byte	0
	.section	.BTF.ext,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	32
	.long	0
	.long	28
	.long	28
	.long	460
	.long	488
	.long	0
	.long	8                               # FuncInfo
	.long	110                             # FuncInfo section string offset=110
	.long	2
	.long	.Lfunc_begin0
	.long	12
	.long	.Lfunc_begin1
	.long	15
	.long	16                              # LineInfo
	.long	110                             # LineInfo section string offset=110
	.long	28
	.long	.Lfunc_begin0
	.long	116
	.long	195
	.long	6144                            # Line 6 Col 0
	.long	.Ltmp2
	.long	116
	.long	249
	.long	9232                            # Line 9 Col 16
	.long	.Ltmp5
	.long	116
	.long	249
	.long	9237                            # Line 9 Col 21
	.long	.Ltmp8
	.long	116
	.long	303
	.long	16389                           # Line 16 Col 5
	.long	.Ltmp13
	.long	116
	.long	337
	.long	23575                           # Line 23 Col 23
	.long	.Ltmp14
	.long	116
	.long	337
	.long	23573                           # Line 23 Col 21
	.long	.Ltmp17
	.long	116
	.long	337
	.long	23580                           # Line 23 Col 28
	.long	.Ltmp20
	.long	116
	.long	368
	.long	24597                           # Line 24 Col 21
	.long	.Ltmp23
	.long	116
	.long	394
	.long	25628                           # Line 25 Col 28
	.long	.Ltmp28
	.long	116
	.long	394
	.long	25609                           # Line 25 Col 9
	.long	.Ltmp31
	.long	116
	.long	429
	.long	21517                           # Line 21 Col 13
	.long	.Ltmp34
	.long	116
	.long	454
	.long	27665                           # Line 27 Col 17
	.long	.Ltmp39
	.long	116
	.long	479
	.long	26641                           # Line 26 Col 17
	.long	.Ltmp46
	.long	116
	.long	303
	.long	16389                           # Line 16 Col 5
	.long	.Ltmp49
	.long	116
	.long	504
	.long	29712                           # Line 29 Col 16
	.long	.Ltmp56
	.long	116
	.long	532
	.long	18445                           # Line 18 Col 13
	.long	.Ltmp63
	.long	116
	.long	504
	.long	29701                           # Line 29 Col 5
	.long	.Lfunc_begin1
	.long	116
	.long	575
	.long	32768                           # Line 32 Col 0
	.long	.Ltmp70
	.long	116
	.long	337
	.long	23580                           # Line 23 Col 28
	.long	.Ltmp75
	.long	116
	.long	337
	.long	23575                           # Line 23 Col 23
	.long	.Ltmp76
	.long	116
	.long	337
	.long	23573                           # Line 23 Col 21
	.long	.Ltmp79
	.long	116
	.long	368
	.long	24597                           # Line 24 Col 21
	.long	.Ltmp82
	.long	116
	.long	394
	.long	25609                           # Line 25 Col 9
	.long	.Ltmp87
	.long	116
	.long	479
	.long	26641                           # Line 26 Col 17
	.long	.Ltmp92
	.long	116
	.long	454
	.long	27665                           # Line 27 Col 17
	.long	.Ltmp97
	.long	116
	.long	504
	.long	29712                           # Line 29 Col 16
	.long	.Ltmp102
	.long	116
	.long	586
	.long	49157                           # Line 48 Col 5
	.long	.Ltmp107
	.long	116
	.long	626
	.long	50177                           # Line 49 Col 1
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
