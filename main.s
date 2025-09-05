	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/confuzzl/dev/c/vector" "main.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"header_init(%lu)\n"
.LC1:
	.string	"new header at %p: data at %p\n"
	.text
	.globl	header_init
	.type	header_init, @function
header_init:
.LVL0:
.LFB39:
	.file 1 "vector.h"
	.loc 1 16 39 view -0
	.cfi_startproc
	.loc 1 16 39 is_stmt 0 view .LVU1
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	.loc 1 17 2 is_stmt 1 view .LVU2
.LVL1:
.LBB23:
.LBI23:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 84 1 view .LVU3
.LBB24:
	.loc 2 86 3 view .LVU4
	.loc 2 86 10 is_stmt 0 view .LVU5
	movq	%rdi, %rdx
	leaq	.LC0(%rip), %rsi
	movl	$2, %edi
.LVL2:
	.loc 2 86 10 view .LVU6
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL3:
	.loc 2 86 10 view .LVU7
.LBE24:
.LBE23:
	.loc 1 18 2 is_stmt 1 view .LVU8
	.loc 1 19 2 view .LVU9
	.loc 1 20 2 view .LVU10
	.loc 1 20 19 is_stmt 0 view .LVU11
	leaq	16(%rbx), %rdi
	call	malloc@PLT
.LVL4:
	movq	%rax, %rbx
.LVL5:
	.loc 1 21 2 is_stmt 1 view .LVU12
	.loc 1 21 19 is_stmt 0 view .LVU13
	movq	$1, (%rax)
	.loc 1 22 2 is_stmt 1 view .LVU14
	.loc 1 22 16 is_stmt 0 view .LVU15
	movq	$0, 8(%rax)
	.loc 1 23 2 is_stmt 1 view .LVU16
	.loc 1 23 57 is_stmt 0 view .LVU17
	leaq	16(%rax), %rcx
.LVL6:
.LBB25:
.LBI25:
	.loc 2 84 1 is_stmt 1 view .LVU18
.LBB26:
	.loc 2 86 3 view .LVU19
	.loc 2 86 10 is_stmt 0 view .LVU20
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
.LVL7:
	.loc 2 86 10 view .LVU21
	call	__printf_chk@PLT
.LVL8:
	.loc 2 86 10 view .LVU22
.LBE26:
.LBE25:
	.loc 1 24 2 is_stmt 1 view .LVU23
	.loc 1 25 1 is_stmt 0 view .LVU24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL9:
	.loc 1 25 1 view .LVU25
	ret
	.cfi_endproc
.LFE39:
	.size	header_init, .-header_init
	.globl	get_header
	.type	get_header, @function
get_header:
.LVL10:
.LFB40:
	.loc 1 26 31 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 26 31 is_stmt 0 view .LVU27
	endbr64
	.loc 1 27 2 is_stmt 1 view .LVU28
	.loc 1 27 9 is_stmt 0 view .LVU29
	leaq	-16(%rdi), %rax
	.loc 1 28 1 view .LVU30
	ret
	.cfi_endproc
.LFE40:
	.size	get_header, .-get_header
	.globl	vec_capacity
	.type	vec_capacity, @function
vec_capacity:
.LVL11:
.LFB41:
	.loc 1 29 32 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 29 32 is_stmt 0 view .LVU32
	endbr64
	.loc 1 29 34 is_stmt 1 view .LVU33
	.loc 1 29 41 is_stmt 0 view .LVU34
	call	get_header
.LVL12:
	.loc 1 29 56 discriminator 1 view .LVU35
	movq	(%rax), %rax
	.loc 1 29 68 view .LVU36
	ret
	.cfi_endproc
.LFE41:
	.size	vec_capacity, .-vec_capacity
	.globl	vec_count
	.type	vec_count, @function
vec_count:
.LVL13:
.LFB42:
	.loc 1 30 29 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 30 29 is_stmt 0 view .LVU38
	endbr64
	.loc 1 30 31 is_stmt 1 view .LVU39
	.loc 1 30 38 is_stmt 0 view .LVU40
	call	get_header
.LVL14:
	.loc 1 30 53 discriminator 1 view .LVU41
	movq	8(%rax), %rax
	.loc 1 30 62 view .LVU42
	ret
	.cfi_endproc
