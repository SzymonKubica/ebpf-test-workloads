	.text
	.file	"fletcher32_benchmark.bpf.c"
	.file	0 "/home/szymon/Projects/ebpf-on-microcontrollers/ebpf-test-workloads" "fletcher32_benchmark.bpf.c" md5 0xbf4f32eb5e6bb7fe7e8f29e1cd3dc4ae
	.file	1 "/usr/include/bits" "types.h" md5 0x4a64d909bcfa62a0a7682c3ac78c6965
	.file	2 "/usr/include/bits" "stdint-uintn.h" md5 0x4ecee94d7257cd86659727d06a979b60
	.section	fletcher32,"ax",@progbits
	.globl	fletcher_32                     # -- Begin function fletcher_32
	.p2align	3
	.type	fletcher_32,@function
fletcher_32:                            # @fletcher_32
.Lfunc_begin0:
	.loc	0 16 0                          # fletcher32_benchmark.bpf.c:16:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	*(u64 *)(r10 - 8) = r1
.Ltmp0:
	.loc	0 19 11 prologue_end            # fletcher32_benchmark.bpf.c:19:11
.Ltmp1:
.Ltmp2:
	r1 = .L.str ll
	*(u64 *)(r10 - 16) = r1
	.loc	0 22 34                         # fletcher32_benchmark.bpf.c:22:34
.Ltmp3:
	r1 = *(u64 *)(r10 - 16)
	.loc	0 22 15 is_stmt 0               # fletcher32_benchmark.bpf.c:22:15
.Ltmp4:
	*(u64 *)(r10 - 24) = r1
	.loc	0 25 25 is_stmt 1               # fletcher32_benchmark.bpf.c:25:25
.Ltmp5:
	r1 = *(u64 *)(r10 - 16)
	.loc	0 25 18 is_stmt 0               # fletcher32_benchmark.bpf.c:25:18
.Ltmp6:
	call strlen
	.loc	0 25 34                         # fletcher32_benchmark.bpf.c:25:34
.Ltmp7:
	r0 >>= 1
	.loc	0 25 12                         # fletcher32_benchmark.bpf.c:25:12
.Ltmp8:
	*(u64 *)(r10 - 32) = r0
	r1 = 0
	.loc	0 27 14 is_stmt 1               # fletcher32_benchmark.bpf.c:27:14
.Ltmp9:
	*(u32 *)(r10 - 36) = r1
	.loc	0 28 14                         # fletcher32_benchmark.bpf.c:28:14
.Ltmp10:
	*(u32 *)(r10 - 40) = r1
.Ltmp11:
	.loc	0 31 18                         # fletcher32_benchmark.bpf.c:31:18
.Ltmp12:
.Ltmp13:
	*(u32 *)(r10 - 40) = r1
	.loc	0 31 13 is_stmt 0               # fletcher32_benchmark.bpf.c:31:13
.Ltmp14:
	*(u32 *)(r10 - 36) = r1
	.loc	0 31 10                         # fletcher32_benchmark.bpf.c:31:10
.Ltmp15:
	goto LBB0_1
LBB0_1:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
.Ltmp16:
	.loc	0 31 23                         # fletcher32_benchmark.bpf.c:31:23
.Ltmp17:
.Ltmp18:
	r1 = *(u64 *)(r10 - 32)
.Ltmp19:
.Ltmp20:
	.loc	0 31 5                          # fletcher32_benchmark.bpf.c:31:5
.Ltmp21:
	if r1 == 0 goto LBB0_9
	goto LBB0_2
LBB0_2:                                 #   in Loop: Header=BB0_1 Depth=1
.Ltmp22:
	.loc	0 32 27 is_stmt 1               # fletcher32_benchmark.bpf.c:32:27
.Ltmp23:
.Ltmp24:
	r1 = *(u64 *)(r10 - 32)
	.loc	0 32 16 is_stmt 0               # fletcher32_benchmark.bpf.c:32:16
.Ltmp25:
	*(u64 *)(r10 - 48) = r1
.Ltmp26:
	.loc	0 33 13 is_stmt 1               # fletcher32_benchmark.bpf.c:33:13
.Ltmp27:
.Ltmp28:
	r2 = *(u64 *)(r10 - 48)
	r1 = 721
.Ltmp29:
.Ltmp30:
	.loc	0 33 13 is_stmt 0               # fletcher32_benchmark.bpf.c:33:13
.Ltmp31:
	if r1 > r2 goto LBB0_4
	goto LBB0_3
