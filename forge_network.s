	.watchos_version_min 2, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_forge_catalog_entry_hash       ; -- Begin function forge_catalog_entry_hash
	.p2align	4
_forge_catalog_entry_hash:              ; @forge_catalog_entry_hash
; %bb.0:
	mov	w9, #40389                      ; =0x9dc5
	mov	w8, #403                        ; =0x193
	movk	w9, #33052, lsl #16
	movk	w8, #256, lsl #16
	eor	w9, w9, w0, lsr #24
	ubfx	w10, w0, #16, #8
	mul	w9, w9, w8
	eor	w9, w9, w10
	ubfx	w10, w0, #8, #8
	mul	w9, w9, w8
	eor	w9, w9, w10
	and	w10, w0, #0xff
	mul	w9, w9, w8
	eor	w9, w9, w10
	mul	w9, w9, w8
	cbnz	w1, LBB0_4
LBB0_1:
	cmp	w9, #1
	csinc	w0, w9, wzr, hi
	ret
	.p2align	4, , 8
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w10, #92                        ; =0x5c
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	eor	w9, w10, w9
	add	x1, x1, #1
	mul	w9, w9, w8
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x1]
	cmp	w10, #47
	b.eq	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	cbz	w10, LBB0_1
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	sub	w11, w10, #65
	orr	w12, w10, #0x20
	cmp	w11, #26
	csel	w10, w12, w10, lo
	b	LBB0_3
                                        ; -- End function
	.globl	_forge_find_catalog_entry_by_hash ; -- Begin function forge_find_catalog_entry_by_hash
	.p2align	4