.LFE42:
	.size	vec_count, .-vec_count
	.globl	init_vec
	.type	init_vec, @function
init_vec:
.LVL15:
.LFB43:
	.loc 1 32 45 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 32 45 is_stmt 0 view .LVU44
	endbr64
	movq	%rdi, %rax
	.loc 1 33 2 is_stmt 1 view .LVU45
	.loc 1 33 19 is_stmt 0 view .LVU46
	testq	%rdi, %rdi
	je	.L12
	.loc 1 34 1 view .LVU47
	ret
.L12:
	.loc 1 32 45 view .LVU48
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 33 22 discriminator 1 view .LVU49
	movq	%rsi, %rdi
.LVL16:
	.loc 1 33 22 discriminator 1 view .LVU50
	call	header_init
.LVL17:
	.loc 1 33 19 discriminator 1 view .LVU51
	addq	$16, %rax
	.loc 1 34 1 view .LVU52
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	init_vec, .-init_vec
	.globl	header_from
	.type	header_from, @function
header_from:
.LVL18:
.LFB44:
	.loc 1 35 50 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 35 50 is_stmt 0 view .LVU54
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 36 2 is_stmt 1 view .LVU55
	.loc 1 36 31 is_stmt 0 view .LVU56
	testq	%rdi, %rdi
	je	.L14
	.loc 1 36 15 discriminator 1 view .LVU57
	call	get_header
.LVL19:
.L13:
	.loc 1 37 1 view .LVU58
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL20:
.L14:
	.cfi_restore_state
	.loc 1 36 33 discriminator 2 view .LVU59
	movq	%rsi, %rdi
.LVL21:
	.loc 1 36 33 discriminator 2 view .LVU60
	call	header_init
.LVL22:
	.loc 1 36 31 view .LVU61
	jmp	.L13
	.cfi_endproc
.LFE44:
	.size	header_from, .-header_from
	.section	.rodata.str1.1
.LC2:
	.string	"prepare_push(%p, %lu)\n"
.LC3:
	.string	"header = %p\n"
.LC4:
	.string	"header->count++=%lu\n"
.LC5:
	.string	"header->capacity *= %d = %lu\n"
.LC6:
	.string	"new_header = %p\n"
	.text
	.globl	prepare_push
	.type	prepare_push, @function
prepare_push:
.LVL23:
.LFB45:
	.loc 1 38 49 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 38 49 is_stmt 0 view .LVU63
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	.loc 1 39 2 is_stmt 1 view .LVU64
.LVL24:
.LBB27:
.LBI27:
	.loc 2 84 1 view .LVU65
.LBB28:
	.loc 2 86 3 view .LVU66
	.loc 2 86 10 is_stmt 0 view .LVU67
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rsi
.LVL25:
	.loc 2 86 10 view .LVU68
	movl	$2, %edi
.LVL26:
	.loc 2 86 10 view .LVU69
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL27:
	.loc 2 86 10 view .LVU70
.LBE28:
.LBE27:
	.loc 1 40 2 is_stmt 1 view .LVU71
	.loc 1 40 19 is_stmt 0 view .LVU72
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	header_from
.LVL28:
	movq	%rax, %rbx
.LVL29:
	.loc 1 41 2 is_stmt 1 view .LVU73
.LBB29:
.LBI29:
	.loc 2 84 1 view .LVU74
.LBB30:
	.loc 2 86 3 view .LVU75
	.loc 2 86 10 is_stmt 0 view .LVU76
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
.LVL30:
	.loc 2 86 10 view .LVU77
	call	__printf_chk@PLT
.LVL31:
	.loc 2 86 10 view .LVU78
.LBE30:
.LBE29:
	.loc 1 42 2 is_stmt 1 view .LVU79
	.loc 1 42 15 is_stmt 0 view .LVU80
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	.loc 1 43 2 is_stmt 1 view .LVU81
.LVL32:
.LBB31:
.LBI31:
	.loc 2 84 1 view .LVU82