LBB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	.loc	0 0 13                          # fletcher32_benchmark.bpf.c:0:13
	r1 = 720
.Ltmp32:
	.loc	0 34 22 is_stmt 1               # fletcher32_benchmark.bpf.c:34:22
.Ltmp33:
.Ltmp34:
	*(u64 *)(r10 - 48) = r1
	.loc	0 35 9                          # fletcher32_benchmark.bpf.c:35:9
.Ltmp35:
	goto LBB0_4
.Ltmp36:
.Ltmp37:
LBB0_4:                                 #   in Loop: Header=BB0_1 Depth=1
	.loc	0 36 16                         # fletcher32_benchmark.bpf.c:36:16
.Ltmp38:
	r2 = *(u64 *)(r10 - 48)
	.loc	0 36 13 is_stmt 0               # fletcher32_benchmark.bpf.c:36:13
.Ltmp39:
	r1 = *(u64 *)(r10 - 32)
	r1 -= r2
	*(u64 *)(r10 - 32) = r1
	r1 = 0
.Ltmp40:
	.loc	0 37 21 is_stmt 1               # fletcher32_benchmark.bpf.c:37:21
.Ltmp41:
.Ltmp42:
	*(u64 *)(r10 - 56) = r1
	.loc	0 37 14 is_stmt 0               # fletcher32_benchmark.bpf.c:37:14
.Ltmp43:
	goto LBB0_5
LBB0_5:                                 #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp44:
	.loc	0 37 28                         # fletcher32_benchmark.bpf.c:37:28
.Ltmp45:
.Ltmp46:
	r1 = *(u64 *)(r10 - 56)
	.loc	0 37 32                         # fletcher32_benchmark.bpf.c:37:32
.Ltmp47:
	r2 = *(u64 *)(r10 - 48)
.Ltmp48:
.Ltmp49:
	.loc	0 37 9                          # fletcher32_benchmark.bpf.c:37:9
.Ltmp50:
	if r1 >= r2 goto LBB0_8
	goto LBB0_6
LBB0_6:                                 #   in Loop: Header=BB0_5 Depth=2
.Ltmp51:
	.loc	0 38 24 is_stmt 1               # fletcher32_benchmark.bpf.c:38:24
.Ltmp52:
.Ltmp53:
	r1 = *(u64 *)(r10 - 24)
	.loc	0 38 22 is_stmt 0               # fletcher32_benchmark.bpf.c:38:22
.Ltmp54:
	r1 = *(u16 *)(r1 + 0)
	.loc	0 38 18                         # fletcher32_benchmark.bpf.c:38:18
.Ltmp55:
	*(u8 *)(r10 - 57) = r1
	.loc	0 39 18 is_stmt 1               # fletcher32_benchmark.bpf.c:39:18
.Ltmp56:
	r1 = *(u32 *)(r10 - 36)
	.loc	0 39 23 is_stmt 0               # fletcher32_benchmark.bpf.c:39:23
.Ltmp57:
	r2 = *(u8 *)(r10 - 57)
	r2 <<= 56
	r2 s>>= 56
	.loc	0 39 21                         # fletcher32_benchmark.bpf.c:39:21
.Ltmp58:
	r1 += r2
	.loc	0 39 16                         # fletcher32_benchmark.bpf.c:39:16
.Ltmp59:
	*(u32 *)(r10 - 36) = r1
	.loc	0 40 18 is_stmt 1               # fletcher32_benchmark.bpf.c:40:18
.Ltmp60:
	r1 = *(u32 *)(r10 - 40)
	.loc	0 40 23 is_stmt 0               # fletcher32_benchmark.bpf.c:40:23
.Ltmp61:
	r2 = *(u32 *)(r10 - 36)
	.loc	0 40 21                         # fletcher32_benchmark.bpf.c:40:21
.Ltmp62:
	r1 += r2
	.loc	0 40 16                         # fletcher32_benchmark.bpf.c:40:16
.Ltmp63:
	*(u32 *)(r10 - 40) = r1
	.loc	0 41 18 is_stmt 1               # fletcher32_benchmark.bpf.c:41:18
.Ltmp64:
	r1 = *(u64 *)(r10 - 24)
	r1 += 2
	*(u64 *)(r10 - 24) = r1
	.loc	0 42 9                          # fletcher32_benchmark.bpf.c:42:9
.Ltmp65:
	goto LBB0_7
.Ltmp66:
.Ltmp67:
LBB0_7:                                 #   in Loop: Header=BB0_5 Depth=2
	.loc	0 37 44                         # fletcher32_benchmark.bpf.c:37:44