_forge_find_catalog_entry_by_hash:      ; @forge_find_catalog_entry_by_hash
; %bb.0:
	sub	sp, sp, #112
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
Lloh0:
	adrp	x22, _g_forge_state@GOTPAGE
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	mov	w19, w0
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
Lloh1:
	ldr	w22, [x22, _g_forge_state@GOTPAGEOFF]
	str	wzr, [sp, #12]
	ldr	w8, [x22]
	cbz	w8, LBB1_6
; %bb.1:
	ldr	w8, [x8]
	cbz	w8, LBB1_7
LBB1_2:
	ldr	w0, [x22]
	cbnz	w0, LBB1_4
; %bb.3:
	bl	_forge_runtime_state_get
LBB1_4:
	add	x8, x0, #164, lsl #12           ; =671744
	ldr	w8, [x8, #340]
	cbnz	w8, LBB1_8
; %bb.5:
	bl	_forge_runtime_reload_catalogs
	b	LBB1_8
LBB1_6:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w8, [x8]
	cbnz	w8, LBB1_2
LBB1_7:
	bl	_forge_runtime_init
LBB1_8:
	mov	w26, #40389                     ; =0x9dc5
	mov	w21, #403                       ; =0x193
	ldr	w8, [x22]
	mov	w24, #16724                     ; =0x4154
	mov	w23, wzr
	movk	w26, #33052, lsl #16
	movk	w21, #256, lsl #16
	movk	w24, #10, lsl #16
	mov	w25, #328                       ; =0x148
	cbnz	w8, LBB1_10
	.p2align	4, , 8
LBB1_9:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB1_10:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_21 Depth 2
	ldr	w9, [x8, x24]
	ldr	w8, [x22]
	cmp	w23, w9
	b.ge	LBB1_24
; %bb.11:                               ;   in Loop: Header=BB1_10 Depth=1
	cbz	w8, LBB1_13
; %bb.12:                               ;   in Loop: Header=BB1_10 Depth=1
	smaddl	x9, w23, w25, x8
	mov	x0, x8
	ldr	w20, [x9, #340]
	b	LBB1_16
	.p2align	4, , 8
LBB1_13:                                ;   in Loop: Header=BB1_10 Depth=1
	bl	_forge_runtime_state_get
	smaddl	x9, w23, w25, x0
	ldr	w8, [x22]
	ldr	w20, [x9, #340]
	cbz	w8, LBB1_15
; %bb.14:                               ;   in Loop: Header=BB1_10 Depth=1
	mov	x0, x8
	b	LBB1_16
	.p2align	4, , 8
LBB1_15:                                ;   in Loop: Header=BB1_10 Depth=1
	bl	_forge_runtime_state_get
	ldr	w8, [x22]
	.p2align	4, , 8
LBB1_16:                                ;   in Loop: Header=BB1_10 Depth=1
	eor	w9, w26, w20, lsr #24
	ubfx	w10, w20, #16, #8
	mul	w9, w9, w21
	eor	w9, w9, w10
	ubfx	w10, w20, #8, #8
	mul	w9, w9, w21
	eor	w9, w9, w10
	and	w10, w20, #0xff
	mul	w9, w9, w21
	eor	w9, w9, w10
	madd	w10, w23, w25, w0
	mul	w9, w9, w21
	adds	w10, w10, #348
	b.ne	LBB1_21
LBB1_17:                                ;   in Loop: Header=BB1_10 Depth=1
	cmp	w9, #1
	csinc	w9, w9, wzr, hi
	cmp	w9, w19
	b.eq	LBB1_40
; %bb.18:                               ;   in Loop: Header=BB1_10 Depth=1
	add	w23, w23, #1
	cbnz	w8, LBB1_10
	b	LBB1_9
	.p2align	4, , 8
LBB1_19:                                ;   in Loop: Header=BB1_21 Depth=2
	mov	w11, #92                        ; =0x5c
LBB1_20:                                ;   in Loop: Header=BB1_21 Depth=2
	eor	w9, w11, w9
	add	x10, x10, #1
	mul	w9, w9, w21
LBB1_21:                                ;   Parent Loop BB1_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x10]
	cmp	w11, #47
	b.eq	LBB1_19
; %bb.22:                               ;   in Loop: Header=BB1_21 Depth=2
	cbz	w11, LBB1_17
; %bb.23:                               ;   in Loop: Header=BB1_21 Depth=2
	sub	w12, w11, #65
	orr	w13, w11, #0x20
	cmp	w12, #26
	csel	w11, w13, w11, lo
	b	LBB1_20
LBB1_24:
	mov	w24, #1189                      ; =0x4a5
	mov	w25, #50264                     ; =0xc458
	mov	w27, #1112                      ; =0x458
	mov	w23, wzr
	movk	w24, #30, lsl #16
	movk	w25, #54, lsl #16
	mov	w26, #396                       ; =0x18c
	movk	w27, #30, lsl #16
	b	LBB1_27
	.p2align	4, , 8
LBB1_25:                                ;   in Loop: Header=BB1_27 Depth=1
	cmp	w11, #1
	csinc	w9, w11, wzr, hi
	cmp	w9, w19
	b.eq	LBB1_69
LBB1_26:                                ;   in Loop: Header=BB1_27 Depth=1
	add	w23, w23, #1
	add	w24, w24, #396
LBB1_27:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_37 Depth 2
	cbnz	w8, LBB1_29
; %bb.28:                               ;   in Loop: Header=BB1_27 Depth=1
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB1_29:                                ;   in Loop: Header=BB1_27 Depth=1
	ldr	w8, [x8, x25]
	cmp	w23, w8
	b.ge	LBB1_43
; %bb.30:                               ;   in Loop: Header=BB1_27 Depth=1
	ldr	w8, [x22]
	mov	x0, x8
	cbnz	w8, LBB1_32
; %bb.31:                               ;   in Loop: Header=BB1_27 Depth=1
	bl	_forge_runtime_state_get
	ldr	w8, [x22]
LBB1_32:                                ;   in Loop: Header=BB1_27 Depth=1
	smaddl	x9, w23, w26, x0
	add	x28, x9, x27
	ldr	w9, [x28]
	cbz	w9, LBB1_26
; %bb.33:                               ;   in Loop: Header=BB1_27 Depth=1
	mov	x20, x28
	ldrb	w9, [x20, #76]!
	cbz	w9, LBB1_26
; %bb.34:                               ;   in Loop: Header=BB1_27 Depth=1
	ldr	w10, [x28, #16]
	mov	w11, #40389                     ; =0x9dc5
	movk	w11, #33052, lsl #16
	eor	w11, w11, w10, lsr #24
	ubfx	w12, w10, #16, #8
	mul	w11, w11, w21
	eor	w11, w11, w12
	ubfx	w12, w10, #8, #8
	and	w10, w10, #0xff
	mul	w11, w11, w21
	eor	w11, w11, w12
	mul	w11, w11, w21
	eor	w11, w11, w10
	add	w10, w0, w24
	b	LBB1_37
	.p2align	4, , 8
LBB1_35:                                ;   in Loop: Header=BB1_37 Depth=2
	mov	w12, #92                        ; =0x5c
LBB1_36:                                ;   in Loop: Header=BB1_37 Depth=2
	ldrb	w9, [x10]
	eor	w11, w12, w11
	add	w10, w10, #1
LBB1_37:                                ;   Parent Loop BB1_27 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mul	w11, w11, w21
	cmp	w9, #47
	b.eq	LBB1_35
; %bb.38:                               ;   in Loop: Header=BB1_37 Depth=2
	cbz	w9, LBB1_25
; %bb.39:                               ;   in Loop: Header=BB1_37 Depth=2
	sub	w12, w9, #65
	orr	w13, w9, #0x20
	cmp	w12, #26
	csel	w12, w13, w9, lo
	b	LBB1_36
LBB1_40:
	cbnz	w8, LBB1_42
; %bb.41:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB1_42:
	mov	w9, #328                        ; =0x148
	smaddl	x8, w23, w9, x8
	add	x0, x8, #340
	b	LBB1_71
LBB1_43:
	add	x0, sp, #12
	bl	_cache_files_tag_instances
	ldr	w8, [sp, #12]
	cmp	w8, #0
	ccmp	w0, #0, #4, gt
	b.eq	LBB1_68
; %bb.44:
	mov	w10, #25447                     ; =0x6367
	mov	w11, #26991                     ; =0x696f
	mov	w12, #29814                     ; =0x7476
	mov	w13, #28772                     ; =0x7064
	mov	w14, #26992                     ; =0x6970
	mov	w15, #26217                     ; =0x6669
	mov	w16, #26728                     ; =0x6868
	mov	w17, #25448                     ; =0x6368
	mov	w1, #25966                      ; =0x656e
	mov	w2, #24944                      ; =0x6170
	mov	w3, #26729                      ; =0x6869
	mov	w24, #40389                     ; =0x9dc5
	mov	w9, wzr
	movk	w10, #28001, lsl #16
	movk	w11, #25969, lsl #16
	movk	w12, #24931, lsl #16
	movk	w13, #25193, lsl #16
	movk	w14, #25969, lsl #16
	movk	w15, #27753, lsl #16
	movk	w16, #30309, lsl #16
	movk	w17, #28001, lsl #16
	movk	w1, #29539, lsl #16
	movk	w2, #30565, lsl #16
	movk	w3, #30309, lsl #16
	movk	w24, #33052, lsl #16
	b	LBB1_47
LBB1_45:                                ;   in Loop: Header=BB1_47 Depth=1
	cmp	w6, #1
	csinc	w4, w6, wzr, hi
	cmp	w4, w19
	b.eq	LBB1_72
	.p2align	4, , 8
LBB1_46:                                ;   in Loop: Header=BB1_47 Depth=1
	add	w9, w9, #1
	cmp	w9, w8
	b.eq	LBB1_68
LBB1_47:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_65 Depth 2
	sxtw	x4, w9
	add	x22, x0, x4, lsl #5
	ldr	w4, [x22, #12]
	cmn	w4, #1
	b.eq	LBB1_46
; %bb.48:                               ;   in Loop: Header=BB1_47 Depth=1
	ldr	w5, [x22, #16]
	cbz	w5, LBB1_46
; %bb.49:                               ;   in Loop: Header=BB1_47 Depth=1
	ldrb	w4, [x5]
	cbz	w4, LBB1_46
; %bb.50:                               ;   in Loop: Header=BB1_47 Depth=1
	ldr	w6, [x22, #20]
	cbz	w6, LBB1_46
; %bb.51:                               ;   in Loop: Header=BB1_47 Depth=1
	ldr	w23, [x22]
	cmp	w23, w10
	b.gt	LBB1_55
; %bb.52:                               ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w11
	b.gt	LBB1_58
; %bb.53:                               ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w12
	b.eq	LBB1_62
; %bb.54:                               ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w13
	b.eq	LBB1_62
	b	LBB1_46
LBB1_55:                                ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w16
	b.gt	LBB1_60
; %bb.56:                               ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w17
	b.eq	LBB1_62
; %bb.57:                               ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w1
	b.eq	LBB1_62
	b	LBB1_46
LBB1_58:                                ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w14
	b.eq	LBB1_62
; %bb.59:                               ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w15
	b.eq	LBB1_62
	b	LBB1_46
LBB1_60:                                ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w2
	b.eq	LBB1_62
; %bb.61:                               ;   in Loop: Header=BB1_47 Depth=1
	cmp	w23, w3
	b.ne	LBB1_46
LBB1_62:                                ;   in Loop: Header=BB1_47 Depth=1
	eor	w6, w24, w23, lsr #24
	ubfx	w7, w23, #16, #8
	mul	w6, w6, w21
	eor	w6, w6, w7
	ubfx	w7, w23, #8, #8
	mul	w6, w6, w21
	eor	w6, w6, w7
	and	w7, w23, #0xff
	mul	w6, w6, w21
	eor	w6, w6, w7
	b	LBB1_65
	.p2align	4, , 8
LBB1_63:                                ;   in Loop: Header=BB1_65 Depth=2
	mov	w7, #92                         ; =0x5c
LBB1_64:                                ;   in Loop: Header=BB1_65 Depth=2
	ldrb	w4, [x5]
	eor	w6, w7, w6
LBB1_65:                                ;   Parent Loop BB1_47 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mul	w6, w6, w21
	add	w5, w5, #1
	cmp	w4, #47
	b.eq	LBB1_63
; %bb.66:                               ;   in Loop: Header=BB1_65 Depth=2
	cbz	w4, LBB1_45
; %bb.67:                               ;   in Loop: Header=BB1_65 Depth=2
	sub	w7, w4, #65
	orr	w20, w4, #0x20
	cmp	w7, #26
	csel	w7, w20, w4, lo
	b	LBB1_64
LBB1_68:
	mov	x0, xzr
	b	LBB1_71
LBB1_69:
Lloh2:
	adrp	x19, _forge_find_catalog_entry_by_hash.s_fallback_entry@PAGE
Lloh3:
	add	x19, x19, _forge_find_catalog_entry_by_hash.s_fallback_entry@PAGEOFF
	mov	x0, x19
	mov	w1, wzr
	mov	w2, #328                        ; =0x148
	bl	_csmemset
	ldr	w8, [x28, #16]
Lloh4:
	adrp	x2, l_.str@PAGE
Lloh5:
	add	x2, x2, l_.str@PAGEOFF
	add	x0, x19, #8
	mov	w1, #256                        ; =0x100
	str	w20, [sp]
	str	w8, [x19]
	bl	_halo_linux_snprintf
	ldrb	w8, [x28, #20]
	mov	x0, x19
LBB1_70:
	strb	w8, [x19, #5]
LBB1_71:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB1_72:
Lloh6:
	adrp	x19, _forge_find_catalog_entry_by_hash.s_fallback_entry@PAGE
Lloh7:
	add	x19, x19, _forge_find_catalog_entry_by_hash.s_fallback_entry@PAGEOFF
	mov	x0, x19
	mov	w1, wzr
	mov	w2, #328                        ; =0x148
	bl	_csmemset
	str	w23, [x19]
Lloh8:
	adrp	x2, l_.str@PAGE
Lloh9:
	add	x2, x2, l_.str@PAGEOFF
	ldr	w8, [x22, #16]
	add	x0, x19, #8
	mov	w1, #256                        ; =0x100
	str	w8, [sp]
	bl	_halo_linux_snprintf
	mov	x0, x19
	mov	w8, #3                          ; =0x3
	b	LBB1_70
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
                                        ; -- End function
	.globl	_forge_network_reset_session    ; -- Begin function forge_network_reset_session
	.p2align	4
_forge_network_reset_session:           ; @forge_network_reset_session
; %bb.0:
	sub	sp, sp, #64
Lloh10:
	adrp	x8, _g_last_transform_send_ms@PAGE
Lloh11:
	adrp	x9, _g_last_monitor_send_ms@PAGE
Lloh12:
	adrp	x10, _g_last_monitor_sent_x@PAGE
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	str	wzr, [x8, _g_last_transform_send_ms@PAGEOFF]
Lloh13:
	adrp	x8, _g_last_monitor_sent_y@PAGE
	str	wzr, [x9, _g_last_monitor_send_ms@PAGEOFF]
Lloh14:
	adrp	x9, _g_last_monitor_sent_z@PAGE
	str	wzr, [x10, _g_last_monitor_sent_x@PAGEOFF]
Lloh15:
	adrp	x10, _g_last_monitor_sent_yaw@PAGE
	str	wzr, [x8, _g_last_monitor_sent_y@PAGEOFF]
Lloh16:
	adrp	x8, _g_last_monitor_sent_pitch@PAGE
	str	wzr, [x9, _g_last_monitor_sent_z@PAGEOFF]
Lloh17:
	adrp	x9, _g_client_requested_full_sync@PAGE
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	str	wzr, [x10, _g_last_monitor_sent_yaw@PAGEOFF]
	str	wzr, [x8, _g_last_monitor_sent_pitch@PAGEOFF]
	strb	wzr, [x9, _g_client_requested_full_sync@PAGEOFF]
	bl	_system_milliseconds
Lloh18:
	adrp	x19, _g_forge_state@GOTPAGE
	mov	w8, w0
	adrp	x9, _g_client_join_ms@PAGE
Lloh19:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
	str	w8, [x9, _g_client_join_ms@PAGEOFF]
	ldr	w0, [x19]
	cbnz	w0, LBB2_2
; %bb.1:
	bl	_forge_runtime_state_get
LBB2_2:
	add	x8, x0, #876, lsl #12           ; =3588096
	mov	w1, wzr
	add	x0, x8, #1256
	mov	w2, #128                        ; =0x80
	bl	_csmemset
	ldr	w0, [x19]
	cbnz	w0, LBB2_4
; %bb.3:
	bl	_forge_runtime_state_get
LBB2_4:
	add	x8, x0, #876, lsl #12           ; =3588096
	mov	w1, wzr
	add	x0, x8, #1384
	mov	w2, #128                        ; =0x80
	bl	_csmemset
	ldr	w0, [x19]
	cbnz	w0, LBB2_6
; %bb.5:
	bl	_forge_runtime_state_get
LBB2_6:
	add	x8, x0, #876, lsl #12           ; =3588096
	mov	w1, wzr
	add	x0, x8, #1512
	mov	w2, #1536                       ; =0x600
	bl	_csmemset
	ldr	w0, [x19]
	cbnz	w0, LBB2_8
; %bb.7:
	bl	_forge_runtime_state_get
LBB2_8:
	add	x8, x0, #876, lsl #12           ; =3588096
	mov	w1, wzr
	add	x0, x8, #3048
	mov	w2, #512                        ; =0x200
	bl	_csmemset
	ldr	w0, [x19]
	cbnz	w0, LBB2_10
; %bb.9:
	bl	_forge_runtime_state_get
LBB2_10:
	add	x8, x0, #876, lsl #12           ; =3588096
	mov	w1, wzr
	add	x0, x8, #3560
	mov	w2, #512                        ; =0x200
	bl	_csmemset
	ldr	w0, [x19]
	cbnz	w0, LBB2_12
; %bb.11:
	bl	_forge_runtime_state_get
LBB2_12:
	add	x8, x0, #876, lsl #12           ; =3588096
	mov	w1, wzr
	add	x0, x8, #4072
	mov	w2, #128                        ; =0x80
	bl	_csmemset
	ldr	w0, [x19]
	cbnz	w0, LBB2_14
; %bb.13:
	bl	_forge_runtime_state_get
LBB2_14:
	add	x8, x0, #877, lsl #12           ; =3592192
	mov	w1, wzr
	add	x0, x8, #104
	mov	w2, #1536                       ; =0x600
	bl	_csmemset
	ldr	w0, [x19]
	cbnz	w0, LBB2_16
; %bb.15:
	bl	_forge_runtime_state_get
LBB2_16:
	add	x8, x0, #877, lsl #12           ; =3592192
	mov	w1, wzr
	add	x0, x8, #1640
	mov	w2, #512                        ; =0x200
	bl	_csmemset
	ldr	w0, [x19]
	cbnz	w0, LBB2_18
; %bb.17:
	bl	_forge_runtime_state_get
LBB2_18:
	add	x8, x0, #877, lsl #12           ; =3592192
	mov	w1, wzr
	add	x0, x8, #2152
	mov	w2, #512                        ; =0x200
	mov	w19, #49152                     ; =0xc000
	movk	w19, #17, lsl #16
	bl	_csmemset
	adrp	x21, _s_net_objects_storage@PAGE
	mov	w20, wzr
	mov	w22, #-1                        ; =0xffffffff
	ldr	w0, [x21, _s_net_objects_storage@PAGEOFF]
	b	LBB2_20
	.p2align	4, , 8
LBB2_19:                                ;   in Loop: Header=BB2_20 Depth=1
	add	w8, w0, w20
	add	w20, w20, #1
	add	w9, w8, #16, lsl #12            ; =65536
	add	w8, w8, #18, lsl #12            ; =73728
	cmp	w20, #2, lsl #12                ; =8192
	strb	wzr, [x9]
	strb	wzr, [x8]
	b.eq	LBB2_25
LBB2_20:                                ; =>This Inner Loop Header: Depth=1
	cbnz	w0, LBB2_22
; %bb.21:                               ;   in Loop: Header=BB2_20 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB2_24
LBB2_22:                                ;   in Loop: Header=BB2_20 Depth=1
	add	w8, w0, w20, lsl #2
	add	w9, w8, #8, lsl #12             ; =32768
	str	w22, [x8]
	str	w22, [x9]
	ldr	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB2_19
; %bb.23:                               ;   in Loop: Header=BB2_20 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB2_19
LBB2_24:
Lloh20:
	adrp	x0, l_.str.24@PAGE
Lloh21:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w19, [sp]
	bl	_platform_log
	bl	_abort
LBB2_25:
	movi	v0.2d, #0000000000000000
Lloh22:
	adrp	x8, _g_host_machine_known@PAGE
Lloh23:
	add	x8, x8, _g_host_machine_known@PAGEOFF
	movi	v1.2d, #0xffffffffffffffff
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	stp	q0, q0, [x8]
	stp	q0, q0, [x8, #32]
	stp	q0, q0, [x8, #64]
	stp	q0, q0, [x8, #96]
Lloh24:
	adrp	x8, _g_host_machine_sync_cursor@PAGE
Lloh25:
	add	x8, x8, _g_host_machine_sync_cursor@PAGEOFF
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	stp	q1, q1, [x8]
	stp	q1, q1, [x8, #32]
	stp	q1, q1, [x8, #64]
	stp	q1, q1, [x8, #96]
Lloh26:
	adrp	x8, _g_host_machine_mon_synced@PAGE
Lloh27:
	add	x8, x8, _g_host_machine_mon_synced@PAGEOFF
	stp	q0, q0, [x8]
	stp	q0, q0, [x8, #32]
	stp	q0, q0, [x8, #64]
	stp	q0, q0, [x8, #96]
	add	sp, sp, #64
	ret
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpAdrp	Lloh14, Lloh17
	.loh AdrpAdrp	Lloh13, Lloh16
	.loh AdrpAdrp	Lloh12, Lloh15
	.loh AdrpAdrp	Lloh11, Lloh14
	.loh AdrpAdrp	Lloh10, Lloh13
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
                                        ; -- End function
	.globl	_forge_network_send_monitor_mode ; -- Begin function forge_network_send_monitor_mode
	.p2align	4
_forge_network_send_monitor_mode:       ; @forge_network_send_monitor_mode
; %bb.0:
	sub	sp, sp, #464
	stp	d15, d14, [sp, #320]            ; 16-byte Folded Spill
	stp	d13, d12, [sp, #336]            ; 16-byte Folded Spill
	fmov	s12, s0
	stp	d11, d10, [sp, #352]            ; 16-byte Folded Spill
	fmov	s10, s2
	stp	d9, d8, [sp, #368]              ; 16-byte Folded Spill
	fmov	s8, s4
	stp	x28, x27, [sp, #384]            ; 16-byte Folded Spill
	fmov	s9, s3
	stp	x24, x23, [sp, #400]            ; 16-byte Folded Spill
	fmov	s11, s1
	stp	x22, x21, [sp, #416]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #432]            ; 16-byte Folded Spill
	mov	w19, w0
	stp	x29, x30, [sp, #448]            ; 16-byte Folded Spill
	add	x29, sp, #448
	bl	_forge_is_multiplayer_session
	cbz	w0, LBB3_13
; %bb.1:
	mov	w8, #1120403456                 ; =0x42c80000
	fmov	s0, w8
	fmul	s13, s8, s0
	fmul	s14, s9, s0
	bl	_forge_get_local_player_abs_index
	cmp	w0, #127
	csel	w20, wzr, w0, hi
	bl	_system_milliseconds
	fcvtzs	s0, s13
Lloh28:
	adrp	x8, _g_last_monitor_sent_x@PAGE
	fcvtzs	s1, s14
Lloh29:
	adrp	x9, _g_last_monitor_sent_y@PAGE
	fcvt	d2, s12
	cmp	w19, #0
	str	s12, [x8, _g_last_monitor_sent_x@PAGEOFF]
Lloh30:
	adrp	x8, _g_last_monitor_send_ms@PAGE
	fcvt	d3, s11
	str	s11, [x9, _g_last_monitor_sent_y@PAGEOFF]
Lloh31:
	adrp	x9, _g_last_monitor_sent_z@PAGE
	adrp	x10, _g_last_monitor_sent_pitch@PAGE
	str	w0, [x8, _g_last_monitor_send_ms@PAGEOFF]
Lloh32:
	adrp	x8, _g_last_monitor_sent_yaw@PAGE
	zip1	v0.2s, v1.2s, v0.2s
Lloh33:
	adrp	x2, l_.str.1@PAGE
Lloh34:
	add	x2, x2, l_.str.1@PAGEOFF
	fcvt	d1, s10
	str	s10, [x9, _g_last_monitor_sent_z@PAGEOFF]
	cset	w9, ne
	add	x0, sp, #48
	mov	w1, #64                         ; =0x40
	str	s9, [x8, _g_last_monitor_sent_yaw@PAGEOFF]
	str	s8, [x10, _g_last_monitor_sent_pitch@PAGEOFF]
	stp	d2, d3, [sp, #8]
	stp	d1, d0, [sp, #24]
	stp	w20, w9, [sp]
	bl	_halo_linux_snprintf
	bl	_game_connection
	cmp	w0, #1
	b.ne	LBB3_4
; %bb.2:
	ldrb	w8, [sp, #48]
	cbz	w8, LBB3_13
; %bb.3:
	add	x0, sp, #112
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	add	x19, sp, #112
	bl	_csmemset
Lloh35:
	adrp	x2, l_.str@PAGE
Lloh36:
	add	x2, x2, l_.str@PAGEOFF
	add	x8, sp, #48
	add	x0, x19, #16
	mov	w1, #64                         ; =0x40
	strh	wzr, [sp, #124]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #112
	mov	w1, #87                         ; =0x57
	mov	w2, #1                          ; =0x1
	mov	w3, #80                         ; =0x50
	mov	w4, #3                          ; =0x3
	bl	_distributed_send
	b	LBB3_13
LBB3_4:
	bl	_game_connection
	cmp	w0, #2
	b.ne	LBB3_13
; %bb.5:
	ldrb	w8, [sp, #48]
	cbz	w8, LBB3_13
; %bb.6:
	add	x0, sp, #112
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB3_13
; %bb.7:
	mov	w19, w0
	sub	x22, x29, #208
	add	x23, sp, #112
	add	x24, sp, #48
Lloh37:
	adrp	x20, l_.str@PAGE
Lloh38:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB3_9
	.p2align	4, , 8
LBB3_8:                                 ;   in Loop: Header=BB3_9 Depth=1
	add	w23, w23, #4
	subs	w19, w19, #1
	b.eq	LBB3_13
LBB3_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w21, [x23]
	cmn	w21, #1
	b.eq	LBB3_8
; %bb.10:                               ;   in Loop: Header=BB3_9 Depth=1
	tbnz	w21, #31, LBB3_8
; %bb.11:                               ;   in Loop: Header=BB3_9 Depth=1
	ldrb	w8, [sp, #48]
	cbz	w8, LBB3_8
; %bb.12:                               ;   in Loop: Header=BB3_9 Depth=1
	sub	x0, x29, #208
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x22, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x20
	sturh	wzr, [x29, #-196]
	str	w24, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #208
	mov	w0, w21
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	b	LBB3_8
LBB3_13:
	ldp	x29, x30, [sp, #448]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #432]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #416]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #400]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #384]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #368]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #352]            ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #336]            ; 16-byte Folded Reload
	ldp	d15, d14, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #464
	ret
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdrp	Lloh30, Lloh32
	.loh AdrpAdrp	Lloh29, Lloh31
	.loh AdrpAdrp	Lloh28, Lloh30
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh37, Lloh38
                                        ; -- End function
	.globl	_forge_network_sync_tick        ; -- Begin function forge_network_sync_tick
	.p2align	4
_forge_network_sync_tick:               ; @forge_network_sync_tick
; %bb.0:
	stp	d13, d12, [sp, #-144]!          ; 16-byte Folded Spill
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	sub	sp, sp, #368
	bl	_forge_is_multiplayer_session
	cbz	w0, LBB4_131
; %bb.1:
	bl	_system_milliseconds
Lloh39:
	adrp	x26, _g_forge_state@GOTPAGE
	mov	w19, w0
Lloh40:
	ldr	w26, [x26, _g_forge_state@GOTPAGEOFF]
	ldr	w8, [x26]
	cbnz	w8, LBB4_3
; %bb.2:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB4_3:
	ldr	w8, [x8, #4]
	cmp	w8, #1
	b.ne	LBB4_18
; %bb.4:
	ldr	w0, [x26]
	adrp	x23, _g_last_monitor_sent_x@PAGE
	adrp	x22, _g_last_monitor_sent_y@PAGE
	adrp	x21, _g_last_monitor_sent_z@PAGE
	adrp	x20, _g_last_monitor_sent_yaw@PAGE
	cbz	w0, LBB4_6
; %bb.5:
	ldr	s0, [x0, #48]
	ldr	s1, [x23, _g_last_monitor_sent_x@PAGEOFF]
	fsub	s8, s0, s1
	b	LBB4_7
LBB4_6:
	bl	_forge_runtime_state_get
	ldr	s0, [x23, _g_last_monitor_sent_x@PAGEOFF]
	ldr	s1, [x0, #48]
	ldr	w0, [x26]
	fsub	s8, s1, s0
	cbz	w0, LBB4_122
LBB4_7:
	ldr	s0, [x0, #52]
	ldr	s1, [x22, _g_last_monitor_sent_y@PAGEOFF]
	fsub	s9, s0, s1
LBB4_8:
	ldr	s0, [x0, #56]
	ldr	s1, [x21, _g_last_monitor_sent_z@PAGEOFF]
	fsub	s10, s0, s1
LBB4_9:
	ldr	s0, [x0, #60]
	ldr	s1, [x20, _g_last_monitor_sent_yaw@PAGEOFF]
	fsub	s11, s0, s1
LBB4_10:
	fmul	s0, s8, s8
	mov	w8, #46871                      ; =0xb717
	fmul	s1, s9, s9
	movk	w8, #14801, lsl #16
	fadd	s0, s0, s1
	fmul	s1, s10, s10
	fadd	s0, s0, s1
	fmov	s1, w8
	mov	w8, #50                         ; =0x32
	fcmp	s0, s1
	b.gt	LBB4_12
; %bb.11:
Lloh41:
	adrp	x9, _g_last_monitor_sent_pitch@PAGE
	ldr	s0, [x0, #64]
Lloh42:
	ldr	s1, [x9, _g_last_monitor_sent_pitch@PAGEOFF]
	mov	w9, #46871                      ; =0xb717
	movk	w9, #14545, lsl #16
	fsub	s0, s0, s1
	fmul	s1, s11, s11
	fmul	s0, s0, s0
	fadd	s0, s1, s0
	fmov	s1, w9
	mov	w9, #400                        ; =0x190
	fcmp	s0, s1
	csel	w8, w8, w9, gt
LBB4_12:
Lloh43:
	adrp	x9, _g_last_monitor_send_ms@PAGE
Lloh44:
	ldr	w9, [x9, _g_last_monitor_send_ms@PAGEOFF]
	sub	w9, w19, w9
	cmp	w9, w8
	b.lo	LBB4_18
; %bb.13:
	ldr	w0, [x26]
	cbz	w0, LBB4_15
; %bb.14:
	ldr	s0, [x0, #48]
	b	LBB4_16
LBB4_15:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x26]
	ldr	s0, [x8, #48]
	cbz	w0, LBB4_126
LBB4_16:
	ldp	s1, s2, [x0, #52]
	ldr	s3, [x0, #60]
LBB4_17:
	ldr	s4, [x0, #64]
	mov	w0, #1                          ; =0x1
	bl	_forge_network_send_monitor_mode
LBB4_18:
	bl	_game_connection
	cmp	w0, #1
	b.ne	LBB4_29
; %bb.19:
	adrp	x20, _g_client_requested_full_sync@PAGE
	ldrb	w8, [x20, _g_client_requested_full_sync@PAGEOFF]
	tbnz	w8, #0, LBB4_131
; %bb.20:
	ldr	w0, [x26]
	cbnz	w0, LBB4_22
; %bb.21:
	bl	_forge_runtime_state_get
LBB4_22:
	ldr	w8, [x0, #44]
	cbz	w8, LBB4_131
; %bb.23:
Lloh45:
	adrp	x8, _g_client_join_ms@PAGE
Lloh46:
	ldr	w8, [x8, _g_client_join_ms@PAGEOFF]
	sub	w8, w19, w8
	cmp	w8, #250
	b.lo	LBB4_131
; %bb.24:
	mov	w8, #1                          ; =0x1
	add	x0, sp, #152
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	add	x19, sp, #152
	strb	w8, [x20, _g_client_requested_full_sync@PAGEOFF]
	bl	_csmemset
Lloh47:
	adrp	x2, l_.str@PAGE
Lloh48:
	add	x2, x2, l_.str@PAGEOFF
	add	x0, x19, #16
	mov	w1, #64                         ; =0x40
Lloh49:
	adrp	x8, l_.str.2@PAGE
Lloh50:
	add	x8, x8, l_.str.2@PAGEOFF
	strh	wzr, [sp, #164]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #152
	mov	w1, #87                         ; =0x57
	mov	w2, #1                          ; =0x1
	mov	w3, #80                         ; =0x50
	mov	w4, #3                          ; =0x3
	bl	_distributed_send
	ldr	w0, [x26]
	cbnz	w0, LBB4_26
; %bb.25:
	bl	_forge_runtime_state_get
LBB4_26:
	ldr	w8, [x0, #4]
	cmp	w8, #1
	b.ne	LBB4_131
; %bb.27:
	ldr	w0, [x26]
	cbz	w0, LBB4_128
; %bb.28:
	ldr	s0, [x0, #48]
	b	LBB4_129
LBB4_29:
	bl	_game_connection
	cmp	w0, #2
	b.ne	LBB4_131
; %bb.30:
	add	x0, sp, #120
	mov	w1, wzr
	mov	w2, #32                         ; =0x20
	bl	_csmemset
	add	x0, sp, #152
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
Lloh51:
	adrp	x16, _g_host_machine_known@PAGE
Lloh52:
	add	x16, x16, _g_host_machine_known@PAGEOFF
Lloh53:
	adrp	x27, _g_host_machine_sync_cursor@PAGE
Lloh54:
	add	x27, x27, _g_host_machine_sync_cursor@PAGEOFF
Lloh55:
	adrp	x20, _g_host_machine_mon_synced@PAGE
Lloh56:
	add	x20, x20, _g_host_machine_mon_synced@PAGEOFF
	cmp	w0, #1
	b.lt	LBB4_60
; %bb.31:
	and	w8, w0, #0x3
	cmp	w0, #4
	b.hs	LBB4_33
; %bb.32:
	mov	w9, wzr
	b	LBB4_49
LBB4_33:
	and	w10, w0, #0x7ffc
	add	x11, sp, #152
	mov	w9, wzr
	neg	w10, w10
	add	w11, w11, #8
	add	x12, sp, #120
	mov	w13, #1                         ; =0x1
	b	LBB4_35
	.p2align	4, , 8
LBB4_34:                                ;   in Loop: Header=BB4_35 Depth=1
	add	w11, w11, #16
	sub	w9, w9, #4
	cmp	w10, w9
	b.eq	LBB4_47
LBB4_35:                                ; =>This Inner Loop Header: Depth=1
	sub	w14, w11, #8
	ldr	w14, [x14]
	cmp	w14, #31
	b.hi	LBB4_38
; %bb.36:                               ;   in Loop: Header=BB4_35 Depth=1
	ldr	w15, [x16, w14, sxtw #2]
	strb	w13, [x12, w14, sxtw]
	cbnz	w15, LBB4_38
; %bb.37:                               ;   in Loop: Header=BB4_35 Depth=1
	lsl	w15, w14, #2
	str	wzr, [x27, w14, sxtw #2]
	str	wzr, [x20, w14, sxtw #2]
	str	w13, [x16, w15, sxtw]
	.p2align	4, , 8
LBB4_38:                                ;   in Loop: Header=BB4_35 Depth=1
	sub	w14, w11, #4
	ldr	w14, [x14]
	cmp	w14, #31
	b.hi	LBB4_41
; %bb.39:                               ;   in Loop: Header=BB4_35 Depth=1
	ldr	w15, [x16, w14, sxtw #2]
	strb	w13, [x12, w14, sxtw]
	cbnz	w15, LBB4_41
; %bb.40:                               ;   in Loop: Header=BB4_35 Depth=1
	lsl	w15, w14, #2
	str	wzr, [x27, w14, sxtw #2]
	str	wzr, [x20, w14, sxtw #2]
	str	w13, [x16, w15, sxtw]
	.p2align	4, , 8
LBB4_41:                                ;   in Loop: Header=BB4_35 Depth=1
	ldr	w14, [x11]
	cmp	w14, #31
	b.hi	LBB4_44
; %bb.42:                               ;   in Loop: Header=BB4_35 Depth=1
	ldr	w15, [x16, w14, sxtw #2]
	strb	w13, [x12, w14, sxtw]
	cbnz	w15, LBB4_44
; %bb.43:                               ;   in Loop: Header=BB4_35 Depth=1
	lsl	w15, w14, #2
	str	wzr, [x27, w14, sxtw #2]
	str	wzr, [x20, w14, sxtw #2]
	str	w13, [x16, w15, sxtw]
	.p2align	4, , 8
LBB4_44:                                ;   in Loop: Header=BB4_35 Depth=1
	add	w14, w11, #4
	ldr	w14, [x14]
	cmp	w14, #31
	b.hi	LBB4_34
; %bb.45:                               ;   in Loop: Header=BB4_35 Depth=1
	ldr	w15, [x16, w14, sxtw #2]
	strb	w13, [x12, w14, sxtw]
	cbnz	w15, LBB4_34
; %bb.46:                               ;   in Loop: Header=BB4_35 Depth=1
	lsl	w15, w14, #2
	str	wzr, [x27, w14, sxtw #2]
	str	wzr, [x20, w14, sxtw #2]
	str	w13, [x16, w15, sxtw]
	b	LBB4_34
LBB4_47:
	cbz	w8, LBB4_60
; %bb.48:
	neg	w9, w9
LBB4_49:
	add	x10, sp, #152
	ldr	w10, [x10, w9, sxtw #2]
	cmp	w10, #31
	b.hi	LBB4_52
; %bb.50:
	ldr	w12, [x16, w10, sxtw #2]
	add	x13, sp, #120
	mov	w11, #1                         ; =0x1
	strb	w11, [x13, w10, sxtw]
	cbnz	w12, LBB4_52
; %bb.51:
	lsl	w12, w10, #2
	str	wzr, [x27, w10, sxtw #2]
	str	wzr, [x20, w10, sxtw #2]
	str	w11, [x16, w12, sxtw]
LBB4_52:
	cmp	w8, #1
	b.eq	LBB4_60
; %bb.53:
	add	x10, sp, #152
	add	x10, x10, w9, sxtw #2
	ldr	w10, [x10, #4]
	cmp	w10, #31
	b.hi	LBB4_56
; %bb.54:
	ldr	w12, [x16, w10, sxtw #2]
	add	x13, sp, #120
	mov	w11, #1                         ; =0x1
	strb	w11, [x13, w10, sxtw]
	cbnz	w12, LBB4_56
; %bb.55:
	lsl	w12, w10, #2
	str	wzr, [x27, w10, sxtw #2]
	str	wzr, [x20, w10, sxtw #2]
	str	w11, [x16, w12, sxtw]
LBB4_56:
	cmp	w8, #2
	b.eq	LBB4_60
; %bb.57:
	add	x8, sp, #152
	add	x8, x8, w9, sxtw #2
	ldr	w8, [x8, #8]
	cmp	w8, #31
	b.hi	LBB4_60
; %bb.58:
	ldr	w10, [x16, w8, sxtw #2]
	add	x11, sp, #120
	mov	w9, #1                          ; =0x1
	strb	w9, [x11, w8, sxtw]
	cbnz	w10, LBB4_60
; %bb.59:
	lsl	w10, w8, #2
	str	wzr, [x27, w8, sxtw #2]
	str	wzr, [x20, w8, sxtw #2]
	str	w9, [x16, w10, sxtw]
LBB4_60:
	mov	w8, #1120403456                 ; =0x42c80000
	mov	w22, #50408                     ; =0xc4e8
	mov	w23, #52200                     ; =0xcbe8
	mov	w19, wzr
	movk	w22, #54, lsl #16
	movk	w23, #54, lsl #16
	fmov	s8, w8
	b	LBB4_63
	.p2align	4, , 8
LBB4_61:                                ;   in Loop: Header=BB4_63 Depth=1
Lloh57:
	adrp	x8, _g_host_machine_known@PAGE
Lloh58:
	add	x8, x8, _g_host_machine_known@PAGEOFF
	str	wzr, [x20, w19, sxtw #2]
	str	wzr, [x8, w19, sxtw #2]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x27, w19, sxtw #2]
LBB4_62:                                ;   in Loop: Header=BB4_63 Depth=1
	add	w19, w19, #1
	cmp	w19, #32
	b.eq	LBB4_131
LBB4_63:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_73 Depth 2
                                        ;     Child Loop BB4_91 Depth 2
	add	x8, sp, #120
	ldrb	w8, [x8, w19, sxtw]
	cbz	w8, LBB4_61
; %bb.64:                               ;   in Loop: Header=BB4_63 Depth=1
	ldr	w8, [x20, w19, sxtw #2]
	mov	w24, wzr
	lsl	w28, w19, #2
	cbz	w8, LBB4_70
; %bb.65:                               ;   in Loop: Header=BB4_63 Depth=1
	ldr	w20, [x27, w19, sxtw #2]
	tbz	w20, #31, LBB4_91
LBB4_66:                                ;   in Loop: Header=BB4_63 Depth=1
	ldr	w0, [x26]
	cbnz	w0, LBB4_68
LBB4_67:                                ;   in Loop: Header=BB4_63 Depth=1
	bl	_forge_runtime_state_get
LBB4_68:                                ;   in Loop: Header=BB4_63 Depth=1
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w20, w8
Lloh59:
	adrp	x20, _g_host_machine_mon_synced@PAGE
Lloh60:
	add	x20, x20, _g_host_machine_mon_synced@PAGEOFF
	b.lt	LBB4_62
; %bb.69:                               ;   in Loop: Header=BB4_63 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x27, w28, sxtw]
	b	LBB4_62
	.p2align	4, , 8
LBB4_70:                                ;   in Loop: Header=BB4_63 Depth=1
	mov	w21, wzr
	mov	w25, #-1536                     ; =0xfffffa00
	b	LBB4_73
	.p2align	4, , 8
LBB4_71:                                ;   in Loop: Header=BB4_73 Depth=2
	add	w24, w24, #1
LBB4_72:                                ;   in Loop: Header=BB4_73 Depth=2
	add	w21, w21, #1
	adds	w25, w25, #12
	b.eq	LBB4_88
LBB4_73:                                ;   Parent Loop BB4_63 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x26]
	cbnz	w0, LBB4_75
; %bb.74:                               ;   in Loop: Header=BB4_73 Depth=2
	bl	_forge_runtime_state_get
LBB4_75:                                ;   in Loop: Header=BB4_73 Depth=2
	add	w8, w21, w22
	add	w8, w0, w8
	ldrb	w8, [x8]
	cbz	w8, LBB4_72
; %bb.76:                               ;   in Loop: Header=BB4_73 Depth=2
	ldr	w0, [x26]
	cbz	w0, LBB4_78
; %bb.77:                               ;   in Loop: Header=BB4_73 Depth=2
	add	w8, w25, w23
	add	w8, w0, w8
	ldr	s9, [x8]
	b	LBB4_79
	.p2align	4, , 8
LBB4_78:                                ;   in Loop: Header=BB4_73 Depth=2
	bl	_forge_runtime_state_get
	add	w8, w0, w25
	ldr	w0, [x26]
	add	w8, w8, w23
	ldr	s9, [x8]
	cbz	w0, LBB4_84
LBB4_79:                                ;   in Loop: Header=BB4_73 Depth=2
	mov	w8, #52204                      ; =0xcbec
	fcvt	d9, s9
	movk	w8, #54, lsl #16
	add	w8, w25, w8
	add	w8, w0, w8
	ldr	s0, [x8]
	fcvt	d10, s0
LBB4_80:                                ;   in Loop: Header=BB4_73 Depth=2
	mov	w8, #52208                      ; =0xcbf0
	movk	w8, #54, lsl #16
	add	w8, w25, w8
	add	w8, w0, w8
	ldr	s11, [x8]
LBB4_81:                                ;   in Loop: Header=BB4_73 Depth=2
	add	w8, w0, w21, lsl #2
	add	w8, w8, w23
	ldr	s12, [x8]
LBB4_82:                                ;   in Loop: Header=BB4_73 Depth=2
	mov	w9, #52712                      ; =0xcde8
	add	w8, w0, w21, lsl #2
	movk	w9, #54, lsl #16
	fmul	s1, s12, s8
	add	w8, w8, w9
	fcvt	d2, s11
	add	x0, sp, #56
	mov	w1, #64                         ; =0x40
Lloh61:
	adrp	x2, l_.str.3@PAGE
Lloh62:
	add	x2, x2, l_.str.3@PAGEOFF
	ldr	s0, [x8]
	stp	d9, d10, [sp, #8]
	fcvtzs	s1, s1
	str	w21, [sp]
	fmul	s0, s0, s8
	fcvtzs	s0, s0
	zip1	v0.2s, v1.2s, v0.2s
	stp	d2, d0, [sp, #24]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #56]
	cbz	w8, LBB4_71
; %bb.83:                               ;   in Loop: Header=BB4_73 Depth=2
	sub	x0, x29, #216
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	sub	x8, x29, #216
	mov	w1, #64                         ; =0x40
	add	x0, x8, #16
Lloh63:
	adrp	x2, l_.str@PAGE
Lloh64:
	add	x2, x2, l_.str@PAGEOFF
	add	x8, sp, #56
	sturh	wzr, [x29, #-204]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #216
	mov	w0, w19
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	b	LBB4_71
LBB4_84:                                ;   in Loop: Header=BB4_73 Depth=2
	bl	_forge_runtime_state_get
	mov	w9, #52204                      ; =0xcbec
	add	w8, w0, w25
	movk	w9, #54, lsl #16
	fcvt	d9, s9
	add	w8, w8, w9
	ldr	w0, [x26]
	ldr	s0, [x8]
	fcvt	d10, s0
	cbnz	w0, LBB4_80
; %bb.85:                               ;   in Loop: Header=BB4_73 Depth=2
	bl	_forge_runtime_state_get
	mov	w9, #52208                      ; =0xcbf0
	add	w8, w0, w25
	movk	w9, #54, lsl #16
	ldr	w0, [x26]
	add	w8, w8, w9
	ldr	s11, [x8]
	cbnz	w0, LBB4_81
; %bb.86:                               ;   in Loop: Header=BB4_73 Depth=2
	bl	_forge_runtime_state_get
	add	w8, w0, w21, lsl #2
	ldr	w0, [x26]
	add	w8, w8, w23
	ldr	s12, [x8]
	cbnz	w0, LBB4_82
; %bb.87:                               ;   in Loop: Header=BB4_73 Depth=2
	bl	_forge_runtime_state_get
	b	LBB4_82
	.p2align	4, , 8
LBB4_88:                                ;   in Loop: Header=BB4_63 Depth=1
	mov	w8, #1                          ; =0x1
	str	w8, [x20, w28, sxtw]
	ldr	w20, [x27, w19, sxtw #2]
	tbz	w20, #31, LBB4_91
	b	LBB4_66
	.p2align	4, , 8
LBB4_89:                                ;   in Loop: Header=BB4_91 Depth=2
	add	w24, w24, #1
LBB4_90:                                ;   in Loop: Header=BB4_91 Depth=2
	ldr	w20, [x27, w28, sxtw]
	tbnz	w20, #31, LBB4_66
LBB4_91:                                ;   Parent Loop BB4_63 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x26]
	mov	w25, w20
	cbnz	w0, LBB4_93
; %bb.92:                               ;   in Loop: Header=BB4_91 Depth=2
	bl	_forge_runtime_state_get
	ldr	w25, [x27, w28, sxtw]
LBB4_93:                                ;   in Loop: Header=BB4_91 Depth=2
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w20, w8
	ccmp	w24, #5, #0, lt
	b.gt	LBB4_121
; %bb.94:                               ;   in Loop: Header=BB4_91 Depth=2
	ldr	w0, [x26]
	add	w8, w25, #1
	str	w8, [x27, w28, sxtw]
	cbnz	w0, LBB4_96
; %bb.95:                               ;   in Loop: Header=BB4_91 Depth=2
	bl	_forge_runtime_state_get
LBB4_96:                                ;   in Loop: Header=BB4_91 Depth=2
	mov	w8, #396                        ; =0x18c
	mov	w9, #1112                       ; =0x458
	movk	w9, #30, lsl #16
	smaddl	x8, w25, w8, x0
	add	x21, x8, x9
	ldr	w9, [x21]
	ldrb	w8, [x21, #22]
	cbz	w9, LBB4_105
; %bb.97:                               ;   in Loop: Header=BB4_91 Depth=2
	cbz	w8, LBB4_115
; %bb.98:                               ;   in Loop: Header=BB4_91 Depth=2
	ldr	w8, [x21, #12]
	tbnz	w8, #31, LBB4_110
; %bb.99:                               ;   in Loop: Header=BB4_91 Depth=2
	ldr	w0, [x21, #4]
	cmn	w0, #1
	b.eq	LBB4_119
; %bb.100:                              ;   in Loop: Header=BB4_91 Depth=2
	mov	w1, #-1                         ; =0xffffffff
	mov	w20, #-1                        ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB4_103
; %bb.101:                              ;   in Loop: Header=BB4_91 Depth=2
	ldrh	w8, [x0, #100]
	cmp	w8, #4
	b.hi	LBB4_103
; %bb.102:                              ;   in Loop: Header=BB4_91 Depth=2
	ldrh	w20, [x21, #4]
	.p2align	4, , 8
LBB4_103:                               ;   in Loop: Header=BB4_91 Depth=2
	ldr	w0, [x26]
	cbz	w0, LBB4_120
LBB4_104:                               ;   in Loop: Header=BB4_91 Depth=2
	ldp	s4, s5, [x21, #68]
	mov	w1, #64                         ; =0x40
Lloh65:
	adrp	x2, l_.str.5@PAGE
Lloh66:
	add	x2, x2, l_.str.5@PAGEOFF
	ldr	w8, [x0, #80]
	ldp	s0, s1, [x21, #52]
	fmul	s4, s4, s8
	add	x0, sp, #56
	fmul	s5, s5, s8
	ldp	s2, s3, [x21, #60]
	fcvt	d1, s1
	cmp	w8, w25
	fcvt	d0, s0
	cset	w8, eq
	stp	w25, w20, [sp]
	fmul	s3, s3, s8
	fcvt	d2, s2
	fcvtzs	s5, s5
	str	w8, [sp, #44]
	fcvtzs	s4, s4
	str	d0, [sp, #8]
	stp	d1, d2, [sp, #16]
	fcvtzs	s2, s3
	zip1	v3.2s, v4.2s, v5.2s
	str	s2, [sp, #32]
	stur	d3, [sp, #36]
	b	LBB4_107
	.p2align	4, , 8
LBB4_105:                               ;   in Loop: Header=BB4_91 Depth=2
	cbz	w8, LBB4_110
; %bb.106:                              ;   in Loop: Header=BB4_91 Depth=2
	add	x0, sp, #56
	mov	w1, #64                         ; =0x40
Lloh67:
	adrp	x2, l_.str.4@PAGE
Lloh68:
	add	x2, x2, l_.str.4@PAGEOFF
	str	w25, [sp]
LBB4_107:                               ;   in Loop: Header=BB4_91 Depth=2
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #56]
	cbz	w8, LBB4_109
LBB4_108:                               ;   in Loop: Header=BB4_91 Depth=2
	sub	x0, x29, #216
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	sub	x8, x29, #216
	mov	w1, #64                         ; =0x40
	add	x0, x8, #16
Lloh69:
	adrp	x2, l_.str@PAGE
Lloh70:
	add	x2, x2, l_.str@PAGEOFF
	add	x8, sp, #56
	sturh	wzr, [x29, #-204]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #216
	mov	w0, w19
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
LBB4_109:                               ;   in Loop: Header=BB4_91 Depth=2
	add	w24, w24, #1
LBB4_110:                               ;   in Loop: Header=BB4_91 Depth=2
	ldr	w8, [x21]
	cbz	w8, LBB4_90
; %bb.111:                              ;   in Loop: Header=BB4_91 Depth=2
	ldrb	w8, [x21, #22]
	cbz	w8, LBB4_90
; %bb.112:                              ;   in Loop: Header=BB4_91 Depth=2
	mov	w0, w25
	bl	_forge_3d_teleporter_net_usage
	tbnz	w0, #31, LBB4_90
; %bb.113:                              ;   in Loop: Header=BB4_91 Depth=2
	mov	w0, w25
	bl	_forge_3d_teleporter_net_usage
	mov	w8, w0
	add	x0, sp, #56
	mov	w1, #64                         ; =0x40
Lloh71:
	adrp	x2, l_.str.6@PAGE
Lloh72:
	add	x2, x2, l_.str.6@PAGEOFF
	stp	w25, w8, [sp]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #56]
	cbz	w8, LBB4_89
; %bb.114:                              ;   in Loop: Header=BB4_91 Depth=2
	sub	x0, x29, #216
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	sub	x8, x29, #216
	mov	w1, #64                         ; =0x40
	add	x0, x8, #16
Lloh73:
	adrp	x2, l_.str@PAGE
Lloh74:
	add	x2, x2, l_.str@PAGEOFF
	add	x8, sp, #56
	sturh	wzr, [x29, #-204]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #216
	mov	w0, w19
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	b	LBB4_89
	.p2align	4, , 8
LBB4_115:                               ;   in Loop: Header=BB4_91 Depth=2
	mov	w0, w25
	bl	_forge_3d_teleporter_net_usage
	ldr	w2, [x21, #16]
	tbnz	w0, #31, LBB4_117
; %bb.116:                              ;   in Loop: Header=BB4_91 Depth=2
	mov	w8, #27749                      ; =0x6c65
	movk	w8, #29797, lsl #16
	cmp	w2, w8
	b.ne	LBB4_118
LBB4_117:                               ;   in Loop: Header=BB4_91 Depth=2
	ldrh	w0, [x21, #28]
LBB4_118:                               ;   in Loop: Header=BB4_91 Depth=2
	ldr	w4, [x21, #4]
	sxth	w5, w0
	ldp	s0, s1, [x21, #52]
	add	x0, sp, #56
	add	x3, x21, #76
	ldp	s2, s3, [x21, #60]
	mov	w1, w25
	ldp	s4, s5, [x21, #68]
	bl	_forge_format_host_spawn_packet
	ldrb	w8, [sp, #56]
	cbnz	w8, LBB4_108
	b	LBB4_109
LBB4_119:                               ;   in Loop: Header=BB4_91 Depth=2
	mov	w20, #-1                        ; =0xffffffff
	ldr	w0, [x26]
	cbnz	w0, LBB4_104
LBB4_120:                               ;   in Loop: Header=BB4_91 Depth=2
	bl	_forge_runtime_state_get
	b	LBB4_104
LBB4_121:                               ;   in Loop: Header=BB4_63 Depth=1
	mov	w20, w25
	ldr	w0, [x26]
	cbnz	w0, LBB4_68
	b	LBB4_67
LBB4_122:
	bl	_forge_runtime_state_get
	ldr	s0, [x22, _g_last_monitor_sent_y@PAGEOFF]
	ldr	s1, [x0, #52]
	ldr	w0, [x26]
	fsub	s9, s1, s0
	cbnz	w0, LBB4_8
; %bb.123:
	bl	_forge_runtime_state_get
	ldr	s0, [x21, _g_last_monitor_sent_z@PAGEOFF]
	ldr	s1, [x0, #56]
	ldr	w0, [x26]
	fsub	s10, s1, s0
	cbnz	w0, LBB4_9
; %bb.124:
	bl	_forge_runtime_state_get
	ldr	s0, [x20, _g_last_monitor_sent_yaw@PAGEOFF]
	ldr	s1, [x0, #60]
	ldr	w0, [x26]
	fsub	s11, s1, s0
	cbnz	w0, LBB4_10
; %bb.125:
	bl	_forge_runtime_state_get
	b	LBB4_10
LBB4_126:
	fmov	s8, s0
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x26]
	ldr	s1, [x8, #52]
	cbz	w0, LBB4_132
; %bb.127:
	ldp	s2, s3, [x0, #56]
	fmov	s0, s8
	b	LBB4_17
LBB4_128:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x26]
	ldr	s0, [x8, #48]
	cbz	w0, LBB4_134
LBB4_129:
	ldp	s1, s2, [x0, #52]
	ldr	s3, [x0, #60]
LBB4_130:
	ldr	s4, [x0, #64]
	mov	w0, #1                          ; =0x1
	bl	_forge_network_send_monitor_mode
LBB4_131:
	add	sp, sp, #368
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #144            ; 16-byte Folded Reload
	ret
LBB4_132:
	fmov	s9, s1
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x26]
	ldr	s2, [x8, #56]
	cbz	w0, LBB4_136
; %bb.133:
	ldr	s3, [x0, #60]
	fmov	s0, s8
	fmov	s1, s9
	b	LBB4_17
LBB4_134:
	fmov	s8, s0
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x26]
	ldr	s1, [x8, #52]
	cbz	w0, LBB4_139
; %bb.135:
	ldp	s2, s3, [x0, #56]
	fmov	s0, s8
	b	LBB4_130
LBB4_136:
	fmov	s10, s2
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x26]
	ldr	s3, [x8, #60]
	cbnz	w0, LBB4_138
; %bb.137:
	fmov	s11, s3
	bl	_forge_runtime_state_get
	fmov	s3, s11
LBB4_138:
	fmov	s0, s8
	fmov	s1, s9
	fmov	s2, s10
	b	LBB4_17
LBB4_139:
	fmov	s9, s1
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x26]
	ldr	s2, [x8, #56]
	cbz	w0, LBB4_141
; %bb.140:
	ldr	s3, [x0, #60]
	fmov	s0, s8
	fmov	s1, s9
	b	LBB4_130
LBB4_141:
	fmov	s10, s2
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x26]
	ldr	s3, [x8, #60]
	cbnz	w0, LBB4_143
; %bb.142:
	fmov	s11, s3
	bl	_forge_runtime_state_get
	fmov	s3, s11
LBB4_143:
	fmov	s0, s8
	fmov	s1, s9
	fmov	s2, s10
	b	LBB4_130
	.loh AdrpLdrGot	Lloh39, Lloh40
	.loh AdrpLdr	Lloh41, Lloh42
	.loh AdrpLdr	Lloh43, Lloh44
	.loh AdrpLdr	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh73, Lloh74
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_format_host_spawn_packet
_forge_format_host_spawn_packet:        ; @forge_format_host_spawn_packet
; %bb.0:
	sub	sp, sp, #192
	mov	w8, #40389                      ; =0x9dc5
	mov	w9, #403                        ; =0x193
	movk	w8, #33052, lsl #16
	movk	w9, #256, lsl #16
	eor	w8, w8, w2, lsr #24
	ubfx	w10, w2, #16, #8
	stp	d11, d10, [sp, #80]             ; 16-byte Folded Spill
	fmov	s10, s0
	mul	w8, w8, w9
	stp	d9, d8, [sp, #96]               ; 16-byte Folded Spill
	fmov	s8, s2
	stp	x22, x21, [sp, #144]            ; 16-byte Folded Spill
	eor	w8, w8, w10
	ubfx	w10, w2, #8, #8
	fmov	s9, s1
	stp	x20, x19, [sp, #160]            ; 16-byte Folded Spill
	mul	w8, w8, w9
	mov	w20, w5
	mov	w22, w4
	mov	w19, w1
	eor	w8, w8, w10
	and	w10, w2, #0xff
	mov	x21, x0
	stp	d13, d12, [sp, #64]             ; 16-byte Folded Spill
	mul	w8, w8, w9
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	eor	w8, w8, w10
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	mul	w8, w8, w9
	cbnz	w3, LBB5_12
LBB5_1:
	mov	w9, #1120403456                 ; =0x42c80000
	cmp	w8, #1
	csinc	w23, w8, wzr, hi
	cmn	w22, #1
	fmov	s0, w9
	fmul	s11, s3, s0
	fmul	s12, s4, s0
	fmul	s13, s5, s0
	b.eq	LBB5_15
; %bb.2:
	mov	w0, w22
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB5_15
; %bb.3:
	ldrh	w8, [x0, #100]
	cmp	w8, #4
	b.hi	LBB5_15
; %bb.4:
	mov	w0, w22
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB5_15
; %bb.5:
	ldrh	w8, [x0, #100]
	add	w9, w22, #1
	and	w22, w9, #0xfff
	cmp	w8, #1
	b.hi	LBB5_16
; %bb.6:
	ldr	w8, [x0, #680]
	cmn	w8, #1
	b.eq	LBB5_16
; %bb.7:
	mov	x24, x0
	mov	w0, w8
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB5_16
; %bb.8:
	ldrh	w8, [x0, #100]
	cmp	w8, #4
	b.hi	LBB5_16
; %bb.9:
	ldr	w8, [x24, #680]
	lsl	w8, w8, #12
	add	w8, w8, #1, lsl #12             ; =4096
	and	w8, w8, #0xfff000
	orr	w22, w8, w22
	b	LBB5_16
	.p2align	4, , 8
LBB5_10:                                ;   in Loop: Header=BB5_12 Depth=1
	mov	w10, #92                        ; =0x5c
LBB5_11:                                ;   in Loop: Header=BB5_12 Depth=1
	eor	w8, w10, w8
	add	x3, x3, #1
	mul	w8, w8, w9
LBB5_12:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x3]
	cmp	w10, #47
	b.eq	LBB5_10
; %bb.13:                               ;   in Loop: Header=BB5_12 Depth=1
	cbz	w10, LBB5_1
; %bb.14:                               ;   in Loop: Header=BB5_12 Depth=1
	sub	w11, w10, #65
	orr	w12, w10, #0x20
	cmp	w11, #26
	csel	w10, w12, w10, lo
	b	LBB5_11
LBB5_15:
	mov	w22, wzr
LBB5_16:
	fcvtzs	w24, s11
	fcvtzs	w25, s12
	fcvtzs	w26, s13
	tbnz	w19, #31, LBB5_20
; %bb.17:
Lloh75:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh76:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh77:
	ldr	w0, [x8]
	cbnz	w0, LBB5_19
; %bb.18:
	bl	_forge_runtime_state_get
LBB5_19:
	ldr	w8, [x0, #80]
	orr	w9, w22, #0x1000000
	cmp	w8, w19
	csel	w22, w9, w22, eq
LBB5_20:
	fcvt	d10, s10
Lloh78:
	adrp	x2, l_.str.25@PAGE
Lloh79:
	add	x2, x2, l_.str.25@PAGEOFF
	fcvt	d9, s9
	fcvt	d8, s8
	mov	x0, x21
	mov	w1, #64                         ; =0x40
	stp	w26, w20, [sp, #48]
	stp	w24, w25, [sp, #40]
	stp	w23, w22, [sp, #4]
	str	d10, [sp, #16]
	str	w19, [sp]
	stp	d9, d8, [sp, #24]
	bl	_halo_linux_snprintf
	cmp	w0, #64
	b.lo	LBB5_23
; %bb.21:
Lloh80:
	adrp	x2, l_.str.26@PAGE
Lloh81:
	add	x2, x2, l_.str.26@PAGEOFF
	mov	x0, x21
	mov	w1, #64                         ; =0x40
	stp	w26, w20, [sp, #48]
	stp	w24, w25, [sp, #40]
	stp	d9, d8, [sp, #24]
	str	d10, [sp, #16]
	stp	w23, w22, [sp, #4]
	str	w19, [sp]
	bl	_halo_linux_snprintf
	cmp	w0, #64
	b.lo	LBB5_23
; %bb.22:
Lloh82:
	adrp	x2, l_.str.27@PAGE
Lloh83:
	add	x2, x2, l_.str.27@PAGEOFF
	mov	x0, x21
	mov	w1, #64                         ; =0x40
	stp	w26, w20, [sp, #48]
	stp	w24, w25, [sp, #40]
	stp	d9, d8, [sp, #24]
	str	d10, [sp, #16]
	stp	w23, w22, [sp, #4]
	str	w19, [sp]
	bl	_halo_linux_snprintf
LBB5_23:
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #160]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #96]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #80]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
	.loh AdrpLdrGotLdr	Lloh75, Lloh76, Lloh77
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh82, Lloh83
                                        ; -- End function
	.globl	_forge_network_send_spawn_ext   ; -- Begin function forge_network_send_spawn_ext
	.p2align	4
_forge_network_send_spawn_ext:          ; @forge_network_send_spawn_ext
; %bb.0:
	sub	sp, sp, #480
	stp	d13, d12, [sp, #336]            ; 16-byte Folded Spill
	fmov	s12, s1
	stp	d11, d10, [sp, #352]            ; 16-byte Folded Spill
	fmov	s11, s3
	stp	d9, d8, [sp, #368]              ; 16-byte Folded Spill
	fmov	s8, s5
	stp	x28, x27, [sp, #384]            ; 16-byte Folded Spill
	fmov	s9, s4
	stp	x26, x25, [sp, #400]            ; 16-byte Folded Spill
	fmov	s10, s2
	stp	x24, x23, [sp, #416]            ; 16-byte Folded Spill
	mov	w24, w6
	stp	x22, x21, [sp, #432]            ; 16-byte Folded Spill
	fmov	s13, s0
	stp	x20, x19, [sp, #448]            ; 16-byte Folded Spill
	mov	w20, w5
	stp	x29, x30, [sp, #464]            ; 16-byte Folded Spill
	add	x29, sp, #464
	mov	w19, w4
	mov	x21, x2
	mov	w22, w1
	mov	w23, w0
	bl	_forge_is_multiplayer_session
	cbz	w21, LBB6_33
; %bb.1:
	cbz	w0, LBB6_33
; %bb.2:
	ldrb	w9, [x21]
	cbz	w9, LBB6_33
; %bb.3:
	mov	w10, #40389                     ; =0x9dc5
	mov	w8, #403                        ; =0x193
	movk	w10, #33052, lsl #16
	movk	w8, #256, lsl #16
	eor	w10, w10, w22, lsr #24
	ubfx	w11, w22, #16, #8
	mul	w10, w10, w8
	eor	w10, w10, w11
	ubfx	w11, w22, #8, #8
	mul	w10, w10, w8
	eor	w10, w10, w11
	and	w11, w22, #0xff
	mul	w10, w10, w8
	eor	w11, w10, w11
	mov	w10, #1                         ; =0x1
	b	LBB6_6
	.p2align	4, , 8
LBB6_4:                                 ;   in Loop: Header=BB6_6 Depth=1
	mov	w12, #92                        ; =0x5c
LBB6_5:                                 ;   in Loop: Header=BB6_6 Depth=1
	add	w9, w21, w10
	eor	w11, w12, w11
	add	w10, w10, #1
	ldrb	w9, [x9]
LBB6_6:                                 ; =>This Inner Loop Header: Depth=1
	mul	w11, w11, w8
	cmp	w9, #47
	b.eq	LBB6_4
; %bb.7:                                ;   in Loop: Header=BB6_6 Depth=1
	cbz	w9, LBB6_9
; %bb.8:                                ;   in Loop: Header=BB6_6 Depth=1
	sub	w12, w9, #65
	orr	w13, w9, #0x20
	cmp	w12, #26
	csel	w12, w13, w9, lo
	b	LBB6_5
LBB6_9:
	cmp	w11, #1
	csinc	w25, w11, wzr, hi
	cmn	w20, #1
	b.eq	LBB6_21
; %bb.10:
	mov	w0, w20
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB6_21
; %bb.11:
	ldrh	w8, [x0, #100]
	cmp	w8, #4
	b.hi	LBB6_21
; %bb.12:
	ubfx	w8, w20, #13, #3
	cbnz	w8, LBB6_21
; %bb.13:
	and	w26, w20, #0xffff
	adrp	x27, _s_net_objects_storage@PAGE
	cmn	w24, #1
	b.eq	LBB6_17
; %bb.14:
	ldr	w0, [x27, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB6_16
; %bb.15:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w28, #49152                     ; =0xc000
	movk	w28, #17, lsl #16
	bl	_calloc
	str	w0, [x27, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB6_34
LBB6_16:
	str	w24, [x0, w26, uxtw #2]
LBB6_17:
	tbnz	w23, #31, LBB6_21
; %bb.18:
	ldr	w0, [x27, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB6_20
; %bb.19:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w24, #49152                     ; =0xc000
	movk	w24, #17, lsl #16
	bl	_calloc
	str	w0, [x27, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB6_35
LBB6_20:
	add	x8, x0, w26, uxtw #2
	mov	w9, #32768                      ; =0x8000
	str	w23, [x8, x9]
LBB6_21:
	bl	_game_connection
	cmp	w0, #1
	b.ne	LBB6_24
; %bb.22:
	mov	w8, #1120403456                 ; =0x42c80000
	fcvt	d1, s13
	fcvt	d3, s12
Lloh84:
	adrp	x2, l_.str.7@PAGE
Lloh85:
	add	x2, x2, l_.str.7@PAGEOFF
	fcvt	d5, s10
	fmov	s0, w8
	add	x0, sp, #56
	mov	w1, #64                         ; =0x40
	str	w19, [sp, #44]
	str	w25, [sp]
	str	d1, [sp, #8]
	stp	d3, d5, [sp, #16]
	fmul	s2, s11, s0
	fmul	s7, s9, s0
	fmul	s0, s8, s0
	fcvtzs	s2, s2
	fcvtzs	s4, s7
	fcvtzs	s0, s0
	str	s2, [sp, #32]
	zip1	v0.2s, v4.2s, v0.2s
	stur	d0, [sp, #36]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #56]
	cbz	w8, LBB6_33
; %bb.23:
	add	x0, sp, #120
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	add	x19, sp, #120
	bl	_csmemset
Lloh86:
	adrp	x2, l_.str@PAGE
Lloh87:
	add	x2, x2, l_.str@PAGEOFF
	add	x8, sp, #56
	add	x0, x19, #16
	mov	w1, #64                         ; =0x40
	strh	wzr, [sp, #132]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #120
	mov	w1, #87                         ; =0x57
	mov	w2, #1                          ; =0x1
	mov	w3, #80                         ; =0x50
	mov	w4, #3                          ; =0x3
	bl	_distributed_send
	b	LBB6_33
LBB6_24:
	bl	_game_connection
	cmp	w0, #2
	b.ne	LBB6_33
; %bb.25:
	fmov	s0, s13
	add	x0, sp, #56
	fmov	s1, s12
	mov	w1, w23
	fmov	s2, s10
	mov	w2, w22
	fmov	s3, s11
	mov	x3, x21
	fmov	s4, s9
	mov	w4, w20
	fmov	s5, s8
	mov	w5, w19
	bl	_forge_format_host_spawn_packet
	ldrb	w8, [sp, #56]
	cbz	w8, LBB6_33
; %bb.26:
	add	x0, sp, #120
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB6_33
; %bb.27:
	mov	w19, w0
	sub	x22, x29, #216
	add	x23, sp, #120
	add	x24, sp, #56
Lloh88:
	adrp	x20, l_.str@PAGE
Lloh89:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB6_29
	.p2align	4, , 8
LBB6_28:                                ;   in Loop: Header=BB6_29 Depth=1
	add	w23, w23, #4
	subs	w19, w19, #1
	b.eq	LBB6_33
LBB6_29:                                ; =>This Inner Loop Header: Depth=1
	ldr	w21, [x23]
	cmn	w21, #1
	b.eq	LBB6_28
; %bb.30:                               ;   in Loop: Header=BB6_29 Depth=1
	tbnz	w21, #31, LBB6_28
; %bb.31:                               ;   in Loop: Header=BB6_29 Depth=1
	ldrb	w8, [sp, #56]
	cbz	w8, LBB6_28
; %bb.32:                               ;   in Loop: Header=BB6_29 Depth=1
	sub	x0, x29, #216
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x22, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x20
	sturh	wzr, [x29, #-204]
	str	w24, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #216
	mov	w0, w21
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	b	LBB6_28
LBB6_33:
	ldp	x29, x30, [sp, #464]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #448]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #432]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #416]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #400]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #384]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #368]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #352]            ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #480
	ret
LBB6_34:
Lloh90:
	adrp	x0, l_.str.24@PAGE
Lloh91:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w28, [sp]
	bl	_platform_log
	bl	_abort
LBB6_35:
Lloh92:
	adrp	x0, l_.str.24@PAGE
Lloh93:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w24, [sp]
	bl	_platform_log
	bl	_abort
	.loh AdrpAdd	Lloh84, Lloh85
	.loh AdrpAdd	Lloh86, Lloh87
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpAdd	Lloh90, Lloh91
	.loh AdrpAdd	Lloh92, Lloh93
                                        ; -- End function
	.globl	_forge_network_send_transform_ext ; -- Begin function forge_network_send_transform_ext
	.p2align	4
_forge_network_send_transform_ext:      ; @forge_network_send_transform_ext
; %bb.0:
	sub	sp, sp, #448
	stp	d13, d12, [sp, #320]            ; 16-byte Folded Spill
	fmov	s12, s1
	stp	d11, d10, [sp, #336]            ; 16-byte Folded Spill
	fmov	s11, s3
	stp	d9, d8, [sp, #352]              ; 16-byte Folded Spill
	fmov	s8, s5
	stp	x28, x27, [sp, #368]            ; 16-byte Folded Spill
	fmov	s9, s4
	stp	x24, x23, [sp, #384]            ; 16-byte Folded Spill
	fmov	s10, s2
	stp	x22, x21, [sp, #400]            ; 16-byte Folded Spill
	mov	w22, w3
	stp	x20, x19, [sp, #416]            ; 16-byte Folded Spill
	mov	w20, w2
	stp	x29, x30, [sp, #432]            ; 16-byte Folded Spill
	add	x29, sp, #432
	fmov	s13, s0
	mov	w21, w1
	mov	w19, w0
	bl	_forge_is_multiplayer_session
	cbz	w0, LBB7_41
; %bb.1:
	bl	_system_milliseconds
	adrp	x8, _g_last_transform_send_ms@PAGE
	cbnz	w22, LBB7_3
; %bb.2:
	ldr	w9, [x8, _g_last_transform_send_ms@PAGEOFF]
	sub	w9, w0, w9
	cmp	w9, #50
	b.lo	LBB7_41
LBB7_3:
	cmn	w21, #1
	str	w0, [x8, _g_last_transform_send_ms@PAGEOFF]
	b.eq	LBB7_10
; %bb.4:
	mov	w0, w21
	mov	w1, #-1                         ; =0xffffffff
	mov	w22, #-1                        ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB7_29
; %bb.5:
	ldrh	w8, [x0, #100]
	cmp	w8, #4
	b.hi	LBB7_29
; %bb.6:
	and	w22, w21, #0xffff
	ubfx	w8, w21, #13, #3
	cbnz	w8, LBB7_29
; %bb.7:
	adrp	x23, _s_net_objects_storage@PAGE
	ldr	w0, [x23, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB7_9
; %bb.8:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w21, #49152                     ; =0xc000
	movk	w21, #17, lsl #16
	bl	_calloc
	str	w0, [x23, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB7_42
LBB7_9:
	cmp	w20, #0
	add	x9, x0, w22, sxtw
	cset	w8, ne
	mov	w10, #65536                     ; =0x10000
	strb	w8, [x9, x10]
	b	LBB7_29
LBB7_10:
	tbnz	w19, #31, LBB7_28
; %bb.11:
Lloh94:
	adrp	x21, _g_forge_state@GOTPAGE
Lloh95:
	ldr	w21, [x21, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x21]
	cbnz	w0, LBB7_13
; %bb.12:
	bl	_forge_runtime_state_get
LBB7_13:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w19, w8
	b.ge	LBB7_28
; %bb.14:
	ldr	w0, [x21]
	cbnz	w0, LBB7_16
; %bb.15:
	bl	_forge_runtime_state_get
LBB7_16:
	mov	w8, #396                        ; =0x18c
	mov	w22, #-1                        ; =0xffffffff
	smaddl	x8, w19, w8, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [x9, #1128]
	mov	w9, #26991                      ; =0x696f
	movk	w9, #25969, lsl #16
	cmp	w8, w9
	b.le	LBB7_20
; %bb.17:
	mov	w9, #26992                      ; =0x6970
	movk	w9, #25969, lsl #16
	cmp	w8, w9
	b.eq	LBB7_23
; %bb.18:
	mov	w9, #24944                      ; =0x6170
	movk	w9, #30565, lsl #16
	cmp	w8, w9
	b.eq	LBB7_23
; %bb.19:
	mov	w9, #26729                      ; =0x6869
	movk	w9, #30309, lsl #16
	b	LBB7_22
LBB7_20:
	mov	w9, #29814                      ; =0x7476
	movk	w9, #24931, lsl #16
	cmp	w8, w9
	b.eq	LBB7_23
; %bb.21:
	mov	w9, #28772                      ; =0x7064
	movk	w9, #25193, lsl #16
LBB7_22:
	cmp	w8, w9
	b.ne	LBB7_29
LBB7_23:
	adrp	x23, _s_net_objects_storage@PAGE
	mov	w21, #49152                     ; =0xc000
	mov	w22, wzr
	movk	w21, #17, lsl #16
	ldr	w0, [x23, _s_net_objects_storage@PAGEOFF]
	.p2align	4, , 8
LBB7_24:                                ; =>This Inner Loop Header: Depth=1
	cbnz	w0, LBB7_26
; %bb.25:                               ;   in Loop: Header=BB7_24 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x23, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB7_42
LBB7_26:                                ;   in Loop: Header=BB7_24 Depth=1
	add	w8, w0, w22, lsl #2
	add	w8, w8, #8, lsl #12             ; =32768
	ldr	w8, [x8]
	cmp	w8, w19
	b.eq	LBB7_9
; %bb.27:                               ;   in Loop: Header=BB7_24 Depth=1
	add	w22, w22, #1
	cmp	w22, #2, lsl #12                ; =8192
	b.ne	LBB7_24
LBB7_28:
	mov	w22, #-1                        ; =0xffffffff
LBB7_29:
	mov	w8, #1120403456                 ; =0x42c80000
	fcvt	d1, s13
	fcvt	d3, s12
	cmp	w20, #0
	fcvt	d5, s10
Lloh96:
	adrp	x2, l_.str.5@PAGE
Lloh97:
	add	x2, x2, l_.str.5@PAGEOFF
	fmov	s0, w8
	cset	w8, ne
	add	x0, sp, #48
	mov	w1, #64                         ; =0x40
	stp	w19, w22, [sp]
	str	d1, [sp, #8]
	str	w8, [sp, #44]
	stp	d3, d5, [sp, #16]
	fmul	s2, s11, s0
	fmul	s7, s9, s0
	fmul	s0, s8, s0
	fcvtzs	s2, s2
	fcvtzs	s4, s7
	fcvtzs	s0, s0
	str	s2, [sp, #32]
	zip1	v0.2s, v4.2s, v0.2s
	stur	d0, [sp, #36]
	bl	_halo_linux_snprintf
	bl	_game_connection
	cmp	w0, #1
	b.ne	LBB7_32
; %bb.30:
	ldrb	w8, [sp, #48]
	cbz	w8, LBB7_41
; %bb.31:
	add	x0, sp, #112
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	add	x19, sp, #112
	bl	_csmemset
Lloh98:
	adrp	x2, l_.str@PAGE
Lloh99:
	add	x2, x2, l_.str@PAGEOFF
	add	x8, sp, #48
	add	x0, x19, #16
	mov	w1, #64                         ; =0x40
	strh	wzr, [sp, #124]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #112
	mov	w1, #87                         ; =0x57
	mov	w2, #1                          ; =0x1
	mov	w3, #80                         ; =0x50
	mov	w4, #3                          ; =0x3
	bl	_distributed_send
	b	LBB7_41
LBB7_32:
	bl	_game_connection
	cmp	w0, #2
	b.ne	LBB7_41
; %bb.33:
	ldrb	w8, [sp, #48]
	cbz	w8, LBB7_41
; %bb.34:
	add	x0, sp, #112
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB7_41
; %bb.35:
	mov	w19, w0
	sub	x22, x29, #192
	add	x23, sp, #112
	add	x24, sp, #48
Lloh100:
	adrp	x20, l_.str@PAGE
Lloh101:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB7_37
	.p2align	4, , 8
LBB7_36:                                ;   in Loop: Header=BB7_37 Depth=1
	add	w23, w23, #4
	subs	w19, w19, #1
	b.eq	LBB7_41
LBB7_37:                                ; =>This Inner Loop Header: Depth=1
	ldr	w21, [x23]
	cmn	w21, #1
	b.eq	LBB7_36
; %bb.38:                               ;   in Loop: Header=BB7_37 Depth=1
	tbnz	w21, #31, LBB7_36
; %bb.39:                               ;   in Loop: Header=BB7_37 Depth=1
	ldrb	w8, [sp, #48]
	cbz	w8, LBB7_36
; %bb.40:                               ;   in Loop: Header=BB7_37 Depth=1
	sub	x0, x29, #192
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x22, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x20
	sturh	wzr, [x29, #-180]
	str	w24, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #192
	mov	w0, w21
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	b	LBB7_36
LBB7_41:
	ldp	x29, x30, [sp, #432]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #416]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #400]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #384]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #368]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #352]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #336]            ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #448
	ret
LBB7_42:
Lloh102:
	adrp	x0, l_.str.24@PAGE
Lloh103:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w21, [sp]
	bl	_platform_log
	bl	_abort
	.loh AdrpLdrGot	Lloh94, Lloh95
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpAdd	Lloh100, Lloh101
	.loh AdrpAdd	Lloh102, Lloh103
                                        ; -- End function
	.globl	_forge_network_send_delete_ext  ; -- Begin function forge_network_send_delete_ext
	.p2align	4
_forge_network_send_delete_ext:         ; @forge_network_send_delete_ext
; %bb.0:
	sub	sp, sp, #368
	stp	x28, x27, [sp, #288]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #304]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #320]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #336]            ; 16-byte Folded Spill
	mov	w20, w1
	stp	x29, x30, [sp, #352]            ; 16-byte Folded Spill
	add	x29, sp, #352
	mov	w19, w0
	bl	_forge_is_multiplayer_session
	cbz	w0, LBB8_31
; %bb.1:
	mov	w22, #-1                        ; =0xffffffff
	cmn	w20, #1
	b.eq	LBB8_6
; %bb.2:
	mov	w0, w20
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB8_4
; %bb.3:
	ldrh	w8, [x0, #100]
	cmp	w8, #5
	b.lo	LBB8_5
LBB8_4:
	mov	w20, #-1                        ; =0xffffffff
	b	LBB8_6
LBB8_5:
	and	w20, w20, #0xffff
LBB8_6:
	adrp	x23, _s_net_objects_storage@PAGE
	mov	w21, #49152                     ; =0xc000
	mov	w24, wzr
	movk	w21, #17, lsl #16
	ldr	w0, [x23, _s_net_objects_storage@PAGEOFF]
	b	LBB8_9
	.p2align	4, , 8
LBB8_7:                                 ;   in Loop: Header=BB8_9 Depth=1
	add	w8, w0, w24, lsl #2
	add	w9, w0, w24
	add	w8, w8, #8, lsl #12             ; =32768
	add	w9, w9, #16, lsl #12            ; =65536
	str	w22, [x8]
	strb	wzr, [x9]
LBB8_8:                                 ;   in Loop: Header=BB8_9 Depth=1
	add	w24, w24, #1
	cmp	w24, #2, lsl #12                ; =8192
	b.eq	LBB8_15
LBB8_9:                                 ; =>This Inner Loop Header: Depth=1
	cbnz	w0, LBB8_11
; %bb.10:                               ;   in Loop: Header=BB8_9 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x23, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB8_14
LBB8_11:                                ;   in Loop: Header=BB8_9 Depth=1
	add	w8, w0, w24, lsl #2
	add	w8, w8, #8, lsl #12             ; =32768
	ldr	w8, [x8]
	cmp	w8, w19
	b.ne	LBB8_8
; %bb.12:                               ;   in Loop: Header=BB8_9 Depth=1
	cmp	w20, #0
	csel	w20, w24, w20, mi
	cbnz	w0, LBB8_7
; %bb.13:                               ;   in Loop: Header=BB8_9 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x23, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB8_7
LBB8_14:
Lloh104:
	adrp	x0, l_.str.24@PAGE
Lloh105:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w21, [sp]
	bl	_platform_log
	bl	_abort
LBB8_15:
	lsr	w8, w20, #13
	cbnz	w8, LBB8_19
; %bb.16:
	cbnz	w0, LBB8_18
; %bb.17:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x23, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB8_14
LBB8_18:
	add	x8, x0, w20, sxtw #2
	mov	w9, #32768                      ; =0x8000
	mov	w10, #-1                        ; =0xffffffff
	add	x11, x0, w20, sxtw
	mov	w12, #65536                     ; =0x10000
	str	w10, [x8, x9]
	strb	wzr, [x11, x12]
LBB8_19:
Lloh106:
	adrp	x2, l_.str.8@PAGE
Lloh107:
	add	x2, x2, l_.str.8@PAGEOFF
	add	x0, sp, #16
	mov	w1, #64                         ; =0x40
	stp	w19, w20, [sp]
	bl	_halo_linux_snprintf
	bl	_game_connection
	cmp	w0, #1
	b.ne	LBB8_22
; %bb.20:
	ldrb	w8, [sp, #16]
	cbz	w8, LBB8_31
; %bb.21:
	add	x0, sp, #80
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	add	x19, sp, #80
	bl	_csmemset
Lloh108:
	adrp	x2, l_.str@PAGE
Lloh109:
	add	x2, x2, l_.str@PAGEOFF
	add	x8, sp, #16
	add	x0, x19, #16
	mov	w1, #64                         ; =0x40
	strh	wzr, [sp, #92]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #80
	mov	w1, #87                         ; =0x57
	mov	w2, #1                          ; =0x1
	mov	w3, #80                         ; =0x50
	mov	w4, #3                          ; =0x3
	bl	_distributed_send
	b	LBB8_31
LBB8_22:
	bl	_game_connection
	cmp	w0, #2
	b.ne	LBB8_31
; %bb.23:
	ldrb	w8, [sp, #16]
	cbz	w8, LBB8_31
; %bb.24:
	add	x0, sp, #80
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB8_31
; %bb.25:
	mov	w19, w0
	sub	x22, x29, #144
	add	x23, sp, #80
	add	x24, sp, #16
Lloh110:
	adrp	x20, l_.str@PAGE
Lloh111:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB8_27
	.p2align	4, , 8
LBB8_26:                                ;   in Loop: Header=BB8_27 Depth=1
	add	w23, w23, #4
	subs	w19, w19, #1
	b.eq	LBB8_31
LBB8_27:                                ; =>This Inner Loop Header: Depth=1
	ldr	w21, [x23]
	cmn	w21, #1
	b.eq	LBB8_26
; %bb.28:                               ;   in Loop: Header=BB8_27 Depth=1
	tbnz	w21, #31, LBB8_26
; %bb.29:                               ;   in Loop: Header=BB8_27 Depth=1
	ldrb	w8, [sp, #16]
	cbz	w8, LBB8_26
; %bb.30:                               ;   in Loop: Header=BB8_27 Depth=1
	sub	x0, x29, #144
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x22, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x20
	sturh	wzr, [x29, #-132]
	str	w24, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #144
	mov	w0, w21
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	b	LBB8_26
LBB8_31:
	ldp	x29, x30, [sp, #352]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #336]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #320]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #304]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            ; 16-byte Folded Reload
	add	sp, sp, #368
	ret
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpAdd	Lloh106, Lloh107
	.loh AdrpAdd	Lloh108, Lloh109
	.loh AdrpAdd	Lloh110, Lloh111
                                        ; -- End function
	.globl	_forge_network_send_marker_usage ; -- Begin function forge_network_send_marker_usage
	.p2align	4
_forge_network_send_marker_usage:       ; @forge_network_send_marker_usage
; %bb.0:
	sub	sp, sp, #368
	stp	x28, x27, [sp, #288]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #304]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #320]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #336]            ; 16-byte Folded Spill
	mov	w20, w1
	stp	x29, x30, [sp, #352]            ; 16-byte Folded Spill
	add	x29, sp, #352
	mov	w19, w0
	bl	_forge_is_multiplayer_session
	cbz	w0, LBB9_13
; %bb.1:
Lloh112:
	adrp	x2, l_.str.6@PAGE
Lloh113:
	add	x2, x2, l_.str.6@PAGEOFF
	add	x0, sp, #16
	mov	w1, #64                         ; =0x40
	stp	w19, w20, [sp]
	bl	_halo_linux_snprintf
	bl	_game_connection
	cmp	w0, #1
	b.ne	LBB9_4
; %bb.2:
	ldrb	w8, [sp, #16]
	cbz	w8, LBB9_13
; %bb.3:
	add	x0, sp, #80
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	add	x19, sp, #80
	bl	_csmemset
Lloh114:
	adrp	x2, l_.str@PAGE
Lloh115:
	add	x2, x2, l_.str@PAGEOFF
	add	x8, sp, #16
	add	x0, x19, #16
	mov	w1, #64                         ; =0x40
	strh	wzr, [sp, #92]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #80
	mov	w1, #87                         ; =0x57
	mov	w2, #1                          ; =0x1
	mov	w3, #80                         ; =0x50
	mov	w4, #3                          ; =0x3
	bl	_distributed_send
	b	LBB9_13
LBB9_4:
	bl	_game_connection
	cmp	w0, #2
	b.ne	LBB9_13
; %bb.5:
	ldrb	w8, [sp, #16]
	cbz	w8, LBB9_13
; %bb.6:
	add	x0, sp, #80
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB9_13
; %bb.7:
	mov	w19, w0
	sub	x22, x29, #144
	add	x23, sp, #80
	add	x24, sp, #16
Lloh116:
	adrp	x20, l_.str@PAGE
Lloh117:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB9_9
	.p2align	4, , 8
LBB9_8:                                 ;   in Loop: Header=BB9_9 Depth=1
	add	w23, w23, #4
	subs	w19, w19, #1
	b.eq	LBB9_13
LBB9_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w21, [x23]
	cmn	w21, #1
	b.eq	LBB9_8
; %bb.10:                               ;   in Loop: Header=BB9_9 Depth=1
	tbnz	w21, #31, LBB9_8
; %bb.11:                               ;   in Loop: Header=BB9_9 Depth=1
	ldrb	w8, [sp, #16]
	cbz	w8, LBB9_8
; %bb.12:                               ;   in Loop: Header=BB9_9 Depth=1
	sub	x0, x29, #144
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x22, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x20
	sturh	wzr, [x29, #-132]
	str	w24, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #144
	mov	w0, w21
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	b	LBB9_8
LBB9_13:
	ldp	x29, x30, [sp, #352]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #336]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #320]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #304]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            ; 16-byte Folded Reload
	add	sp, sp, #368
	ret
	.loh AdrpAdd	Lloh112, Lloh113
	.loh AdrpAdd	Lloh114, Lloh115
	.loh AdrpAdd	Lloh116, Lloh117
                                        ; -- End function
	.globl	_forge_network_send_spawn_effect ; -- Begin function forge_network_send_spawn_effect
	.p2align	4
_forge_network_send_spawn_effect:       ; @forge_network_send_spawn_effect
; %bb.0:
	sub	sp, sp, #384
	stp	x28, x27, [sp, #304]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #320]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #336]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #352]            ; 16-byte Folded Spill
	mov	x20, x1
	stp	x29, x30, [sp, #368]            ; 16-byte Folded Spill
	add	x29, sp, #368
	mov	w19, w0
	bl	_game_connection
	cmp	w0, #2
	b.ne	LBB10_9
; %bb.1:
	ldp	s0, s1, [x20]
Lloh118:
	adrp	x2, l_.str.9@PAGE
Lloh119:
	add	x2, x2, l_.str.9@PAGEOFF
	ldr	s2, [x20, #8]
	add	x0, sp, #32
	mov	w1, #64                         ; =0x40
	str	w19, [sp]
	fcvt	d0, s0
	fcvt	d1, s1
	fcvt	d2, s2
	str	d0, [sp, #8]
	stp	d1, d2, [sp, #16]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #32]
	cbz	w8, LBB10_9
; %bb.2:
	add	x0, sp, #96
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB10_9
; %bb.3:
	mov	w19, w0
	sub	x22, x29, #144
	add	x23, sp, #96
	add	x24, sp, #32
Lloh120:
	adrp	x20, l_.str@PAGE
Lloh121:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB10_5
	.p2align	4, , 8
LBB10_4:                                ;   in Loop: Header=BB10_5 Depth=1
	add	w23, w23, #4
	subs	w19, w19, #1
	b.eq	LBB10_9
LBB10_5:                                ; =>This Inner Loop Header: Depth=1
	ldr	w21, [x23]
	cmn	w21, #1
	b.eq	LBB10_4
; %bb.6:                                ;   in Loop: Header=BB10_5 Depth=1
	tbnz	w21, #31, LBB10_4
; %bb.7:                                ;   in Loop: Header=BB10_5 Depth=1
	ldrb	w8, [sp, #32]
	cbz	w8, LBB10_4
; %bb.8:                                ;   in Loop: Header=BB10_5 Depth=1
	sub	x0, x29, #144
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x22, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x20
	sturh	wzr, [x29, #-132]
	str	w24, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #144
	mov	w0, w21
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	b	LBB10_4
LBB10_9:
	ldp	x29, x30, [sp, #368]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #352]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #336]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #320]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #304]            ; 16-byte Folded Reload
	add	sp, sp, #384
	ret
	.loh AdrpAdd	Lloh118, Lloh119
	.loh AdrpAdd	Lloh120, Lloh121
                                        ; -- End function
	.globl	_forge_network_send_ai_spawn    ; -- Begin function forge_network_send_ai_spawn
	.p2align	4
_forge_network_send_ai_spawn:           ; @forge_network_send_ai_spawn
; %bb.0:
	sub	sp, sp, #400
	stp	x28, x27, [sp, #320]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #336]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #352]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #368]            ; 16-byte Folded Spill
	mov	w19, w0
	stp	x29, x30, [sp, #384]            ; 16-byte Folded Spill
	add	x29, sp, #384
	bl	_forge_is_multiplayer_session
	cbz	w0, LBB11_17
; %bb.1:
	sub	x1, x29, #144
	add	x2, sp, #108
	add	x3, sp, #112
	mov	w0, w19
	stp	wzr, wzr, [sp, #108]
	stur	wzr, [x29, #-144]
	bl	_forge_ai_spawn_net_settings
	ldr	w8, [sp, #112]
	cbz	w8, LBB11_17
; %bb.2:
	ldur	w9, [x29, #-144]
Lloh122:
	adrp	x2, l_.str.28@PAGE
Lloh123:
	add	x2, x2, l_.str.28@PAGEOFF
	ldr	w10, [sp, #108]
	ldrh	w11, [x8, #528]
	add	x0, sp, #44
	ldrsh	w12, [x8, #530]
	mov	w1, #64                         ; =0x40
	ldrsh	w13, [x8, #532]
	ldrsh	w14, [x8, #534]
	ldrsh	w15, [x8, #536]
	ldrh	w16, [x8, #538]
	ldrb	w17, [x8, #546]
	ldrb	w8, [x8, #548]
	stp	w13, w14, [sp, #20]
	stp	w15, w16, [sp, #28]
	stp	w11, w12, [sp, #12]
	stp	w17, w8, [sp, #36]
	stp	w9, w10, [sp, #4]
	str	w19, [sp]
	bl	_halo_linux_snprintf
	bl	_game_connection
	cmp	w0, #1
	b.ne	LBB11_8
; %bb.3:
Lloh124:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh125:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh126:
	ldr	w0, [x8]
	cbnz	w0, LBB11_5
; %bb.4:
	bl	_forge_runtime_state_get
LBB11_5:
	mov	w8, #396                        ; =0x18c
	madd	w8, w19, w8, w0
	add	w8, w8, #480, lsl #12           ; =1966080
	add	w8, w8, #1135
	ldrsb	w8, [x8]
	tbnz	w8, #31, LBB11_17
; %bb.6:
	ldrb	w8, [sp, #44]
	cbz	w8, LBB11_17
; %bb.7:
	add	x0, sp, #112
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	add	x19, sp, #112
	bl	_csmemset
Lloh127:
	adrp	x2, l_.str@PAGE
Lloh128:
	add	x2, x2, l_.str@PAGEOFF
	add	x8, sp, #44
	add	x0, x19, #16
	mov	w1, #64                         ; =0x40
	strh	wzr, [sp, #124]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #112
	mov	w1, #87                         ; =0x57
	mov	w2, #1                          ; =0x1
	mov	w3, #80                         ; =0x50
	mov	w4, #3                          ; =0x3
	bl	_distributed_send
	b	LBB11_17
LBB11_8:
	bl	_game_connection
	cmp	w0, #2
	b.ne	LBB11_17
; %bb.9:
	ldrb	w8, [sp, #44]
	cbz	w8, LBB11_17
; %bb.10:
	add	x0, sp, #112
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB11_17
; %bb.11:
	mov	w19, w0
	sub	x22, x29, #144
	add	x23, sp, #112
	add	x24, sp, #44
Lloh129:
	adrp	x20, l_.str@PAGE
Lloh130:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB11_13
	.p2align	4, , 8
LBB11_12:                               ;   in Loop: Header=BB11_13 Depth=1
	add	w23, w23, #4
	subs	w19, w19, #1
	b.eq	LBB11_17
LBB11_13:                               ; =>This Inner Loop Header: Depth=1
	ldr	w21, [x23]
	cmn	w21, #1
	b.eq	LBB11_12
; %bb.14:                               ;   in Loop: Header=BB11_13 Depth=1
	tbnz	w21, #31, LBB11_12
; %bb.15:                               ;   in Loop: Header=BB11_13 Depth=1
	ldrb	w8, [sp, #44]
	cbz	w8, LBB11_12
; %bb.16:                               ;   in Loop: Header=BB11_13 Depth=1
	sub	x0, x29, #144
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x22, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x20
	sturh	wzr, [x29, #-132]
	str	w24, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #144
	mov	w0, w21
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	b	LBB11_12
LBB11_17:
	ldp	x29, x30, [sp, #384]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #368]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #352]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #336]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #400
	ret
	.loh AdrpAdd	Lloh122, Lloh123
	.loh AdrpLdrGotLdr	Lloh124, Lloh125, Lloh126
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh129, Lloh130
                                        ; -- End function
	.globl	_forge_network_intercept_chat_packet ; -- Begin function forge_network_intercept_chat_packet
	.p2align	4
_forge_network_intercept_chat_packet:   ; @forge_network_intercept_chat_packet
; %bb.0:
	stp	d15, d14, [sp, #-160]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	sub	sp, sp, #432
	mov	x20, x1
	cbz	w20, LBB12_19
; %bb.1:
	ldrb	w8, [x20]
	cmp	w8, #33
	b.ne	LBB12_19
; %bb.2:
	ldrb	w8, [x20, #1]
	cmp	w8, #70
	b.ne	LBB12_19
; %bb.3:
Lloh131:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	mov	w21, w2
	mov	w19, w0
Lloh132:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
	ldr	w9, [x8]
	cbnz	w9, LBB12_5
; %bb.4:
	mov	w9, #1                          ; =0x1
	str	w9, [x8]
	bl	_forge_runtime_init
LBB12_5:
Lloh133:
	adrp	x1, l_.str.10@PAGE
Lloh134:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_21
; %bb.6:
Lloh135:
	adrp	x1, l_.str.12@PAGE
Lloh136:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_27
; %bb.7:
Lloh137:
	adrp	x1, l_.str.2@PAGE
Lloh138:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x0, x20
	mov	w2, #3                          ; =0x3
	bl	_csstrncmp
	cbz	w0, LBB12_31
; %bb.8:
	bl	_game_connection
	cbz	w21, LBB12_34
; %bb.9:
	cmp	w0, #2
	b.ne	LBB12_473
; %bb.10:
Lloh139:
	adrp	x1, l_.str.14@PAGE
Lloh140:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_72
; %bb.11:
Lloh141:
	adrp	x1, l_.str.15@PAGE
Lloh142:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_90
; %bb.12:
Lloh143:
	adrp	x1, l_.str.17@PAGE
Lloh144:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_109
; %bb.13:
Lloh145:
	adrp	x1, l_.str.19@PAGE
Lloh146:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_115
; %bb.14:
Lloh147:
	adrp	x1, l_.str.21@PAGE
Lloh148:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbnz	w0, LBB12_473
; %bb.15:
	mov	w8, #-1                         ; =0xffffffff
	add	x9, sp, #188
Lloh149:
	adrp	x1, l_.str.16@PAGE
Lloh150:
	add	x1, x1, l_.str.16@PAGEOFF
	add	x0, x20, #4
	stp	w8, w8, [sp, #184]
	add	x8, sp, #184
	stp	w9, w8, [sp]
	bl	_sscanf
	cmp	w0, #1
	b.lt	LBB12_473
; %bb.16:
	ldp	w1, w0, [sp, #184]
	bl	_forge_resolve_target_live_idx
	tbnz	w0, #31, LBB12_473
; %bb.17:
	ldr	w21, [sp, #184]
	mov	w20, w0
	tbnz	w21, #31, LBB12_194
LBB12_18:
	adrp	x23, _s_net_objects_storage@PAGE
	mov	w22, #49152                     ; =0xc000
	mov	w24, wzr
	movk	w22, #17, lsl #16
	mov	w25, #-1                        ; =0xffffffff
	ldr	w0, [x23, _s_net_objects_storage@PAGEOFF]
	b	LBB12_84
LBB12_19:
	mov	w0, wzr
LBB12_20:
	add	sp, sp, #432
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #160            ; 16-byte Folded Reload
	ret
LBB12_21:
	mov	w8, #-1                         ; =0xffffffff
	add	x9, sp, #180
	add	x10, sp, #164
	add	x11, sp, #168
Lloh151:
	adrp	x1, l_.str.11@PAGE
Lloh152:
	add	x1, x1, l_.str.11@PAGEOFF
	stp	wzr, w8, [sp, #184]
	add	x8, sp, #176
	stp	w11, w10, [sp, #12]
	add	x10, sp, #188
	add	x0, x20, #4
	stp	xzr, xzr, [sp, #168]
	stp	w9, w8, [sp, #20]
	add	x8, sp, #172
	add	x9, sp, #184
	str	wzr, [sp, #164]
	str	w10, [sp]
	stp	w9, w8, [sp, #4]
	bl	_sscanf
	cmp	w0, #7
	b.ne	LBB12_473
; %bb.22:
	bl	_game_connection
	cbz	w21, LBB12_43
; %bb.23:
	cmp	w0, #2
	b.ne	LBB12_473
; %bb.24:
	ldr	w1, [sp, #188]
	cmp	w1, #127
	b.hi	LBB12_47
; %bb.25:
	mov	w0, w19
	bl	_distributed_machine_has_player
	cbz	w0, LBB12_47
LBB12_26:
	ldr	w20, [sp, #188]
	cmp	w20, #127
	b.ls	LBB12_64
	b	LBB12_473
LBB12_27:
	cbnz	w21, LBB12_473
; %bb.28:
	bl	_game_connection
	cmp	w0, #1
	b.ne	LBB12_473
; %bb.29:
	add	x8, sp, #192
Lloh153:
	adrp	x1, l_.str.13@PAGE
Lloh154:
	add	x1, x1, l_.str.13@PAGEOFF
	add	w9, w8, #4
	add	w10, w8, #8
	add	x0, x20, #4
	stur	wzr, [x29, #-240]
	stp	w9, w10, [sp, #8]
	sub	x10, x29, #240
	stp	w10, w8, [sp]
	bl	_sscanf
	cmp	w0, #4
	b.ne	LBB12_473
; %bb.30:
	ldur	w0, [x29, #-240]
	add	x1, sp, #192
	bl	_forge_ai_spawn_effect_play
	b	LBB12_473
LBB12_31:
	cbz	w21, LBB12_473
; %bb.32:
	bl	_game_connection
	cmp	w0, #2
	mov	w0, #1                          ; =0x1
	ccmp	w19, #31, #2, eq
	b.hi	LBB12_20
; %bb.33:
Lloh155:
	adrp	x8, _g_host_machine_known@PAGE
Lloh156:
	add	x8, x8, _g_host_machine_known@PAGEOFF
	str	w0, [x8, w19, sxtw #2]
Lloh157:
	adrp	x8, _g_host_machine_sync_cursor@PAGE
Lloh158:
	add	x8, x8, _g_host_machine_sync_cursor@PAGEOFF
	str	wzr, [x8, w19, sxtw #2]
Lloh159:
	adrp	x8, _g_host_machine_mon_synced@PAGE
Lloh160:
	add	x8, x8, _g_host_machine_mon_synced@PAGEOFF
	str	wzr, [x8, w19, sxtw #2]
	b	LBB12_20
LBB12_34:
	cmp	w0, #1
	b.ne	LBB12_473
; %bb.35:
Lloh161:
	adrp	x1, l_.str.14@PAGE
Lloh162:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_100
; %bb.36:
Lloh163:
	adrp	x1, l_.str.15@PAGE
Lloh164:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_112
; %bb.37:
Lloh165:
	adrp	x1, l_.str.22@PAGE
Lloh166:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_130
; %bb.38:
Lloh167:
	adrp	x1, l_.str.19@PAGE
Lloh168:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbz	w0, LBB12_140
; %bb.39:
Lloh169:
	adrp	x1, l_.str.21@PAGE
Lloh170:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	bl	_csstrncmp
	cbnz	w0, LBB12_473
; %bb.40:
	mov	w8, #-1                         ; =0xffffffff
	add	x9, sp, #192
Lloh171:
	adrp	x1, l_.str.16@PAGE
Lloh172:
	add	x1, x1, l_.str.16@PAGEOFF
	add	x0, x20, #4
	str	w8, [sp, #192]
	stur	w8, [x29, #-240]
	sub	x8, x29, #240
	stp	w9, w8, [sp]
	bl	_sscanf
	cmp	w0, #1
	b.lt	LBB12_473
; %bb.41:
	ldr	w0, [sp, #192]
	ldur	w1, [x29, #-240]
	bl	_forge_resolve_target_live_idx
	tbnz	w0, #31, LBB12_473
; %bb.42:
	adrp	x21, _s_net_objects_storage@PAGE
	mov	w19, w0
	mov	w20, #49152                     ; =0xc000
	mov	w22, wzr
	movk	w20, #17, lsl #16
	mov	w23, #-1                        ; =0xffffffff
	ldr	w0, [x21, _s_net_objects_storage@PAGEOFF]
	b	LBB12_103
LBB12_43:
	cmp	w0, #1
	b.ne	LBB12_473
; %bb.44:
	ldr	w19, [sp, #188]
	cmp	w19, #127
	b.hi	LBB12_473
; %bb.45:
	bl	_forge_get_local_player_abs_index
	cmp	w19, w0
	b.eq	LBB12_473
; %bb.46:
	ldr	s0, [sp, #180]
	mov	w8, #1120403456                 ; =0x42c80000
	ldp	w1, w0, [sp, #184]
	fmov	s1, w8
	ldr	s2, [sp, #164]
	scvtf	s0, s0
	fdiv	s3, s0, s1
	ldr	s0, [sp, #176]
	scvtf	s0, s0
	fdiv	s4, s0, s1
	ldp	s1, s0, [sp, #168]
	bl	_forge_apply_host_player_monitor_state
	b	LBB12_473
LBB12_47:
	mov	w0, w19
	mov	w1, wzr
	bl	_distributed_machine_has_player
	mov	w20, wzr
	cbnz	w0, LBB12_63
; %bb.48:
	mov	w0, w19
	mov	w1, #1                          ; =0x1
	mov	w20, #1                         ; =0x1
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.49:
	mov	w0, w19
	mov	w1, #2                          ; =0x2
	mov	w20, #2                         ; =0x2
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.50:
	mov	w0, w19
	mov	w1, #3                          ; =0x3
	mov	w20, #3                         ; =0x3
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.51:
	mov	w0, w19
	mov	w1, #4                          ; =0x4
	mov	w20, #4                         ; =0x4
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.52:
	mov	w0, w19
	mov	w1, #5                          ; =0x5
	mov	w20, #5                         ; =0x5
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.53:
	mov	w0, w19
	mov	w1, #6                          ; =0x6
	mov	w20, #6                         ; =0x6
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.54:
	mov	w0, w19
	mov	w1, #7                          ; =0x7
	mov	w20, #7                         ; =0x7
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.55:
	mov	w0, w19
	mov	w1, #8                          ; =0x8
	mov	w20, #8                         ; =0x8
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.56:
	mov	w0, w19
	mov	w1, #9                          ; =0x9
	mov	w20, #9                         ; =0x9
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.57:
	mov	w0, w19
	mov	w1, #10                         ; =0xa
	mov	w20, #10                        ; =0xa
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.58:
	mov	w0, w19
	mov	w1, #11                         ; =0xb
	mov	w20, #11                        ; =0xb
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.59:
	mov	w0, w19
	mov	w1, #12                         ; =0xc
	mov	w20, #12                        ; =0xc
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.60:
	mov	w0, w19
	mov	w1, #13                         ; =0xd
	mov	w20, #13                        ; =0xd
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.61:
	mov	w0, w19
	mov	w1, #14                         ; =0xe
	mov	w20, #14                        ; =0xe
	bl	_distributed_machine_has_player
	cbnz	w0, LBB12_63
; %bb.62:
	mov	w0, w19
	mov	w1, #15                         ; =0xf
	mov	w20, #15                        ; =0xf
	bl	_distributed_machine_has_player
	cbz	w0, LBB12_26
LBB12_63:
	str	w20, [sp, #188]
LBB12_64:
	ldr	s0, [sp, #180]
	mov	w8, #1120403456                 ; =0x42c80000
	ldr	w1, [sp, #184]
	mov	w0, w20
	ldr	s2, [sp, #164]
	fmov	s1, w8
	scvtf	s0, s0
	fdiv	s3, s0, s1
	ldr	s0, [sp, #176]
	scvtf	s0, s0
	fdiv	s4, s0, s1
	ldp	s1, s0, [sp, #168]
	bl	_forge_apply_host_player_monitor_state
	ldp	s1, s0, [sp, #168]
Lloh173:
	adrp	x2, l_.str.1@PAGE
Lloh174:
	add	x2, x2, l_.str.1@PAGEOFF
	ldr	s2, [sp, #164]
	add	x0, sp, #100
	ldp	w8, w9, [sp, #184]
	fcvt	d0, s0
	mov	w1, #64                         ; =0x40
	fcvt	d1, s1
	fcvt	d2, s2
	cmp	w8, #0
	ldp	w8, w10, [sp, #176]
	cset	w11, ne
	str	d0, [sp, #8]
	stp	w10, w8, [sp, #32]
	stp	d1, d2, [sp, #16]
	stp	w9, w11, [sp]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #100]
	cbz	w8, LBB12_473
; %bb.65:
	add	x0, sp, #192
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB12_473
; %bb.66:
	mov	w20, w0
	mov	w8, w19
	sub	x23, x29, #240
	add	x24, sp, #192
	add	x25, sp, #100
Lloh175:
	adrp	x21, l_.str@PAGE
Lloh176:
	add	x21, x21, l_.str@PAGEOFF
	b	LBB12_68
LBB12_67:                               ;   in Loop: Header=BB12_68 Depth=1
	add	w24, w24, #4
	subs	w20, w20, #1
	b.eq	LBB12_473
LBB12_68:                               ; =>This Inner Loop Header: Depth=1
	ldr	w22, [x24]
	cmp	w22, w8
	b.eq	LBB12_67
; %bb.69:                               ;   in Loop: Header=BB12_68 Depth=1
	tbnz	w22, #31, LBB12_67
; %bb.70:                               ;   in Loop: Header=BB12_68 Depth=1
	ldrb	w9, [sp, #100]
	cbz	w9, LBB12_67
; %bb.71:                               ;   in Loop: Header=BB12_68 Depth=1
	sub	x0, x29, #240
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x23, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x21
	sturh	wzr, [x29, #-228]
	str	w25, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #240
	mov	w0, w22
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	mov	w8, w19
	b	LBB12_67
LBB12_72:
	mov	w8, #-1                         ; =0xffffffff
	add	x1, sp, #184
	mov	x0, x20
	str	w8, [sp, #184]
	bl	_forge_ai_spawn_packet_apply
	cbz	w0, LBB12_473
; %bb.73:
	ldr	w20, [sp, #184]
	sub	x1, x29, #240
	add	x2, sp, #188
	add	x3, sp, #192
	stp	wzr, wzr, [sp, #188]
	stur	wzr, [x29, #-240]
	mov	w0, w20
	bl	_forge_ai_spawn_net_settings
	ldr	w8, [sp, #192]
	cbz	w8, LBB12_473
; %bb.74:
	ldur	w9, [x29, #-240]
Lloh177:
	adrp	x2, l_.str.28@PAGE
Lloh178:
	add	x2, x2, l_.str.28@PAGEOFF
	ldr	w10, [sp, #188]
	ldrh	w11, [x8, #528]
	add	x0, sp, #100
	ldrsh	w12, [x8, #530]
	mov	w1, #64                         ; =0x40
	ldrsh	w13, [x8, #532]
	ldrsh	w14, [x8, #534]
	ldrsh	w15, [x8, #536]
	ldrh	w16, [x8, #538]
	ldrb	w17, [x8, #546]
	ldrb	w8, [x8, #548]
	stp	w13, w14, [sp, #20]
	stp	w15, w16, [sp, #28]
	stp	w11, w12, [sp, #12]
	stp	w17, w8, [sp, #36]
	stp	w9, w10, [sp, #4]
	str	w20, [sp]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #100]
	cbz	w8, LBB12_473
; %bb.75:
	add	x0, sp, #192
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB12_473
; %bb.76:
	mov	w20, w0
	mov	w8, w19
	sub	x23, x29, #240
	add	x24, sp, #192
	add	x25, sp, #100
Lloh179:
	adrp	x21, l_.str@PAGE
Lloh180:
	add	x21, x21, l_.str@PAGEOFF
	b	LBB12_78
LBB12_77:                               ;   in Loop: Header=BB12_78 Depth=1
	add	w24, w24, #4
	subs	w20, w20, #1
	b.eq	LBB12_473
LBB12_78:                               ; =>This Inner Loop Header: Depth=1
	ldr	w22, [x24]
	cmp	w22, w8
	b.eq	LBB12_77
; %bb.79:                               ;   in Loop: Header=BB12_78 Depth=1
	tbnz	w22, #31, LBB12_77
; %bb.80:                               ;   in Loop: Header=BB12_78 Depth=1
	ldrb	w9, [sp, #100]
	cbz	w9, LBB12_77
; %bb.81:                               ;   in Loop: Header=BB12_78 Depth=1
	sub	x0, x29, #240
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x23, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x21
	sturh	wzr, [x29, #-228]
	str	w25, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #240
	mov	w0, w22
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	mov	w8, w19
	b	LBB12_77
LBB12_82:                               ;   in Loop: Header=BB12_84 Depth=1
	add	w8, w0, w24, lsl #2
	add	w9, w0, w24
	add	w8, w8, #8, lsl #12             ; =32768
	add	w9, w9, #16, lsl #12            ; =65536
	str	w25, [x8]
	strb	wzr, [x9]
LBB12_83:                               ;   in Loop: Header=BB12_84 Depth=1
	add	w24, w24, #1
	cmp	w24, #2, lsl #12                ; =8192
	b.eq	LBB12_150
LBB12_84:                               ; =>This Inner Loop Header: Depth=1
	cbnz	w0, LBB12_86
; %bb.85:                               ;   in Loop: Header=BB12_84 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x23, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_89
LBB12_86:                               ;   in Loop: Header=BB12_84 Depth=1
	add	w8, w0, w24, lsl #2
	add	w8, w8, #8, lsl #12             ; =32768
	ldr	w8, [x8]
	cmp	w8, w20
	b.ne	LBB12_83
; %bb.87:                               ;   in Loop: Header=BB12_84 Depth=1
	cbnz	w0, LBB12_82
; %bb.88:                               ;   in Loop: Header=BB12_84 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x23, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB12_82
LBB12_89:
Lloh181:
	adrp	x0, l_.str.24@PAGE
Lloh182:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w22, [sp]
	bl	_platform_log
	bl	_abort
LBB12_90:
	mov	w8, #-1                         ; =0xffffffff
	add	x9, sp, #188
Lloh183:
	adrp	x1, l_.str.16@PAGE
Lloh184:
	add	x1, x1, l_.str.16@PAGEOFF
	add	x0, x20, #4
	stp	wzr, w8, [sp, #184]
	add	x8, sp, #184
	stp	w9, w8, [sp]
	bl	_sscanf
	cmp	w0, #2
	b.ne	LBB12_473
; %bb.91:
	ldr	w0, [sp, #188]
	mov	w1, #-1                         ; =0xffffffff
	bl	_forge_resolve_target_live_idx
	tbnz	w0, #31, LBB12_473
; %bb.92:
	ldrsh	w1, [sp, #184]
	mov	w20, w0
	bl	_forge_3d_marker_usage_apply
	ldr	w8, [sp, #184]
Lloh185:
	adrp	x2, l_.str.6@PAGE
Lloh186:
	add	x2, x2, l_.str.6@PAGEOFF
	add	x0, sp, #100
	mov	w1, #64                         ; =0x40
	stp	w20, w8, [sp]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #100]
	cbz	w8, LBB12_473
; %bb.93:
	add	x0, sp, #192
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB12_473
; %bb.94:
	mov	w20, w0
	mov	w8, w19
	sub	x23, x29, #240
	add	x24, sp, #192
	add	x25, sp, #100
Lloh187:
	adrp	x21, l_.str@PAGE
Lloh188:
	add	x21, x21, l_.str@PAGEOFF
	b	LBB12_96
LBB12_95:                               ;   in Loop: Header=BB12_96 Depth=1
	add	w24, w24, #4
	subs	w20, w20, #1
	b.eq	LBB12_473
LBB12_96:                               ; =>This Inner Loop Header: Depth=1
	ldr	w22, [x24]
	cmp	w22, w8
	b.eq	LBB12_95
; %bb.97:                               ;   in Loop: Header=BB12_96 Depth=1
	tbnz	w22, #31, LBB12_95
; %bb.98:                               ;   in Loop: Header=BB12_96 Depth=1
	ldrb	w9, [sp, #100]
	cbz	w9, LBB12_95
; %bb.99:                               ;   in Loop: Header=BB12_96 Depth=1
	sub	x0, x29, #240
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x23, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x21
	sturh	wzr, [x29, #-228]
	str	w25, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #240
	mov	w0, w22
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	mov	w8, w19
	b	LBB12_95
LBB12_100:
	add	x1, sp, #192
	mov	x0, x20
	bl	_forge_ai_spawn_packet_apply
	b	LBB12_473
LBB12_101:                              ;   in Loop: Header=BB12_103 Depth=1
	add	w8, w0, w22, lsl #2
	add	w9, w0, w22
	add	w8, w8, #8, lsl #12             ; =32768
	add	w9, w9, #16, lsl #12            ; =65536
	str	w23, [x8]
	strb	wzr, [x9]
LBB12_102:                              ;   in Loop: Header=BB12_103 Depth=1
	add	w22, w22, #1
	cmp	w22, #2, lsl #12                ; =8192
	b.eq	LBB12_163
LBB12_103:                              ; =>This Inner Loop Header: Depth=1
	cbnz	w0, LBB12_105
; %bb.104:                              ;   in Loop: Header=BB12_103 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_108
LBB12_105:                              ;   in Loop: Header=BB12_103 Depth=1
	add	w8, w0, w22, lsl #2
	add	w8, w8, #8, lsl #12             ; =32768
	ldr	w8, [x8]
	cmp	w8, w19
	b.ne	LBB12_102
; %bb.106:                              ;   in Loop: Header=BB12_103 Depth=1
	cbnz	w0, LBB12_101
; %bb.107:                              ;   in Loop: Header=BB12_103 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB12_101
LBB12_108:
Lloh189:
	adrp	x0, l_.str.24@PAGE
Lloh190:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w20, [sp]
	bl	_platform_log
	bl	_abort
LBB12_109:
	add	x8, sp, #172
	add	x9, sp, #176
	add	x10, sp, #180
	add	x11, sp, #184
Lloh191:
	adrp	x1, l_.str.18@PAGE
Lloh192:
	add	x1, x1, l_.str.18@PAGEOFF
	stp	w9, w8, [sp, #24]
	add	x8, sp, #188
	add	x9, sp, #100
	stp	w11, w10, [sp, #16]
	add	x10, sp, #192
	add	x0, x20, #4
	str	wzr, [sp, #192]
	stp	w9, w8, [sp, #8]
	sub	x8, x29, #240
	stur	wzr, [x29, #-240]
	str	wzr, [sp, #100]
	stp	xzr, xzr, [sp, #176]
	str	wzr, [sp, #172]
	stp	w10, w8, [sp]
	bl	_sscanf
	cmp	w0, #8
	b.ne	LBB12_473
; %bb.110:
	ldr	w0, [sp, #192]
	bl	_forge_find_catalog_entry_by_hash
	cbz	w0, LBB12_473
; %bb.111:
	ldp	s0, s2, [sp, #184]
	mov	w8, #1120403456                 ; =0x42c80000
	add	x1, x0, #8
	ldrb	w2, [x0, #5]
	mov	w4, #1                          ; =0x1
	ldrsh	w3, [sp, #172]
	scvtf	s0, s0
	fmov	s1, w8
	ldr	w8, [x0]
	mov	w0, w8
	fdiv	s3, s0, s1
	ldr	s0, [sp, #180]
	scvtf	s0, s0
	fdiv	s4, s0, s1
	ldr	s0, [sp, #176]
	scvtf	s0, s0
	fdiv	s5, s0, s1
	ldur	s0, [x29, #-240]
	ldr	s1, [sp, #100]
	bl	_forge_3d_spawn_object_at
	b	LBB12_473
LBB12_112:
	mov	w8, #-1                         ; =0xffffffff
	add	x9, sp, #192
Lloh193:
	adrp	x1, l_.str.16@PAGE
Lloh194:
	add	x1, x1, l_.str.16@PAGEOFF
	add	x0, x20, #4
	stur	wzr, [x29, #-240]
	str	w8, [sp, #192]
	sub	x8, x29, #240
	stp	w9, w8, [sp]
	bl	_sscanf
	cmp	w0, #2
	b.ne	LBB12_473
; %bb.113:
	ldr	w0, [sp, #192]
	mov	w1, #-1                         ; =0xffffffff
	bl	_forge_resolve_target_live_idx
	tbnz	w0, #31, LBB12_473
; %bb.114:
	ldursh	w1, [x29, #-240]
	bl	_forge_3d_marker_usage_apply
	b	LBB12_473
LBB12_115:
	mov	w8, #-1                         ; =0xffffffff
	add	x9, sp, #172
	add	x10, sp, #176
	add	x11, sp, #180
Lloh195:
	adrp	x1, l_.str.20@PAGE
Lloh196:
	add	x1, x1, l_.str.20@PAGEOFF
	stp	w8, w8, [sp, #184]
	add	x8, sp, #168
	stp	w11, w10, [sp, #20]
	add	x10, sp, #188
	add	x0, x20, #4
	stp	xzr, xzr, [sp, #168]
	stp	w9, w8, [sp, #28]
	add	x8, sp, #92
	add	x9, sp, #96
	str	wzr, [sp, #164]
	stp	wzr, wzr, [sp, #92]
	str	w10, [sp]
	stp	w9, w8, [sp, #12]
	add	x8, sp, #164
	add	x9, sp, #184
	stp	w9, w8, [sp, #4]
	bl	_sscanf
	cmp	w0, #8
	b.lt	LBB12_473
; %bb.116:
	mov	w21, w0
	ldp	w1, w0, [sp, #184]
	bl	_forge_resolve_target_live_idx
	ldr	w22, [sp, #184]
	mov	w20, w0
	lsr	w8, w22, #13
	cbnz	w8, LBB12_120
; %bb.117:
	ldr	w8, [sp, #168]
	adrp	x25, _s_net_objects_storage@PAGE
	cmp	w21, #8
	ldr	w0, [x25, _s_net_objects_storage@PAGEOFF]
	ccmp	w8, #0, #4, ne
	cset	w23, ne
	cbnz	w0, LBB12_119
; %bb.118:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w24, #49152                     ; =0xc000
	movk	w24, #17, lsl #16
	bl	_calloc
	str	w0, [x25, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_474
LBB12_119:
	add	x8, x0, w22, sxtw
	mov	w9, #65536                      ; =0x10000
	strb	w23, [x8, x9]
LBB12_120:
	tbnz	w20, #31, LBB12_473
; %bb.121:
	ldr	w22, [sp, #184]
	tbnz	w22, #31, LBB12_183
LBB12_122:
	ldr	s0, [sp, #180]
	mov	w8, #1120403456                 ; =0x42c80000
	cmp	w21, #8
	mov	w0, w20
	mov	w2, wzr
	cset	w21, ne
	fmov	s1, w8
	ldr	w8, [sp, #168]
	scvtf	s0, s0
	csel	w1, w8, wzr, ne
	fdiv	s3, s0, s1
	ldr	s0, [sp, #176]
	scvtf	s0, s0
	fdiv	s4, s0, s1
	ldr	s0, [sp, #172]
	scvtf	s0, s0
	fdiv	s5, s0, s1
	ldr	s0, [sp, #164]
	ldp	s2, s1, [sp, #92]
	bl	_forge_3d_move_instance_ext
	ldr	s0, [sp, #164]
Lloh197:
	adrp	x2, l_.str.5@PAGE
Lloh198:
	add	x2, x2, l_.str.5@PAGEOFF
	add	x0, sp, #100
	ldp	s2, s1, [sp, #92]
	mov	w1, #64                         ; =0x40
	ldp	w11, w8, [sp, #168]
	fcvt	d0, s0
	fcvt	d1, s1
	stp	w20, w22, [sp]
	fcvt	d2, s2
	ldp	w10, w9, [sp, #176]
	cmp	w11, #0
	csel	w11, wzr, w21, eq
	str	d0, [sp, #8]
	stp	w9, w10, [sp, #32]
	stp	d1, d2, [sp, #16]
	stp	w8, w11, [sp, #40]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #100]
	cbz	w8, LBB12_473
; %bb.123:
	add	x0, sp, #192
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB12_473
; %bb.124:
	mov	w20, w0
	mov	w8, w19
	sub	x23, x29, #240
	add	x24, sp, #192
	add	x25, sp, #100
Lloh199:
	adrp	x21, l_.str@PAGE
Lloh200:
	add	x21, x21, l_.str@PAGEOFF
	b	LBB12_126
LBB12_125:                              ;   in Loop: Header=BB12_126 Depth=1
	add	w24, w24, #4
	subs	w20, w20, #1
	b.eq	LBB12_473
LBB12_126:                              ; =>This Inner Loop Header: Depth=1
	ldr	w22, [x24]
	cmp	w22, w8
	b.eq	LBB12_125
; %bb.127:                              ;   in Loop: Header=BB12_126 Depth=1
	tbnz	w22, #31, LBB12_125
; %bb.128:                              ;   in Loop: Header=BB12_126 Depth=1
	ldrb	w9, [sp, #100]
	cbz	w9, LBB12_125
; %bb.129:                              ;   in Loop: Header=BB12_126 Depth=1
	sub	x0, x29, #240
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x23, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x21
	sturh	wzr, [x29, #-228]
	str	w25, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #240
	mov	w0, w22
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	mov	w8, w19
	b	LBB12_125
LBB12_130:
	add	x8, sp, #92
	add	x9, sp, #96
	add	x10, sp, #164
	add	x11, sp, #168
Lloh201:
	adrp	x1, l_.str.23@PAGE
Lloh202:
	add	x1, x1, l_.str.23@PAGEOFF
	stp	w9, w8, [sp, #32]
	add	x8, sp, #172
	add	x9, sp, #176
	stp	w11, w10, [sp, #24]
	add	x10, sp, #180
	add	x0, x20, #4
	str	xzr, [sp, #96]
	stp	w9, w8, [sp, #16]
	add	x8, sp, #184
	add	x9, sp, #188
	stp	xzr, xzr, [sp, #176]
	str	xzr, [sp, #168]
	stp	w8, w10, [sp, #8]
	add	x10, sp, #100
	str	wzr, [sp, #164]
	str	wzr, [sp, #92]
	stp	w10, w9, [sp]
	bl	_sscanf
	cmp	w0, #10
	b.ne	LBB12_473
; %bb.131:
	ldp	w22, w19, [sp, #184]
	ldr	w21, [sp, #100]
	ldp	s9, s10, [sp, #176]
	mov	w0, w19
	ldp	s11, s8, [sp, #168]
	ldr	s12, [sp, #164]
	ldr	s13, [sp, #96]
	ldr	w20, [sp, #92]
	bl	_forge_find_catalog_entry_by_hash
	mov	x23, x0
	cbz	w23, LBB12_162
; %bb.132:
Lloh203:
	adrp	x25, _g_forge_state@GOTPAGE
Lloh204:
	ldr	w25, [x25, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x25]
	cbnz	w0, LBB12_134
; %bb.133:
	bl	_forge_runtime_state_get
LBB12_134:
	add	x8, x0, #876, lsl #12           ; =3588096
	str	w20, [sp, #56]                  ; 4-byte Spill
	ldr	w8, [x8, #1112]
	cbnz	w8, LBB12_136
; %bb.135:
	bl	_forge_init_map_scenario_entities
LBB12_136:
	ldr	w8, [x23]
	mov	w24, #-1                        ; =0xffffffff
	mov	w9, #24934                      ; =0x6166
	movk	w9, #26220, lsl #16
	cmp	w8, w9
	stur	w8, [x29, #-240]
	b.le	LBB12_168
; %bb.137:
	mov	w9, #24935                      ; =0x6167
	movk	w9, #26220, lsl #16
	cmp	w8, w9
	b.eq	LBB12_172
; %bb.138:
	mov	w9, #30574                      ; =0x776e
	movk	w9, #29552, lsl #16
	cmp	w8, w9
	b.eq	LBB12_172
; %bb.139:
	mov	w9, #27749                      ; =0x6c65
	movk	w9, #29797, lsl #16
	b	LBB12_170
LBB12_140:
	mov	w8, #-1                         ; =0xffffffff
	add	x9, sp, #184
	add	x10, sp, #188
	add	x11, sp, #100
Lloh205:
	adrp	x1, l_.str.20@PAGE
Lloh206:
	add	x1, x1, l_.str.20@PAGEOFF
	str	w8, [sp, #192]
	add	x0, x20, #4
	stur	w8, [x29, #-240]
	add	x8, sp, #180
	stp	w11, w10, [sp, #20]
	add	x10, sp, #192
	str	wzr, [sp, #100]
	stp	w9, w8, [sp, #28]
	add	x8, sp, #168
	add	x9, sp, #172
	stp	xzr, xzr, [sp, #176]
	str	xzr, [sp, #168]
	str	w10, [sp]
	stp	w9, w8, [sp, #12]
	add	x8, sp, #176
	sub	x9, x29, #240
	stp	w9, w8, [sp, #4]
	bl	_sscanf
	cmp	w0, #8
	b.lt	LBB12_473
; %bb.141:
	mov	w19, w0
	ldr	w0, [sp, #192]
	ldur	w1, [x29, #-240]
	bl	_forge_resolve_target_live_idx
	ldur	w20, [x29, #-240]
	lsr	w8, w20, #13
	cbnz	w8, LBB12_145
; %bb.142:
	ldr	w8, [sp, #180]
	adrp	x23, _s_net_objects_storage@PAGE
	cmp	w19, #8
	ccmp	w8, #0, #4, ne
	ldr	w8, [x23, _s_net_objects_storage@PAGEOFF]
	cset	w21, ne
	cbnz	w8, LBB12_144
; %bb.143:
	mov	w1, #49152                      ; =0xc000
	mov	w24, w0
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w22, #49152                     ; =0xc000
	movk	w22, #17, lsl #16
	bl	_calloc
	mov	x8, x0
	mov	w0, w24
	str	w8, [x23, _s_net_objects_storage@PAGEOFF]
	cbz	w8, LBB12_89
LBB12_144:
	add	x8, x8, w20, sxtw
	mov	w9, #65536                      ; =0x10000
	strb	w21, [x8, x9]
LBB12_145:
	tbnz	w0, #31, LBB12_473
; %bb.146:
Lloh207:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh208:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh209:
	ldr	w8, [x8]
	cbnz	w8, LBB12_148
; %bb.147:
	mov	w20, w0
	bl	_forge_runtime_state_get
	mov	x8, x0
	mov	w0, w20
LBB12_148:
	ldr	w8, [x8, #80]
	cmp	w0, w8
	b.eq	LBB12_473
; %bb.149:
	ldr	s0, [sp, #100]
	mov	w8, #1120403456                 ; =0x42c80000
	ldr	s2, [sp, #168]
	cmp	w19, #8
	mov	w2, wzr
	fmov	s1, w8
	ldr	w8, [sp, #180]
	scvtf	s0, s0
	csel	w1, wzr, w8, eq
	fdiv	s3, s0, s1
	ldr	s0, [sp, #188]
	scvtf	s0, s0
	fdiv	s4, s0, s1
	ldr	s0, [sp, #184]
	scvtf	s0, s0
	fdiv	s5, s0, s1
	ldp	s1, s0, [sp, #172]
	bl	_forge_3d_move_instance_ext
	b	LBB12_473
LBB12_150:
	lsr	w8, w21, #13
	cbnz	w8, LBB12_154
; %bb.151:
	cbnz	w0, LBB12_153
; %bb.152:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x23, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_89
LBB12_153:
	add	x8, x0, w21, sxtw #2
	mov	w9, #32768                      ; =0x8000
	mov	w10, #-1                        ; =0xffffffff
	add	x11, x0, w21, sxtw
	mov	w12, #65536                     ; =0x10000
	str	w10, [x8, x9]
	strb	wzr, [x11, x12]
LBB12_154:
	mov	w0, w20
	mov	w1, wzr
	bl	_forge_3d_delete_instance
Lloh210:
	adrp	x2, l_.str.8@PAGE
Lloh211:
	add	x2, x2, l_.str.8@PAGEOFF
	add	x0, sp, #100
	mov	w1, #64                         ; =0x40
	stp	w20, w21, [sp]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #100]
	cbz	w8, LBB12_473
; %bb.155:
	add	x0, sp, #192
	mov	w1, #32                         ; =0x20
	bl	_distributed_client_machines
	cmp	w0, #1
	b.lt	LBB12_473
; %bb.156:
	mov	w20, w0
	mov	w8, w19
	sub	x23, x29, #240
	add	x24, sp, #192
	add	x25, sp, #100
Lloh212:
	adrp	x21, l_.str@PAGE
Lloh213:
	add	x21, x21, l_.str@PAGEOFF
	b	LBB12_158
LBB12_157:                              ;   in Loop: Header=BB12_158 Depth=1
	add	w24, w24, #4
	subs	w20, w20, #1
	b.eq	LBB12_473
LBB12_158:                              ; =>This Inner Loop Header: Depth=1
	ldr	w22, [x24]
	cmp	w22, w8
	b.eq	LBB12_157
; %bb.159:                              ;   in Loop: Header=BB12_158 Depth=1
	tbnz	w22, #31, LBB12_157
; %bb.160:                              ;   in Loop: Header=BB12_158 Depth=1
	ldrb	w9, [sp, #100]
	cbz	w9, LBB12_157
; %bb.161:                              ;   in Loop: Header=BB12_158 Depth=1
	sub	x0, x29, #240
	mov	w1, wzr
	mov	w2, #80                         ; =0x50
	bl	_csmemset
	add	x0, x23, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x21
	sturh	wzr, [x29, #-228]
	str	w25, [sp]
	bl	_halo_linux_snprintf
	sub	x1, x29, #240
	mov	w0, w22
	mov	w2, #88                         ; =0x58
	mov	w3, #1                          ; =0x1
	mov	w4, #80                         ; =0x50
	bl	_distributed_send_to_machine_reliably
	mov	w8, w19
	b	LBB12_157
LBB12_162:
Lloh214:
	adrp	x0, l_.str.30@PAGE
Lloh215:
	add	x0, x0, l_.str.30@PAGEOFF
	str	w19, [sp]
	bl	_platform_log
	b	LBB12_473
LBB12_163:
	ldur	w22, [x29, #-240]
	lsr	w8, w22, #13
	cbnz	w8, LBB12_167
; %bb.164:
	cbnz	w0, LBB12_166
; %bb.165:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_108
LBB12_166:
	add	x8, x0, w22, sxtw #2
	mov	w9, #32768                      ; =0x8000
	mov	w10, #-1                        ; =0xffffffff
	str	w10, [x8, x9]
	mov	w9, #65536                      ; =0x10000
	ldursw	x8, [x29, #-240]
	add	x8, x0, x8
	strb	wzr, [x8, x9]
LBB12_167:
	mov	w0, w19
	mov	w1, wzr
	bl	_forge_3d_delete_instance
	b	LBB12_473
LBB12_168:
	mov	w9, #29552                      ; =0x7370
	movk	w9, #24937, lsl #16
	cmp	w8, w9
	b.eq	LBB12_172
; %bb.169:
	mov	w9, #29552                      ; =0x7370
	movk	w9, #26214, lsl #16
LBB12_170:
	cmp	w8, w9
	b.eq	LBB12_172
; %bb.171:
	add	x1, x23, #8
	sub	x2, x29, #240
	mov	w0, w8
	bl	_forge_resolve_engine_tag
	ldur	w8, [x29, #-240]
	mov	w24, w0
LBB12_172:
	mov	w9, #26728                      ; =0x6868
	ubfx	w10, w22, #24, #1
	movk	w9, #30309, lsl #16
	str	w21, [sp, #88]                  ; 4-byte Spill
	cmp	w8, w9
	str	w10, [sp, #80]                  ; 4-byte Spill
	b.gt	LBB12_175
; %bb.173:
	mov	w9, #28772                      ; =0x7064
	movk	w9, #25193, lsl #16
	cmp	w8, w9
	b.eq	LBB12_178
; %bb.174:
	mov	w9, #26992                      ; =0x6970
	movk	w9, #25969, lsl #16
	b	LBB12_177
LBB12_175:
	mov	w9, #26729                      ; =0x6869
	movk	w9, #30309, lsl #16
	cmp	w8, w9
	b.eq	LBB12_178
; %bb.176:
	mov	w9, #24944                      ; =0x6170
	movk	w9, #30565, lsl #16
LBB12_177:
	cmp	w8, w9
	b.ne	LBB12_220
LBB12_178:
	ands	w9, w22, #0xfff
	sub	w28, w9, #1
	cset	w10, ne
	str	w10, [sp, #84]                  ; 4-byte Spill
	cbz	w9, LBB12_208
; %bb.179:
	adrp	x19, _s_net_objects_storage@PAGE
	cmn	w24, #1
	ldr	w0, [x19, _s_net_objects_storage@PAGEOFF]
	b.eq	LBB12_205
; %bb.180:
	cbnz	w0, LBB12_182
; %bb.181:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w20, #49152                     ; =0xc000
	movk	w20, #17, lsl #16
	bl	_calloc
	str	w0, [x19, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_108
LBB12_182:
	str	w24, [x0, w28, sxtw #2]
	b	LBB12_207
LBB12_183:
Lloh216:
	adrp	x23, _g_forge_state@GOTPAGE
Lloh217:
	ldr	w23, [x23, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x23]
	cbnz	w0, LBB12_185
; %bb.184:
	bl	_forge_runtime_state_get
LBB12_185:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w20, w8, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [x9, #1116]
	cmn	w8, #1
	b.eq	LBB12_122
; %bb.186:
	ldr	w0, [x23]
	cbnz	w0, LBB12_188
; %bb.187:
	bl	_forge_runtime_state_get
LBB12_188:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w20, w8, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w0, [x9, #1116]
	cmn	w0, #1
	b.eq	LBB12_122
; %bb.189:
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB12_122
; %bb.190:
	ldrh	w8, [x0, #100]
	cmp	w8, #4
	b.hi	LBB12_122
; %bb.191:
	ldr	w0, [x23]
	cbnz	w0, LBB12_193
; %bb.192:
	bl	_forge_runtime_state_get
LBB12_193:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w20, w8, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldrh	w22, [x9, #1116]
	b	LBB12_122
LBB12_194:
Lloh218:
	adrp	x22, _g_forge_state@GOTPAGE
Lloh219:
	ldr	w22, [x22, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x22]
	cbnz	w0, LBB12_196
; %bb.195:
	bl	_forge_runtime_state_get
LBB12_196:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w20, w8, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [x9, #1116]
	cmn	w8, #1
	b.eq	LBB12_18
; %bb.197:
	ldr	w0, [x22]
	cbnz	w0, LBB12_199
; %bb.198:
	bl	_forge_runtime_state_get
LBB12_199:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w20, w8, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w0, [x9, #1116]
	cmn	w0, #1
	b.eq	LBB12_18
; %bb.200:
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB12_18
; %bb.201:
	ldrh	w8, [x0, #100]
	cmp	w8, #4
	b.hi	LBB12_18
; %bb.202:
	ldr	w0, [x22]
	cbnz	w0, LBB12_204
; %bb.203:
	bl	_forge_runtime_state_get
LBB12_204:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w20, w8, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldrh	w21, [x9, #1116]
	b	LBB12_18
LBB12_205:
	cbnz	w0, LBB12_207
; %bb.206:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w20, #49152                     ; =0xc000
	movk	w20, #17, lsl #16
	bl	_calloc
	str	w0, [x19, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_108
LBB12_207:
	ldr	w10, [sp, #80]                  ; 4-byte Reload
	add	x8, x0, w28, sxtw
	mov	w9, #65536                      ; =0x10000
	strb	w10, [x8, x9]
	ldur	w8, [x29, #-240]
LBB12_208:
	ubfx	w9, w22, #12, #12
	sub	w10, w9, #1
	cmp	w9, #0
	mov	w20, #1                         ; =0x1
	cset	w11, ne
	cmn	w24, #1
	str	w10, [sp, #72]                  ; 4-byte Spill
	cset	w10, ne
	cbz	w9, LBB12_218
; %bb.209:
	cmn	w24, #1
	b.eq	LBB12_218
; %bb.210:
	mov	w9, #26729                      ; =0x6869
	movk	w9, #30309, lsl #16
	cmp	w8, w9
	b.ne	LBB12_218
; %bb.211:
	mov	w0, #26996                      ; =0x6974
	mov	w1, w24
	movk	w0, #30062, lsl #16
	bl	_tag_get
	cbz	w0, LBB12_219
; %bb.212:
	ldr	w8, [x0, #728]
	cmp	w8, #1
	b.lt	LBB12_219
; %bb.213:
	ldr	w8, [x0, #732]
	cbz	w8, LBB12_222
; %bb.214:
	ldr	w8, [x8, #12]
	cmn	w8, #1
	str	w8, [sp, #64]                   ; 4-byte Spill
	b.eq	LBB12_223
; %bb.215:
	adrp	x20, _s_net_objects_storage@PAGE
	ldr	w0, [x20, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB12_217
; %bb.216:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w19, #49152                     ; =0xc000
	movk	w19, #17, lsl #16
	bl	_calloc
	str	w0, [x20, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_475
LBB12_217:
	mov	w8, #1                          ; =0x1
	ldr	w9, [sp, #64]                   ; 4-byte Reload
	mov	w20, #1                         ; =0x1
	str	w8, [sp, #60]                   ; 4-byte Spill
	str	w8, [sp, #68]                   ; 4-byte Spill
	ldr	w8, [sp, #72]                   ; 4-byte Reload
	str	w9, [x0, w8, sxtw #2]
	b	LBB12_224
LBB12_218:
	mov	w8, #-1                         ; =0xffffffff
	str	w11, [sp, #68]                  ; 4-byte Spill
	stp	w10, w8, [sp, #60]              ; 8-byte Folded Spill
	b	LBB12_225
LBB12_219:
	mov	w9, #-1                         ; =0xffffffff
	mov	w8, #1                          ; =0x1
	stp	w8, w9, [sp, #60]               ; 8-byte Folded Spill
	str	w8, [sp, #68]                   ; 4-byte Spill
	b	LBB12_225
LBB12_220:
	ldr	w9, [x23]
	mov	w10, #29814                     ; =0x7476
	movk	w10, #24931, lsl #16
	cmp	w9, w10
	b.eq	LBB12_178
; %bb.221:
	cmn	w24, #1
	mov	w8, #-1                         ; =0xffffffff
	cset	w9, ne
	mov	w20, wzr
	str	wzr, [sp, #84]                  ; 4-byte Spill
	mov	w28, #-1                        ; =0xffffffff
	stp	wzr, w8, [sp, #68]              ; 8-byte Folded Spill
	stp	w9, w8, [sp, #60]               ; 8-byte Folded Spill
	b	LBB12_225
LBB12_222:
	mov	w8, #-1                         ; =0xffffffff
LBB12_223:
	str	w8, [sp, #64]                   ; 4-byte Spill
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #60]                   ; 4-byte Spill
	str	w8, [sp, #68]                   ; 4-byte Spill
LBB12_224:
	ldr	w21, [sp, #88]                  ; 4-byte Reload
LBB12_225:
	ldr	w0, [x25]
	cbnz	w0, LBB12_227
; %bb.226:
	bl	_forge_runtime_state_get
LBB12_227:
	ldr	w8, [x0, #80]
	str	w20, [sp, #76]                  ; 4-byte Spill
	str	w24, [sp, #52]                  ; 4-byte Spill
	tbnz	w8, #31, LBB12_243
; %bb.228:
	ldr	w0, [x25]
	cbz	w0, LBB12_230
; %bb.229:
	ldr	w19, [x0, #80]
	b	LBB12_232
LBB12_230:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x25]
	ldr	w19, [x8, #80]
	cbnz	w0, LBB12_232
; %bb.231:
	bl	_forge_runtime_state_get
LBB12_232:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w19, w8
	b.ge	LBB12_243
; %bb.233:
	ldr	w22, [x25]
	mov	x8, x22
	cbnz	w22, LBB12_236
; %bb.234:
	bl	_forge_runtime_state_get
	ldr	w8, [x25]
	mov	x22, x0
	cbnz	w8, LBB12_236
; %bb.235:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB12_236:
	ldrsw	x8, [x8, #80]
	mov	w9, #396                        ; =0x18c
	smaddl	x8, w8, w9, x22
	add	x8, x8, #480, lsl #12           ; =1966080
	add	x19, x8, #1112
	ldr	w8, [x19]
	cbz	w8, LBB12_241
; %bb.237:
	ldrb	w8, [x19, #22]
	cbnz	w8, LBB12_241
; %bb.238:
	ldrsb	w8, [x19, #23]
	tbz	w8, #31, LBB12_241
; %bb.239:
	ldr	w8, [x19, #16]
	ldr	w9, [x23]
	cmp	w8, w9
	b.ne	LBB12_241
; %bb.240:
	add	x0, x19, #76
	add	x1, x23, #8
	bl	__stricmp
	cbz	w0, LBB12_330
LBB12_241:
	mov	w26, wzr
	mov	w24, #-1                        ; =0xffffffff
LBB12_242:
	ldr	w21, [sp, #88]                  ; 4-byte Reload
	ldr	w20, [sp, #76]                  ; 4-byte Reload
	b	LBB12_244
LBB12_243:
	mov	w26, wzr
	mov	w24, #-1                        ; =0xffffffff
LBB12_244:
	tbnz	w21, #31, LBB12_258
; %bb.245:
	tbz	w24, #31, LBB12_258
; %bb.246:
	ldr	w0, [x25]
	cbnz	w0, LBB12_248
; %bb.247:
	bl	_forge_runtime_state_get
LBB12_248:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w21, w8
	b.ge	LBB12_260
; %bb.249:
	ldr	w0, [x25]
	cbnz	w0, LBB12_251
; %bb.250:
	bl	_forge_runtime_state_get
LBB12_251:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w21, w8, x0
	add	x8, x8, #480, lsl #12           ; =1966080
	add	x19, x8, #1112
	ldr	w8, [x19]
	cbz	w8, LBB12_260
; %bb.252:
	ldrb	w8, [x19, #22]
	cbnz	w8, LBB12_260
; %bb.253:
	ldrsb	w8, [x19, #23]
	tbz	w8, #31, LBB12_260
; %bb.254:
	ldr	w8, [x19, #16]
	ldr	w9, [x23]
	cmp	w8, w9
	b.ne	LBB12_260
; %bb.255:
	add	x0, x19, #76
	add	x1, x23, #8
	bl	__stricmp
	cbnz	w0, LBB12_260
; %bb.256:
	ldr	w8, [x19, #16]
	mov	w9, #29552                      ; =0x7370
	movk	w9, #26214, lsl #16
	cmp	w8, w9
	b.ne	LBB12_335
; %bb.257:
	ldrh	w8, [x19, #28]
	ldr	w9, [sp, #56]                   ; 4-byte Reload
	ldr	w22, [sp, #88]                  ; 4-byte Reload
	ldr	w20, [sp, #76]                  ; 4-byte Reload
	cmp	w8, w9, uxth
	b.eq	LBB12_275
	b	LBB12_260
LBB12_258:
	tbnz	w24, #31, LBB12_260
; %bb.259:
	mov	w22, w24
	cbnz	w26, LBB12_277
	b	LBB12_336
LBB12_260:
	ldr	w0, [x25]
	cbnz	w0, LBB12_262
; %bb.261:
	bl	_forge_runtime_state_get
LBB12_262:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w27, [x8, #1112]
	subs	w22, w27, #1
	b.mi	LBB12_302
; %bb.263:
	mov	w8, #396                        ; =0x18c
	mov	w9, #716                        ; =0x2cc
	movk	w9, #30, lsl #16
	mov	w21, w26
	madd	w19, w27, w8, w9
	b	LBB12_265
LBB12_264:                              ;   in Loop: Header=BB12_265 Depth=1
	sub	w22, w22, #1
	sub	w27, w27, #1
	sub	w19, w19, #396
	cmp	w27, #0
	b.le	LBB12_276
LBB12_265:                              ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x25]
	cbnz	w0, LBB12_267
; %bb.266:                              ;   in Loop: Header=BB12_265 Depth=1
	bl	_forge_runtime_state_get
LBB12_267:                              ;   in Loop: Header=BB12_265 Depth=1
	add	w8, w0, w19
	ldr	w8, [x8]
	cbz	w8, LBB12_264
; %bb.268:                              ;   in Loop: Header=BB12_265 Depth=1
	add	w8, w0, w19
	add	w8, w8, #22
	ldrb	w8, [x8]
	cbnz	w8, LBB12_264
; %bb.269:                              ;   in Loop: Header=BB12_265 Depth=1
	add	w8, w0, w19
	add	w8, w8, #23
	ldrsb	w8, [x8]
	tbz	w8, #31, LBB12_264
; %bb.270:                              ;   in Loop: Header=BB12_265 Depth=1
	add	w26, w0, w19
	ldr	w9, [x23]
	add	w8, w26, #16
	ldr	w8, [x8]
	cmp	w8, w9
	b.ne	LBB12_264
; %bb.271:                              ;   in Loop: Header=BB12_265 Depth=1
	add	w8, w0, w19
	add	x1, x23, #8
	add	w8, w8, #76
	mov	x20, x0
	mov	x0, x8
	bl	__stricmp
	mov	x8, x20
	ldr	w20, [sp, #76]                  ; 4-byte Reload
	cbnz	w0, LBB12_264
; %bb.272:                              ;   in Loop: Header=BB12_265 Depth=1
	add	w9, w26, #16
	mov	w10, #29552                     ; =0x7370
	movk	w10, #26214, lsl #16
	ldr	w9, [x9]
	cmp	w9, w10
	b.ne	LBB12_275
; %bb.273:                              ;   in Loop: Header=BB12_265 Depth=1
	add	w8, w8, w19
	ldr	w9, [sp, #56]                   ; 4-byte Reload
	add	w8, w8, #28
	ldrh	w8, [x8]
	cmp	w8, w9, uxth
	b.ne	LBB12_264
; %bb.274:
	sub	w22, w27, #1
LBB12_275:
	mov	w26, #1                         ; =0x1
	cbnz	w26, LBB12_277
	b	LBB12_336
LBB12_276:
	mov	w22, w24
	mov	w26, w21
	cbz	w26, LBB12_336
LBB12_277:
	tbnz	w22, #31, LBB12_336
; %bb.278:
	ldr	w0, [x25]
	cbnz	w0, LBB12_280
; %bb.279:
	bl	_forge_runtime_state_get
LBB12_280:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w22, w8
	b.ge	LBB12_303
; %bb.281:
	ldr	w0, [x25]
	cbnz	w0, LBB12_283
; %bb.282:
	bl	_forge_runtime_state_get
LBB12_283:
	mov	w19, #396                       ; =0x18c
	mov	w9, #1135                       ; =0x46f
	movk	w9, #30, lsl #16
	smaddl	x8, w22, w19, x0
	ldrb	w10, [x8, x9]
	and	w10, w10, #0x7f
	strb	w10, [x8, x9]
	ldr	w0, [x25]
	cbnz	w0, LBB12_285
; %bb.284:
	bl	_forge_runtime_state_get
LBB12_285:
	smaddl	x8, w22, w19, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [sp, #88]                   ; 4-byte Reload
	ldr	w19, [x9, #1128]
	cmp	w8, #4095
	b.hi	LBB12_299
; %bb.286:
	ldr	w8, [sp, #88]                   ; 4-byte Reload
	cmp	w22, w8
	b.eq	LBB12_299
; %bb.287:
	ldr	w8, [x25]
	mov	x0, x8
	cbnz	w8, LBB12_289
; %bb.288:
	bl	_forge_runtime_state_get
	ldr	w8, [x25]
LBB12_289:
	add	x9, x0, #876, lsl #12           ; =3588096
	ldr	w10, [sp, #88]                  ; 4-byte Reload
	ldr	w9, [x9, #1112]
	cmp	w10, w9
	b.lt	LBB12_296
; %bb.290:
	mov	x23, x8
	cbnz	w8, LBB12_292
; %bb.291:
	bl	_forge_runtime_state_get
	ldr	w8, [x25]
	mov	x23, x0
	cbz	w8, LBB12_328
LBB12_292:
	add	x9, x8, #876, lsl #12           ; =3588096
	mov	w10, #396                       ; =0x18c
	ldrsw	x9, [x9, #1112]
	smaddl	x9, w9, w10, x23
	add	x9, x9, #480, lsl #12           ; =1966080
	add	x23, x9, #1112
LBB12_293:
	add	x9, x8, #876, lsl #12           ; =3588096
	ldr	w20, [sp, #88]                  ; 4-byte Reload
	mov	x0, x23
	mov	w1, wzr
	ldr	w8, [x9, #1112]
	mov	w9, #396                        ; =0x18c
	sub	w8, w20, w8
	madd	w2, w8, w9, w9
	bl	_csmemset
	ldr	w8, [x25]
	add	w20, w20, #1
	mov	x0, x8
	cbnz	w8, LBB12_295
; %bb.294:
	bl	_forge_runtime_state_get
	ldr	w8, [x25]
LBB12_295:
	mov	w9, #50264                      ; =0xc458
	movk	w9, #54, lsl #16
	str	w20, [x0, x9]
LBB12_296:
	cbnz	w8, LBB12_298
; %bb.297:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB12_298:
	ldr	w10, [sp, #88]                  ; 4-byte Reload
	mov	w9, #396                        ; =0x18c
	smaddl	x8, w10, w9, x8
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [x9, #1112]
	cbz	w8, LBB12_305
LBB12_299:
	str	w22, [sp, #88]                  ; 4-byte Spill
LBB12_300:
	mov	w8, #29552                      ; =0x7370
	movk	w8, #24937, lsl #16
	cmp	w19, w8
	b.ne	LBB12_304
; %bb.301:
	ldr	w22, [sp, #88]                  ; 4-byte Reload
	mov	w0, w22
	bl	_forge_network_send_ai_spawn
	mov	w26, #1                         ; =0x1
	b	LBB12_407
LBB12_302:
	mov	w22, w24
	b	LBB12_337
LBB12_303:
	mov	w26, #1                         ; =0x1
	b	LBB12_407
LBB12_304:
	ldr	w22, [sp, #88]                  ; 4-byte Reload
	mov	w26, #1                         ; =0x1
	b	LBB12_407
LBB12_305:
	ldr	w23, [x25]
	mov	x8, x23
	cbnz	w23, LBB12_308
; %bb.306:
	bl	_forge_runtime_state_get
	ldr	w8, [x25]
	mov	x23, x0
	cbnz	w8, LBB12_308
; %bb.307:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB12_308:
	ldr	w9, [sp, #88]                   ; 4-byte Reload
	mov	w20, #396                       ; =0x18c
	mov	w10, #1112                      ; =0x458
	mov	w2, #396                        ; =0x18c
	smaddl	x8, w22, w20, x8
	movk	w10, #30, lsl #16
	smaddl	x9, w9, w20, x23
	add	x1, x8, x10
	add	x0, x9, x10
	bl	_memcpy
	ldr	w0, [x25]
	cbnz	w0, LBB12_310
; %bb.309:
	bl	_forge_runtime_state_get
LBB12_310:
	smaddl	x8, w22, w20, x0
	mov	w1, wzr
	mov	w2, #396                        ; =0x18c
	add	x8, x8, #480, lsl #12           ; =1966080
	add	x0, x8, #1112
	bl	_csmemset
	ldr	w0, [x25]
	cbnz	w0, LBB12_312
; %bb.311:
	bl	_forge_runtime_state_get
LBB12_312:
	smaddl	x8, w22, w20, x0
	mov	w9, #1116                       ; =0x45c
	movk	w9, #30, lsl #16
	mov	w23, #-1                        ; =0xffffffff
	str	w23, [x8, x9]
	ldr	w0, [x25]
	cbnz	w0, LBB12_314
; %bb.313:
	bl	_forge_runtime_state_get
LBB12_314:
	smaddl	x8, w22, w20, x0
	mov	w9, #1120                       ; =0x460
	movk	w9, #30, lsl #16
	str	w23, [x8, x9]
	ldr	w0, [x25]
	cbnz	w0, LBB12_316
; %bb.315:
	bl	_forge_runtime_state_get
LBB12_316:
	mov	w8, #396                        ; =0x18c
	mov	w9, #1124                       ; =0x464
	movk	w9, #30, lsl #16
	mov	w10, #-1                        ; =0xffffffff
	smaddl	x8, w22, w8, x0
	str	w10, [x8, x9]
	ldr	w8, [x25]
	mov	x0, x8
	cbnz	w8, LBB12_318
; %bb.317:
	bl	_forge_runtime_state_get
	ldr	w8, [x25]
LBB12_318:
	ldr	w9, [x0, #80]
	cmp	w9, w22
	b.ne	LBB12_322
; %bb.319:
	mov	x0, x8
	cbnz	w8, LBB12_321
; %bb.320:
	bl	_forge_runtime_state_get
	ldr	w8, [x25]
LBB12_321:
	ldr	w9, [sp, #88]                   ; 4-byte Reload
	str	w9, [x0, #80]
LBB12_322:
	cbnz	w8, LBB12_324
; %bb.323:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB12_324:
	ldr	w8, [x8, #136]
	cmp	w8, w22
	b.ne	LBB12_300
; %bb.325:
	ldr	w0, [x25]
	cbnz	w0, LBB12_327
; %bb.326:
	bl	_forge_runtime_state_get
LBB12_327:
	ldr	w8, [sp, #88]                   ; 4-byte Reload
	str	w8, [x0, #136]
	b	LBB12_300
LBB12_328:
	bl	_forge_runtime_state_get
	add	x8, x0, #876, lsl #12           ; =3588096
	mov	w9, #396                        ; =0x18c
	ldrsw	x8, [x8, #1112]
	smaddl	x9, w8, w9, x23
	ldr	w8, [x25]
	add	x9, x9, #480, lsl #12           ; =1966080
	add	x23, x9, #1112
	cbnz	w8, LBB12_293
; %bb.329:
	bl	_forge_runtime_state_get
	mov	x8, x0
	b	LBB12_293
LBB12_330:
	ldr	w8, [x19, #16]
	mov	w9, #29552                      ; =0x7370
	movk	w9, #26214, lsl #16
	cmp	w8, w9
	b.ne	LBB12_332
; %bb.331:
	ldrh	w8, [x19, #28]
	ldr	w9, [sp, #56]                   ; 4-byte Reload
	cmp	w8, w9, uxth
	b.ne	LBB12_241
LBB12_332:
	ldr	w0, [x25]
	cbnz	w0, LBB12_334
; %bb.333:
	bl	_forge_runtime_state_get
LBB12_334:
	ldr	w24, [x0, #80]
	mov	w26, #1                         ; =0x1
	b	LBB12_242
LBB12_335:
	ldr	w22, [sp, #88]                  ; 4-byte Reload
	mov	w26, #1                         ; =0x1
	ldr	w20, [sp, #76]                  ; 4-byte Reload
	cbnz	w26, LBB12_277
LBB12_336:
	tbz	w22, #31, LBB12_407
LBB12_337:
	cbz	w20, LBB12_344
; %bb.338:
Lloh220:
	adrp	x19, _object_header_data@GOTPAGE
Lloh221:
	ldr	w19, [x19, _object_header_data@GOTPAGEOFF]
	ldr	w8, [sp, #84]                   ; 4-byte Reload
	ldr	w0, [x19]
	cmp	x0, #0
	csel	w8, wzr, w8, eq
	cbz	w8, LBB12_344
; %bb.339:
	ldrsh	w8, [x0, #46]
	cmp	w28, w8
	b.ge	LBB12_344
; %bb.340:
	mov	w1, #-1                         ; =0xffffffff
	bl	_data_next_index
	cmn	w0, #1
	mov	w24, w0
	cset	w8, ne
	b.eq	LBB12_343
; %bb.341:
	and	w9, w24, #0xffff
	cmp	w9, w28
	b.eq	LBB12_343
LBB12_342:                              ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x19]
	mov	w1, w24
	bl	_data_next_index
	cmn	w0, #1
	and	w9, w0, #0xffff
	mov	w24, w0
	cset	w8, ne
	ccmp	w9, w28, #4, ne
	b.ne	LBB12_342
LBB12_343:
	tbnz	w8, #0, LBB12_345
LBB12_344:
	mov	w24, #-1                        ; =0xffffffff
LBB12_345:
	ldr	w8, [sp, #84]                   ; 4-byte Reload
	cbz	w8, LBB12_358
; %bb.346:
	adrp	x20, _s_net_objects_storage@PAGE
	ldr	w0, [x20, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB12_348
; %bb.347:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w19, #49152                     ; =0xc000
	movk	w19, #17, lsl #16
	bl	_calloc
	str	w0, [x20, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_475
LBB12_348:
	add	x8, x0, w28, sxtw #2
	mov	w9, #32768                      ; =0x8000
	ldr	w19, [x8, x9]
	tbnz	w19, #31, LBB12_358
; %bb.349:
	ldr	w0, [x25]
	cbnz	w0, LBB12_351
; %bb.350:
	bl	_forge_runtime_state_get
LBB12_351:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w19, w8
	b.ge	LBB12_358
; %bb.352:
	ldr	w0, [x25]
	cbnz	w0, LBB12_354
; %bb.353:
	bl	_forge_runtime_state_get
LBB12_354:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w19, w8, x0
	add	x8, x8, #480, lsl #12           ; =1966080
	add	x8, x8, #1112
	ldr	w9, [x8]
	cbz	w9, LBB12_358
; %bb.355:
	ldrb	w9, [x8, #22]
	cbnz	w9, LBB12_358
; %bb.356:
	ldr	w9, [x8, #16]
	ldr	w10, [x23]
	cmp	w9, w10
	b.ne	LBB12_358
; %bb.357:
	add	x0, x8, #76
	add	x1, x23, #8
	bl	__stricmp
	cmp	w0, #0
	cset	w21, ne
	csel	w22, w22, w19, ne
	b	LBB12_359
LBB12_358:
	mov	w21, #1                         ; =0x1
LBB12_359:
	mov	w8, #1120403456                 ; =0x42c80000
	scvtf	s0, s11
	cmn	w24, #1
	fmov	s1, w8
	fdiv	s11, s0, s1
	scvtf	s0, s12
	fdiv	s12, s0, s1
	scvtf	s0, s13
	fdiv	s13, s0, s1
	b.eq	LBB12_372
; %bb.360:
	tbz	w22, #31, LBB12_372
; %bb.361:
	ldr	w0, [x25]
	cbnz	w0, LBB12_363
; %bb.362:
	bl	_forge_runtime_state_get
LBB12_363:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w19, [x8, #1112]
	cmp	w19, #1
	b.mi	LBB12_372
; %bb.364:
	mov	w9, #396                        ; =0x18c
	mov	w10, #716                       ; =0x2cc
	movk	w10, #30, lsl #16
	ldr	w8, [x25]
	madd	w20, w19, w9, w10
	b	LBB12_366
LBB12_365:                              ;   in Loop: Header=BB12_366 Depth=1
	sub	w19, w19, #1
	sub	w20, w20, #396
	cmp	w19, #0
	b.le	LBB12_372
LBB12_366:                              ; =>This Inner Loop Header: Depth=1
	mov	x0, x8
	cbnz	w8, LBB12_368
; %bb.367:                              ;   in Loop: Header=BB12_366 Depth=1
	bl	_forge_runtime_state_get
	ldr	w8, [x25]
LBB12_368:                              ;   in Loop: Header=BB12_366 Depth=1
	add	w9, w0, w20
	ldr	w9, [x9]
	cbz	w9, LBB12_365
; %bb.369:                              ;   in Loop: Header=BB12_366 Depth=1
	add	w9, w0, w20
	add	w9, w9, #22
	ldrb	w9, [x9]
	cbnz	w9, LBB12_365
; %bb.370:                              ;   in Loop: Header=BB12_366 Depth=1
	add	w9, w0, w20
	add	w9, w9, #4
	ldr	w9, [x9]
	cmp	w9, w24
	b.ne	LBB12_365
; %bb.371:
	sub	w22, w19, #1
	b	LBB12_402
LBB12_372:
	ldr	w8, [sp, #88]                   ; 4-byte Reload
	tbnz	w8, #31, LBB12_384
; %bb.373:
	tbz	w22, #31, LBB12_384
; %bb.374:
	ldr	w0, [x25]
	cbnz	w0, LBB12_376
; %bb.375:
	bl	_forge_runtime_state_get
LBB12_376:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w9, [sp, #88]                   ; 4-byte Reload
	ldr	w8, [x8, #1112]
	cmp	w9, w8
	b.ge	LBB12_385
; %bb.377:
	ldr	w0, [x25]
	cbnz	w0, LBB12_379
; %bb.378:
	bl	_forge_runtime_state_get
LBB12_379:
	ldr	w9, [sp, #88]                   ; 4-byte Reload
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w9, w8, x0
	add	x8, x8, #480, lsl #12           ; =1966080
	add	x8, x8, #1112
	ldr	w9, [x8]
	cbz	w9, LBB12_385
; %bb.380:
	ldrb	w9, [x8, #22]
	cbnz	w9, LBB12_385
; %bb.381:
	ldr	w9, [x8, #16]
	ldr	w10, [x23]
	cmp	w9, w10
	b.ne	LBB12_385
; %bb.382:
	add	x0, x8, #76
	add	x1, x23, #8
	bl	__stricmp
	cbnz	w0, LBB12_385
; %bb.383:
	ldr	w22, [sp, #88]                  ; 4-byte Reload
	b	LBB12_402
LBB12_384:
	tbz	w22, #31, LBB12_401
LBB12_385:
	ldr	w0, [x25]
	cbnz	w0, LBB12_387
; %bb.386:
	bl	_forge_runtime_state_get
LBB12_387:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w24, [x8, #1112]
	cmp	w24, #1
	b.mi	LBB12_406
; %bb.388:
	mov	w10, #55050                     ; =0xd70a
	mov	w8, #396                        ; =0x18c
	movk	w10, #15651, lsl #16
	mov	w9, #716                        ; =0x2cc
	movk	w9, #30, lsl #16
	ldr	w20, [sp, #76]                  ; 4-byte Reload
	madd	w8, w24, w8, w9
	fmov	s14, w10
	add	w27, w8, #76
	b	LBB12_391
LBB12_389:                              ;   in Loop: Header=BB12_391 Depth=1
	add	w8, w0, w27
	sub	w8, w8, #72
	ldr	w8, [x8]
	cmn	w8, #1
	b.eq	LBB12_396
LBB12_390:                              ;   in Loop: Header=BB12_391 Depth=1
	sub	w24, w24, #1
	sub	w27, w27, #396
	cmp	w24, #0
	b.le	LBB12_400
LBB12_391:                              ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x25]
	cbnz	w0, LBB12_393
; %bb.392:                              ;   in Loop: Header=BB12_391 Depth=1
	bl	_forge_runtime_state_get
LBB12_393:                              ;   in Loop: Header=BB12_391 Depth=1
	add	w8, w0, w27
	sub	w8, w8, #76
	ldr	w8, [x8]
	cbz	w8, LBB12_390
; %bb.394:                              ;   in Loop: Header=BB12_391 Depth=1
	add	w8, w0, w27
	sub	w8, w8, #54
	ldrb	w8, [x8]
	cbnz	w8, LBB12_390
; %bb.395:                              ;   in Loop: Header=BB12_391 Depth=1
	cbnz	w20, LBB12_389
LBB12_396:                              ;   in Loop: Header=BB12_391 Depth=1
	add	w8, w0, w27
	ldr	w9, [x23]
	sub	w8, w8, #60
	ldr	w8, [x8]
	cmp	w8, w9
	b.ne	LBB12_390
; %bb.397:                              ;   in Loop: Header=BB12_391 Depth=1
	add	w8, w0, w27
	add	x1, x23, #8
	mov	x19, x0
	mov	x0, x8
	bl	__stricmp
	cbnz	w0, LBB12_390
; %bb.398:                              ;   in Loop: Header=BB12_391 Depth=1
	mov	x8, x19
	add	w8, w8, w27
	sub	w9, w8, #24
	sub	w10, w8, #20
	sub	w8, w8, #16
	ldr	s0, [x9]
	ldr	s1, [x10]
	ldr	s2, [x8]
	fsub	s0, s0, s10
	fsub	s1, s1, s9
	fsub	s2, s2, s8
	fmul	s0, s0, s0
	fmul	s1, s1, s1
	fadd	s0, s0, s1
	fmul	s1, s2, s2
	fadd	s0, s0, s1
	fcmp	s0, s14
	b.pl	LBB12_390
; %bb.399:
	sub	w22, w24, #1
	b	LBB12_402
LBB12_400:
	tbnz	w22, #31, LBB12_406
LBB12_401:
	tbnz	w21, #0, LBB12_407
LBB12_402:
	ldr	w0, [x25]
	cbnz	w0, LBB12_404
; %bb.403:
	bl	_forge_runtime_state_get
LBB12_404:
	ldr	w8, [x0, #80]
	cmp	w22, w8
	b.eq	LBB12_407
; %bb.405:
	fmov	s0, s10
	ldr	w1, [sp, #80]                   ; 4-byte Reload
	fmov	s1, s9
	mov	w0, w22
	fmov	s2, s8
	mov	w2, wzr
	fmov	s3, s11
	fmov	s4, s12
	fmov	s5, s13
	bl	_forge_3d_move_instance_ext
	b	LBB12_407
LBB12_406:
	ldr	w8, [sp, #56]                   ; 4-byte Reload
	fmov	s0, s10
	fmov	s1, s9
	ldr	w1, [x23]
	fmov	s2, s8
	ldrb	w3, [x23, #5]
	fmov	s3, s11
	ldr	w0, [sp, #88]                   ; 4-byte Reload
	fmov	s4, s12
	add	x2, x23, #8
	fmov	s5, s13
	mov	w5, wzr
	sxth	w4, w8
	bl	_forge_3d_spawn_object_at_slot
	mov	w22, w0
LBB12_407:
	ldr	w8, [sp, #84]                   ; 4-byte Reload
	cbz	w8, LBB12_418
; %bb.408:
	mov	w23, #49152                     ; =0xc000
	mov	w27, w26
	movk	w23, #17, lsl #16
	tbnz	w22, #31, LBB12_434
; %bb.409:
	adrp	x21, _s_net_objects_storage@PAGE
	mov	w19, #32768                     ; =0x8000
	mov	w20, #-1                        ; =0xffffffff
	ldr	w0, [x21, _s_net_objects_storage@PAGEOFF]
	b	LBB12_412
LBB12_410:                              ;   in Loop: Header=BB12_412 Depth=1
	add	w8, w0, w19
	str	w20, [x8]
LBB12_411:                              ;   in Loop: Header=BB12_412 Depth=1
	add	w19, w19, #4
	cmp	w19, #16, lsl #12               ; =65536
	b.eq	LBB12_426
LBB12_412:                              ; =>This Inner Loop Header: Depth=1
	cbnz	w0, LBB12_414
; %bb.413:                              ;   in Loop: Header=BB12_412 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_417
LBB12_414:                              ;   in Loop: Header=BB12_412 Depth=1
	add	w8, w0, w19
	ldr	w8, [x8]
	cmp	w8, w22
	b.ne	LBB12_411
; %bb.415:                              ;   in Loop: Header=BB12_412 Depth=1
	cbnz	w0, LBB12_410
; %bb.416:                              ;   in Loop: Header=BB12_412 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB12_410
LBB12_417:
Lloh222:
	adrp	x0, l_.str.24@PAGE
Lloh223:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w23, [sp]
	bl	_platform_log
	bl	_abort
LBB12_418:
	cmn	w22, #1
	csel	w8, wzr, w26, le
	cbz	w8, LBB12_473
; %bb.419:
	ldr	w0, [x25]
	cbnz	w0, LBB12_421
; %bb.420:
	bl	_forge_runtime_state_get
LBB12_421:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w22, w8
	b.ge	LBB12_473
; %bb.422:
	ldr	w19, [x25]
	mov	x8, x19
	cbnz	w19, LBB12_425
; %bb.423:
	bl	_forge_runtime_state_get
	ldr	w8, [x25]
	mov	x19, x0
	cbnz	w8, LBB12_425
; %bb.424:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB12_425:
	mov	w9, #396                        ; =0x18c
	ldr	w8, [x8, #80]
	mov	w0, w22
	smaddl	x9, w22, w9, x19
	add	x9, x9, #480, lsl #12           ; =1966080
	cmp	w8, w22
	add	x9, x9, #1112
	cset	w2, eq
	ldr	w1, [x9, #4]
	ldp	s0, s1, [x9, #52]
	ldp	s2, s3, [x9, #60]
	ldp	s4, s5, [x9, #68]
	b	LBB12_472
LBB12_426:
	cbnz	w0, LBB12_428
; %bb.427:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_417
LBB12_428:
	add	x8, x0, w28, sxtw #2
	mov	w9, #32768                      ; =0x8000
	str	w22, [x8, x9]
	cbz	w27, LBB12_434
; %bb.429:
	ldr	w0, [x25]
	cbnz	w0, LBB12_431
; %bb.430:
	bl	_forge_runtime_state_get
LBB12_431:
	ldr	w8, [x0, #80]
	ldr	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cmp	w8, w22
	cset	w8, eq
	str	w8, [sp, #80]                   ; 4-byte Spill
	cbnz	w0, LBB12_433
; %bb.432:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x21, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_417
LBB12_433:
	ldr	w10, [sp, #80]                  ; 4-byte Reload
	add	x8, x0, w28, sxtw
	mov	w9, #65536                      ; =0x10000
	strb	w10, [x8, x9]
LBB12_434:
Lloh224:
	adrp	x26, _object_header_data@GOTPAGE
	add	x24, sp, #192
Lloh225:
	ldr	w26, [x26, _object_header_data@GOTPAGEOFF]
	ldr	w0, [x26]
	cbz	w0, LBB12_440
; %bb.435:
	ldrsh	w8, [x0, #46]
	cmp	w28, w8
	b.ge	LBB12_440
; %bb.436:
	mov	w1, #-1                         ; =0xffffffff
	bl	_data_next_index
	cmn	w0, #1
	mov	w21, w0
	cset	w8, ne
	b.eq	LBB12_439
; %bb.437:
	and	w9, w21, #0xffff
	cmp	w9, w28
	b.eq	LBB12_439
LBB12_438:                              ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x26]
	mov	w1, w21
	bl	_data_next_index
	cmn	w0, #1
	and	w9, w0, #0xffff
	mov	w21, w0
	cset	w8, ne
	ccmp	w9, w28, #4, ne
	b.ne	LBB12_438
LBB12_439:
	cmn	w21, #1
	csel	w8, wzr, w8, eq
	tbnz	w8, #0, LBB12_450
LBB12_440:
	adrp	x19, _s_net_objects_storage@PAGE
	ldr	w0, [x19, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB12_442
; %bb.441:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x19, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_417
LBB12_442:
	add	x8, x0, #18, lsl #12            ; =73728
	ldr	w10, [sp, #60]                  ; 4-byte Reload
	ldrb	w9, [x8, w28, sxtw]
	cmp	w9, #0
	cset	w9, ne
	tst	w9, w10
	b.eq	LBB12_449
; %bb.443:
	mov	w9, #132                        ; =0x84
	mov	w1, #1                          ; =0x1
	smaddl	x9, w28, w9, x0
	add	x0, sp, #192
	add	x9, x9, #20, lsl #12            ; =81920
	ldp	q1, q0, [x9, #32]
	ldp	q3, q2, [x9]
	stp	q1, q0, [x24, #32]
	stp	q3, q2, [sp, #192]
	ldp	q1, q0, [x9, #96]
	ldp	q3, q2, [x9, #64]
	stp	q1, q0, [x24, #96]
	stp	q3, q2, [x24, #64]
	ldr	w9, [x9, #128]
	str	w9, [sp, #320]
	strb	wzr, [x8, w28, sxtw]
	ldr	w8, [sp, #52]                   ; 4-byte Reload
	str	w8, [sp, #200]
	bl	_orig_network_objects_handle_changes
	ldr	w0, [x26]
	cbz	w0, LBB12_449
; %bb.444:
	ldrsh	w8, [x0, #46]
	cmp	w28, w8
	b.ge	LBB12_449
; %bb.445:
	mov	w1, #-1                         ; =0xffffffff
	bl	_data_next_index
	cmn	w0, #1
	mov	w21, w0
	cset	w8, ne
	b.eq	LBB12_448
; %bb.446:
	and	w9, w21, #0xffff
	cmp	w9, w28
	b.eq	LBB12_448
LBB12_447:                              ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x26]
	mov	w1, w21
	bl	_data_next_index
	cmn	w0, #1
	and	w9, w0, #0xffff
	mov	w21, w0
	cset	w8, ne
	ccmp	w9, w28, #4, ne
	b.ne	LBB12_447
LBB12_448:
	tbnz	w8, #0, LBB12_450
LBB12_449:
	mov	w21, #-1                        ; =0xffffffff
LBB12_450:
	ldp	w8, w20, [sp, #68]              ; 8-byte Folded Reload
	cbz	w8, LBB12_463
; %bb.451:
	ldr	w0, [x26]
	cbz	w0, LBB12_458
; %bb.452:
	ldrsh	w8, [x0, #46]
	cmp	w20, w8
	b.ge	LBB12_458
; %bb.453:
	mov	w1, #-1                         ; =0xffffffff
	bl	_data_next_index
	cmn	w0, #1
	mov	w1, w0
	cset	w8, ne
	b.eq	LBB12_457
; %bb.454:
	ldr	w10, [sp, #72]                  ; 4-byte Reload
	and	w9, w1, #0xffff
	cmp	w9, w10
	b.eq	LBB12_457
; %bb.455:
	ldr	w19, [sp, #72]                  ; 4-byte Reload
LBB12_456:                              ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x26]
	bl	_data_next_index
	cmn	w0, #1
	and	w9, w0, #0xffff
	mov	w1, w0
	cset	w8, ne
	ccmp	w9, w19, #4, ne
	b.ne	LBB12_456
LBB12_457:
	cmn	w1, #1
	ldr	w20, [sp, #72]                  ; 4-byte Reload
	csel	w8, wzr, w8, eq
	tbnz	w8, #0, LBB12_463
LBB12_458:
	adrp	x19, _s_net_objects_storage@PAGE
	ldr	w0, [x19, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB12_460
; %bb.459:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x19, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB12_417
LBB12_460:
	ldr	w8, [sp, #64]                   ; 4-byte Reload
	cmn	w8, #1
	b.eq	LBB12_463
; %bb.461:
	add	x8, x0, #18, lsl #12            ; =73728
	ldrb	w9, [x8, w20, sxtw]
	cbz	w9, LBB12_463
; %bb.462:
	mov	w9, #132                        ; =0x84
	mov	w1, #1                          ; =0x1
	smaddl	x9, w20, w9, x0
	add	x0, sp, #192
	add	x9, x9, #20, lsl #12            ; =81920
	ldp	q1, q0, [x9, #32]
	ldp	q3, q2, [x9]
	stp	q1, q0, [x24, #32]
	stp	q3, q2, [sp, #192]
	ldp	q1, q0, [x9, #96]
	ldp	q3, q2, [x9, #64]
	stp	q1, q0, [x24, #96]
	stp	q3, q2, [x24, #64]
	ldr	w9, [x9, #128]
	str	w9, [sp, #320]
	strb	wzr, [x8, w20, sxtw]
	ldr	w8, [sp, #64]                   ; 4-byte Reload
	str	w8, [sp, #200]
	bl	_orig_network_objects_handle_changes
LBB12_463:
	tbnz	w22, #31, LBB12_473
; %bb.464:
	cmn	w21, #1
	b.eq	LBB12_473
; %bb.465:
	ldr	w0, [x25]
	cbnz	w0, LBB12_467
; %bb.466:
	bl	_forge_runtime_state_get
LBB12_467:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w22, w8
	b.ge	LBB12_473
; %bb.468:
	ldr	w2, [sp, #80]                   ; 4-byte Reload
	mov	w0, w22
	mov	w1, w21
	bl	_forge_client_configure_linked_object
	cbz	w27, LBB12_473
; %bb.469:
	ldr	w0, [x25]
	cbnz	w0, LBB12_471
; %bb.470:
	bl	_forge_runtime_state_get
LBB12_471:
	mov	w8, #396                        ; =0x18c
	ldr	w20, [sp, #80]                  ; 4-byte Reload
	mov	w2, wzr
	smaddl	x8, w22, w8, x0
	mov	w0, w22
	add	x8, x8, #480, lsl #12           ; =1966080
	mov	w1, w20
	add	x19, x8, #1112
	ldp	s0, s1, [x19, #52]
	ldp	s2, s3, [x19, #60]
	ldp	s4, s5, [x19, #68]
	bl	_forge_3d_move_instance_ext
	ldp	s0, s1, [x19, #52]
	mov	w0, w22
	mov	w1, w21
	ldp	s2, s3, [x19, #60]
	mov	w2, w20
	ldp	s4, s5, [x19, #68]
LBB12_472:
	mov	w3, #1                          ; =0x1
	bl	_forge_network_send_transform_ext
LBB12_473:
	mov	w0, #1                          ; =0x1
	b	LBB12_20
LBB12_474:
Lloh226:
	adrp	x0, l_.str.24@PAGE
Lloh227:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w24, [sp]
	bl	_platform_log
	bl	_abort
LBB12_475:
Lloh228:
	adrp	x0, l_.str.24@PAGE
Lloh229:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w19, [sp]
	bl	_platform_log
	bl	_abort
	.loh AdrpLdrGot	Lloh131, Lloh132
	.loh AdrpAdd	Lloh133, Lloh134
	.loh AdrpAdd	Lloh135, Lloh136
	.loh AdrpAdd	Lloh137, Lloh138
	.loh AdrpAdd	Lloh139, Lloh140
	.loh AdrpAdd	Lloh141, Lloh142
	.loh AdrpAdd	Lloh143, Lloh144
	.loh AdrpAdd	Lloh145, Lloh146
	.loh AdrpAdd	Lloh147, Lloh148
	.loh AdrpAdd	Lloh149, Lloh150
	.loh AdrpAdd	Lloh151, Lloh152
	.loh AdrpAdd	Lloh153, Lloh154
	.loh AdrpAdd	Lloh159, Lloh160
	.loh AdrpAdd	Lloh157, Lloh158
	.loh AdrpAdd	Lloh155, Lloh156
	.loh AdrpAdd	Lloh161, Lloh162
	.loh AdrpAdd	Lloh163, Lloh164
	.loh AdrpAdd	Lloh165, Lloh166
	.loh AdrpAdd	Lloh167, Lloh168
	.loh AdrpAdd	Lloh169, Lloh170
	.loh AdrpAdd	Lloh171, Lloh172
	.loh AdrpAdd	Lloh173, Lloh174
	.loh AdrpAdd	Lloh175, Lloh176
	.loh AdrpAdd	Lloh177, Lloh178
	.loh AdrpAdd	Lloh179, Lloh180
	.loh AdrpAdd	Lloh181, Lloh182
	.loh AdrpAdd	Lloh183, Lloh184
	.loh AdrpAdd	Lloh185, Lloh186
	.loh AdrpAdd	Lloh187, Lloh188
	.loh AdrpAdd	Lloh189, Lloh190
	.loh AdrpAdd	Lloh191, Lloh192
	.loh AdrpAdd	Lloh193, Lloh194
	.loh AdrpAdd	Lloh195, Lloh196
	.loh AdrpAdd	Lloh197, Lloh198
	.loh AdrpAdd	Lloh199, Lloh200
	.loh AdrpAdd	Lloh201, Lloh202
	.loh AdrpLdrGot	Lloh203, Lloh204
	.loh AdrpAdd	Lloh205, Lloh206
	.loh AdrpLdrGotLdr	Lloh207, Lloh208, Lloh209
	.loh AdrpAdd	Lloh210, Lloh211
	.loh AdrpAdd	Lloh212, Lloh213
	.loh AdrpAdd	Lloh214, Lloh215
	.loh AdrpLdrGot	Lloh216, Lloh217
	.loh AdrpLdrGot	Lloh218, Lloh219
	.loh AdrpLdrGot	Lloh220, Lloh221
	.loh AdrpAdd	Lloh222, Lloh223
	.loh AdrpLdrGot	Lloh224, Lloh225
	.loh AdrpAdd	Lloh226, Lloh227
	.loh AdrpAdd	Lloh228, Lloh229
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_ai_spawn_packet_apply
_forge_ai_spawn_packet_apply:           ; @forge_ai_spawn_packet_apply
; %bb.0:
	sub	sp, sp, #128
	add	x8, sp, #52
	add	x9, sp, #56
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	sub	x10, x29, #52
	sub	x11, x29, #48
	stp	w9, w8, [sp, #36]
	sub	x8, x29, #44
	sub	x9, x29, #40
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	w11, w10, [sp, #28]
	sub	x10, x29, #36
	mov	x19, x1
Lloh230:
	adrp	x1, l_.str.29@PAGE
Lloh231:
	add	x1, x1, l_.str.29@PAGEOFF
	stp	w9, w8, [sp, #20]
	sub	x8, x29, #32
	sub	x9, x29, #28
	add	x0, x0, #4
	stp	xzr, xzr, [x29, #-32]
	stp	xzr, xzr, [x29, #-48]
	stp	w8, w10, [sp, #12]
	sub	x8, x29, #24
	sub	x10, x29, #20
	stur	wzr, [x29, #-52]
	stp	wzr, wzr, [sp, #52]
	stp	w8, w9, [sp, #4]
	str	w10, [sp]
	bl	_sscanf
	cmp	w0, #11
	b.ne	LBB13_3
; %bb.1:
	ldur	w0, [x29, #-20]
	mov	w1, #-1                         ; =0xffffffff
	bl	_forge_resolve_target_live_idx
	str	w0, [x19]
	tbnz	w0, #31, LBB13_3
; %bb.2:
	ldp	w2, w1, [x29, #-28]
	ldursh	w3, [x29, #-32]
	ldp	w5, w4, [x29, #-40]
	ldp	w7, w6, [x29, #-48]
	ldur	w8, [x29, #-52]
	ldp	w10, w9, [sp, #52]
	str	w8, [sp]
	stp	w9, w10, [sp, #4]
	bl	_forge_ai_spawn_net_apply
	mov	w0, #1                          ; =0x1
	b	LBB13_4
LBB13_3:
	mov	w0, wzr
LBB13_4:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh230, Lloh231
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_resolve_target_live_idx
_forge_resolve_target_live_idx:         ; @forge_resolve_target_live_idx
; %bb.0:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
Lloh232:
	adrp	x23, _g_forge_state@GOTPAGE
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	w19, w1
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	mov	w20, w0
Lloh233:
	ldr	w23, [x23, _g_forge_state@GOTPAGEOFF]
	add	x29, sp, #64
	ldr	w8, [x23]
	cbnz	w8, LBB14_2
; %bb.1:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB14_2:
	add	x9, x8, #876, lsl #12           ; =3588096
	ldr	w8, [x9, #1112]
	cbz	w8, LBB14_4
; %bb.3:
	lsr	w8, w19, #13
	cbz	w8, LBB14_5
	b	LBB14_14
LBB14_4:
	bl	_forge_init_map_scenario_entities
	lsr	w8, w19, #13
	cbnz	w8, LBB14_14
LBB14_5:
	adrp	x22, _s_net_objects_storage@PAGE
	ldr	w0, [x22, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB14_7
; %bb.6:
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w21, #49152                     ; =0xc000
	movk	w21, #17, lsl #16
	bl	_calloc
	str	w0, [x22, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB14_73
LBB14_7:
	add	x8, x0, w19, sxtw #2
	mov	w9, #32768                      ; =0x8000
	ldr	w0, [x8, x9]
	tbnz	w0, #31, LBB14_14
; %bb.8:
	ldr	w8, [x23]
	cbnz	w8, LBB14_10
; %bb.9:
	mov	w21, w0
	bl	_forge_runtime_state_get
	mov	x8, x0
	mov	w0, w21
LBB14_10:
	add	x9, x8, #876, lsl #12           ; =3588096
	ldr	w8, [x9, #1112]
	cmp	w0, w8
	b.ge	LBB14_14
; %bb.11:
	ldr	w8, [x23]
	cbnz	w8, LBB14_13
; %bb.12:
	mov	w21, w0
	bl	_forge_runtime_state_get
	mov	x8, x0
	mov	w0, w21
LBB14_13:
	mov	w9, #396                        ; =0x18c
	smaddl	x8, w0, w9, x8
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [x9, #1112]
	cbnz	w8, LBB14_70
LBB14_14:
	tbnz	w20, #31, LBB14_22
; %bb.15:
	ldr	w0, [x23]
	cbnz	w0, LBB14_17
; %bb.16:
	bl	_forge_runtime_state_get
LBB14_17:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w20, w8
	b.ge	LBB14_22
; %bb.18:
	ldr	w0, [x23]
	cbnz	w0, LBB14_20
; %bb.19:
	bl	_forge_runtime_state_get
LBB14_20:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w20, w8, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [x9, #1112]
	cbz	w8, LBB14_22
; %bb.21:
	mov	w0, w20
	b	LBB14_70
LBB14_22:
	tbnz	w19, #31, LBB14_65
; %bb.23:
Lloh234:
	adrp	x22, _object_header_data@GOTPAGE
Lloh235:
	ldr	w22, [x22, _object_header_data@GOTPAGEOFF]
	ldr	w0, [x22]
	cbz	w0, LBB14_65
; %bb.24:
	ldrsh	w8, [x0, #46]
	cmp	w19, w8
	b.ge	LBB14_65
; %bb.25:
	mov	w1, #-1                         ; =0xffffffff
	bl	_data_next_index
	cmn	w0, #1
	and	w9, w0, #0xffff
	cset	w8, ne
	cmp	w9, w19
	mov	w21, w0
	ccmn	w0, #1, #4, ne
	b.eq	LBB14_27
	.p2align	4, , 8
LBB14_26:                               ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x22]
	mov	w1, w21
	bl	_data_next_index
	cmn	w0, #1
	and	w9, w0, #0xffff
	mov	w21, w0
	cset	w8, ne
	ccmp	w9, w19, #4, ne
	b.ne	LBB14_26
LBB14_27:
	cmn	w21, #1
	eor	w8, w8, #0x1
	csinc	w8, w8, wzr, ne
	tbnz	w8, #0, LBB14_65
; %bb.28:
	mov	w0, w21
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB14_65
; %bb.29:
	ldrh	w8, [x0, #100]
	cmp	w8, #4
	b.hi	LBB14_65
; %bb.30:
	mov	w0, w21
	bl	_forge_3d_adopt_or_find_object_instance
	tbnz	w0, #31, LBB14_65
; %bb.31:
	cmp	w0, w20
	mov	w8, #4095                       ; =0xfff
	ccmp	w20, w8, #2, ne
	b.hi	LBB14_61
; %bb.32:
	ldr	w21, [x23]
	mov	w24, w0
	mov	x8, x21
	cbnz	w21, LBB14_34
; %bb.33:
	bl	_forge_runtime_state_get
	ldr	w21, [x23]
	mov	x8, x0
	mov	w0, w24
LBB14_34:
	add	x9, x8, #876, lsl #12           ; =3588096
	ldr	w8, [x9, #1112]
	cmp	w20, w8
	b.ge	LBB14_39
; %bb.35:
	cbnz	w21, LBB14_37
; %bb.36:
	bl	_forge_runtime_state_get
	mov	x21, x0
	mov	w0, w24
LBB14_37:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w20, w8, x21
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [x9, #1112]
	cbnz	w8, LBB14_61
; %bb.38:
	ldr	w21, [x23]
LBB14_39:
	mov	x8, x21
	cbnz	w21, LBB14_41
; %bb.40:
	bl	_forge_runtime_state_get
	ldr	w21, [x23]
	mov	x8, x0
	mov	w0, w24
LBB14_41:
	add	x9, x8, #876, lsl #12           ; =3588096
	ldr	w8, [x9, #1112]
	cmp	w20, w8
	b.lt	LBB14_48
; %bb.42:
	mov	x22, x21
	cbnz	w21, LBB14_44
; %bb.43:
	bl	_forge_runtime_state_get
	ldr	w21, [x23]
	mov	x22, x0
	cbz	w21, LBB14_71
LBB14_44:
	add	x8, x21, #876, lsl #12          ; =3588096
	mov	w9, #396                        ; =0x18c
	ldrsw	x8, [x8, #1112]
	smaddl	x8, w8, w9, x22
	add	x8, x8, #480, lsl #12           ; =1966080
	add	x0, x8, #1112
LBB14_45:
	add	x8, x21, #876, lsl #12          ; =3588096
	mov	w9, #396                        ; =0x18c
	mov	w1, wzr
	ldr	w8, [x8, #1112]
	sub	w8, w20, w8
	madd	w2, w8, w9, w9
	bl	_csmemset
	ldr	w21, [x23]
	add	w22, w20, #1
	mov	x0, x21
	cbnz	w21, LBB14_47
; %bb.46:
	bl	_forge_runtime_state_get
	ldr	w21, [x23]
LBB14_47:
	mov	w8, #50264                      ; =0xc458
	movk	w8, #54, lsl #16
	str	w22, [x0, x8]
	mov	w0, w24
LBB14_48:
	mov	x8, x21
	cbnz	w21, LBB14_52
; %bb.49:
	bl	_forge_runtime_state_get
	ldr	w8, [x23]
	mov	x21, x0
	cbnz	w8, LBB14_51
; %bb.50:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB14_51:
	mov	w0, w24
LBB14_52:
	mov	w22, #396                       ; =0x18c
	mov	w10, #1112                      ; =0x458
	movk	w10, #30, lsl #16
	mov	w2, #396                        ; =0x18c
	smaddl	x9, w20, w22, x21
	smaddl	x8, w0, w22, x8
	add	x0, x9, x10
	add	x1, x8, x10
	bl	_memcpy
	ldr	w0, [x23]
	cbnz	w0, LBB14_54
; %bb.53:
	bl	_forge_runtime_state_get
LBB14_54:
	smaddl	x8, w24, w22, x0
	mov	w1, wzr
	mov	w2, #396                        ; =0x18c
	add	x8, x8, #480, lsl #12           ; =1966080
	add	x0, x8, #1112
	bl	_csmemset
	ldr	w0, [x23]
	cbnz	w0, LBB14_56
; %bb.55:
	bl	_forge_runtime_state_get
LBB14_56:
	mov	w21, #396                       ; =0x18c
	mov	w10, #1116                      ; =0x45c
	movk	w10, #30, lsl #16
	mov	w22, #-1                        ; =0xffffffff
	smaddl	x9, w24, w21, x0
	mov	w8, w24
	str	w22, [x9, x10]
	ldr	w0, [x23]
	cbnz	w0, LBB14_58
; %bb.57:
	bl	_forge_runtime_state_get
	mov	w8, w24
LBB14_58:
	smaddl	x9, w8, w21, x0
	mov	w10, #1120                      ; =0x460
	movk	w10, #30, lsl #16
	str	w22, [x9, x10]
	ldr	w0, [x23]
	cbnz	w0, LBB14_60
; %bb.59:
	bl	_forge_runtime_state_get
	mov	w8, w24
LBB14_60:
	mov	w9, #396                        ; =0x18c
	mov	w10, #-1                        ; =0xffffffff
	smaddl	x8, w8, w9, x0
	mov	w9, #1124                       ; =0x464
	movk	w9, #30, lsl #16
	mov	w0, w20
	str	w10, [x8, x9]
LBB14_61:
	cmp	w19, #2, lsl #12                ; =8192
	b.ge	LBB14_70
; %bb.62:
	adrp	x21, _s_net_objects_storage@PAGE
	ldr	w8, [x21, _s_net_objects_storage@PAGEOFF]
	cbnz	w8, LBB14_64
; %bb.63:
	mov	w1, #49152                      ; =0xc000
	mov	w22, w0
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	mov	w20, #49152                     ; =0xc000
	movk	w20, #17, lsl #16
	bl	_calloc
	mov	x8, x0
	mov	w0, w22
	str	w8, [x21, _s_net_objects_storage@PAGEOFF]
	cbz	w8, LBB14_74
LBB14_64:
	add	x8, x8, w19, sxtw #2
	mov	w9, #32768                      ; =0x8000
	str	w0, [x8, x9]
	b	LBB14_70
LBB14_65:
	tbnz	w20, #31, LBB14_69
; %bb.66:
	ldr	w0, [x23]
	cbnz	w0, LBB14_68
; %bb.67:
	bl	_forge_runtime_state_get
LBB14_68:
	add	x8, x0, #876, lsl #12           ; =3588096
	mov	w0, w20
	ldr	w8, [x8, #1112]
	cmp	w20, w8
	b.lt	LBB14_70
LBB14_69:
	mov	w0, #-1                         ; =0xffffffff
LBB14_70:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB14_71:
	bl	_forge_runtime_state_get
	add	x8, x0, #876, lsl #12           ; =3588096
	mov	w9, #396                        ; =0x18c
	ldr	w21, [x23]
	ldrsw	x8, [x8, #1112]
	smaddl	x8, w8, w9, x22
	add	x8, x8, #480, lsl #12           ; =1966080
	add	x0, x8, #1112
	cbnz	w21, LBB14_45
; %bb.72:
	mov	x22, x0
	bl	_forge_runtime_state_get
	mov	x21, x0
	mov	x0, x22
	b	LBB14_45
LBB14_73:
Lloh236:
	adrp	x0, l_.str.24@PAGE
Lloh237:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w21, [sp]
	bl	_platform_log
	bl	_abort
LBB14_74:
Lloh238:
	adrp	x0, l_.str.24@PAGE
Lloh239:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w20, [sp]
	bl	_platform_log
	bl	_abort
	.loh AdrpLdrGot	Lloh232, Lloh233
	.loh AdrpLdrGot	Lloh234, Lloh235
	.loh AdrpAdd	Lloh236, Lloh237
	.loh AdrpAdd	Lloh238, Lloh239
                                        ; -- End function
	.globl	_forge_network_pre_handle_object_changes ; -- Begin function forge_network_pre_handle_object_changes
	.p2align	4
_forge_network_pre_handle_object_changes: ; @forge_network_pre_handle_object_changes
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	mov	x21, x0
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	mov	w19, w1
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	bl	_forge_get_base_map_tag_count
	mov	w20, w0
Lloh240:
	adrp	x0, _g_suppressed_change_slots@PAGE
Lloh241:
	add	x0, x0, _g_suppressed_change_slots@PAGEOFF
	mov	w1, wzr
	mov	w2, #256                        ; =0x100
	bl	_csmemset
	cmp	w19, #1
	ccmp	w21, #0, #4, ge
	b.ne	LBB15_2
LBB15_1:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB15_2:
	mov	w23, wzr
	add	w21, w21, #4
	adrp	x24, _s_net_objects_storage@PAGE
	mov	w25, #1                         ; =0x1
	mov	w26, #132                       ; =0x84
Lloh242:
	adrp	x28, _g_suppressed_change_slots@PAGE
Lloh243:
	add	x28, x28, _g_suppressed_change_slots@PAGEOFF
	b	LBB15_5
LBB15_3:                                ;   in Loop: Header=BB15_5 Depth=1
	and	w8, w22, #0xffff
	add	x8, x0, w8, uxtw
	add	x8, x8, #18, lsl #12            ; =73728
	strb	wzr, [x8]
	.p2align	4, , 8
LBB15_4:                                ;   in Loop: Header=BB15_5 Depth=1
	add	w23, w23, #1
	add	w21, w21, #132
	cmp	w19, w23
	b.eq	LBB15_1
LBB15_5:                                ; =>This Inner Loop Header: Depth=1
	sub	w22, w21, #4
	ldrb	w8, [x22]
	cmp	w8, #1
	b.eq	LBB15_13
; %bb.6:                                ;   in Loop: Header=BB15_5 Depth=1
	cbnz	w8, LBB15_4
; %bb.7:                                ;   in Loop: Header=BB15_5 Depth=1
	ldr	w27, [x21]
	cmn	w27, #1
	b.eq	LBB15_4
; %bb.8:                                ;   in Loop: Header=BB15_5 Depth=1
	ubfx	w8, w27, #13, #3
	cbnz	w8, LBB15_4
; %bb.9:                                ;   in Loop: Header=BB15_5 Depth=1
	ldr	w0, [x24, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB15_11
; %bb.10:                               ;   in Loop: Header=BB15_5 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x24, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB15_22
LBB15_11:                               ;   in Loop: Header=BB15_5 Depth=1
	and	w8, w27, #0xffff
	ldp	q1, q0, [x22, #32]
	umaddl	x9, w8, w26, x0
	add	x10, x0, w8, uxtw
	ldp	q3, q2, [x22]
	add	x9, x9, #20, lsl #12            ; =81920
	add	x10, x10, #18, lsl #12          ; =73728
	stp	q3, q2, [x9]
	stp	q1, q0, [x9, #32]
	ldp	q1, q0, [x22, #96]
	ldp	q3, q2, [x22, #64]
	stp	q1, q0, [x9, #96]
	stp	q3, q2, [x9, #64]
	ldr	w11, [x22, #128]
	strb	w25, [x10]
	ldr	w8, [x0, w8, uxtw #2]
	str	w11, [x9, #128]
	cmn	w8, #1
	b.eq	LBB15_17
; %bb.12:                               ;   in Loop: Header=BB15_5 Depth=1
	add	w9, w21, #4
	str	w8, [x9]
	b	LBB15_4
	.p2align	4, , 8
LBB15_13:                               ;   in Loop: Header=BB15_5 Depth=1
	ldr	w22, [x21]
	cmn	w22, #1
	b.eq	LBB15_4
; %bb.14:                               ;   in Loop: Header=BB15_5 Depth=1
	ubfx	w8, w22, #13, #3
	cbnz	w8, LBB15_4
; %bb.15:                               ;   in Loop: Header=BB15_5 Depth=1
	ldr	w0, [x24, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB15_3
; %bb.16:                               ;   in Loop: Header=BB15_5 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x24, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB15_3
	b	LBB15_22
LBB15_17:                               ;   in Loop: Header=BB15_5 Depth=1
	cbz	w20, LBB15_4
; %bb.18:                               ;   in Loop: Header=BB15_5 Depth=1
	add	w8, w21, #4
	ldr	w8, [x8]
	cmn	w8, #1
	b.eq	LBB15_4
; %bb.19:                               ;   in Loop: Header=BB15_5 Depth=1
	cmp	w23, #255
	b.hi	LBB15_4
; %bb.20:                               ;   in Loop: Header=BB15_5 Depth=1
	and	w8, w8, #0xffff
	cmp	w8, w20
	b.lo	LBB15_4
; %bb.21:                               ;   in Loop: Header=BB15_5 Depth=1
	add	w8, w28, w23
	strb	w25, [x8]
	mov	w8, #255                        ; =0xff
	strb	w8, [x22]
	b	LBB15_4
LBB15_22:
	mov	w8, #49152                      ; =0xc000
Lloh244:
	adrp	x0, l_.str.24@PAGE
Lloh245:
	add	x0, x0, l_.str.24@PAGEOFF
	movk	w8, #17, lsl #16
	str	w8, [sp]
	bl	_platform_log
	bl	_abort
	.loh AdrpAdd	Lloh240, Lloh241
	.loh AdrpAdd	Lloh242, Lloh243
	.loh AdrpAdd	Lloh244, Lloh245
                                        ; -- End function
	.globl	_forge_network_post_handle_object_changes ; -- Begin function forge_network_post_handle_object_changes
	.p2align	4
_forge_network_post_handle_object_changes: ; @forge_network_post_handle_object_changes
; %bb.0:
	sub	sp, sp, #112
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	mov	x20, x0
	cmp	w1, #1
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	ccmp	w20, #0, #4, ge
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	b.ne	LBB16_2
LBB16_1:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB16_2:
Lloh246:
	adrp	x25, _object_header_data@GOTPAGE
	mov	w23, #49152                     ; =0xc000
	mov	w19, w1
	mov	w22, wzr
	mov	w24, #132                       ; =0x84
	adrp	x26, _s_net_objects_storage@PAGE
Lloh247:
	ldr	w25, [x25, _object_header_data@GOTPAGEOFF]
	movk	w23, #17, lsl #16
Lloh248:
	adrp	x27, _g_suppressed_change_slots@PAGE
Lloh249:
	add	x27, x27, _g_suppressed_change_slots@PAGEOFF
	b	LBB16_6
	.p2align	4, , 8
LBB16_3:                                ;   in Loop: Header=BB16_6 Depth=1
	ldrb	w8, [x27, w22, sxtw]
	cbz	w8, LBB16_7
; %bb.4:                                ;   in Loop: Header=BB16_6 Depth=1
	smull	x8, w22, w24
	strb	wzr, [x20, x8]
LBB16_5:                                ;   in Loop: Header=BB16_6 Depth=1
	add	w22, w22, #1
	cmp	w22, w19
	b.eq	LBB16_1
LBB16_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB16_13 Depth 2
	cmp	w22, #255
	b.ls	LBB16_3
LBB16_7:                                ;   in Loop: Header=BB16_6 Depth=1
	smaddl	x8, w22, w24, x20
	ldrb	w9, [x8]
	cbnz	w9, LBB16_5
; %bb.8:                                ;   in Loop: Header=BB16_6 Depth=1
	ldr	w8, [x8, #4]
	cmn	w8, #1
	ubfx	w9, w8, #13, #3
	ccmp	w9, #0, #0, ne
	b.ne	LBB16_5
; %bb.9:                                ;   in Loop: Header=BB16_6 Depth=1
	ldr	w0, [x25]
	cbz	w0, LBB16_5
; %bb.10:                               ;   in Loop: Header=BB16_6 Depth=1
	ldrsh	w9, [x0, #46]
	and	w28, w8, #0xffff
	cmp	w28, w9
	b.ge	LBB16_5
; %bb.11:                               ;   in Loop: Header=BB16_6 Depth=1
	mov	w1, #-1                         ; =0xffffffff
	bl	_data_next_index
	cmn	w0, #1
	mov	w21, w0
	cset	w8, ne
	b.eq	LBB16_14
; %bb.12:                               ;   in Loop: Header=BB16_6 Depth=1
	and	w9, w21, #0xffff
	cmp	w9, w28
	b.eq	LBB16_14
	.p2align	4, , 8
LBB16_13:                               ;   Parent Loop BB16_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x25]
	mov	w1, w21
	bl	_data_next_index
	cmn	w0, #1
	and	w9, w0, #0xffff
	mov	w21, w0
	cset	w8, ne
	ccmp	w9, w28, #4, ne
	b.ne	LBB16_13
LBB16_14:                               ;   in Loop: Header=BB16_6 Depth=1
	cmn	w21, #1
	eor	w8, w8, #0x1
	csinc	w8, w8, wzr, ne
	tbnz	w8, #0, LBB16_5
; %bb.15:                               ;   in Loop: Header=BB16_6 Depth=1
	ldr	w0, [x26, _s_net_objects_storage@PAGEOFF]
	cbnz	w0, LBB16_17
; %bb.16:                               ;   in Loop: Header=BB16_6 Depth=1
	mov	w1, #49152                      ; =0xc000
	mov	w0, #1                          ; =0x1
	movk	w1, #17, lsl #16
	bl	_calloc
	str	w0, [x26, _s_net_objects_storage@PAGEOFF]
	cbz	w0, LBB16_22
LBB16_17:                               ;   in Loop: Header=BB16_6 Depth=1
	add	x8, x0, w28, uxtw
	mov	w10, #65536                     ; =0x10000
	add	x9, x0, w28, uxtw #2
	ldrb	w28, [x8, x10]
	mov	w10, #32768                     ; =0x8000
	add	x8, x8, #18, lsl #12            ; =73728
	ldr	w0, [x9, x10]
	cmp	w28, #0
	strb	wzr, [x8]
	cset	w2, ne
	tbnz	w0, #31, LBB16_21
; %bb.18:                               ;   in Loop: Header=BB16_6 Depth=1
Lloh250:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh251:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh252:
	ldr	w8, [x8]
	cbnz	w8, LBB16_20
; %bb.19:                               ;   in Loop: Header=BB16_6 Depth=1
	mov	w23, w0
	bl	_forge_runtime_state_get
	mov	x8, x0
	mov	w0, w23
	mov	w23, #49152                     ; =0xc000
	movk	w23, #17, lsl #16
LBB16_20:                               ;   in Loop: Header=BB16_6 Depth=1
	ldr	w8, [x8, #80]
	tst	w28, #0xff
	ccmp	w8, w0, #4, eq
	cset	w2, eq
LBB16_21:                               ;   in Loop: Header=BB16_6 Depth=1
	mov	w1, w21
	bl	_forge_client_configure_linked_object
	b	LBB16_5
LBB16_22:
Lloh253:
	adrp	x0, l_.str.24@PAGE
Lloh254:
	add	x0, x0, l_.str.24@PAGEOFF
	str	w23, [sp]
	bl	_platform_log
	bl	_abort
	.loh AdrpAdd	Lloh248, Lloh249
	.loh AdrpLdrGot	Lloh246, Lloh247
	.loh AdrpLdrGotLdr	Lloh250, Lloh251, Lloh252
	.loh AdrpAdd	Lloh253, Lloh254
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_client_configure_linked_object
_forge_client_configure_linked_object:  ; @forge_client_configure_linked_object
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	mov	w19, w1
	mov	w20, w0
	mov	w0, w1
	mov	w1, wzr
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	mov	w21, w2
	bl	_object_set_automatic_deactivation
	mov	w0, w19
	bl	_object_activate
	mov	w0, w19
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_get_and_verify_type
	cbz	w0, LBB17_6
; %bb.1:
	ldr	w8, [x0, #4]
	cbz	w21, LBB17_4
; %bb.2:
	ldrh	w9, [x0, #100]
	orr	w10, w8, #0x1000000
	str	w10, [x0, #4]
	cmp	w9, #1
	b.hi	LBB17_6
; %bb.3:
	orr	w8, w8, #0x20
	orr	w8, w8, #0x1000000
	b	LBB17_7
LBB17_4:
	ldrh	w9, [x0, #100]
	mov	w10, #65503                     ; =0xffdf
	movk	w10, #65279, lsl #16
	and	w8, w8, w10
	cmp	w9, #1
	b.ls	LBB17_7
; %bb.5:
	str	w8, [x0, #4]
LBB17_6:
	tbz	w20, #31, LBB17_8
	b	LBB17_26
LBB17_7:
	str	w8, [x0, #4]
	mov	w0, w19
	mov	w1, #1                          ; =0x1
	bl	_unit_set_enterable_by_player
	mov	w0, w19
	mov	w1, #1                          ; =0x1
	bl	_unit_set_controllable
	tbnz	w20, #31, LBB17_26
LBB17_8:
Lloh255:
	adrp	x21, _g_forge_state@GOTPAGE
Lloh256:
	ldr	w21, [x21, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x21]
	cbnz	w0, LBB17_10
; %bb.9:
	bl	_forge_runtime_state_get
LBB17_10:
	add	x8, x0, #876, lsl #12           ; =3588096
	ldr	w8, [x8, #1112]
	cmp	w20, w8
	b.ge	LBB17_26
; %bb.11:
	ldr	w0, [x21]
	cbnz	w0, LBB17_13
; %bb.12:
	bl	_forge_runtime_state_get
LBB17_13:
	mov	w8, #396                        ; =0x18c
	smaddl	x8, w20, w8, x0
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [x9, #1112]
	cbz	w8, LBB17_26
; %bb.14:
	ldr	w0, [x21]
	cbnz	w0, LBB17_16
; %bb.15:
	bl	_forge_runtime_state_get
LBB17_16:
	mov	w8, #396                        ; =0x18c
	mov	w9, #1116                       ; =0x45c
	movk	w9, #30, lsl #16
	smaddl	x8, w20, w8, x0
	str	w19, [x8, x9]
	ldr	w8, [x21]
	mov	x0, x8
	cbnz	w8, LBB17_18
; %bb.17:
	bl	_forge_runtime_state_get
	ldr	w8, [x21]
LBB17_18:
	ldr	w9, [x0, #80]
	cmp	w9, w20
	b.ne	LBB17_22
; %bb.19:
	mov	x0, x8
	cbnz	w8, LBB17_21
; %bb.20:
	bl	_forge_runtime_state_get
	ldr	w8, [x21]
LBB17_21:
	str	w19, [x0, #76]
LBB17_22:
	cbnz	w8, LBB17_24
; %bb.23:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB17_24:
	mov	w9, #396                        ; =0x18c
	smaddl	x8, w20, w9, x8
	add	x9, x8, #480, lsl #12           ; =1966080
	ldr	w8, [x9, #1128]
	mov	w9, #29552                      ; =0x7370
	movk	w9, #24937, lsl #16
	cmp	w8, w9
	b.ne	LBB17_26
; %bb.25:
	mov	w0, w19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	_forge_ai_preview_protect
LBB17_26:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh255, Lloh256
                                        ; -- End function
.zerofill __DATA,__bss,_forge_find_catalog_entry_by_hash.s_fallback_entry,328,2 ; @forge_find_catalog_entry_by_hash.s_fallback_entry
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

.zerofill __DATA,__bss,_g_last_transform_send_ms,4,2 ; @g_last_transform_send_ms
.zerofill __DATA,__bss,_g_last_monitor_send_ms,4,2 ; @g_last_monitor_send_ms
.zerofill __DATA,__bss,_g_last_monitor_sent_x,4,2 ; @g_last_monitor_sent_x
.zerofill __DATA,__bss,_g_last_monitor_sent_y,4,2 ; @g_last_monitor_sent_y
.zerofill __DATA,__bss,_g_last_monitor_sent_z,4,2 ; @g_last_monitor_sent_z
.zerofill __DATA,__bss,_g_last_monitor_sent_yaw,4,2 ; @g_last_monitor_sent_yaw
.zerofill __DATA,__bss,_g_last_monitor_sent_pitch,4,2 ; @g_last_monitor_sent_pitch
.zerofill __DATA,__bss,_g_client_requested_full_sync,1,2 ; @g_client_requested_full_sync
.zerofill __DATA,__bss,_g_client_join_ms,4,2 ; @g_client_join_ms
.zerofill __DATA,__bss,_s_net_objects_storage,4,2 ; @s_net_objects_storage
.zerofill __DATA,__bss,_g_host_machine_known,128,2 ; @g_host_machine_known
.zerofill __DATA,__bss,_g_host_machine_sync_cursor,128,2 ; @g_host_machine_sync_cursor
.zerofill __DATA,__bss,_g_host_machine_mon_synced,128,2 ; @g_host_machine_mon_synced
l_.str.1:                               ; @.str.1
	.asciz	"!FT:%d:%d:%.2f:%.2f:%.2f:%d:%d"

l_.str.2:                               ; @.str.2
	.asciz	"!FQ"

l_.str.3:                               ; @.str.3
	.asciz	"!FT:%d:1:%.2f:%.2f:%.2f:%d:%d"

l_.str.4:                               ; @.str.4
	.asciz	"!FD:%d:-1"

l_.str.5:                               ; @.str.5
	.asciz	"!FM:%d:%d:%.2f:%.2f:%.2f:%d:%d:%d:%d"

l_.str.6:                               ; @.str.6
	.asciz	"!FU:%d:%d"

l_.str.7:                               ; @.str.7
	.asciz	"!FS:%08X:%.2f:%.2f:%.2f:%d:%d:%d:%d"

l_.str.8:                               ; @.str.8
	.asciz	"!FD:%d:%d"

l_.str.9:                               ; @.str.9
	.asciz	"!FE:%X:%.2f:%.2f:%.2f"

l_.str.10:                              ; @.str.10
	.asciz	"!FT:"

l_.str.11:                              ; @.str.11
	.asciz	"%d:%d:%f:%f:%f:%d:%d"

l_.str.12:                              ; @.str.12
	.asciz	"!FE:"

l_.str.13:                              ; @.str.13
	.asciz	"%X:%f:%f:%f"

l_.str.14:                              ; @.str.14
	.asciz	"!FA:"

l_.str.15:                              ; @.str.15
	.asciz	"!FU:"

l_.str.16:                              ; @.str.16
	.asciz	"%d:%d"

l_.str.17:                              ; @.str.17
	.asciz	"!FS:"

l_.str.18:                              ; @.str.18
	.asciz	"%X:%f:%f:%f:%d:%d:%d:%d"

l_.str.19:                              ; @.str.19
	.asciz	"!FM:"

l_.str.20:                              ; @.str.20
	.asciz	"%d:%d:%f:%f:%f:%d:%d:%d:%d"

l_.str.21:                              ; @.str.21
	.asciz	"!FD:"

l_.str.22:                              ; @.str.22
	.asciz	"!FH:"

l_.str.23:                              ; @.str.23
	.asciz	"%X:%X:%X:%f:%f:%f:%d:%d:%d:%d"

.zerofill __DATA,__bss,_g_suppressed_change_slots,256,0 ; @g_suppressed_change_slots
l_.str.24:                              ; @.str.24
	.asciz	"Forge: out of memory for s_net_objects (%lu bytes)"

l_.str.25:                              ; @.str.25
	.asciz	"!FH:%X:%08X:%X:%.2f:%.2f:%.2f:%d:%d:%d:%d"

l_.str.26:                              ; @.str.26
	.asciz	"!FH:%X:%08X:%X:%.1f:%.1f:%.1f:%d:%d:%d:%d"

l_.str.27:                              ; @.str.27
	.asciz	"!FH:%X:%08X:%X:%.0f:%.0f:%.0f:%d:%d:%d:%d"

l_.str.28:                              ; @.str.28
	.asciz	"!FA:%X:%X:%X:%X:%X:%X:%X:%X:%X:%X:%X"

l_.str.29:                              ; @.str.29
	.asciz	"%X:%X:%X:%X:%X:%X:%X:%X:%X:%X:%X"

l_.str.30:                              ; @.str.30
	.asciz	"Forge: the host placed a tag this machine has not got (hash %08X): it is not shown"

.subsections_via_symbols