.LBB32:
	.loc 2 86 3 view .LVU83
	.loc 2 86 10 is_stmt 0 view .LVU84
	leaq	.LC4(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL33:
	.loc 2 86 10 view .LVU85
.LBE32:
.LBE31:
	.loc 1 44 2 is_stmt 1 view .LVU86
	.loc 1 44 5 is_stmt 0 view .LVU87
	movq	8(%rbx), %rax
	cmpq	%rax, (%rbx)
	jb	.L21
	.loc 1 51 3 is_stmt 1 view .LVU88
	.loc 1 51 10 is_stmt 0 view .LVU89
	leaq	16(%rbx), %rax
.LVL34:
.L17:
	.loc 1 53 1 view .LVU90
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL35:
	.loc 1 53 1 view .LVU91
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL36:
.L21:
	.cfi_restore_state
.LBB33:
	.loc 1 45 3 is_stmt 1 view .LVU92
	.loc 1 45 24 is_stmt 0 view .LVU93
	movl	$16, %esi
	movq	%rbx, %rdi
	call	realloc@PLT
.LVL37:
	movq	%rax, %rbp
.LVL38:
	.loc 1 46 3 is_stmt 1 view .LVU94
	.loc 1 46 20 is_stmt 0 view .LVU95
	movq	(%rbx), %rax
.LVL39:
	.loc 1 46 20 view .LVU96
	leaq	(%rax,%rax), %rcx
	movq	%rcx, (%rbx)
	.loc 1 47 3 is_stmt 1 view .LVU97
.LVL40:
.LBB34:
.LBI34:
	.loc 2 84 1 view .LVU98
.LBB35:
	.loc 2 86 3 view .LVU99
	.loc 2 86 10 is_stmt 0 view .LVU100
	movl	$2, %edx
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL41:
	.loc 2 86 10 view .LVU101
.LBE35:
.LBE34:
	.loc 1 48 3 is_stmt 1 view .LVU102
.LBB36:
.LBI36:
	.loc 2 84 1 view .LVU103
.LBB37:
	.loc 2 86 3 view .LVU104
	.loc 2 86 10 is_stmt 0 view .LVU105
	movq	%rbp, %rdx
	leaq	.LC6(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL42:
	.loc 2 86 10 view .LVU106
.LBE37:
.LBE36:
	.loc 1 49 3 is_stmt 1 view .LVU107
	.loc 1 49 10 is_stmt 0 view .LVU108
	leaq	16(%rbp), %rax
	jmp	.L17
.LBE33:
	.cfi_endproc
.LFE45:
	.size	prepare_push, .-prepare_push
	.section	.rodata.str1.1
.LC7:
	.string	"vec_push"
.LC8:
	.string	"pushed %d %d\n"
.LC9:
	.string	"%d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB46:
	.file 3 "main.c"
	.loc 3 7 12 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 3 8 2 view .LVU110
.LVL43:
	.loc 3 9 2 view .LVU111
	.loc 3 11 2 view .LVU112
.LBB38:
.LBI38:
	.loc 2 84 1 view .LVU113
.LBB39:
	.loc 2 86 3 view .LVU114
	.loc 2 86 10 is_stmt 0 view .LVU115
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
.LVL44:
	.loc 2 86 10 view .LVU116
.LBE39:
.LBE38:
	.loc 3 12 2 is_stmt 1 view .LVU117
	.loc 3 12 14 is_stmt 0 view .LVU118
	movl	$4, %esi
	movl	$0, %edi
	call	prepare_push
.LVL45:
	movq	%rax, %rbx
.LVL46:
	.loc 3 12 14 discriminator 1 view .LVU119
	movq	%rax, %rdi
	call	vec_count
.LVL47:
	.loc 3 12 14 discriminator 2 view .LVU120
	movl	$7, -4(%rbx,%rax,4)
	movq	%rbx, %rdi
	call	vec_count
.LVL48:
	.loc 3 12 7 discriminator 3 view .LVU121
	leaq	-4(%rbx,%rax,4), %rbp
.LVL49:
	.loc 3 13 2 is_stmt 1 view .LVU122
	.loc 3 13 14 is_stmt 0 view .LVU123
	movl	$4, %esi
	movq	%rbx, %rdi
	call	prepare_push
.LVL50:
	movq	%rax, %rbx
.LVL51:
	.loc 3 13 14 discriminator 1 view .LVU124
	movq	%rax, %rdi
	call	vec_count
.LVL52:
	.loc 3 13 14 discriminator 2 view .LVU125
	movl	$3, -4(%rbx,%rax,4)
	movq	%rbx, %rdi
	call	vec_count
.LVL53:
	.loc 3 14 2 is_stmt 1 view .LVU126
	movl	-4(%rbx,%rax,4), %ecx
	movl	0(%rbp), %edx
.LVL54:
.LBB40:
.LBI40:
	.loc 2 84 1 view .LVU127
.LBB41:
	.loc 2 86 3 view .LVU128
	.loc 2 86 10 is_stmt 0 view .LVU129
	leaq	.LC8(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
.LVL55:
	.loc 2 86 10 view .LVU130
	call	__printf_chk@PLT
.LVL56:
	.loc 2 86 10 view .LVU131
.LBE41:
.LBE40:
	.loc 3 15 2 is_stmt 1 view .LVU132
	movl	4(%rbx), %ecx
	movl	(%rbx), %edx
.LVL57:
.LBB42:
.LBI42:
	.loc 2 84 1 view .LVU133
.LBB43:
	.loc 2 86 3 view .LVU134
	.loc 2 86 10 is_stmt 0 view .LVU135
	leaq	.LC9(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL58:
	.loc 2 86 10 view .LVU136
.LBE43:
.LBE42:
	.loc 3 16 1 view .LVU137
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL59:
	.loc 3 16 1 view .LVU138
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL60:
	.loc 3 16 1 view .LVU139
	ret
	.cfi_endproc
.LFE46:
	.size	main, .-main
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "/usr/include/stdlib.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stdio2-decl.h"
	.file 7 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8b5
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x11
	.long	.LASF36
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xe
	.long	.LASF16
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0x3a
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x12
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x14
	.long	0x74
	.uleb128 0xb
	.long	0x7b
	.uleb128 0x15
	.long	0x80
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF12
	.uleb128 0x16
	.byte	0x10
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.long	0xcd
	.uleb128 0xd
	.long	.LASF13
	.byte	0x8
	.byte	0x9
	.long	0x2e
	.byte	0
	.uleb128 0xd
	.long	.LASF14
	.byte	0x9
	.byte	0x9
	.long	0x2e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF15
	.byte	0xa
	.byte	0x7
	.long	0xcd
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.long	0x74
	.long	0xdc
	.uleb128 0x18
	.long	0x3a
	.byte	0
	.uleb128 0xe
	.long	.LASF17
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.long	0x9f
	.uleb128 0xf
	.long	.LASF18
	.value	0x2ab
	.long	0x48
	.long	0x102
	.uleb128 0x9
	.long	0x48
	.uleb128 0x9
	.long	0x2e
	.byte	0
	.uleb128 0x19
	.long	.LASF19
	.byte	0x6
	.byte	0x34
	.byte	0xc
	.long	0x66
	.long	0x11e
	.uleb128 0x9
	.long	0x66
	.uleb128 0x9
	.long	0x80
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF20
	.value	0x2a0
	.long	0x48
	.long	0x133
	.uleb128 0x9
	.long	0x2e
	.byte	0
	.uleb128 0x1a
	.long	.LASF37
	.byte	0x3
	.byte	0x7
	.byte	0x5
	.long	0x66
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x328
	.uleb128 0x1b
	.string	"foo"
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.long	0x328
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x1c
	.string	"bar"
	.byte	0x3
	.byte	0x9
	.byte	0x9
	.long	0x32d
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x3
	.byte	0xc
	.byte	0x7
	.long	0x328
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x7
	.long	.LASF22
	.byte	0x3
	.byte	0xd
	.byte	0x7
	.long	0x328
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x4
	.long	0x880
	.quad	.LBI38
	.byte	.LVU113
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.long	0x1ec
	.uleb128 0x5
	.long	0x891
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x2
	.quad	.LVL44
	.long	0x8ad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x880
	.quad	.LBI40
	.byte	.LVU127
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x3
	.byte	0xe
	.byte	0x2
	.long	0x23f
	.uleb128 0x5
	.long	0x891
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x2
	.quad	.LVL56
	.long	0x102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x880
	.quad	.LBI42
	.byte	.LVU133
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x3
	.byte	0xf
	.byte	0x2
	.long	0x292
	.uleb128 0x5
	.long	0x891
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x2
	.quad	.LVL58
	.long	0x102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL45
	.long	0x339
	.long	0x2ae
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.quad	.LVL47
	.long	0x686
	.long	0x2c6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL48
	.long	0x686
	.long	0x2de
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL50
	.long	0x339
	.long	0x2fb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.quad	.LVL52
	.long	0x686
	.long	0x313
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL53
	.long	0x686
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x66
	.uleb128 0xb
	.long	0x332
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF23
	.uleb128 0x6
	.long	.LASF27
	.byte	0x26
	.byte	0x7
	.long	0x48
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ae
	.uleb128 0xa
	.string	"arr"
	.byte	0x26
	.byte	0x1a
	.long	0x48
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xc
	.long	.LASF24
	.byte	0x26
	.byte	0x26
	.long	0x2e
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0x28
	.byte	0xa
	.long	0x5ae
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1d
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x488
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.byte	0x2d
	.byte	0xb
	.long	0x5ae
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x4
	.long	0x880
	.quad	.LBI34
	.byte	.LVU98
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.byte	0x1
	.byte	0x2f
	.byte	0x3
	.long	0x415
	.uleb128 0x5
	.long	0x891
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x2
	.quad	.LVL41
	.long	0x102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x880
	.quad	.LBI36
	.byte	.LVU103
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.byte	0x1
	.byte	0x30
	.byte	0x3
	.long	0x46e
	.uleb128 0x5
	.long	0x891
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x2
	.quad	.LVL42
	.long	0x102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL37
	.long	0xe8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x880
	.quad	.LBI27
	.byte	.LVU65
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.byte	0x1
	.byte	0x27
	.byte	0x2
	.long	0x4e7
	.uleb128 0x5
	.long	0x891
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x2
	.quad	.LVL27
	.long	0x102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x880
	.quad	.LBI29
	.byte	.LVU74
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x540
	.uleb128 0x5
	.long	0x891
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x2
	.quad	.LVL31
	.long	0x102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x880
	.quad	.LBI31
	.byte	.LVU82
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.byte	0x1
	.byte	0x2b
	.byte	0x2
	.long	0x593
	.uleb128 0x5
	.long	0x891
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x2
	.quad	.LVL33
	.long	0x102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL28
	.long	0x5b3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xdc
	.uleb128 0x6
	.long	.LASF28
	.byte	0x23
	.byte	0x9
	.long	0x5ae
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x629
	.uleb128 0xa
	.string	"arr"
	.byte	0x23
	.byte	0x1b
	.long	0x48
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xc
	.long	.LASF24
	.byte	0x23
	.byte	0x27
	.long	0x2e
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x8
	.quad	.LVL19
	.long	0x71a
	.long	0x613
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x2
	.quad	.LVL22
	.long	0x74a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF29
	.byte	0x20
	.byte	0x7
	.long	0x48
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x686
	.uleb128 0xa
	.string	"ptr"
	.byte	0x20
	.byte	0x16
	.long	0x48
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xc
	.long	.LASF24
	.byte	0x20
	.byte	0x22
	.long	0x2e
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2
	.quad	.LVL17
	.long	0x74a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF30
	.byte	0x1e
	.byte	0x8
	.long	0x2e
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d0
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1e
	.byte	0x18
	.long	0x48
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x2
	.quad	.LVL14
	.long	0x71a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF31
	.byte	0x1d
	.byte	0x8
	.long	0x2e
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x71a
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1d
	.byte	0x1b
	.long	0x48
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2
	.quad	.LVL12
	.long	0x71a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF32
	.byte	0x1a
	.byte	0x9
	.long	0x5ae
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x74a
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0x1a
	.byte	0x1a
	.long	0x48
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x6
	.long	.LASF33
	.byte	0x10
	.byte	0x9
	.long	0x5ae
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x880
	.uleb128 0xc
	.long	.LASF24
	.byte	0x10
	.byte	0x1c
	.long	0x2e
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x7
	.long	.LASF34
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.long	0x2e
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1f
	.long	.LASF35
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.long	0x2e
	.byte	0x10
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0x14
	.byte	0xa
	.long	0x5ae
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x4
	.long	0x880
	.quad	.LBI23
	.byte	.LVU3
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.long	0x80c
	.uleb128 0x5
	.long	0x891
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2
	.quad	.LVL3
	.long	0x102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x880
	.quad	.LBI25
	.byte	.LVU18
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.long	0x86b
	.uleb128 0x5
	.long	0x891
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2
	.quad	.LVL8
	.long	0x102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL4
	.long	0x11e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF38
	.byte	0x2
	.byte	0x54
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x89f
	.uleb128 0x21
	.long	.LASF39
	.byte	0x2
	.byte	0x54
	.byte	0x20
	.long	0x85
	.uleb128 0x10
	.byte	0
	.uleb128 0x22
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xa
	.byte	0x76
	.byte	0x65
	.byte	0x63
	.byte	0x5f
	.byte	0x70
	.byte	0x75
	.byte	0x73
	.byte	0x68
	.byte	0xa
	.byte	0
	.uleb128 0x23
	.long	.LASF40
	.long	.LASF41
	.byte	0x7
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS20:
	.uleb128 .LVU111
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU138
.LLST20:
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL47-1-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL52-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL52-1-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS21:
	.uleb128 .LVU122
	.uleb128 .LVU139
.LLST21:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS22:
	.uleb128 .LVU126
	.uleb128 .LVU130
.LLST22:
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0xa
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU113
	.uleb128 .LVU116
.LLST23:
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2207
	.sleb128 0
	.byte	0
.LVUS24:
	.uleb128 .LVU127
	.uleb128 .LVU131
.LLST24:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU133
	.uleb128 .LVU136
.LLST25:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL27-1-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LFE45-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL27-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL27-1-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LFE45-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU73
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL31-1-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LFE45-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS17:
	.uleb128 .LVU94
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 0
.LLST17:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LFE45-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS18:
	.uleb128 .LVU98
	.uleb128 .LVU101
.LLST18:
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU103
	.uleb128 .LVU106
.LLST19:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU65
	.uleb128 .LVU70
.LLST14:
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU74
	.uleb128 .LVU78
.LLST15:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU82
	.uleb128 .LVU85
.LLST16:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL19-1-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LFE44-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL19-1-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 .LFE44-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL17-1-.Ltext0
	.uleb128 .LFE43-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL17-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL17-1-.Ltext0
	.uleb128 .LFE43-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL14-1-.Ltext0
	.uleb128 .LFE42-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL12-1-.Ltext0
	.uleb128 .LFE41-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL3-1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU9
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU12
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL8-1-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS3:
	.uleb128 .LVU3
	.uleb128 .LVU7
.LLST3:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU18
	.uleb128 .LVU22
.LLST4:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"__fmt"
.LASF25:
	.string	"header"
.LASF16:
	.string	"size_t"
.LASF13:
	.string	"capacity"
.LASF29:
	.string	"init_vec"
.LASF14:
	.string	"count"
.LASF5:
	.string	"short unsigned int"
.LASF34:
	.string	"data_size"
.LASF19:
	.string	"__printf_chk"
.LASF26:
	.string	"new_header"
.LASF23:
	.string	"float"
.LASF15:
	.string	"data"
.LASF36:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -Og -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"unsigned char"
.LASF2:
	.string	"long unsigned int"
.LASF21:
	.string	"val1"
.LASF22:
	.string	"val2"
.LASF30:
	.string	"vec_count"
.LASF18:
	.string	"realloc"
.LASF37:
	.string	"main"
.LASF24:
	.string	"type_size"
.LASF28:
	.string	"header_from"
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF35:
	.string	"data_offset"
.LASF41:
	.string	"__builtin_puts"
.LASF33:
	.string	"header_init"
.LASF12:
	.string	"long double"
.LASF10:
	.string	"long long int"
.LASF27:
	.string	"prepare_push"
.LASF9:
	.string	"char"
.LASF38:
	.string	"printf"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF31:
	.string	"vec_capacity"
.LASF40:
	.string	"puts"
.LASF6:
	.string	"signed char"
.LASF32:
	.string	"get_header"
.LASF17:
	.string	"Header"
.LASF20:
	.string	"malloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"main.c"
.LASF1:
	.string	"/home/confuzzl/dev/c/vector"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