.Ltmp68:
	r1 = *(u64 *)(r10 - 56)
	r1 += 2
	*(u64 *)(r10 - 56) = r1
	.loc	0 37 9 is_stmt 0                # fletcher32_benchmark.bpf.c:37:9
.Ltmp69:
	goto LBB0_5
.Ltmp70:
.Ltmp71:
LBB0_8:                                 #   in Loop: Header=BB0_1 Depth=1
	.loc	0 43 14 is_stmt 1               # fletcher32_benchmark.bpf.c:43:14
.Ltmp72:
	r1 = *(u32 *)(r10 - 36)
	.loc	0 43 17 is_stmt 0               # fletcher32_benchmark.bpf.c:43:17
.Ltmp73:
	r1 %= 65535
	.loc	0 43 12                         # fletcher32_benchmark.bpf.c:43:12
.Ltmp74:
	*(u32 *)(r10 - 36) = r1
	.loc	0 44 14 is_stmt 1               # fletcher32_benchmark.bpf.c:44:14
.Ltmp75:
	r1 = *(u32 *)(r10 - 40)
	.loc	0 44 17 is_stmt 0               # fletcher32_benchmark.bpf.c:44:17
.Ltmp76:
	r1 %= 65535
	.loc	0 44 12                         # fletcher32_benchmark.bpf.c:44:12
.Ltmp77:
	*(u32 *)(r10 - 40) = r1
.Ltmp78:
.Ltmp79:
	.loc	0 31 5 is_stmt 1                # fletcher32_benchmark.bpf.c:31:5
.Ltmp80:
	goto LBB0_1
.Ltmp81:
.Ltmp82:
LBB0_9:
	.loc	0 47 26                         # fletcher32_benchmark.bpf.c:47:26
.Ltmp83:
	r1 = *(u32 *)(r10 - 40)
	.loc	0 47 29 is_stmt 0               # fletcher32_benchmark.bpf.c:47:29
.Ltmp84:
	r1 <<= 16
	.loc	0 47 37                         # fletcher32_benchmark.bpf.c:47:37
.Ltmp85:
	r2 = *(u32 *)(r10 - 36)
	.loc	0 47 35                         # fletcher32_benchmark.bpf.c:47:35
.Ltmp86:
	r1 |= r2
	.loc	0 47 14                         # fletcher32_benchmark.bpf.c:47:14
.Ltmp87:
	*(u32 *)(r10 - 64) = r1
	.loc	0 49 5 is_stmt 1                # fletcher32_benchmark.bpf.c:49:5
.Ltmp88:
	r0 = *(u32 *)(r10 - 64)
	exit
.Ltmp89:
.Ltmp90:
.Lfunc_end0:
	.size	fletcher_32, .Lfunc_end0-fletcher_32
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"This is a test message for the Fletcher32 checksum algorithm.\n"
	.size	.L.str, 63

	.file	3 "/usr/lib/clang/16/include" "stddef.h" md5 0xf95079da609b0e8f201cb8136304bf3b
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
	.byte	11                              # DW_FORM_data1
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
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
	.byte	10                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
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
	.byte	11                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
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
	.byte	12                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
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
	.byte	1                               # Abbrev [1] 0xc:0x10c DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	29                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.byte	2                               # Abbrev [2] 0x23:0xa DW_TAG_variable
	.long	45                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x2d:0xc DW_TAG_array_type
	.long	57                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x32:0x6 DW_TAG_subrange_type
	.long	61                              # DW_AT_type
	.byte	63                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x39:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x3d:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x41:0x5 DW_TAG_pointer_type
	.long	70                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0x46:0x8 DW_TAG_typedef
	.long	78                              # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x4e:0x8 DW_TAG_typedef
	.long	86                              # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x56:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x5a:0x93 DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	90
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	237                             # DW_AT_type
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x69:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	56
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	241                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x74:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	48
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	242                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7f:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	40
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	11                              # Abbrev [11] 0x8a:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	247                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x95:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	28
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	259                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xa0:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	24
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	259                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xab:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	259                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xb6:0x36 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp78-.Ltmp22                 # DW_AT_high_pc
	.byte	11                              # Abbrev [11] 0xbc:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	247                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xc7:0x24 DW_TAG_lexical_block
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp70-.Ltmp40                 # DW_AT_high_pc
	.byte	11                              # Abbrev [11] 0xcd:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	247                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xd8:0x12 DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp66-.Ltmp51                 # DW_AT_high_pc
	.byte	11                              # Abbrev [11] 0xde:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	7
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	57                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xed:0x4 DW_TAG_base_type
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0xf1:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0xf2:0x5 DW_TAG_pointer_type
	.long	57                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0xf7:0x8 DW_TAG_typedef
	.long	255                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xff:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x103:0x8 DW_TAG_typedef
	.long	267                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x10b:0x8 DW_TAG_typedef
	.long	275                             # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x113:0x4 DW_TAG_base_type
	.byte	17                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	104                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 16.0.6"          # string offset=0
.Linfo_string1:
	.asciz	"fletcher32_benchmark.bpf.c"    # string offset=21
.Linfo_string2:
	.asciz	"/home/szymon/Projects/ebpf-on-microcontrollers/ebpf-test-workloads" # string offset=48
.Linfo_string3:
	.asciz	"char"                          # string offset=115
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=120
.Linfo_string5:
	.asciz	"unsigned short"                # string offset=140
.Linfo_string6:
	.asciz	"__uint16_t"                    # string offset=155
.Linfo_string7:
	.asciz	"uint16_t"                      # string offset=166
.Linfo_string8:
	.asciz	"fletcher_32"                   # string offset=175
.Linfo_string9:
	.asciz	"int"                           # string offset=187
.Linfo_string10:
	.asciz	"ctx"                           # string offset=191
.Linfo_string11:
	.asciz	"message"                       # string offset=195
.Linfo_string12:
	.asciz	"data"                          # string offset=203
.Linfo_string13:
	.asciz	"len"                           # string offset=208
.Linfo_string14:
	.asciz	"unsigned long"                 # string offset=212
.Linfo_string15:
	.asciz	"size_t"                        # string offset=226
.Linfo_string16:
	.asciz	"c0"                            # string offset=233
.Linfo_string17:
	.asciz	"unsigned int"                  # string offset=236
.Linfo_string18:
	.asciz	"__uint32_t"                    # string offset=249
.Linfo_string19:
	.asciz	"uint32_t"                      # string offset=260
.Linfo_string20:
	.asciz	"c1"                            # string offset=269
.Linfo_string21:
	.asciz	"blocklen"                      # string offset=272
.Linfo_string22:
	.asciz	"i"                             # string offset=281
.Linfo_string23:
	.asciz	"c"                             # string offset=283
.Linfo_string24:
	.asciz	"checksum"                      # string offset=285
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.Lfunc_begin0
	.quad	.Ltmp22
	.quad	.Ltmp40
	.quad	.Ltmp51
.Ldebug_addr_end0:
	.section	.BTF,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	24
	.long	0
	.long	188
	.long	188
	.long	770
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 1)
	.long	218103809                       # 0xd000001
	.long	2
	.long	0
	.long	3
	.long	1                               # BTF_KIND_INT(id = 2)
	.long	16777216                        # 0x1000000
	.long	4
	.long	16777248                        # 0x1000020
	.long	0                               # BTF_KIND_PTR(id = 3)
	.long	33554432                        # 0x2000000
	.long	0
	.long	5                               # BTF_KIND_FUNC(id = 4)
	.long	201326593                       # 0xc000001
	.long	1
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 5)
	.long	218103809                       # 0xd000001
	.long	6
	.long	0
	.long	7
	.long	724                             # BTF_KIND_INT(id = 6)
	.long	16777216                        # 0x1000000
	.long	8
	.long	64                              # 0x40
	.long	0                               # BTF_KIND_PTR(id = 7)
	.long	33554432                        # 0x2000000
	.long	8
	.long	0                               # BTF_KIND_CONST(id = 8)
	.long	167772160                       # 0xa000000
	.long	9
	.long	738                             # BTF_KIND_INT(id = 9)
	.long	16777216                        # 0x1000000
	.long	1
	.long	16777224                        # 0x1000008
	.long	743                             # BTF_KIND_FUNC(id = 10)
	.long	201326594                       # 0xc000002
	.long	5
	.long	0                               # BTF_KIND_ARRAY(id = 11)
	.long	50331648                        # 0x3000000
	.long	0
	.long	9
	.long	12
	.long	63
	.long	750                             # BTF_KIND_INT(id = 12)
	.long	16777216                        # 0x1000000
	.long	4
	.long	32                              # 0x20
	.byte	0                               # string offset=0
	.ascii	"int"                           # string offset=1
	.byte	0
	.ascii	"fletcher_32"                   # string offset=5
	.byte	0
	.ascii	"fletcher32"                    # string offset=17
	.byte	0
	.ascii	"/home/szymon/Projects/ebpf-on-microcontrollers/ebpf-test-workloads/fletcher32_benchmark.bpf.c" # string offset=28
	.byte	0
	.ascii	"int fletcher_32(void *ctx)"    # string offset=122
	.byte	0
	.ascii	"    char *message ="           # string offset=149
	.byte	0
	.ascii	"    uint16_t *data = (uint16_t *)message;" # string offset=169
	.byte	0
	.ascii	"    size_t len = strlen(message) / 2;" # string offset=211
	.byte	0
	.ascii	"    uint32_t c0 = 0;"          # string offset=249
	.byte	0
	.ascii	"    uint32_t c1 = 0;"          # string offset=270
	.byte	0
	.ascii	"    for (c0 = c1 = 0; len > 0;) {" # string offset=291
	.byte	0
	.ascii	"        size_t blocklen = len;" # string offset=325
	.byte	0
	.ascii	"        if (blocklen > 360 * 2) {" # string offset=356
	.byte	0
	.ascii	"            blocklen = 360 * 2;" # string offset=390
	.byte	0
	.ascii	"        }"                     # string offset=422
	.byte	0
	.ascii	"        len -= blocklen;"      # string offset=432
	.byte	0
	.ascii	"        for (size_t i = 0; i < blocklen; i += 2) {" # string offset=457
	.byte	0
	.ascii	"            char c = *(data);" # string offset=508
	.byte	0
	.ascii	"            c0 = c0 + c;"      # string offset=538
	.byte	0
	.ascii	"            c1 = c1 + c0;"     # string offset=563
	.byte	0
	.ascii	"            data += 1;"        # string offset=589
	.byte	0
	.ascii	"        c0 = c0 % 65535;"      # string offset=612
	.byte	0
	.ascii	"        c1 = c1 % 65535;"      # string offset=637
	.byte	0
	.ascii	"    uint32_t checksum = (c1 << 16 | c0);" # string offset=662
	.byte	0
	.ascii	"    return checksum;"          # string offset=703
	.byte	0
	.ascii	"unsigned long"                 # string offset=724
	.byte	0
	.ascii	"char"                          # string offset=738
	.byte	0
	.ascii	"strlen"                        # string offset=743
	.byte	0
	.ascii	"__ARRAY_SIZE_TYPE__"           # string offset=750
	.byte	0
	.section	.BTF.ext,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	32
	.long	0
	.long	20
	.long	20
	.long	908
	.long	928
	.long	0
	.long	8                               # FuncInfo
	.long	17                              # FuncInfo section string offset=17
	.long	1
	.long	.Lfunc_begin0
	.long	4
	.long	16                              # LineInfo
	.long	17                              # LineInfo section string offset=17
	.long	56
	.long	.Lfunc_begin0
	.long	28
	.long	122
	.long	15360                           # Line 15 Col 0
	.long	.Ltmp2
	.long	28
	.long	149
	.long	19467                           # Line 19 Col 11
	.long	.Ltmp3
	.long	28
	.long	169
	.long	22562                           # Line 22 Col 34
	.long	.Ltmp4
	.long	28
	.long	169
	.long	22543                           # Line 22 Col 15
	.long	.Ltmp5
	.long	28
	.long	211
	.long	25625                           # Line 25 Col 25
	.long	.Ltmp6
	.long	28
	.long	211
	.long	25618                           # Line 25 Col 18
	.long	.Ltmp7
	.long	28
	.long	211
	.long	25634                           # Line 25 Col 34
	.long	.Ltmp8
	.long	28
	.long	211
	.long	25612                           # Line 25 Col 12
	.long	.Ltmp9
	.long	28
	.long	249
	.long	27662                           # Line 27 Col 14
	.long	.Ltmp10
	.long	28
	.long	270
	.long	28686                           # Line 28 Col 14
	.long	.Ltmp13
	.long	28
	.long	291
	.long	31762                           # Line 31 Col 18
	.long	.Ltmp14
	.long	28
	.long	291
	.long	31757                           # Line 31 Col 13
	.long	.Ltmp15
	.long	28
	.long	291
	.long	31754                           # Line 31 Col 10
	.long	.Ltmp18
	.long	28
	.long	291
	.long	31767                           # Line 31 Col 23
	.long	.Ltmp21
	.long	28
	.long	291
	.long	31749                           # Line 31 Col 5
	.long	.Ltmp24
	.long	28
	.long	325
	.long	32795                           # Line 32 Col 27
	.long	.Ltmp25
	.long	28
	.long	325
	.long	32784                           # Line 32 Col 16
	.long	.Ltmp28
	.long	28
	.long	356
	.long	33805                           # Line 33 Col 13
	.long	.Ltmp31
	.long	28
	.long	356
	.long	33805                           # Line 33 Col 13
	.long	.Ltmp34
	.long	28
	.long	390
	.long	34838                           # Line 34 Col 22
	.long	.Ltmp35
	.long	28
	.long	422
	.long	35849                           # Line 35 Col 9
	.long	.Ltmp38
	.long	28
	.long	432
	.long	36880                           # Line 36 Col 16
	.long	.Ltmp39
	.long	28
	.long	432
	.long	36877                           # Line 36 Col 13
	.long	.Ltmp42
	.long	28
	.long	457
	.long	37909                           # Line 37 Col 21
	.long	.Ltmp43
	.long	28
	.long	457
	.long	37902                           # Line 37 Col 14
	.long	.Ltmp46
	.long	28
	.long	457
	.long	37916                           # Line 37 Col 28
	.long	.Ltmp47
	.long	28
	.long	457
	.long	37920                           # Line 37 Col 32
	.long	.Ltmp50
	.long	28
	.long	457
	.long	37897                           # Line 37 Col 9
	.long	.Ltmp53
	.long	28
	.long	508
	.long	38936                           # Line 38 Col 24
	.long	.Ltmp54
	.long	28
	.long	508
	.long	38934                           # Line 38 Col 22
	.long	.Ltmp55
	.long	28
	.long	508
	.long	38930                           # Line 38 Col 18
	.long	.Ltmp56
	.long	28
	.long	538
	.long	39954                           # Line 39 Col 18
	.long	.Ltmp57
	.long	28
	.long	538
	.long	39959                           # Line 39 Col 23
	.long	.Ltmp58
	.long	28
	.long	538
	.long	39957                           # Line 39 Col 21
	.long	.Ltmp59
	.long	28
	.long	538
	.long	39952                           # Line 39 Col 16
	.long	.Ltmp60
	.long	28
	.long	563
	.long	40978                           # Line 40 Col 18
	.long	.Ltmp61
	.long	28
	.long	563
	.long	40983                           # Line 40 Col 23
	.long	.Ltmp62
	.long	28
	.long	563
	.long	40981                           # Line 40 Col 21
	.long	.Ltmp63
	.long	28
	.long	563
	.long	40976                           # Line 40 Col 16
	.long	.Ltmp64
	.long	28
	.long	589
	.long	42002                           # Line 41 Col 18
	.long	.Ltmp65
	.long	28
	.long	422
	.long	43017                           # Line 42 Col 9
	.long	.Ltmp68
	.long	28
	.long	457
	.long	37932                           # Line 37 Col 44
	.long	.Ltmp69
	.long	28
	.long	457
	.long	37897                           # Line 37 Col 9
	.long	.Ltmp72
	.long	28
	.long	612
	.long	44046                           # Line 43 Col 14
	.long	.Ltmp73
	.long	28
	.long	612
	.long	44049                           # Line 43 Col 17
	.long	.Ltmp74
	.long	28
	.long	612
	.long	44044                           # Line 43 Col 12
	.long	.Ltmp75
	.long	28
	.long	637
	.long	45070                           # Line 44 Col 14
	.long	.Ltmp76
	.long	28
	.long	637
	.long	45073                           # Line 44 Col 17
	.long	.Ltmp77
	.long	28
	.long	637
	.long	45068                           # Line 44 Col 12
	.long	.Ltmp80
	.long	28
	.long	291
	.long	31749                           # Line 31 Col 5
	.long	.Ltmp83
	.long	28
	.long	662
	.long	48154                           # Line 47 Col 26
	.long	.Ltmp84
	.long	28
	.long	662
	.long	48157                           # Line 47 Col 29
	.long	.Ltmp85
	.long	28
	.long	662
	.long	48165                           # Line 47 Col 37
	.long	.Ltmp86
	.long	28
	.long	662
	.long	48163                           # Line 47 Col 35
	.long	.Ltmp87
	.long	28
	.long	662
	.long	48142                           # Line 47 Col 14
	.long	.Ltmp88
	.long	28
	.long	703
	.long	50181                           # Line 49 Col 5
	.addrsig
	.addrsig_sym fletcher_32
	.addrsig_sym strlen
	.section	.debug_line,"",@progbits
.Lline_table_start0:
