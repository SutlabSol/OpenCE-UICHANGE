	.watchos_version_min 2, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_D3DDevice_SetRenderState       ; -- Begin function D3DDevice_SetRenderState
	.weak_definition	_D3DDevice_SetRenderState
	.p2align	4
_D3DDevice_SetRenderState:              ; @D3DDevice_SetRenderState
; %bb.0:
	cmp	w0, #81
	b.hi	LBB0_3
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
Lloh0:
	adrp	x8, _D3DSIMPLERENDERSTATEENCODE@GOTPAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	mov	w20, w0
	add	x29, sp, #16
	mov	w19, w1
Lloh1:
	ldr	w8, [x8, _D3DSIMPLERENDERSTATEENCODE@GOTPAGEOFF]
	ldr	w8, [x8, w0, sxtw #2]
	mov	w0, w8
	bl	_D3DDevice_SetRenderState_Simple
Lloh2:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh3:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	str	w19, [x8, w20, sxtw #2]
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
LBB0_2:
	ret
LBB0_3:
	cmp	w0, #115
	b.hi	LBB0_5
; %bb.4:
	b	_D3DDevice_SetRenderState_Deferred
LBB0_5:
	sub	w8, w0, #116
	cmp	w8, #27
	b.hi	LBB0_2
; %bb.6:
Lloh4:
	adrp	x9, LJTI0_0@PAGE
Lloh5:
	add	x9, x9, LJTI0_0@PAGEOFF
Ltmp0:
	adr	x10, Ltmp0
	ldrsw	x11, [x9, x8, lsl #2]
	add	x10, x10, x11
	br	x10
LBB0_7:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_PSTextureModes
LBB0_8:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_DoNotCullUncompressed
LBB0_9:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_MultiSampleAntiAlias
LBB0_10:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_LogicOp
LBB0_11:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_CullMode
LBB0_12:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_BackFillMode
LBB0_13:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_TextureFactor
LBB0_14:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_StencilFail
LBB0_15:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_RopZCmpAlwaysRead
LBB0_16:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_StencilCullEnable
LBB0_17:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_FogColor
LBB0_18:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_EdgeAntiAlias
LBB0_19:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_FillMode
LBB0_20:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_ZEnable
LBB0_21:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_VertexBlend
LBB0_22:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_MultiSampleMask
LBB0_23:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_LineWidth
LBB0_24:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_TwoSidedLighting
LBB0_25:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_Dxt1NoiseEnable
LBB0_26:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_ZBias
LBB0_27:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_NormalizeNormals
LBB0_28:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_MultiSampleType
LBB0_29:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_FrontFace
LBB0_30:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_StencilEnable
LBB0_31:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_YuvEnable
LBB0_32:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_ShadowFunc
LBB0_33:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_OcclusionCullEnable
LBB0_34:
	mov	w0, w1
	b	_D3DDevice_SetRenderState_RopZRead
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.section	__TEXT,__const
	.p2align	2, 0x0
LJTI0_0:
	.long	LBB0_7-Ltmp0
	.long	LBB0_21-Ltmp0
	.long	LBB0_17-Ltmp0
	.long	LBB0_19-Ltmp0
	.long	LBB0_12-Ltmp0
	.long	LBB0_24-Ltmp0
	.long	LBB0_27-Ltmp0
	.long	LBB0_20-Ltmp0
	.long	LBB0_30-Ltmp0
	.long	LBB0_14-Ltmp0
	.long	LBB0_29-Ltmp0
	.long	LBB0_11-Ltmp0
	.long	LBB0_13-Ltmp0
	.long	LBB0_26-Ltmp0
	.long	LBB0_10-Ltmp0
	.long	LBB0_18-Ltmp0
	.long	LBB0_9-Ltmp0
	.long	LBB0_22-Ltmp0
	.long	LBB0_28-Ltmp0
	.long	LBB0_32-Ltmp0
	.long	LBB0_23-Ltmp0
	.long	LBB0_25-Ltmp0
	.long	LBB0_31-Ltmp0
	.long	LBB0_33-Ltmp0
	.long	LBB0_16-Ltmp0
	.long	LBB0_15-Ltmp0
	.long	LBB0_34-Ltmp0
	.long	LBB0_8-Ltmp0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_D3DXMatrixIdentity             ; -- Begin function D3DXMatrixIdentity
	.weak_definition	_D3DXMatrixIdentity
	.p2align	4
_D3DXMatrixIdentity:                    ; @D3DXMatrixIdentity
; %bb.0:
	mov	w8, #1065353216                 ; =0x3f800000
	stur	xzr, [x0, #12]
	stur	xzr, [x0, #4]
	stp	xzr, xzr, [x0, #24]
	str	w8, [x0]
	str	w8, [x0, #20]
	str	w8, [x0, #40]
	stur	xzr, [x0, #52]
	stur	xzr, [x0, #44]
	str	w8, [x0, #60]
	ret
                                        ; -- End function
	.globl	_forge_menu_custom_edition_maps_look_again ; -- Begin function forge_menu_custom_edition_maps_look_again
	.p2align	4
_forge_menu_custom_edition_maps_look_again: ; @forge_menu_custom_edition_maps_look_again
; %bb.0:
	adrp	x8, _s_is_forge_map_cache_valid@PAGE
	strb	wzr, [x8, _s_is_forge_map_cache_valid@PAGEOFF]
	b	_custom_edition_maps_look_again
                                        ; -- End function
	.globl	_forge_custom_map_is_forge_made ; -- Begin function forge_custom_map_is_forge_made
	.p2align	4
_forge_custom_map_is_forge_made:        ; @forge_custom_map_is_forge_made
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #800
	adrp	x8, _s_is_forge_map_cache_valid@PAGE
	str	w0, [sp, #16]                   ; 4-byte Spill
	ldrb	w9, [x8, _s_is_forge_map_cache_valid@PAGEOFF]
	tbnz	w9, #0, LBB3_22
; %bb.1:
	mov	w9, #1                          ; =0x1
	mov	w0, wzr
	strb	w9, [x8, _s_is_forge_map_cache_valid@PAGEOFF]
	bl	_custom_edition_maps_count
	cmp	w0, #1
	b.lt	LBB3_22
; %bb.2:
	mov	w20, w0
	mov	w23, wzr
Lloh6:
	adrp	x24, _s_ce_map_forge_made@PAGE
Lloh7:
	add	x24, x24, _s_ce_map_forge_made@PAGEOFF
Lloh8:
	adrp	x19, _is_custom_map_leaf_forge_made.s_forge_check_fmts@PAGE
Lloh9:
	add	x19, x19, _is_custom_map_leaf_forge_made.s_forge_check_fmts@PAGEOFF
Lloh10:
	adrp	x25, l_.str.88@PAGE
Lloh11:
	add	x25, x25, l_.str.88@PAGEOFF
Lloh12:
	adrp	x26, l_.str.89@PAGE
Lloh13:
	add	x26, x26, l_.str.89@PAGEOFF
	str	w0, [sp, #20]                   ; 4-byte Spill
	b	LBB3_5
	.p2align	4, , 8
LBB3_3:                                 ;   in Loop: Header=BB3_5 Depth=1
	mov	w0, wzr
LBB3_4:                                 ;   in Loop: Header=BB3_5 Depth=1
	strb	w0, [x24, w23, sxtw]
	add	w23, w23, #1
	cmp	w23, w20
	b.eq	LBB3_22
LBB3_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_10 Depth 2
	mov	w0, wzr
	mov	w1, w23
	bl	_custom_edition_maps_display_index_of
	bl	_custom_edition_maps_level_name
	cbz	w0, LBB3_4
; %bb.6:                                ;   in Loop: Header=BB3_5 Depth=1
	mov	w1, #92                         ; =0x5c
	mov	x27, x0
	bl	_strrchr
	mov	x28, x0
	mov	x0, x27
	mov	w1, #47                         ; =0x2f
	bl	_strrchr
	cmp	w0, #0
	csinc	x8, x27, x0, eq
	cmp	w28, w0
	ccmp	w28, #0, #4, hi
	csinc	x28, x8, x28, eq
	ldrb	w8, [x28]
	cbz	w8, LBB3_3
; %bb.7:                                ;   in Loop: Header=BB3_5 Depth=1
	mov	x0, x28
	bl	_csstrlen
	cmp	w0, #7
	b.lo	LBB3_9
; %bb.8:                                ;   in Loop: Header=BB3_5 Depth=1
	mov	x0, x28
	bl	_csstrlen
	add	x8, x28, w0, sxtw
Lloh14:
	adrp	x1, l_.str.87@PAGE
Lloh15:
	add	x1, x1, l_.str.87@PAGEOFF
	sub	x0, x8, #6
	bl	__stricmp
	cbz	w0, LBB3_18
LBB3_9:                                 ;   in Loop: Header=BB3_5 Depth=1
	mov	x20, x24
	mov	w24, wzr
	.p2align	4, , 8
LBB3_10:                                ;   Parent Loop BB3_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w8, w19, w24
	mov	x1, x25
	ldr	w27, [x8]
	mov	x0, x27
	bl	_strstr
	cbz	w0, LBB3_12
; %bb.11:                               ;   in Loop: Header=BB3_10 Depth=2
	add	x0, sp, #280
	mov	w1, #512                        ; =0x200
	mov	x2, x27
	str	w28, [sp, #4]
	b	LBB3_13
	.p2align	4, , 8
LBB3_12:                                ;   in Loop: Header=BB3_10 Depth=2
	add	x0, sp, #280
	mov	w1, #512                        ; =0x200
	mov	x2, x27
LBB3_13:                                ;   in Loop: Header=BB3_10 Depth=2
	str	w28, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #280
	mov	x1, x26
	bl	_forge_host_fopen
	cbnz	w0, LBB3_17
; %bb.14:                               ;   in Loop: Header=BB3_10 Depth=2
	add	w24, w24, #4
	cmp	w24, #32
	b.ne	LBB3_10
; %bb.15:                               ;   in Loop: Header=BB3_5 Depth=1
	add	x1, sp, #24
	mov	x0, x28
	bl	_custom_edition_map_file_path
	mov	x24, x20
	cbz	w0, LBB3_19
; %bb.16:                               ;   in Loop: Header=BB3_5 Depth=1
	add	x0, sp, #24
	b	LBB3_20
LBB3_17:                                ;   in Loop: Header=BB3_5 Depth=1
	bl	_fclose
	mov	w0, #1                          ; =0x1
	mov	x24, x20
	b	LBB3_21
LBB3_18:                                ;   in Loop: Header=BB3_5 Depth=1
	mov	w0, #1                          ; =0x1
	b	LBB3_4
LBB3_19:                                ;   in Loop: Header=BB3_5 Depth=1
	add	x0, sp, #280
	mov	w1, #512                        ; =0x200
Lloh16:
	adrp	x2, l_.str.90@PAGE
Lloh17:
	add	x2, x2, l_.str.90@PAGEOFF
	str	w28, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #280
LBB3_20:                                ;   in Loop: Header=BB3_5 Depth=1
	mov	x1, x28
	mov	x2, xzr
	mov	x3, xzr
	mov	w4, wzr
	bl	_is_forge_created_map_file
LBB3_21:                                ;   in Loop: Header=BB3_5 Depth=1
	ldr	w20, [sp, #20]                  ; 4-byte Reload
	b	LBB3_4
LBB3_22:
	ldr	w19, [sp, #16]                  ; 4-byte Reload
	tbnz	w19, #31, LBB3_25
; %bb.23:
	mov	w0, wzr
	bl	_custom_edition_maps_count
	cmp	w19, w0
	b.ge	LBB3_25
; %bb.24:
Lloh18:
	adrp	x8, _s_ce_map_forge_made@PAGE
Lloh19:
	add	x8, x8, _s_ce_map_forge_made@PAGEOFF
	ldrb	w8, [x8, w19, sxtw]
	cmp	w8, #0
	cset	w0, ne
	b	LBB3_26
LBB3_25:
	mov	w0, wzr
LBB3_26:
	add	sp, sp, #800
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh18, Lloh19
                                        ; -- End function
	.globl	_forge_join_tags_missing        ; -- Begin function forge_join_tags_missing
	.p2align	4
_forge_join_tags_missing:               ; @forge_join_tags_missing
; %bb.0:
Lloh20:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh21:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh22:
	ldr	w8, [x8]
	cbz	w8, LBB4_3
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	mov	w19, w0
Lloh23:
	adrp	x0, l_.str@PAGE
Lloh24:
	add	x0, x0, l_.str@PAGEOFF
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_tag_pack_ready
	cbz	w0, LBB4_4
; %bb.2:
	mov	w0, wzr
	b	LBB4_8
LBB4_3:
	mov	w0, wzr
	ret
LBB4_4:
	cbz	w19, LBB4_7
; %bb.5:
Lloh25:
	adrp	x0, l_.str@PAGE
Lloh26:
	add	x0, x0, l_.str@PAGEOFF
	bl	_tag_pack_ready
	cbnz	w0, LBB4_7
; %bb.6:
Lloh27:
	adrp	x0, l_.str@PAGE
Lloh28:
	add	x0, x0, l_.str@PAGEOFF
	bl	_tag_pack_request
Lloh29:
	adrp	x0, l_.str.97@PAGE
Lloh30:
	add	x0, x0, l_.str.97@PAGEOFF
Lloh31:
	adrp	x1, l_.str.98@PAGE
Lloh32:
	add	x1, x1, l_.str.98@PAGEOFF
	bl	_platform_show_message
	mov	w0, #4                          ; =0x4
	bl	_ui_play_audio_feedback_sound
LBB4_7:
	mov	w0, #1                          ; =0x1
LBB4_8:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh20, Lloh21, Lloh22
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh27, Lloh28
                                        ; -- End function
	.globl	_forge_snap_editor_row_count    ; -- Begin function forge_snap_editor_row_count
	.p2align	4
_forge_snap_editor_row_count:           ; @forge_snap_editor_row_count
; %bb.0:
	mov	w0, #10                         ; =0xa
	ret
                                        ; -- End function
	.globl	_forge_snap_editor_open         ; -- Begin function forge_snap_editor_open
	.p2align	4
_forge_snap_editor_open:                ; @forge_snap_editor_open
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
Lloh33:
	adrp	x19, _s_snap_editor@PAGE
Lloh34:
	add	x19, x19, _s_snap_editor@PAGEOFF
Lloh35:
	adrp	x8, l_.str.2@PAGE
Lloh36:
	add	x8, x8, l_.str.2@PAGEOFF
	cmp	w1, #0
	csel	x8, x8, x1, eq
Lloh37:
	adrp	x2, l_.str.1@PAGE
Lloh38:
	add	x2, x2, l_.str.1@PAGEOFF
	str	w0, [x19]
	add	x0, x19, #4
	mov	w1, #256                        ; =0x100
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	str	w8, [sp]
	bl	_halo_linux_snprintf
	str	xzr, [x19, #264]
	adrp	x8, _s_snap_layout_tag@PAGE
	str	wzr, [x19, #260]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	strb	wzr, [x8, _s_snap_layout_tag@PAGEOFF]
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh33, Lloh34
                                        ; -- End function
	.globl	_forge_snap_editor_measured     ; -- Begin function forge_snap_editor_measured
	.p2align	4
_forge_snap_editor_measured:            ; @forge_snap_editor_measured
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	bl	_forge_snap_points_bounds_set
	adrp	x8, _s_snap_editor@PAGE+268
	mov	w9, #1                          ; =0x1
	str	w9, [x8, _s_snap_editor@PAGEOFF+268]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.globl	_forge_snap_editor_tag_count    ; -- Begin function forge_snap_editor_tag_count
	.p2align	4
_forge_snap_editor_tag_count:           ; @forge_snap_editor_tag_count
; %bb.0:
	b	_forge_snap_points_count_for_tag
                                        ; -- End function
	.globl	_forge_snap_editor_count        ; -- Begin function forge_snap_editor_count
	.p2align	4
_forge_snap_editor_count:               ; @forge_snap_editor_count
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
Lloh39:
	adrp	x1, _s_snap_editor@PAGE
Lloh40:
	add	x1, x1, _s_snap_editor@PAGEOFF
	mov	w2, wzr
	mov	x29, sp
	ldr	w0, [x1], #4
	bl	_forge_snap_points_get_for_tag
	cbz	w0, LBB9_3
; %bb.1:
	adrp	x9, _s_snap_editor@PAGE+260
	ldr	w8, [x0, #260]
	ldr	w10, [x9, _s_snap_editor@PAGEOFF+260]
	cmp	w10, w8
	b.lt	LBB9_4
; %bb.2:
	cmp	w8, #1
	csinc	w8, w8, wzr, gt
	sub	w8, w8, #1
	str	w8, [x9, _s_snap_editor@PAGEOFF+260]
	ldr	w8, [x0, #260]
	b	LBB9_4
LBB9_3:
	mov	w8, wzr
LBB9_4:
	mov	w0, w8
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh39, Lloh40
                                        ; -- End function
	.globl	_forge_snap_editor_row          ; -- Begin function forge_snap_editor_row
	.p2align	4
_forge_snap_editor_row:                 ; @forge_snap_editor_row
; %bb.0:
	sub	sp, sp, #96
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
Lloh41:
	adrp	x26, _s_snap_editor@PAGE
Lloh42:
	add	x26, x26, _s_snap_editor@PAGEOFF
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	mov	x24, x1
	mov	x1, x26
	mov	w23, w2
	mov	w25, w0
	mov	w2, wzr
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	ldr	w8, [x1], #4
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	mov	w19, w4
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	mov	x20, x3
	mov	w0, w8
	bl	_forge_snap_points_get_for_tag
	adrp	x28, _s_snap_editor@PAGE+260
	cbz	w0, LBB10_5
; %bb.1:
	ldr	w8, [x28, _s_snap_editor@PAGEOFF+260]
	ldr	w9, [x0, #260]
	cmp	w8, w9
	b.lt	LBB10_3
; %bb.2:
	cmp	w9, #1
	csinc	w8, w9, wzr, gt
	sub	w8, w8, #1
	str	w8, [x28, _s_snap_editor@PAGEOFF+260]
	ldr	w9, [x0, #260]
LBB10_3:
	cmp	w9, #1
	b.lt	LBB10_5
; %bb.4:
	mov	w9, #28                         ; =0x1c
	smaddl	x8, w8, w9, x0
	add	x27, x8, #264
	b	LBB10_6
LBB10_5:
	mov	x27, xzr
LBB10_6:
	ldr	w0, [x26], #4
	mov	x1, x26
	mov	w2, wzr
	bl	_forge_snap_points_get_for_tag
	cbz	w0, LBB10_9
; %bb.7:
	ldr	w8, [x28, _s_snap_editor@PAGEOFF+260]
	ldr	w26, [x0, #260]
	cmp	w8, w26
	b.lt	LBB10_10
; %bb.8:
	cmp	w26, #1
	csinc	w8, w26, wzr, gt
	sub	w8, w8, #1
	str	w8, [x28, _s_snap_editor@PAGEOFF+260]
	ldr	w26, [x0, #260]
	b	LBB10_10
LBB10_9:
	mov	w26, wzr
LBB10_10:
	cmp	w25, #3
	strb	wzr, [x20]
	b.le	LBB10_16
; %bb.11:
	cmp	w25, #5
	b.le	LBB10_24
; %bb.12:
	cmp	w25, #6
	b.eq	LBB10_31
; %bb.13:
	cmp	w25, #7
	b.eq	LBB10_36
; %bb.14:
	cmp	w25, #8
	b.ne	LBB10_43
; %bb.15:
Lloh43:
	adrp	x2, l_.str.14@PAGE
Lloh44:
	add	x2, x2, l_.str.14@PAGEOFF
	b	LBB10_44
LBB10_16:
	cmp	w25, #1
	b.gt	LBB10_20
; %bb.17:
	cbz	w25, LBB10_28
; %bb.18:
	cmp	w25, #1
	b.ne	LBB10_43
; %bb.19:
Lloh45:
	adrp	x2, l_.str.4@PAGE
Lloh46:
	add	x2, x2, l_.str.4@PAGEOFF
	mov	x0, x24
	mov	w1, w23
	bl	_halo_linux_snprintf
	mov	w8, #16                         ; =0x10
Lloh47:
	adrp	x2, l_.str.5@PAGE
Lloh48:
	add	x2, x2, l_.str.5@PAGEOFF
	mov	x0, x20
	mov	w1, w19
	stp	w26, w8, [sp]
	b	LBB10_41
LBB10_20:
	cmp	w25, #2
	b.eq	LBB10_29
; %bb.21:
	cmp	w25, #3
	b.ne	LBB10_43
; %bb.22:
Lloh49:
	adrp	x2, l_.str.8@PAGE
Lloh50:
	add	x2, x2, l_.str.8@PAGEOFF
	mov	x0, x24
	mov	w1, w23
	bl	_halo_linux_snprintf
	cbz	w27, LBB10_42
; %bb.23:
	ldrb	w8, [x27, #25]
Lloh51:
	adrp	x9, _s_snap_preset_names@PAGE
Lloh52:
	add	x9, x9, _s_snap_preset_names@PAGEOFF
	cmp	w8, #11
	b	LBB10_38
LBB10_24:
	cmp	w25, #4
	b.eq	LBB10_33
; %bb.25:
	cmp	w25, #5
	b.ne	LBB10_43
; %bb.26:
Lloh53:
	adrp	x2, l_.str.11@PAGE
Lloh54:
	add	x2, x2, l_.str.11@PAGEOFF
	mov	x0, x24
	mov	w1, w23
	bl	_halo_linux_snprintf
	cbz	w27, LBB10_42
; %bb.27:
	ldr	s0, [x27, #4]
	b	LBB10_35
LBB10_28:
Lloh55:
	adrp	x2, l_.str.3@PAGE
Lloh56:
	add	x2, x2, l_.str.3@PAGEOFF
	mov	x0, x24
	mov	w1, w23
	bl	_halo_linux_snprintf
Lloh57:
	adrp	x8, _s_snap_editor@PAGE+264
Lloh58:
	adrp	x9, _s_snap_autogen_names@PAGE
Lloh59:
	add	x9, x9, _s_snap_autogen_names@PAGEOFF
Lloh60:
	ldr	w8, [x8, _s_snap_editor@PAGEOFF+264]
	and	w8, w8, #0x3
	b	LBB10_39
LBB10_29:
Lloh61:
	adrp	x2, l_.str.6@PAGE
Lloh62:
	add	x2, x2, l_.str.6@PAGEOFF
	mov	x0, x24
	mov	w1, w23
	bl	_halo_linux_snprintf
	cbz	w27, LBB10_46
; %bb.30:
	ldr	w8, [x28, _s_snap_editor@PAGEOFF+260]
Lloh63:
	adrp	x2, l_.str.5@PAGE
Lloh64:
	add	x2, x2, l_.str.5@PAGEOFF
	mov	x0, x20
	mov	w1, w19
	str	w26, [sp, #4]
	add	w8, w8, #1
	b	LBB10_40
LBB10_31:
Lloh65:
	adrp	x2, l_.str.12@PAGE
Lloh66:
	add	x2, x2, l_.str.12@PAGEOFF
	mov	x0, x24
	mov	w1, w23
	bl	_halo_linux_snprintf
	cbz	w27, LBB10_42
; %bb.32:
	ldr	s0, [x27, #8]
	b	LBB10_35
LBB10_33:
Lloh67:
	adrp	x2, l_.str.9@PAGE
Lloh68:
	add	x2, x2, l_.str.9@PAGEOFF
	mov	x0, x24
	mov	w1, w23
	bl	_halo_linux_snprintf
	cbz	w27, LBB10_42
; %bb.34:
	ldr	s0, [x27]
LBB10_35:
	fcvt	d0, s0
Lloh69:
	adrp	x2, l_.str.10@PAGE
Lloh70:
	add	x2, x2, l_.str.10@PAGEOFF
	mov	x0, x20
	mov	w1, w19
	str	d0, [sp]
	b	LBB10_41
LBB10_36:
Lloh71:
	adrp	x2, l_.str.13@PAGE
Lloh72:
	add	x2, x2, l_.str.13@PAGEOFF
	mov	x0, x24
	mov	w1, w23
	bl	_halo_linux_snprintf
	cbz	w27, LBB10_42
; %bb.37:
	ldrb	w8, [x27, #24]
Lloh73:
	adrp	x9, _s_snap_dir_names@PAGE
Lloh74:
	add	x9, x9, _s_snap_dir_names@PAGEOFF
	cmp	w8, #6
LBB10_38:
	csel	w8, w8, wzr, lo
LBB10_39:
	ldr	w8, [x9, w8, uxtw #2]
Lloh75:
	adrp	x2, l_.str.1@PAGE
Lloh76:
	add	x2, x2, l_.str.1@PAGEOFF
	mov	x0, x20
	mov	w1, w19
LBB10_40:
	str	w8, [sp]
LBB10_41:
	bl	_halo_linux_snprintf
LBB10_42:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB10_43:
Lloh77:
	adrp	x2, l_.str.15@PAGE
Lloh78:
	add	x2, x2, l_.str.15@PAGEOFF
LBB10_44:
	mov	x0, x24
	mov	w1, w23
LBB10_45:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	b	_halo_linux_snprintf
LBB10_46:
Lloh79:
	adrp	x2, l_.str.7@PAGE
Lloh80:
	add	x2, x2, l_.str.7@PAGEOFF
	mov	x0, x20
	mov	w1, w19
	b	LBB10_45
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpLdr	Lloh57, Lloh60
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh79, Lloh80
                                        ; -- End function
	.globl	_forge_snap_editor_step         ; -- Begin function forge_snap_editor_step
	.p2align	4
_forge_snap_editor_step:                ; @forge_snap_editor_step
; %bb.0:
	stp	x26, x25, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
Lloh81:
	adrp	x20, _s_snap_editor@PAGE
Lloh82:
	add	x20, x20, _s_snap_editor@PAGEOFF
	mov	w19, w1
	mov	x1, x20
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	mov	w23, w0
	mov	w2, #1                          ; =0x1
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	ldr	w8, [x1], #4
	mov	w0, w8
	bl	_forge_snap_points_get_for_tag
	mov	x25, x0
	cbz	w25, LBB11_18
; %bb.1:
	adrp	x26, _s_snap_editor@PAGE+260
	ldr	w8, [x25, #260]
	ldr	w9, [x26, _s_snap_editor@PAGEOFF+260]
	cmp	w9, w8
	b.lt	LBB11_3
; %bb.2:
	cmp	w8, #1
	csinc	w8, w8, wzr, gt
	sub	w8, w8, #1
	str	w8, [x26, _s_snap_editor@PAGEOFF+260]
LBB11_3:
	mov	x1, x20
	mov	w2, wzr
	ldr	w0, [x1], #4
	bl	_forge_snap_points_get_for_tag
	cbz	w0, LBB11_8
; %bb.4:
	ldr	w8, [x26, _s_snap_editor@PAGEOFF+260]
	ldr	w9, [x0, #260]
	cmp	w8, w9
	b.lt	LBB11_6
; %bb.5:
	cmp	w9, #1
	csinc	w8, w9, wzr, gt
	sub	w8, w8, #1
	str	w8, [x26, _s_snap_editor@PAGEOFF+260]
	ldr	w9, [x0, #260]
LBB11_6:
	cmp	w9, #1
	b.lt	LBB11_8
; %bb.7:
	mov	w9, #28                         ; =0x1c
	smaddl	x8, w8, w9, x0
	add	x24, x8, #264
	bl	_orig_network_chat_typing
	cbnz	w0, LBB11_11
	b	LBB11_9
LBB11_8:
	mov	x24, xzr
	bl	_orig_network_chat_typing
	cbnz	w0, LBB11_11
LBB11_9:
	bl	_social_chat_typing
	cbnz	w0, LBB11_11
; %bb.10:
Lloh83:
	adrp	x8, _s_forge_keys_down@PAGE+225
Lloh84:
	add	x8, x8, _s_forge_keys_down@PAGEOFF+225
	ldrb	w9, [x8]
	ldrb	w8, [x8, #4]
	orr	w8, w9, w8
	cbnz	w8, LBB11_42
LBB11_11:
	mov	w8, #55050                      ; =0xd70a
	movk	w8, #15779, lsl #16
LBB11_12:
	fmov	s0, w8
	mov	w0, wzr
	cmp	w23, #3
	b.le	LBB11_24
; %bb.13:
	sub	w8, w23, #4
	cmp	w8, #3
	b.hs	LBB11_30
; %bb.14:
	cbz	w24, LBB11_23
; %bb.15:
	scvtf	s1, w19
	cmp	w23, #5
	fmul	s0, s0, s1
	b.eq	LBB11_37
; %bb.16:
	cmp	w23, #4
	b.ne	LBB11_38
; %bb.17:
	ldr	s1, [x24]
	fadd	s0, s0, s1
	str	s0, [x24]
	b	LBB11_39
LBB11_18:
	ldr	w0, [x20], #4
	mov	x1, x20
	mov	w2, wzr
	bl	_forge_snap_points_get_for_tag
	cbz	w0, LBB11_21
; %bb.19:
	adrp	x8, _s_snap_editor@PAGE+260
	ldr	w9, [x0, #260]
	ldr	w10, [x8, _s_snap_editor@PAGEOFF+260]
	cmp	w10, w9
	b.lt	LBB11_21
; %bb.20:
	cmp	w9, #1
	csinc	w9, w9, wzr, gt
	sub	w9, w9, #1
	str	w9, [x8, _s_snap_editor@PAGEOFF+260]
LBB11_21:
	bl	_orig_network_chat_typing
	cbnz	w0, LBB11_23
; %bb.22:
	bl	_social_chat_typing
LBB11_23:
	mov	w0, wzr
	b	LBB11_41
LBB11_24:
	cbz	w23, LBB11_33
; %bb.25:
	cmp	w23, #2
	b.eq	LBB11_35
; %bb.26:
	cmp	w23, #3
	b.ne	LBB11_41
; %bb.27:
	mov	w0, wzr
	cbz	w24, LBB11_41
; %bb.28:
Lloh85:
	adrp	x8, _s_snap_editor@PAGE+268
Lloh86:
	ldr	w8, [x8, _s_snap_editor@PAGEOFF+268]
	cbz	w8, LBB11_41
; %bb.29:
	ldrb	w8, [x24, #25]
	mov	w9, #10                         ; =0xa
	mov	x0, x24
	mov	w2, #-1                         ; =0xffffffff
	add	w8, w8, w19
	cmp	w8, #1
	csel	w8, w9, w8, lt
	cmp	w8, #10
	csinc	w1, w8, wzr, le
	bl	_forge_snap_points_apply_preset_to_point
	b	LBB11_40
LBB11_30:
	cmp	w23, #7
	b.ne	LBB11_41
; %bb.31:
	cbz	w24, LBB11_23
; %bb.32:
	ldrb	w8, [x24, #24]
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #10922, lsl #16
	mov	x0, x24
	add	w8, w19, w8
	add	w8, w8, #6
	smull	x9, w8, w9
	lsr	x10, x9, #32
	add	x9, x10, x9, lsr #63
	mov	w10, #6                         ; =0x6
	msub	w1, w9, w10, w8
	bl	_forge_snap_points_fill_normal_from_dir
	b	LBB11_40
LBB11_33:
Lloh87:
	adrp	x8, _s_snap_editor@PAGE+268
Lloh88:
	ldr	w8, [x8, _s_snap_editor@PAGEOFF+268]
	cbz	w8, LBB11_23
; %bb.34:
	ldr	w8, [x20, #264]
	add	x1, x20, #4
	ldr	w0, [x20]
	add	w8, w19, w8
	add	w8, w8, #4
	negs	w9, w8
	and	w8, w8, #0x3
	and	w9, w9, #0x3
	csneg	w2, w8, w9, mi
	str	w2, [x20, #264]
	bl	_forge_snap_points_auto_generate
	mov	w0, #1                          ; =0x1
	str	wzr, [x20, #260]
	b	LBB11_41
LBB11_35:
	ldr	w8, [x25, #260]
	cmp	w8, #1
	b.lt	LBB11_23
; %bb.36:
	ldr	w9, [x26, _s_snap_editor@PAGEOFF+260]
	add	w10, w8, w19
	mov	w0, #1                          ; =0x1
	add	w9, w10, w9
	sdiv	w10, w9, w8
	msub	w8, w10, w8, w9
	str	w8, [x26, _s_snap_editor@PAGEOFF+260]
	b	LBB11_41
LBB11_37:
	ldr	s1, [x24, #4]
	fadd	s0, s0, s1
	str	s0, [x24, #4]
	b	LBB11_39
LBB11_38:
	ldr	s1, [x24, #8]
	fadd	s0, s0, s1
	str	s0, [x24, #8]
LBB11_39:
	strb	wzr, [x24, #25]
LBB11_40:
	bl	_forge_snap_points_save_all
	mov	w0, #1                          ; =0x1
LBB11_41:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
	ret
LBB11_42:
	mov	w8, #55050                      ; =0xd70a
	movk	w8, #15523, lsl #16
	b	LBB11_12
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpLdr	Lloh85, Lloh86
	.loh AdrpLdr	Lloh87, Lloh88
                                        ; -- End function
	.globl	_forge_key_state                ; -- Begin function forge_key_state
	.p2align	4
_forge_key_state:                       ; @forge_key_state
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	mov	w19, w0
	bl	_orig_network_chat_typing
	cbnz	w0, LBB12_2
; %bb.1:
	bl	_social_chat_typing
	cbz	w0, LBB12_4
LBB12_2:
	mov	w9, wzr
LBB12_3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	sxth	w0, w9
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB12_4:
	cmp	w19, #1
	b.eq	LBB12_8
; %bb.5:
	cmp	w19, #4
	b.eq	LBB12_7
; %bb.6:
	cmp	w19, #2
	b.ne	LBB12_9
LBB12_7:
	cmp	w19, #2
	mov	w8, #2                          ; =0x2
	cinc	w19, w8, eq
LBB12_8:
Lloh89:
	adrp	x8, _s_forge_mouse_down@PAGE
Lloh90:
	add	x8, x8, _s_forge_mouse_down@PAGEOFF
	ldrb	w8, [x8, w19, sxtw]
	b	LBB12_20
LBB12_9:
	sub	w8, w19, #65
	cmp	w8, #25
	b.hi	LBB12_11
; %bb.10:
	sub	w8, w19, #61
	b	LBB12_19
LBB12_11:
	sub	w8, w19, #49
	cmp	w8, #8
	b.hi	LBB12_13
; %bb.12:
	sub	w8, w19, #19
	b	LBB12_19
LBB12_13:
	cmp	w19, #48
	b.ne	LBB12_15
; %bb.14:
	mov	w8, #39                         ; =0x27
	b	LBB12_19
LBB12_15:
	sub	w8, w19, #112
	cmp	w8, #11
	b.hi	LBB12_17
; %bb.16:
	sub	w8, w19, #54
	b	LBB12_19
LBB12_17:
	sub	w8, w19, #97
	cmp	w8, #8
	b.hi	LBB12_21
; %bb.18:
	sub	w8, w19, #8
LBB12_19:
Lloh91:
	adrp	x9, _s_forge_keys_down@PAGE
Lloh92:
	add	x9, x9, _s_forge_keys_down@PAGEOFF
	ldrb	w8, [x9, w8, sxtw]
LBB12_20:
	cmp	w8, #0
	mov	w8, #-32768                     ; =0xffff8000
	csel	w9, wzr, w8, eq
	b	LBB12_3
LBB12_21:
	mov	w9, wzr
	sub	w12, w19, #8
	cmp	w12, #214
	b.hi	LBB12_3
; %bb.22:
Lloh93:
	adrp	x13, LJTI12_0@PAGE
Lloh94:
	add	x13, x13, LJTI12_0@PAGEOFF
	mov	w11, #225                       ; =0xe1
	mov	w10, #229                       ; =0xe5
	mov	w8, #98                         ; =0x62
Ltmp1:
	adr	x14, Ltmp1
	ldrsw	x15, [x13, x12, lsl #2]
	add	x14, x14, x15
	br	x14
LBB12_23:
	mov	w8, #42                         ; =0x2a
	b	LBB12_19
LBB12_24:
	mov	w8, #54                         ; =0x36
	b	LBB12_19
LBB12_25:
	mov	w8, #48                         ; =0x30
	b	LBB12_19
LBB12_26:
	mov	w8, #49                         ; =0x31
	b	LBB12_19
LBB12_27:
	mov	w8, #53                         ; =0x35
	b	LBB12_19
LBB12_28:
	mov	w8, #224                        ; =0xe0
	b	LBB12_19
LBB12_29:
	mov	w8, #76                         ; =0x4c
	b	LBB12_19
LBB12_30:
	mov	w8, #75                         ; =0x4b
	b	LBB12_19
LBB12_31:
	mov	w8, #45                         ; =0x2d
	b	LBB12_19
LBB12_32:
	mov	w8, #86                         ; =0x56
	b	LBB12_19
LBB12_33:
	mov	w8, #80                         ; =0x50
	b	LBB12_19
LBB12_34:
	mov	w8, #229                        ; =0xe5
	b	LBB12_19
LBB12_35:
	mov	w8, #84                         ; =0x54
	b	LBB12_19
LBB12_36:
	mov	w8, #41                         ; =0x29
	b	LBB12_19
LBB12_37:
	mov	w8, #52                         ; =0x34
	b	LBB12_19
LBB12_38:
	mov	w8, #78                         ; =0x4e
	b	LBB12_19
LBB12_39:
	mov	w8, #226                        ; =0xe2
	b	LBB12_19
LBB12_40:
	mov	w8, #44                         ; =0x2c
	b	LBB12_19
LBB12_41:
	mov	w11, #224                       ; =0xe0
	mov	w10, #228                       ; =0xe4
	b	LBB12_43
LBB12_42:
	mov	w11, #226                       ; =0xe2
	mov	w10, #230                       ; =0xe6
LBB12_43:
Lloh95:
	adrp	x8, _s_forge_keys_down@PAGE
Lloh96:
	add	x8, x8, _s_forge_keys_down@PAGEOFF
	ldrb	w12, [x8, w11, uxtw]
	mov	w11, #-32768                    ; =0xffff8000
	cmp	w12, #0
	csel	w9, wzr, w11, eq
	cbnz	w12, LBB12_3
; %bb.44:
	ldrb	w8, [x8, w10, uxtw]
	cmp	w8, #0
	csel	w9, wzr, w11, eq
	b	LBB12_3
LBB12_45:
	mov	w8, #230                        ; =0xe6
	b	LBB12_19
LBB12_46:
	mov	w8, #46                         ; =0x2e
	b	LBB12_19
LBB12_47:
	mov	w8, #99                         ; =0x63
	b	LBB12_19
LBB12_48:
	mov	w8, #74                         ; =0x4a
	b	LBB12_19
LBB12_49:
	mov	w8, #85                         ; =0x55
	b	LBB12_19
LBB12_50:
	mov	w8, #77                         ; =0x4d
	b	LBB12_19
LBB12_51:
	mov	w8, #43                         ; =0x2b
	b	LBB12_19
LBB12_52:
	mov	w8, #225                        ; =0xe1
	b	LBB12_19
LBB12_53:
	mov	w8, #47                         ; =0x2f
	b	LBB12_19
LBB12_54:
	mov	w8, #51                         ; =0x33
	b	LBB12_19
LBB12_55:
	mov	w8, #40                         ; =0x28
	b	LBB12_19
LBB12_56:
	mov	w8, #82                         ; =0x52
	b	LBB12_19
LBB12_57:
	mov	w8, #79                         ; =0x4f
	b	LBB12_19
LBB12_58:
	mov	w8, #55                         ; =0x37
	b	LBB12_19
LBB12_59:
	mov	w8, #73                         ; =0x49
	b	LBB12_19
LBB12_60:
	mov	w8, #81                         ; =0x51
	b	LBB12_19
LBB12_61:
	mov	w8, #87                         ; =0x57
	b	LBB12_19
LBB12_62:
	mov	w8, #228                        ; =0xe4
	b	LBB12_19
LBB12_63:
	mov	w8, #56                         ; =0x38
	b	LBB12_19
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh95, Lloh96
	.section	__TEXT,__const
	.p2align	2, 0x0
LJTI12_0:
	.long	LBB12_23-Ltmp1
	.long	LBB12_51-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_55-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_43-Ltmp1
	.long	LBB12_41-Ltmp1
	.long	LBB12_42-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_36-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_40-Ltmp1
	.long	LBB12_30-Ltmp1
	.long	LBB12_38-Ltmp1
	.long	LBB12_50-Ltmp1
	.long	LBB12_48-Ltmp1
	.long	LBB12_33-Ltmp1
	.long	LBB12_56-Ltmp1
	.long	LBB12_57-Ltmp1
	.long	LBB12_60-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_59-Ltmp1
	.long	LBB12_29-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_19-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_49-Ltmp1
	.long	LBB12_61-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_32-Ltmp1
	.long	LBB12_47-Ltmp1
	.long	LBB12_35-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_52-Ltmp1
	.long	LBB12_34-Ltmp1
	.long	LBB12_28-Ltmp1
	.long	LBB12_62-Ltmp1
	.long	LBB12_39-Ltmp1
	.long	LBB12_45-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_54-Ltmp1
	.long	LBB12_46-Ltmp1
	.long	LBB12_24-Ltmp1
	.long	LBB12_31-Ltmp1
	.long	LBB12_58-Ltmp1
	.long	LBB12_63-Ltmp1
	.long	LBB12_27-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_3-Ltmp1
	.long	LBB12_53-Ltmp1
	.long	LBB12_26-Ltmp1
	.long	LBB12_25-Ltmp1
	.long	LBB12_37-Ltmp1
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_forge_snap_editor_activate     ; -- Begin function forge_snap_editor_activate
	.p2align	4
_forge_snap_editor_activate:            ; @forge_snap_editor_activate
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
Lloh97:
	adrp	x19, _s_snap_editor@PAGE
Lloh98:
	add	x19, x19, _s_snap_editor@PAGEOFF
	mov	w20, w0
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	ldr	w8, [x1], #4
	mov	w0, w8
	bl	_forge_snap_points_get_for_tag
	cbz	w0, LBB13_25
; %bb.1:
	adrp	x23, _s_snap_editor@PAGE+260
	ldr	w9, [x0, #260]
	ldr	w8, [x23, _s_snap_editor@PAGEOFF+260]
	cmp	w8, w9
	b.lt	LBB13_3
; %bb.2:
	cmp	w9, #1
	csinc	w8, w9, wzr, gt
	sub	w8, w8, #1
	str	w8, [x23, _s_snap_editor@PAGEOFF+260]
LBB13_3:
	cmp	w20, #7
	b.gt	LBB13_9
; %bb.4:
	cbz	w20, LBB13_14
; %bb.5:
	cmp	w20, #1
	b.ne	LBB13_13
; %bb.6:
Lloh99:
	adrp	x8, _s_snap_editor@PAGE+268
Lloh100:
	ldr	w9, [x8, _s_snap_editor@PAGEOFF+268]
	mov	w8, wzr
	cbz	w9, LBB13_26
; %bb.7:
	ldr	w19, [x0, #260]
	cmp	w19, #15
	b.gt	LBB13_26
; %bb.8:
	mov	w8, #43691                      ; =0xaaab
	mov	w9, #28                         ; =0x1c
	movk	w8, #10922, lsl #16
	add	w11, w19, #1
	smaddl	x9, w19, w9, x0
	mov	w2, #-1                         ; =0xffffffff
	smull	x8, w19, w8
	str	w11, [x0, #260]
	add	x0, x9, #264
	lsr	x10, x8, #32
	add	x8, x10, x8, lsr #63
	mov	w10, #6                         ; =0x6
	msub	w8, w8, w10, w19
	add	w1, w8, #1
	bl	_forge_snap_points_apply_preset_to_point
	b	LBB13_23
LBB13_9:
	cmp	w20, #8
	b.eq	LBB13_16
; %bb.10:
	cmp	w20, #9
	b.ne	LBB13_13
; %bb.11:
	ldr	w8, [x0, #260]
	cmp	w8, #1
	b.lt	LBB13_25
; %bb.12:
	mov	w19, wzr
	str	wzr, [x0, #260]
	b	LBB13_23
LBB13_13:
	mov	w0, w20
	mov	w1, #1                          ; =0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	b	_forge_snap_editor_step
LBB13_14:
Lloh101:
	adrp	x8, _s_snap_editor@PAGE+268
Lloh102:
	ldr	w8, [x8, _s_snap_editor@PAGEOFF+268]
	cbz	w8, LBB13_26
; %bb.15:
	ldr	w0, [x19]
	add	x1, x19, #4
	ldr	w2, [x19, #264]
	bl	_forge_snap_points_auto_generate
	mov	w8, #1                          ; =0x1
	str	wzr, [x19, #260]
	b	LBB13_26
LBB13_16:
	ldr	w10, [x0, #260]
	cmp	w10, #1
	b.lt	LBB13_25
; %bb.17:
	add	w9, w8, #1
	cmp	w9, w10
	b.ge	LBB13_20
; %bb.18:
	mov	w10, #28                        ; =0x1c
	madd	w8, w8, w10, w0
	add	w8, w8, #264
	.p2align	4, , 8
LBB13_19:                               ; =>This Inner Loop Header: Depth=1
	add	w11, w8, #28
	add	w9, w9, #1
	ldr	q0, [x11]
	ldur	q1, [x11, #12]
	str	q0, [x8]
	stur	q1, [x8, #12]
	mov	x8, x11
	ldr	w10, [x0, #260]
	cmp	w9, w10
	b.lt	LBB13_19
LBB13_20:
	ldr	w8, [x19], #4
	sub	w9, w10, #1
	mov	x1, x19
	mov	w2, wzr
	str	w9, [x0, #260]
	mov	w0, w8
	bl	_forge_snap_points_get_for_tag
	cbz	w0, LBB13_24
; %bb.21:
	ldr	w9, [x23, _s_snap_editor@PAGEOFF+260]
	ldr	w8, [x0, #260]
	cmp	w9, w8
	b.lt	LBB13_24
; %bb.22:
	cmp	w8, #1
	csinc	w8, w8, wzr, gt
	sub	w19, w8, #1
LBB13_23:
	str	w19, [x23, _s_snap_editor@PAGEOFF+260]
LBB13_24:
	bl	_forge_snap_points_save_all
	mov	w8, #1                          ; =0x1
	b	LBB13_26
LBB13_25:
	mov	w8, wzr
LBB13_26:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	mov	w0, w8
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpLdr	Lloh99, Lloh100
	.loh AdrpLdr	Lloh101, Lloh102
                                        ; -- End function
	.globl	_forge_snap_editor_points       ; -- Begin function forge_snap_editor_points
	.p2align	4
_forge_snap_editor_points:              ; @forge_snap_editor_points
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
Lloh103:
	adrp	x24, _s_snap_editor@PAGE
Lloh104:
	add	x24, x24, _s_snap_editor@PAGEOFF
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	mov	x23, x2
	mov	w19, w1
	mov	x20, x0
	ldr	w8, [x24]
	add	x1, x24, #4
	mov	w2, wzr
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	mov	w0, w8
	bl	_forge_snap_points_get_for_tag
	ldr	w9, [x24, #260]
	cbz	w0, LBB14_7
; %bb.1:
	ldr	w8, [x0, #260]
	cmp	w9, w8
	b.lt	LBB14_3
; %bb.2:
	cmp	w8, #1
	csinc	w8, w8, wzr, gt
	sub	w9, w8, #1
	adrp	x8, _s_snap_editor@PAGE+260
	str	w9, [x8, _s_snap_editor@PAGEOFF+260]
LBB14_3:
	strh	w9, [x23]
	ldr	w8, [x0, #260]
	cmp	w8, #1
	mov	w8, wzr
	ccmp	w19, #1, #8, ge
	b.lt	LBB14_8
; %bb.4:
	add	w9, w0, #272
	add	w10, w20, #8
	.p2align	4, , 8
LBB14_5:                                ; =>This Inner Loop Header: Depth=1
	sub	w11, w9, #8
	sub	w12, w9, #4
	add	w8, w8, #1
	cmp	w8, w19
	ldr	s0, [x11]
	sub	w11, w10, #8
	str	s0, [x11]
	sub	w11, w10, #4
	ldr	s0, [x12]
	str	s0, [x11]
	ldr	s0, [x9]
	str	s0, [x10]
	b.ge	LBB14_8
; %bb.6:                                ;   in Loop: Header=BB14_5 Depth=1
	ldr	w11, [x0, #260]
	add	w9, w9, #28
	add	w10, w10, #12
	cmp	w11, w8
	b.gt	LBB14_5
	b	LBB14_8
LBB14_7:
	mov	w8, wzr
	strh	w9, [x23]
LBB14_8:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	sxth	w0, w8
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh103, Lloh104
                                        ; -- End function
	.globl	_forge_snap_tag_layout_step     ; -- Begin function forge_snap_tag_layout_step
	.p2align	4
_forge_snap_tag_layout_step:            ; @forge_snap_tag_layout_step
; %bb.0:
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	mov	w20, w0
Lloh105:
	adrp	x0, _s_snap_layout_tag@PAGE
Lloh106:
	add	x0, x0, _s_snap_layout_tag@PAGEOFF
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	mov	w23, w2
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	mov	x19, x1
	bl	__stricmp
	adrp	x24, _s_snap_layout@PAGE
	cbz	w0, LBB15_3
; %bb.1:
	mov	w0, w20
	mov	x1, x19
	bl	_forge_snap_points_read_stock_bounds
	cbz	w0, LBB15_9
; %bb.2:
Lloh107:
	adrp	x0, _s_snap_layout_tag@PAGE
Lloh108:
	add	x0, x0, _s_snap_layout_tag@PAGEOFF
Lloh109:
	adrp	x2, l_.str.1@PAGE
Lloh110:
	add	x2, x2, l_.str.1@PAGEOFF
	mov	w1, #256                        ; =0x100
	str	w19, [sp]
	bl	_halo_linux_snprintf
	mov	w8, #-1                         ; =0xffffffff
	b	LBB15_4
LBB15_3:
	ldr	w8, [x24, _s_snap_layout@PAGEOFF]
LBB15_4:
	add	w8, w23, w8
	mov	w9, #26215                      ; =0x6667
	add	w8, w8, #6
	movk	w9, #26214, lsl #16
	mov	w0, w20
	mov	x1, x19
	smull	x9, w8, w9
	asr	x10, x9, #33
	add	x9, x10, x9, lsr #63
	add	w9, w9, w9, lsl #2
	sub	w8, w8, w9
	subs	w2, w8, #1
	str	w2, [x24, _s_snap_layout@PAGEOFF]
	b.lt	LBB15_6
; %bb.5:
	bl	_forge_snap_points_auto_generate
	b	LBB15_8
LBB15_6:
	mov	w2, wzr
	bl	_forge_snap_points_get_for_tag
	cbz	w0, LBB15_8
; %bb.7:
	str	wzr, [x0, #260]
	bl	_forge_snap_points_save_all
LBB15_8:
	mov	w0, #1                          ; =0x1
LBB15_9:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpAdd	Lloh107, Lloh108
                                        ; -- End function
	.globl	_forge_snap_tag_layout_text     ; -- Begin function forge_snap_tag_layout_text
	.p2align	4
_forge_snap_tag_layout_text:            ; @forge_snap_tag_layout_text
; %bb.0:
	sub	sp, sp, #80
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	mov	x24, x1
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	w19, w3
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	mov	x20, x2
	bl	_forge_snap_points_count_for_tag
	cmp	w0, #0
	b.le	LBB16_4
; %bb.1:
	adrp	x25, _s_snap_layout@PAGE
	mov	w23, w0
	ldr	w8, [x25, _s_snap_layout@PAGEOFF]
	tbnz	w8, #31, LBB16_3
; %bb.2:
Lloh111:
	adrp	x0, _s_snap_layout_tag@PAGE
Lloh112:
	add	x0, x0, _s_snap_layout_tag@PAGEOFF
	mov	x1, x24
	bl	__stricmp
	cbz	w0, LBB16_5
LBB16_3:
Lloh113:
	adrp	x2, l_.str.16@PAGE
Lloh114:
	add	x2, x2, l_.str.16@PAGEOFF
	mov	x0, x20
	mov	w1, w19
	str	w23, [sp]
	b	LBB16_6
LBB16_4:
	mov	x0, x20
	mov	w1, w19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
Lloh115:
	adrp	x2, l_.str.7@PAGE
Lloh116:
	add	x2, x2, l_.str.7@PAGEOFF
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	b	_halo_linux_snprintf
LBB16_5:
	ldrsw	x8, [x25, _s_snap_layout@PAGEOFF]
Lloh117:
	adrp	x9, _s_snap_autogen_names@PAGE
Lloh118:
	add	x9, x9, _s_snap_autogen_names@PAGEOFF
Lloh119:
	adrp	x2, l_.str.1@PAGE
Lloh120:
	add	x2, x2, l_.str.1@PAGEOFF
	mov	x0, x20
	mov	w1, w19
	ldr	w8, [x9, x8, lsl #2]
	str	w8, [sp]
LBB16_6:
	bl	_halo_linux_snprintf
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh117, Lloh118
                                        ; -- End function
	.globl	_forge_player_profile_get       ; -- Begin function forge_player_profile_get
	.p2align	4
_forge_player_profile_get:              ; @forge_player_profile_get
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	mov	x19, x1
	bl	_player_profile_get
	cbz	w19, LBB17_4
; %bb.1:
	cbz	w0, LBB17_4
; %bb.2:
Lloh121:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh122:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh123:
	ldr	w8, [x8]
	cbz	w8, LBB17_4
; %bb.3:
	movi	v0.8b, #1
	ldur	d1, [x19, #28]
	ldrb	w8, [x19, #36]
	ldrb	w9, [x19, #37]
	orr	w8, w8, #0x1
	orr	v0.8b, v1.8b, v0.8b
	orr	w9, w9, #0x1
	strb	w8, [x19, #36]
	strb	w9, [x19, #37]
	stur	d0, [x19, #28]
LBB17_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh121, Lloh122, Lloh123
                                        ; -- End function
	.globl	_pc_menu_event_function_invoke  ; -- Begin function pc_menu_event_function_invoke
	.p2align	4
_pc_menu_event_function_invoke:         ; @pc_menu_event_function_invoke
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #480
	mov	x20, x0
	mov	w0, w2
	mov	x19, x3
	mov	w23, w2
	mov	x26, x1
	bl	_pc_menu_function_name
	mov	x25, x0
Lloh124:
	adrp	x27, l_.str.2@PAGE
Lloh125:
	add	x27, x27, l_.str.2@PAGEOFF
	cbz	w20, LBB18_4
; %bb.1:
	ldr	w9, [x20, #4]
	ldr	w8, [x20, #48]
	cmp	w9, #0
	csel	x24, x27, x9, eq
	cbz	w8, LBB18_3
; %bb.2:
	ldr	w8, [x8, #4]
	cmp	w8, #0
	csel	x27, x27, x8, eq
LBB18_3:
	cbnz	w25, LBB18_5
	b	LBB18_8
LBB18_4:
	mov	x24, x27
	cbz	w25, LBB18_8
LBB18_5:
Lloh126:
	adrp	x1, l_.str.17@PAGE
Lloh127:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_11
; %bb.6:
Lloh128:
	adrp	x1, l_.str.18@PAGE
Lloh129:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbnz	w0, LBB18_8
; %bb.7:
Lloh130:
	adrp	x1, l_.str.19@PAGE
Lloh131:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	x0, x24
	bl	_csstrcmp
	cbz	w0, LBB18_11
LBB18_8:
	bl	_firefight_active
	cbnz	w0, LBB18_10
; %bb.9:
	bl	_multiplayer_firefight_mode
	cbz	w0, LBB18_55
LBB18_10:
Lloh132:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh133:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh134:
	str	wzr, [x8]
	cbnz	w25, LBB18_12
	b	LBB18_32
LBB18_11:
Lloh135:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	mov	w9, #1                          ; =0x1
Lloh136:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh137:
	str	w9, [x8]
	bl	_forge_runtime_init
LBB18_12:
Lloh138:
	adrp	x1, l_.str.32@PAGE
Lloh139:
	add	x1, x1, l_.str.32@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbnz	w0, LBB18_14
; %bb.13:
Lloh140:
	adrp	x1, l_.str.33@PAGE
Lloh141:
	add	x1, x1, l_.str.33@PAGEOFF
	mov	x0, x24
	bl	_csstrcmp
	cbz	w0, LBB18_54
LBB18_14:
Lloh142:
	adrp	x1, l_.str.32@PAGE
Lloh143:
	add	x1, x1, l_.str.32@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbnz	w0, LBB18_16
; %bb.15:
Lloh144:
	adrp	x1, l_.str.35@PAGE
Lloh145:
	add	x1, x1, l_.str.35@PAGEOFF
	mov	x0, x24
	bl	_csstrcmp
	cbz	w0, LBB18_75
LBB18_16:
Lloh146:
	adrp	x1, l_.str.36@PAGE
Lloh147:
	add	x1, x1, l_.str.36@PAGEOFF
	mov	x0, x25
	str	x19, [sp, #8]                   ; 8-byte Spill
	bl	_csstrcmp
	cbnz	w0, LBB18_29
; %bb.17:
	cbz	w20, LBB18_29
; %bb.18:
	mov	x19, x20
Lloh148:
	adrp	x27, l_.str.33@PAGE
Lloh149:
	add	x27, x27, l_.str.33@PAGEOFF
Lloh150:
	adrp	x28, l_.str.35@PAGE
Lloh151:
	add	x28, x28, l_.str.35@PAGEOFF
	b	LBB18_20
	.p2align	4, , 8
LBB18_19:                               ;   in Loop: Header=BB18_20 Depth=1
	ldr	w19, [x19, #48]
	cbz	w19, LBB18_29
LBB18_20:                               ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x19, #4]
	cbz	w0, LBB18_19
; %bb.21:                               ;   in Loop: Header=BB18_20 Depth=1
	mov	x1, x27
	bl	_csstrcmp
	cbz	w0, LBB18_81
; %bb.22:                               ;   in Loop: Header=BB18_20 Depth=1
	ldr	w0, [x19, #4]
	mov	x1, x28
	bl	_csstrcmp
	cbnz	w0, LBB18_19
; %bb.23:
	adrp	x19, _s_forge_profile_screen_storage@PAGE
	ldr	w0, [x19, _s_forge_profile_screen_storage@PAGEOFF]
	cbnz	w0, LBB18_25
; %bb.24:
	mov	w0, #1                          ; =0x1
	mov	w1, #4436                       ; =0x1154
	mov	w23, #4436                      ; =0x1154
	bl	_calloc
	str	w0, [x19, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w0, LBB18_106
LBB18_25:
	ldr	w8, [x0, #8]
	tbnz	w8, #31, LBB18_83
; %bb.26:
	ldr	w9, [x0]
	cmp	w8, w9
	b.ge	LBB18_83
; %bb.27:
	add	x8, x0, w8, sxtw #2
	ldr	w23, [x8, #16]
	cmn	w23, #1
	b.eq	LBB18_94
; %bb.28:
	mov	w0, w23
	bl	_port_tag_profiles_folder
	b	LBB18_95
LBB18_29:
Lloh152:
	adrp	x1, l_.str.38@PAGE
Lloh153:
	add	x1, x1, l_.str.38@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_50
; %bb.30:
Lloh154:
	adrp	x1, l_.str.39@PAGE
Lloh155:
	add	x1, x1, l_.str.39@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	ldr	x19, [sp, #8]                   ; 8-byte Reload
	cbz	w0, LBB18_70
; %bb.31:
Lloh156:
	adrp	x1, l_.str.41@PAGE
Lloh157:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_85
LBB18_32:
	mov	w8, #30327                      ; =0x7677
	cmp	w23, w8
	b.eq	LBB18_47
; %bb.33:
	mov	w8, #30481                      ; =0x7711
	cmp	w23, w8
	b.eq	LBB18_47
; %bb.34:
	mov	w8, #30583                      ; =0x7777
	cmp	w23, w8
	b.eq	LBB18_47
; %bb.35:
	cbz	w20, LBB18_38
; %bb.36:
Lloh158:
	adrp	x8, _s_save_forge_btn_tag@PAGE
	ldr	w9, [x20]
Lloh159:
	ldr	w8, [x8, _s_save_forge_btn_tag@PAGEOFF]
	cmp	w9, w8
	b.ne	LBB18_38
; %bb.37:
	cmn	w8, #1
	b.ne	LBB18_47
LBB18_38:
Lloh160:
	adrp	x1, l_.str.43@PAGE
Lloh161:
	add	x1, x1, l_.str.43@PAGEOFF
	mov	x0, x24
	bl	_csstrcmp
	cbz	w0, LBB18_47
; %bb.39:
	cbz	w25, LBB18_46
; %bb.40:
Lloh162:
	adrp	x1, l_.str.44@PAGE
Lloh163:
	add	x1, x1, l_.str.44@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_45
; %bb.41:
Lloh164:
	adrp	x1, l_.str.45@PAGE
Lloh165:
	add	x1, x1, l_.str.45@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_45
; %bb.42:
Lloh166:
	adrp	x1, l_.str.46@PAGE
Lloh167:
	add	x1, x1, l_.str.46@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_45
; %bb.43:
Lloh168:
	adrp	x1, l_.str.47@PAGE
Lloh169:
	add	x1, x1, l_.str.47@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_45
; %bb.44:
Lloh170:
	adrp	x1, l_.str.48@PAGE
Lloh171:
	add	x1, x1, l_.str.48@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbnz	w0, LBB18_46
LBB18_45:
	mov	x0, x20
	mov	x1, x26
	mov	x2, x25
	mov	w3, w23
	mov	x4, x19
	bl	_forge_controls_menu_event
	cbnz	w0, LBB18_80
LBB18_46:
	mov	x0, x20
	mov	x1, x26
	mov	w2, w23
	mov	x3, x19
	b	LBB18_53
LBB18_47:
	bl	_ui_widgets_close_all
	cbz	w19, LBB18_49
; %bb.48:
	mov	w8, #1                          ; =0x1
	strb	w8, [x19]
LBB18_49:
	mov	w0, #2                          ; =0x2
	bl	_ui_play_audio_feedback_sound
	bl	_forge_trigger_save_map_action
	mov	w0, #1                          ; =0x1
	b	LBB18_105
LBB18_50:
Lloh172:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh173:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
	ldr	x24, [sp, #8]                   ; 8-byte Reload
Lloh174:
	ldr	w8, [x8]
	cbz	w8, LBB18_52
; %bb.51:
	bl	_dispose_global_network_game_client
	bl	_dispose_global_network_game_server
	mov	w0, wzr
	bl	_network_game_accept_remote_connections
LBB18_52:
	mov	x0, x20
	mov	x1, x26
	mov	w2, w23
	mov	x3, x24
LBB18_53:
	add	sp, sp, #480
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	b	_orig_pc_menu_event_function_invoke
LBB18_54:
Lloh175:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	mov	w9, #1                          ; =0x1
Lloh176:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh177:
	str	w9, [x8]
	bl	_dispose_global_network_game_client
	bl	_dispose_global_network_game_server
	mov	w0, wzr
	bl	_network_game_accept_remote_connections
	bl	_custom_edition_maps_look_again
	mov	w0, wzr
	bl	_scan_forge_edit_maps
	str	wzr, [sp, #216]
	cbnz	w20, LBB18_78
	b	LBB18_80
LBB18_55:
Lloh178:
	adrp	x1, l_.str.20@PAGE
Lloh179:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	x0, x24
	mov	w2, #6                          ; =0x6
	bl	_csstrncmp
	cbz	w0, LBB18_84
; %bb.56:
Lloh180:
	adrp	x1, l_.str.20@PAGE
Lloh181:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	x0, x27
	mov	w2, #6                          ; =0x6
	bl	_csstrncmp
	cbz	w0, LBB18_84
; %bb.57:
	cbz	w25, LBB18_32
; %bb.58:
Lloh182:
	adrp	x1, l_.str.18@PAGE
Lloh183:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_92
LBB18_59:
Lloh184:
	adrp	x1, l_.str.21@PAGE
Lloh185:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.60:
Lloh186:
	adrp	x1, l_.str.22@PAGE
Lloh187:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.61:
Lloh188:
	adrp	x1, l_.str.23@PAGE
Lloh189:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.62:
Lloh190:
	adrp	x1, l_.str.24@PAGE
Lloh191:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.63:
Lloh192:
	adrp	x1, l_.str.25@PAGE
Lloh193:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.64:
Lloh194:
	adrp	x1, l_.str.26@PAGE
Lloh195:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.65:
Lloh196:
	adrp	x1, l_.str.27@PAGE
Lloh197:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.66:
Lloh198:
	adrp	x1, l_.str.28@PAGE
Lloh199:
	add	x1, x1, l_.str.28@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.67:
Lloh200:
	adrp	x1, l_.str.29@PAGE
Lloh201:
	add	x1, x1, l_.str.29@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.68:
Lloh202:
	adrp	x1, l_.str.30@PAGE
Lloh203:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB18_93
; %bb.69:
Lloh204:
	adrp	x1, l_.str.31@PAGE
Lloh205:
	add	x1, x1, l_.str.31@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbnz	w0, LBB18_12
	b	LBB18_93
LBB18_70:
	mov	x0, x20
	mov	x1, x26
	mov	w2, w23
	mov	x3, x19
	bl	_orig_pc_menu_event_function_invoke
Lloh206:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh207:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh208:
	ldr	w8, [x8]
	cbz	w8, LBB18_105
; %bb.71:
	cbz	w0, LBB18_105
; %bb.72:
	bl	_main_get_map_name
Lloh209:
	adrp	x3, l_.str.40@PAGE
Lloh210:
	add	x3, x3, l_.str.40@PAGEOFF
	cbz	w0, LBB18_74
; %bb.73:
	ldrb	w8, [x0]
	cmp	w8, #0
	csel	x3, x3, x0, eq
LBB18_74:
	mov	x0, x20
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	b	LBB18_103
LBB18_75:
	adrp	x19, _s_forge_profile_screen_storage@PAGE
	ldr	w0, [x19, _s_forge_profile_screen_storage@PAGEOFF]
	cbnz	w0, LBB18_77
; %bb.76:
	mov	w0, #1                          ; =0x1
	mov	w1, #4436                       ; =0x1154
	mov	w23, #4436                      ; =0x1154
	bl	_calloc
	str	w0, [x19, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w0, LBB18_106
LBB18_77:
	mov	w8, #-1                         ; =0xffffffff
	stp	wzr, wzr, [x0, #4]
	str	wzr, [sp, #216]
	str	w8, [x0, #12]
	cbz	w20, LBB18_80
LBB18_78:
Lloh211:
	adrp	x1, l_.str.34@PAGE
Lloh212:
	add	x1, x1, l_.str.34@PAGEOFF
	add	x2, sp, #216
	mov	x0, x20
	bl	_fw_descendant
	cbz	w0, LBB18_80
; %bb.79:
Lloh213:
	adrp	x1, l_.str.34@PAGE
Lloh214:
	add	x1, x1, l_.str.34@PAGEOFF
	add	x2, sp, #216
	mov	x0, x20
	str	wzr, [sp, #216]
	bl	_fw_descendant
	mov	x8, x0
	mov	w0, #1                          ; =0x1
	str	w8, [x20, #56]
	b	LBB18_105
LBB18_80:
	mov	w0, #1                          ; =0x1
	b	LBB18_105
LBB18_81:
Lloh215:
	adrp	x8, _s_forge_menu@PAGE+4
Lloh216:
	add	x8, x8, _s_forge_menu@PAGEOFF+4
	ldr	w9, [x8]
	ldr	w8, [x8, #8]
	cmp	w9, #0
	cset	w10, gt
	cmn	w8, #1
	ccmp	w8, w9, #0, gt
	cset	w9, lt
	tst	w10, w9
	b.eq	LBB18_83
; %bb.82:
Lloh217:
	adrp	x9, _g_forge_session_enabled@GOTPAGE
Lloh218:
	adrp	x10, _s_forge_menu@PAGE
Lloh219:
	add	x10, x10, _s_forge_menu@PAGEOFF
	mov	w11, #1                         ; =0x1
	add	w8, w10, w8, lsl #6
Lloh220:
	adrp	x2, l_.str.37@PAGE
Lloh221:
	add	x2, x2, l_.str.37@PAGEOFF
Lloh222:
	ldr	w9, [x9, _g_forge_session_enabled@GOTPAGEOFF]
	add	w8, w8, #16
	add	x0, sp, #216
	mov	w1, #128                        ; =0x80
Lloh223:
	str	w11, [x9]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	ldr	x1, [sp, #8]                    ; 8-byte Reload
	add	x3, sp, #216
	mov	x0, x20
	mov	w2, #1                          ; =0x1
	bl	_forge_start_ask
	b	LBB18_105
LBB18_83:
	mov	w0, #4                          ; =0x4
	bl	_ui_play_audio_feedback_sound
	b	LBB18_104
LBB18_84:
Lloh224:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	mov	w9, #1                          ; =0x1
Lloh225:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh226:
	str	w9, [x8]
	bl	_forge_runtime_init
	cbnz	w25, LBB18_12
	b	LBB18_32
LBB18_85:
	mov	x0, x20
	mov	x1, x26
	mov	w2, w23
	mov	x3, x19
	bl	_orig_pc_menu_event_function_invoke
Lloh227:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh228:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh229:
	ldr	w8, [x8]
	cbz	w8, LBB18_105
; %bb.86:
	cbz	w0, LBB18_105
; %bb.87:
	add	x0, sp, #216
	strh	wzr, [sp, #214]
	bl	_player_ui_game_variant_specified
	cbz	w0, LBB18_100
; %bb.88:
Lloh230:
	adrp	x1, l_.str.42@PAGE
Lloh231:
	add	x1, x1, l_.str.42@PAGEOFF
	add	x0, sp, #216
	bl	_msvc_wcsicmp
	cbz	w0, LBB18_100
; %bb.89:
	ldr	w8, [sp, #280]
	mov	w9, #1073741823                 ; =0x3fffffff
	cmp	w8, w9
	b.eq	LBB18_100
; %bb.90:
	add	x19, sp, #216
	bl	_player_ui_get_game_variant_options
	ldp	q0, q1, [x19, #64]
Lloh232:
	adrp	x8, _s_pre_forge_variant@PAGE+4
Lloh233:
	add	x8, x8, _s_pre_forge_variant@PAGEOFF+4
	ldr	x9, [x19, #96]
	ldp	q2, q3, [x19, #32]
	stp	q0, q1, [x8, #64]
	ldp	q0, q1, [x19]
	str	x9, [x8, #96]
	stp	q2, q3, [x8, #32]
	stp	q0, q1, [x8]
	cbz	w0, LBB18_98
; %bb.91:
	ldp	q0, q1, [x0, #32]
Lloh234:
	adrp	x8, _s_pre_forge_variant@PAGE+108
Lloh235:
	add	x8, x8, _s_pre_forge_variant@PAGEOFF+108
	ldp	q2, q3, [x0]
	stp	q0, q1, [x8, #32]
	stp	q2, q3, [x8]
	ldr	x9, [x0, #80]
	ldr	q0, [x0, #64]
	str	x9, [x8, #80]
	str	q0, [x8, #64]
	b	LBB18_99
LBB18_92:
Lloh236:
	adrp	x1, l_.str.19@PAGE
Lloh237:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	x0, x24
	bl	_csstrcmp
	cbz	w0, LBB18_59
LBB18_93:
Lloh238:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh239:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh240:
	str	wzr, [x8]
	bl	_forge_variant_give_back
	b	LBB18_12
LBB18_94:
Lloh241:
	adrp	x0, l_.str.2@PAGE
Lloh242:
	add	x0, x0, l_.str.2@PAGEOFF
LBB18_95:
	ldr	x24, [sp, #8]                   ; 8-byte Reload
	bl	_forge_tag_profile_set
Lloh243:
	adrp	x8, _s_forge_start_kind@PAGE
Lloh244:
	ldr	w8, [x8, _s_forge_start_kind@PAGEOFF]
	cmp	w8, #2
	b.ne	LBB18_97
; %bb.96:
	mov	w0, w23
	bl	_tag_multiplayer_game_forge_profile_set
LBB18_97:
	mov	x0, x20
	mov	x1, x24
	add	sp, sp, #480
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	b	_forge_start
LBB18_98:
Lloh245:
	adrp	x1, _s_pre_forge_variant@PAGE+108
Lloh246:
	add	x1, x1, _s_pre_forge_variant@PAGEOFF+108
	add	x0, sp, #216
	bl	_game_variant_options_default
LBB18_99:
	ldr	x19, [sp, #8]                   ; 8-byte Reload
	adrp	x8, _s_pre_forge_variant@PAGE
	mov	w9, #1                          ; =0x1
	str	w9, [x8, _s_pre_forge_variant@PAGEOFF]
LBB18_100:
	add	x0, sp, #216
	add	x2, sp, #214
	mov	w1, #64                         ; =0x40
	bl	_ui_widget_port_gametypes
	cmp	w0, #1
	b.lt	LBB18_102
; %bb.101:
	ldr	w0, [sp, #216]
	bl	_ui_widget_port_gametype_choose
LBB18_102:
	add	x0, sp, #108
	mov	w1, wzr
	mov	w2, #104                        ; =0x68
	bl	_csmemset
	add	x0, sp, #108
	bl	_build_game_variant_slayer
Lloh247:
	adrp	x1, l_.str.42@PAGE
Lloh248:
	add	x1, x1, l_.str.42@PAGEOFF
	add	x0, sp, #108
	mov	w2, #11                         ; =0xb
	bl	_ustrncpy
	mov	w8, #1073741823                 ; =0x3fffffff
	mov	w9, #90                         ; =0x5a
	add	x0, sp, #108
	add	x1, sp, #20
	strb	wzr, [sp, #136]
	str	w8, [sp, #172]
	stur	x9, [sp, #156]
	bl	_game_variant_options_default
	mov	w8, #65278                      ; =0xfefe
	add	x0, sp, #108
	add	x1, sp, #20
	strh	wzr, [sp, #20]
	strh	w8, [sp, #30]
	bl	_ui_widget_port_game_variant_set
	mov	x0, x20
	mov	x1, x19
	mov	w2, #2                          ; =0x2
	mov	x3, xzr
LBB18_103:
	bl	_forge_start_ask
LBB18_104:
	mov	w0, wzr
LBB18_105:
	add	sp, sp, #480
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB18_106:
Lloh249:
	adrp	x0, l_.str.133@PAGE
Lloh250:
	add	x0, x0, l_.str.133@PAGEOFF
	str	w23, [sp]
	bl	_platform_log
	bl	_abort
	.loh AdrpAdd	Lloh124, Lloh125
	.loh AdrpAdd	Lloh126, Lloh127
	.loh AdrpAdd	Lloh128, Lloh129
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpLdrGotStr	Lloh132, Lloh133, Lloh134
	.loh AdrpLdrGotStr	Lloh135, Lloh136, Lloh137
	.loh AdrpAdd	Lloh138, Lloh139
	.loh AdrpAdd	Lloh140, Lloh141
	.loh AdrpAdd	Lloh142, Lloh143
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpAdd	Lloh146, Lloh147
	.loh AdrpAdd	Lloh150, Lloh151
	.loh AdrpAdd	Lloh148, Lloh149
	.loh AdrpAdd	Lloh152, Lloh153
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpAdd	Lloh156, Lloh157
	.loh AdrpLdr	Lloh158, Lloh159
	.loh AdrpAdd	Lloh160, Lloh161
	.loh AdrpAdd	Lloh162, Lloh163
	.loh AdrpAdd	Lloh164, Lloh165
	.loh AdrpAdd	Lloh166, Lloh167
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpAdd	Lloh170, Lloh171
	.loh AdrpLdrGotLdr	Lloh172, Lloh173, Lloh174
	.loh AdrpLdrGotStr	Lloh175, Lloh176, Lloh177
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpAdd	Lloh180, Lloh181
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh186, Lloh187
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpAdd	Lloh190, Lloh191
	.loh AdrpAdd	Lloh192, Lloh193
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpAdd	Lloh196, Lloh197
	.loh AdrpAdd	Lloh198, Lloh199
	.loh AdrpAdd	Lloh200, Lloh201
	.loh AdrpAdd	Lloh202, Lloh203
	.loh AdrpAdd	Lloh204, Lloh205
	.loh AdrpLdrGotLdr	Lloh206, Lloh207, Lloh208
	.loh AdrpAdd	Lloh209, Lloh210
	.loh AdrpAdd	Lloh211, Lloh212
	.loh AdrpAdd	Lloh213, Lloh214
	.loh AdrpAdd	Lloh215, Lloh216
	.loh AdrpAdd	Lloh220, Lloh221
	.loh AdrpAdd	Lloh218, Lloh219
	.loh AdrpLdrGotStr	Lloh217, Lloh222, Lloh223
	.loh AdrpLdrGotStr	Lloh224, Lloh225, Lloh226
	.loh AdrpLdrGotLdr	Lloh227, Lloh228, Lloh229
	.loh AdrpAdd	Lloh230, Lloh231
	.loh AdrpAdd	Lloh232, Lloh233
	.loh AdrpAdd	Lloh234, Lloh235
	.loh AdrpAdd	Lloh236, Lloh237
	.loh AdrpLdrGotStr	Lloh238, Lloh239, Lloh240
	.loh AdrpAdd	Lloh241, Lloh242
	.loh AdrpLdr	Lloh243, Lloh244
	.loh AdrpAdd	Lloh245, Lloh246
	.loh AdrpAdd	Lloh247, Lloh248
	.loh AdrpAdd	Lloh249, Lloh250
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_variant_give_back
_forge_variant_give_back:               ; @forge_variant_give_back
; %bb.0:
	sub	sp, sp, #144
	add	x0, sp, #8
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	bl	_player_ui_game_variant_specified
	cbz	w0, LBB19_6
; %bb.1:
Lloh251:
	adrp	x1, l_.str.42@PAGE
Lloh252:
	add	x1, x1, l_.str.42@PAGEOFF
	add	x0, sp, #8
	bl	_msvc_wcsicmp
	cbz	w0, LBB19_3
; %bb.2:
	ldr	w8, [sp, #72]
	mov	w9, #1073741823                 ; =0x3fffffff
	cmp	w8, w9
	b.ne	LBB19_6
LBB19_3:
Lloh253:
	adrp	x8, _s_pre_forge_variant@PAGE
Lloh254:
	ldr	w8, [x8, _s_pre_forge_variant@PAGEOFF]
	cbnz	w8, LBB19_5
; %bb.4:
Lloh255:
	adrp	x19, _s_pre_forge_variant@PAGE+4
Lloh256:
	add	x19, x19, _s_pre_forge_variant@PAGEOFF+4
	mov	x0, x19
	bl	_build_game_variant_slayer
	add	x1, x19, #104
	mov	x0, x19
	bl	_game_variant_options_default
LBB19_5:
Lloh257:
	adrp	x19, _s_pre_forge_variant@PAGE
Lloh258:
	add	x19, x19, _s_pre_forge_variant@PAGEOFF
	add	x0, x19, #4
	bl	_player_ui_set_game_variant
	add	x0, x19, #108
	bl	_player_ui_set_game_variant_options
	add	x0, x19, #4
	bl	_game_engine_override_game_variant
	str	wzr, [x19]
LBB19_6:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh251, Lloh252
	.loh AdrpLdr	Lloh253, Lloh254
	.loh AdrpAdd	Lloh255, Lloh256
	.loh AdrpAdd	Lloh257, Lloh258
                                        ; -- End function
	.p2align	4                               ; -- Begin function scan_forge_edit_maps
_scan_forge_edit_maps:                  ; @scan_forge_edit_maps
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #992
	add	x8, sp, #664
	mov	w25, wzr
Lloh259:
	adrp	x9, _s_forge_menu@PAGE
Lloh260:
	add	x9, x9, _s_forge_menu@PAGEOFF
	add	x20, x8, #44
Lloh261:
	adrp	x23, l_.str.123@PAGE
Lloh262:
	add	x23, x23, l_.str.123@PAGEOFF
Lloh263:
	adrp	x24, l_.str.124@PAGE
Lloh264:
	add	x24, x24, l_.str.124@PAGEOFF
Lloh265:
	adrp	x28, l_.str.125@PAGE
Lloh266:
	add	x28, x28, l_.str.125@PAGEOFF
	adrp	x19, _s_forge_menu@PAGE+4
	stp	w0, wzr, [x9]
	str	w0, [sp, #16]                   ; 4-byte Spill
	str	xzr, [x9, #8]
	b	LBB20_3
	.p2align	4, , 8
LBB20_1:                                ;   in Loop: Header=BB20_3 Depth=1
	mov	x0, x26
	bl	_CloseHandle
	ldr	w25, [sp, #12]                  ; 4-byte Reload
LBB20_2:                                ;   in Loop: Header=BB20_3 Depth=1
	add	w25, w25, #1
	cmp	w25, #3
	b.eq	LBB20_29
LBB20_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB20_7 Depth 2
                                        ;       Child Loop BB20_15 Depth 3
Lloh267:
	adrp	x8, _scan_forge_edit_maps.forge_scan_dirs@PAGE
Lloh268:
	add	x8, x8, _scan_forge_edit_maps.forge_scan_dirs@PAGEOFF
	add	x1, sp, #664
	ldr	w0, [x8, w25, sxtw #2]
	bl	_FindFirstFileA
	mov	x26, x0
	cmn	w26, #1
	b.eq	LBB20_2
; %bb.4:                                ;   in Loop: Header=BB20_3 Depth=1
	str	w25, [sp, #12]                  ; 4-byte Spill
	b	LBB20_7
LBB20_5:                                ;   in Loop: Header=BB20_7 Depth=2
	add	w9, w8, #1
	sxtw	x8, w8
Lloh269:
	adrp	x10, _s_forge_menu@PAGE
Lloh270:
	add	x10, x10, _s_forge_menu@PAGEOFF
	add	x25, x10, x8, lsl #6
	mov	x28, x24
Lloh271:
	adrp	x24, l_.str.1@PAGE
Lloh272:
	add	x24, x24, l_.str.1@PAGEOFF
	add	x0, x25, #16
	mov	w1, #64                         ; =0x40
	mov	x2, x24
	add	x23, sp, #88
	str	w9, [x10, #4]
	str	w23, [sp]
	bl	_halo_linux_snprintf
	mov	w8, #4112                       ; =0x1010
	mov	w1, #64                         ; =0x40
	add	x0, x25, x8
	mov	x2, x24
	str	w23, [sp]
	bl	_halo_linux_snprintf
	cmp	w27, #0
Lloh273:
	adrp	x8, l_.str.126@PAGE
Lloh274:
	add	x8, x8, l_.str.126@PAGEOFF
Lloh275:
	adrp	x9, l_.str.127@PAGE
Lloh276:
	add	x9, x9, l_.str.127@PAGEOFF
	mov	w1, #64                         ; =0x40
	csel	x8, x9, x8, eq
	mov	w9, #8208                       ; =0x2010
	add	x0, x25, x9
	mov	x2, x24
	mov	x24, x28
Lloh277:
	adrp	x28, l_.str.125@PAGE
Lloh278:
	add	x28, x28, l_.str.125@PAGEOFF
Lloh279:
	adrp	x23, l_.str.123@PAGE
Lloh280:
	add	x23, x23, l_.str.123@PAGEOFF
	str	w8, [sp]
	bl	_halo_linux_snprintf
	.p2align	4, , 8
LBB20_6:                                ;   in Loop: Header=BB20_7 Depth=2
	add	x1, sp, #664
	mov	x0, x26
	bl	_FindNextFileA
	cbz	w0, LBB20_1
LBB20_7:                                ;   Parent Loop BB20_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB20_15 Depth 3
	mov	x0, x20
	mov	x1, x23
	str	wzr, [sp, #20]
	bl	_csstrcmp
	cbz	w0, LBB20_6
; %bb.8:                                ;   in Loop: Header=BB20_7 Depth=2
	mov	x0, x20
	mov	x1, x24
	bl	_csstrcmp
	cbz	w0, LBB20_6
; %bb.9:                                ;   in Loop: Header=BB20_7 Depth=2
	ldr	w25, [sp, #664]
	add	x0, sp, #88
	mov	w1, #64                         ; =0x40
Lloh281:
	adrp	x2, l_.str.1@PAGE
Lloh282:
	add	x2, x2, l_.str.1@PAGEOFF
	str	w20, [sp]
	bl	_halo_linux_snprintf
	tbnz	w25, #4, LBB20_13
; %bb.10:                               ;   in Loop: Header=BB20_7 Depth=2
	add	x0, sp, #88
	mov	w1, #46                         ; =0x2e
	bl	_strrchr
	mov	x27, x0
	cbz	w27, LBB20_6
; %bb.11:                               ;   in Loop: Header=BB20_7 Depth=2
	mov	x0, x27
	mov	x1, x28
	bl	__stricmp
	cbnz	w0, LBB20_6
; %bb.12:                               ;   in Loop: Header=BB20_7 Depth=2
	strb	wzr, [x27]
	.p2align	4, , 8
LBB20_13:                               ;   in Loop: Header=BB20_7 Depth=2
	ldr	w8, [x19, _s_forge_menu@PAGEOFF+4]
	cmp	w8, #1
	b.lt	LBB20_17
; %bb.14:                               ;   in Loop: Header=BB20_7 Depth=2
	mov	w25, wzr
Lloh283:
	adrp	x27, _s_forge_menu@PAGE+16
Lloh284:
	add	x27, x27, _s_forge_menu@PAGEOFF+16
	.p2align	4, , 8
LBB20_15:                               ;   Parent Loop BB20_3 Depth=1
                                        ;     Parent Loop BB20_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x1, sp, #88
	mov	x0, x27
	bl	__stricmp
	cbz	w0, LBB20_6
; %bb.16:                               ;   in Loop: Header=BB20_15 Depth=3
	ldr	w8, [x19, _s_forge_menu@PAGEOFF+4]
	add	w25, w25, #1
	add	w27, w27, #64
	cmp	w25, w8
	b.lt	LBB20_15
LBB20_17:                               ;   in Loop: Header=BB20_7 Depth=2
	add	x0, sp, #152
	mov	w1, #512                        ; =0x200
Lloh285:
	adrp	x2, l_.str.90@PAGE
Lloh286:
	add	x2, x2, l_.str.90@PAGEOFF
	add	x25, sp, #88
	str	w25, [sp]
	bl	_halo_linux_snprintf
Lloh287:
	adrp	x27, l_.str.89@PAGE
Lloh288:
	add	x27, x27, l_.str.89@PAGEOFF
	add	x0, sp, #152
	mov	x1, x27
	bl	_forge_host_fopen
	cbnz	w0, LBB20_23
; %bb.18:                               ;   in Loop: Header=BB20_7 Depth=2
	add	x0, sp, #152
	mov	w1, #512                        ; =0x200
Lloh289:
	adrp	x2, l_.str.79@PAGE
Lloh290:
	add	x2, x2, l_.str.79@PAGEOFF
	str	w25, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #152
	mov	x1, x27
	bl	_forge_host_fopen
	cbnz	w0, LBB20_23
; %bb.19:                               ;   in Loop: Header=BB20_7 Depth=2
	add	x0, sp, #152
	mov	w1, #512                        ; =0x200
Lloh291:
	adrp	x2, l_.str.80@PAGE
Lloh292:
	add	x2, x2, l_.str.80@PAGEOFF
	stp	w25, w25, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #152
	mov	x1, x27
	bl	_forge_host_fopen
	cbnz	w0, LBB20_23
; %bb.20:                               ;   in Loop: Header=BB20_7 Depth=2
	add	x0, sp, #152
	mov	w1, #512                        ; =0x200
Lloh293:
	adrp	x2, l_.str.83@PAGE
Lloh294:
	add	x2, x2, l_.str.83@PAGEOFF
	stp	w25, w25, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #152
	mov	x1, x27
	bl	_forge_host_fopen
	cbnz	w0, LBB20_23
; %bb.21:                               ;   in Loop: Header=BB20_7 Depth=2
	add	x0, sp, #152
	mov	w1, #512                        ; =0x200
Lloh295:
	adrp	x2, l_.str.84@PAGE
Lloh296:
	add	x2, x2, l_.str.84@PAGEOFF
	str	w25, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #152
	mov	x1, x27
	bl	_forge_host_fopen
	cbnz	w0, LBB20_23
; %bb.22:                               ;   in Loop: Header=BB20_7 Depth=2
	add	x0, sp, #152
	mov	w1, #512                        ; =0x200
Lloh297:
	adrp	x2, l_.str.86@PAGE
Lloh298:
	add	x2, x2, l_.str.86@PAGEOFF
	stp	w25, w25, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #152
	mov	x1, x27
	bl	_forge_host_fopen
	cbz	w0, LBB20_24
LBB20_23:                               ;   in Loop: Header=BB20_7 Depth=2
	bl	_fclose
LBB20_24:                               ;   in Loop: Header=BB20_7 Depth=2
	add	x0, sp, #152
	add	x1, sp, #88
	add	x2, sp, #20
	add	x3, sp, #24
	mov	w4, #64                         ; =0x40
	bl	_is_forge_created_map_file
	cbz	w0, LBB20_6
; %bb.25:                               ;   in Loop: Header=BB20_7 Depth=2
	ldp	w8, w27, [sp, #16]              ; 4-byte Folded Reload
	cbnz	w8, LBB20_28
; %bb.26:                               ;   in Loop: Header=BB20_7 Depth=2
	cbz	w27, LBB20_28
; %bb.27:                               ;   in Loop: Header=BB20_7 Depth=2
	ldr	w8, [x19, _s_forge_menu@PAGEOFF+4]
	cmp	w8, #63
	b.le	LBB20_5
	b	LBB20_6
LBB20_28:                               ;   in Loop: Header=BB20_7 Depth=2
	ldr	w8, [x19, _s_forge_menu@PAGEOFF+4]
	ldr	w9, [sp, #16]                   ; 4-byte Reload
	cmp	w8, #63
	ccmp	w27, #0, #0, le
	ccmp	w9, #1, #0, eq
	b.eq	LBB20_5
	b	LBB20_6
LBB20_29:
Lloh299:
	adrp	x0, l_.str.128@PAGE
Lloh300:
	add	x0, x0, l_.str.128@PAGEOFF
	add	x1, sp, #664
	bl	_FindFirstFileA
	mov	x23, x0
	cmn	w23, #1
	b.eq	LBB20_49
; %bb.30:
Lloh301:
	adrp	x24, l_.str.129@PAGE
Lloh302:
	add	x24, x24, l_.str.129@PAGEOFF
Lloh303:
	adrp	x25, l_.str.130@PAGE
Lloh304:
	add	x25, x25, l_.str.130@PAGEOFF
Lloh305:
	adrp	x27, l_.str.1@PAGE
Lloh306:
	add	x27, x27, l_.str.1@PAGEOFF
	b	LBB20_33
LBB20_31:                               ;   in Loop: Header=BB20_33 Depth=1
	add	w9, w8, #1
	sxtw	x8, w8
Lloh307:
	adrp	x10, _s_forge_menu@PAGE
Lloh308:
	add	x10, x10, _s_forge_menu@PAGEOFF
	add	x26, x10, x8, lsl #6
	mov	w1, #64                         ; =0x40
	add	x0, x26, #16
	mov	x2, x27
	add	x8, sp, #88
	str	w9, [x10, #4]
	str	w8, [sp]
	bl	_halo_linux_snprintf
	mov	w8, #4112                       ; =0x1010
	mov	w1, #64                         ; =0x40
	add	x0, x26, x8
	mov	x2, x27
	add	x8, sp, #88
	str	w8, [sp]
	bl	_halo_linux_snprintf
	cmp	w28, #0
Lloh309:
	adrp	x8, l_.str.126@PAGE
Lloh310:
	add	x8, x8, l_.str.126@PAGEOFF
Lloh311:
	adrp	x9, l_.str.127@PAGE
Lloh312:
	add	x9, x9, l_.str.127@PAGEOFF
	mov	w1, #64                         ; =0x40
	csel	x8, x9, x8, eq
	mov	w9, #8208                       ; =0x2010
	add	x0, x26, x9
	mov	x2, x27
	str	w8, [sp]
	bl	_halo_linux_snprintf
	.p2align	4, , 8
LBB20_32:                               ;   in Loop: Header=BB20_33 Depth=1
	add	x1, sp, #664
	mov	x0, x23
	bl	_FindNextFileA
	cbz	w0, LBB20_48
LBB20_33:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB20_41 Depth 2
	ldrb	w8, [sp, #664]
	str	wzr, [sp, #20]
	tbnz	w8, #4, LBB20_32
; %bb.34:                               ;   in Loop: Header=BB20_33 Depth=1
	mov	x0, x20
	mov	x1, x24
	bl	__stricmp
	cbz	w0, LBB20_32
; %bb.35:                               ;   in Loop: Header=BB20_33 Depth=1
	mov	x0, x20
	mov	x1, x25
	bl	__stricmp
	cbz	w0, LBB20_32
; %bb.36:                               ;   in Loop: Header=BB20_33 Depth=1
	mov	x0, x20
Lloh313:
	adrp	x1, l_.str.131@PAGE
Lloh314:
	add	x1, x1, l_.str.131@PAGEOFF
	bl	__stricmp
	cbz	w0, LBB20_32
; %bb.37:                               ;   in Loop: Header=BB20_33 Depth=1
	add	x0, sp, #88
	mov	w1, #64                         ; =0x40
	mov	x2, x27
	str	w20, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #88
	mov	w1, #46                         ; =0x2e
	bl	_strrchr
	cbz	w0, LBB20_39
; %bb.38:                               ;   in Loop: Header=BB20_33 Depth=1
	strb	wzr, [x0]
LBB20_39:                               ;   in Loop: Header=BB20_33 Depth=1
	ldr	w8, [x19, _s_forge_menu@PAGEOFF+4]
	cmp	w8, #1
	b.lt	LBB20_43
; %bb.40:                               ;   in Loop: Header=BB20_33 Depth=1
	mov	w26, wzr
Lloh315:
	adrp	x28, _s_forge_menu@PAGE+16
Lloh316:
	add	x28, x28, _s_forge_menu@PAGEOFF+16
	.p2align	4, , 8
LBB20_41:                               ;   Parent Loop BB20_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x1, sp, #88
	mov	x0, x28
	bl	__stricmp
	cbz	w0, LBB20_32
; %bb.42:                               ;   in Loop: Header=BB20_41 Depth=2
	ldr	w8, [x19, _s_forge_menu@PAGEOFF+4]
	add	w26, w26, #1
	add	w28, w28, #64
	cmp	w26, w8
	b.lt	LBB20_41
LBB20_43:                               ;   in Loop: Header=BB20_33 Depth=1
	add	x0, sp, #152
	mov	w1, #512                        ; =0x200
Lloh317:
	adrp	x2, l_.str.132@PAGE
Lloh318:
	add	x2, x2, l_.str.132@PAGEOFF
	str	w20, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #152
	add	x1, sp, #88
	add	x2, sp, #20
	add	x3, sp, #24
	mov	w4, #64                         ; =0x40
	bl	_is_forge_created_map_file
	cbz	w0, LBB20_32
; %bb.44:                               ;   in Loop: Header=BB20_33 Depth=1
	ldp	w8, w28, [sp, #16]              ; 4-byte Folded Reload
	cbnz	w8, LBB20_47
; %bb.45:                               ;   in Loop: Header=BB20_33 Depth=1
	cbz	w28, LBB20_47
; %bb.46:                               ;   in Loop: Header=BB20_33 Depth=1
	ldr	w8, [x19, _s_forge_menu@PAGEOFF+4]
	cmp	w8, #63
	b.le	LBB20_31
	b	LBB20_32
LBB20_47:                               ;   in Loop: Header=BB20_33 Depth=1
	ldr	w8, [x19, _s_forge_menu@PAGEOFF+4]
	ldr	w9, [sp, #16]                   ; 4-byte Reload
	cmp	w8, #63
	ccmp	w28, #0, #0, le
	ccmp	w9, #1, #0, eq
	b.eq	LBB20_31
	b	LBB20_32
LBB20_48:
	mov	x0, x23
	bl	_CloseHandle
LBB20_49:
	add	sp, sp, #992
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh265, Lloh266
	.loh AdrpAdd	Lloh263, Lloh264
	.loh AdrpAdd	Lloh261, Lloh262
	.loh AdrpAdd	Lloh259, Lloh260
	.loh AdrpAdd	Lloh267, Lloh268
	.loh AdrpAdd	Lloh279, Lloh280
	.loh AdrpAdd	Lloh277, Lloh278
	.loh AdrpAdd	Lloh275, Lloh276
	.loh AdrpAdd	Lloh273, Lloh274
	.loh AdrpAdd	Lloh271, Lloh272
	.loh AdrpAdd	Lloh269, Lloh270
	.loh AdrpAdd	Lloh281, Lloh282
	.loh AdrpAdd	Lloh283, Lloh284
	.loh AdrpAdd	Lloh287, Lloh288
	.loh AdrpAdd	Lloh285, Lloh286
	.loh AdrpAdd	Lloh289, Lloh290
	.loh AdrpAdd	Lloh291, Lloh292
	.loh AdrpAdd	Lloh293, Lloh294
	.loh AdrpAdd	Lloh295, Lloh296
	.loh AdrpAdd	Lloh297, Lloh298
	.loh AdrpAdd	Lloh299, Lloh300
	.loh AdrpAdd	Lloh305, Lloh306
	.loh AdrpAdd	Lloh303, Lloh304
	.loh AdrpAdd	Lloh301, Lloh302
	.loh AdrpAdd	Lloh311, Lloh312
	.loh AdrpAdd	Lloh309, Lloh310
	.loh AdrpAdd	Lloh307, Lloh308
	.loh AdrpAdd	Lloh313, Lloh314
	.loh AdrpAdd	Lloh315, Lloh316
	.loh AdrpAdd	Lloh317, Lloh318
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_start_ask
_forge_start_ask:                       ; @forge_start_ask
; %bb.0:
	sub	sp, sp, #96
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	mov	x20, x0
Lloh319:
	adrp	x0, l_.str@PAGE
Lloh320:
	add	x0, x0, l_.str@PAGEOFF
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	mov	x19, x1
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	mov	x24, x3
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	mov	w23, w2
	bl	_tag_pack_ready
	cbz	w0, LBB21_23
; %bb.1:
Lloh321:
	adrp	x25, l_.str.2@PAGE
Lloh322:
	add	x25, x25, l_.str.2@PAGEOFF
	cmp	w24, #0
	adrp	x8, _s_forge_start_kind@PAGE
	csel	x9, x25, x24, eq
Lloh323:
	adrp	x0, _s_forge_start_map@PAGE
Lloh324:
	add	x0, x0, _s_forge_start_map@PAGEOFF
Lloh325:
	adrp	x2, l_.str.1@PAGE
Lloh326:
	add	x2, x2, l_.str.1@PAGEOFF
	mov	w1, #128                        ; =0x80
	str	w23, [x8, _s_forge_start_kind@PAGEOFF]
	str	w9, [sp]
	bl	_halo_linux_snprintf
	mov	x0, x25
	bl	_forge_tag_profile_set
	cmp	w23, #2
	b.ne	LBB21_3
; %bb.2:
	mov	w0, #-1                         ; =0xffffffff
	bl	_tag_multiplayer_game_forge_profile_set
LBB21_3:
	adrp	x28, _s_forge_profile_screen_storage@PAGE
	ldr	w0, [x28, _s_forge_profile_screen_storage@PAGEOFF]
	cbnz	w0, LBB21_5
; %bb.4:
	mov	w0, #1                          ; =0x1
	mov	w1, #4436                       ; =0x1154
	mov	w23, #4436                      ; =0x1154
	bl	_calloc
	str	w0, [x28, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w0, LBB21_30
LBB21_5:
	mov	w8, #1                          ; =0x1
	mov	w9, #-1                         ; =0xffffffff
Lloh327:
	adrp	x2, l_.str.7@PAGE
Lloh328:
	add	x2, x2, l_.str.7@PAGEOFF
	mov	w1, #64                         ; =0x40
	str	w8, [x0]
	str	w9, [x0, #16]
	add	x0, x0, #276
	bl	_halo_linux_snprintf
	bl	_halo_custom_edition_tag_cache
	cbz	w0, LBB21_26
; %bb.6:
	bl	_port_tag_profiles_scan
	bl	_port_tag_profiles_count
	cmp	w0, #1
	b.lt	LBB21_24
; %bb.7:
	mov	w23, w0
	mov	w24, wzr
Lloh329:
	adrp	x25, l_.str.1@PAGE
Lloh330:
	add	x25, x25, l_.str.1@PAGEOFF
	b	LBB21_11
	.p2align	4, , 8
LBB21_8:                                ;   in Loop: Header=BB21_11 Depth=1
	ldr	w8, [x0]
LBB21_9:                                ;   in Loop: Header=BB21_11 Depth=1
	add	w9, w8, #1
	add	x10, x0, w8, sxtw #2
	sxtw	x8, w8
	add	x26, x0, x8, lsl #6
	str	w9, [x0]
	mov	w0, w24
	str	w24, [x10, #16]
	bl	_port_tag_profiles_name
	mov	x8, x0
	add	x0, x26, #276
	mov	w1, #64                         ; =0x40
	mov	x2, x25
	str	w8, [sp]
	bl	_halo_linux_snprintf
LBB21_10:                               ;   in Loop: Header=BB21_11 Depth=1
	add	w24, w24, #1
	cmp	w24, w23
	b.eq	LBB21_24
LBB21_11:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB21_16 Depth 2
	ldr	w8, [x28, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w8, LBB21_13
; %bb.12:                               ;   in Loop: Header=BB21_11 Depth=1
	ldr	w8, [x8]
	cmp	w8, #64
	b.le	LBB21_14
	b	LBB21_28
	.p2align	4, , 8
LBB21_13:                               ;   in Loop: Header=BB21_11 Depth=1
	mov	w0, #1                          ; =0x1
	mov	w1, #4436                       ; =0x1154
	bl	_calloc
	str	w0, [x28, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w0, LBB21_29
LBB21_14:                               ;   in Loop: Header=BB21_11 Depth=1
	mov	w0, w24
	bl	_port_tag_profiles_tag_count
	mov	w26, w0
	cmp	w0, #1
	b.lt	LBB21_18
; %bb.15:                               ;   in Loop: Header=BB21_11 Depth=1
	mov	w27, wzr
	.p2align	4, , 8
LBB21_16:                               ;   Parent Loop BB21_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w0, w24
	mov	w1, w27
	bl	_port_tag_profiles_tag_enabled
	cbnz	w0, LBB21_19
; %bb.17:                               ;   in Loop: Header=BB21_16 Depth=2
	add	w27, w27, #1
	cmp	w26, w27
	b.ne	LBB21_16
	b	LBB21_10
	.p2align	4, , 8
LBB21_18:                               ;   in Loop: Header=BB21_11 Depth=1
	mov	w27, wzr
LBB21_19:                               ;   in Loop: Header=BB21_11 Depth=1
	cmp	w27, w26
	b.eq	LBB21_10
; %bb.20:                               ;   in Loop: Header=BB21_11 Depth=1
	ldr	w0, [x28, _s_forge_profile_screen_storage@PAGEOFF]
	cbnz	w0, LBB21_8
; %bb.21:                               ;   in Loop: Header=BB21_11 Depth=1
	mov	w0, #1                          ; =0x1
	mov	w1, #4436                       ; =0x1154
	bl	_calloc
	str	w0, [x28, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w0, LBB21_29
; %bb.22:                               ;   in Loop: Header=BB21_11 Depth=1
	mov	w8, wzr
	b	LBB21_9
LBB21_23:
Lloh331:
	adrp	x0, l_.str@PAGE
Lloh332:
	add	x0, x0, l_.str@PAGEOFF
	bl	_tag_pack_request
Lloh333:
	adrp	x0, l_.str.97@PAGE
Lloh334:
	add	x0, x0, l_.str.97@PAGEOFF
Lloh335:
	adrp	x1, l_.str.98@PAGE
Lloh336:
	add	x1, x1, l_.str.98@PAGEOFF
	bl	_platform_show_message
	mov	w0, #4                          ; =0x4
	bl	_ui_play_audio_feedback_sound
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	mov	w0, wzr
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB21_24:
	ldr	w8, [x28, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w8, LBB21_27
; %bb.25:
	ldr	w8, [x8]
	cmp	w8, #1
	b.ne	LBB21_28
LBB21_26:
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	b	_forge_start
LBB21_27:
	mov	w0, #1                          ; =0x1
	mov	w1, #4436                       ; =0x1154
	mov	w23, #4436                      ; =0x1154
	bl	_calloc
	str	w0, [x28, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w0, LBB21_30
LBB21_28:
	mov	w0, #2                          ; =0x2
	bl	_ui_play_audio_feedback_sound
	mov	x0, x20
	mov	x2, x19
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
Lloh337:
	adrp	x1, l_.str.134@PAGE
Lloh338:
	add	x1, x1, l_.str.134@PAGEOFF
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	b	_ui_widget_port_open
LBB21_29:
Lloh339:
	adrp	x0, l_.str.133@PAGE
Lloh340:
	add	x0, x0, l_.str.133@PAGEOFF
	mov	w8, #4436                       ; =0x1154
	str	w8, [sp]
	bl	_platform_log
	bl	_abort
LBB21_30:
Lloh341:
	adrp	x0, l_.str.133@PAGE
Lloh342:
	add	x0, x0, l_.str.133@PAGEOFF
	str	w23, [sp]
	bl	_platform_log
	bl	_abort
	.loh AdrpAdd	Lloh319, Lloh320
	.loh AdrpAdd	Lloh325, Lloh326
	.loh AdrpAdd	Lloh323, Lloh324
	.loh AdrpAdd	Lloh321, Lloh322
	.loh AdrpAdd	Lloh327, Lloh328
	.loh AdrpAdd	Lloh329, Lloh330
	.loh AdrpAdd	Lloh335, Lloh336
	.loh AdrpAdd	Lloh333, Lloh334
	.loh AdrpAdd	Lloh331, Lloh332
	.loh AdrpAdd	Lloh337, Lloh338
	.loh AdrpAdd	Lloh339, Lloh340
	.loh AdrpAdd	Lloh341, Lloh342
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_start
_forge_start:                           ; @forge_start
; %bb.0:
	adrp	x8, _s_forge_start_kind@PAGE
	ldr	w9, [x8, _s_forge_start_kind@PAGEOFF]
	str	wzr, [x8, _s_forge_start_kind@PAGEOFF]
	cmp	w9, #2
	b.ne	LBB22_2
; %bb.1:
	mov	x2, x1
Lloh343:
	adrp	x1, l_.str.135@PAGE
Lloh344:
	add	x1, x1, l_.str.135@PAGEOFF
	b	_ui_widget_port_open
LBB22_2:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	bl	_dispose_global_network_game_client
	bl	_dispose_global_network_game_server
	mov	w0, wzr
	bl	_network_game_accept_remote_connections
	bl	_custom_edition_maps_look_again
	mov	w0, wzr
	mov	w1, wzr
	bl	_player_ui_set_single_player_local_player_controller
Lloh345:
	adrp	x0, _s_forge_start_map@PAGE
Lloh346:
	add	x0, x0, _s_forge_start_map@PAGEOFF
	bl	_main_set_map_name
	bl	_main_disallow_persistent_storage
	mov	w0, #1                          ; =0x1
	bl	_main_set_difficulty
	mov	w0, wzr
	bl	_game_connection_set
	bl	_main_menu_switch_to_single_player
	mov	w0, #1                          ; =0x1
	bl	_player_ui_remember_player1_profile
	mov	w0, #2                          ; =0x2
	bl	_ui_play_audio_feedback_sound
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh343, Lloh344
	.loh AdrpAdd	Lloh345, Lloh346
                                        ; -- End function
	.globl	_forge_controls_menu_event      ; -- Begin function forge_controls_menu_event
	.p2align	4
_forge_controls_menu_event:             ; @forge_controls_menu_event
; %bb.0:
	sub	sp, sp, #224
	stp	x26, x25, [sp, #160]            ; 16-byte Folded Spill
	mov	x25, x2
	stp	x24, x23, [sp, #176]            ; 16-byte Folded Spill
	mov	x23, x4
	stp	x20, x19, [sp, #192]            ; 16-byte Folded Spill
	mov	w24, w3
	mov	x20, x0
	mov	x19, x1
	mov	x8, x0
	stp	d9, d8, [sp, #128]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
	.p2align	4, , 8
LBB23_1:                                ; =>This Inner Loop Header: Depth=1
	mov	x0, x8
	cbz	w0, LBB23_5
; %bb.2:                                ;   in Loop: Header=BB23_1 Depth=1
	ldr	w8, [x0, #48]
	cbnz	w8, LBB23_1
; %bb.3:
Lloh347:
	adrp	x1, l_.str.136@PAGE
Lloh348:
	add	x1, x1, l_.str.136@PAGEOFF
	add	x2, sp, #64
	str	wzr, [sp, #64]
	bl	_fw_descendant
	cbz	w0, LBB23_5
; %bb.4:
	ldrsh	w26, [x0, #60]
	b	LBB23_6
LBB23_5:
	mov	w26, wzr
LBB23_6:
Lloh349:
	adrp	x1, l_.str.44@PAGE
Lloh350:
	add	x1, x1, l_.str.44@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB23_12
; %bb.7:
Lloh351:
	adrp	x1, l_.str.45@PAGE
Lloh352:
	add	x1, x1, l_.str.45@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB23_14
; %bb.8:
Lloh353:
	adrp	x1, l_.str.46@PAGE
Lloh354:
	add	x1, x1, l_.str.46@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB23_17
; %bb.9:
Lloh355:
	adrp	x1, l_.str.47@PAGE
Lloh356:
	add	x1, x1, l_.str.47@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB23_25
; %bb.10:
Lloh357:
	adrp	x1, l_.str.48@PAGE
Lloh358:
	add	x1, x1, l_.str.48@PAGEOFF
	mov	x0, x25
	bl	_csstrcmp
	cbz	w0, LBB23_33
; %bb.11:
	mov	w0, wzr
	b	LBB23_91
LBB23_12:
	adrp	x8, _s_forge_controls_ui@PAGE
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF]
	bl	_forge_controls_ui_ensure_loaded
LBB23_13:
	mov	x0, x20
	mov	x1, x19
	mov	w2, w24
	mov	x3, x23
	bl	_orig_pc_menu_event_function_invoke
	mov	w0, #1                          ; =0x1
	b	LBB23_91
LBB23_14:
	bl	_forge_controls_ui_ensure_loaded
	and	w8, w26, #0xfffffffe
	cmp	w8, #4
	b.ne	LBB23_46
; %bb.15:
Lloh359:
	adrp	x19, _g_forge_state@GOTPAGE
Lloh360:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
	ldr	w8, [x19]
	cbz	w8, LBB23_48
; %bb.16:
	add	x9, x8, #964, lsl #12           ; =3948544
	mov	x0, x8
	ldr	s8, [x9, #13536]
	b	LBB23_70
LBB23_17:
	str	x19, [sp, #8]                   ; 8-byte Spill
	bl	_forge_controls_ui_ensure_loaded
Lloh361:
	adrp	x25, _g_forge_state@GOTPAGE
	mov	w8, #29792                      ; =0x7460
	movk	w8, #60, lsl #16
	mov	w27, #12                        ; =0xc
	add	w26, w8, #64
Lloh362:
	adrp	x28, _s_forge_controls_ui@PAGE+52
Lloh363:
	add	x28, x28, _s_forge_controls_ui@PAGEOFF+52
Lloh364:
	ldr	w25, [x25, _g_forge_state@GOTPAGEOFF]
	b	LBB23_19
	.p2align	4, , 8
LBB23_18:                               ;   in Loop: Header=BB23_19 Depth=1
	add	w8, w0, w26
	add	w28, w28, #4
	add	w26, w26, #4
	subs	w27, w27, #1
	str	w19, [x8]
	b.eq	LBB23_23
LBB23_19:                               ; =>This Inner Loop Header: Depth=1
	sub	w8, w28, #48
	ldr	w0, [x25]
	ldr	w19, [x8]
	cbnz	w0, LBB23_21
; %bb.20:                               ;   in Loop: Header=BB23_19 Depth=1
	bl	_forge_runtime_state_get
LBB23_21:                               ;   in Loop: Header=BB23_19 Depth=1
	add	w8, w0, w26
	sub	w8, w8, #64
	str	w19, [x8]
	ldr	w0, [x25]
	ldr	w19, [x28]
	cbnz	w0, LBB23_18
; %bb.22:                               ;   in Loop: Header=BB23_19 Depth=1
	bl	_forge_runtime_state_get
	b	LBB23_18
LBB23_23:
Lloh365:
	adrp	x8, _s_forge_controls_ui@PAGE+100
	ldr	w0, [x25]
Lloh366:
	ldr	s8, [x8, _s_forge_controls_ui@PAGEOFF+100]
	cbz	w0, LBB23_43
; %bb.24:
Lloh367:
	adrp	x8, _s_forge_controls_ui@PAGE+104
	mov	w9, #29920                      ; =0x74e0
	movk	w9, #60, lsl #16
	ldr	x19, [sp, #8]                   ; 8-byte Reload
Lloh368:
	ldr	s9, [x8, _s_forge_controls_ui@PAGEOFF+104]
	str	s8, [x0, x9]
	b	LBB23_45
LBB23_25:
	bl	_forge_controls_ui_ensure_loaded
	cmp	w26, #4
	b.eq	LBB23_50
; %bb.26:
	cmp	w26, #5
	b.ne	LBB23_51
; %bb.27:
	cbz	w20, LBB23_52
; %bb.28:
Lloh369:
	adrp	x23, l_.str.137@PAGE
Lloh370:
	add	x23, x23, l_.str.137@PAGEOFF
	b	LBB23_30
	.p2align	4, , 8
LBB23_29:                               ;   in Loop: Header=BB23_30 Depth=1
	ldr	w20, [x20, #48]
	cbz	w20, LBB23_52
LBB23_30:                               ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x20, #4]
	cbz	w0, LBB23_29
; %bb.31:                               ;   in Loop: Header=BB23_30 Depth=1
	mov	x1, x23
	mov	w2, #11                         ; =0xb
	bl	_csstrncmp
	cbnz	w0, LBB23_29
; %bb.32:
	ldr	w8, [x20, #4]
	add	x0, x8, #11
	bl	_atoi
	sub	w20, w0, #1
	b	LBB23_53
LBB23_33:
	bl	_forge_controls_ui_ensure_loaded
	cmp	w26, #4
	b.eq	LBB23_60
; %bb.34:
	cmp	w26, #5
	b.ne	LBB23_46
; %bb.35:
	cbz	w20, LBB23_46
; %bb.36:
	mov	x26, x20
Lloh371:
	adrp	x25, l_.str.137@PAGE
Lloh372:
	add	x25, x25, l_.str.137@PAGEOFF
	b	LBB23_38
	.p2align	4, , 8
LBB23_37:                               ;   in Loop: Header=BB23_38 Depth=1
	ldr	w26, [x26, #48]
	cbz	w26, LBB23_46
LBB23_38:                               ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x26, #4]
	cbz	w0, LBB23_37
; %bb.39:                               ;   in Loop: Header=BB23_38 Depth=1
	mov	x1, x25
	mov	w2, #11                         ; =0xb
	bl	_csstrncmp
	cbnz	w0, LBB23_37
; %bb.40:
	ldr	w8, [x26, #4]
	add	x0, x8, #11
	bl	_atoi
	cmp	w0, #2
	b.eq	LBB23_104
; %bb.41:
	cmp	w0, #1
	b.ne	LBB23_46
; %bb.42:
	adrp	x8, _s_forge_controls_ui@PAGE+100
	fmov	s0, #0.25000000
	fmov	s2, #2.50000000
	ldr	s1, [x8, _s_forge_controls_ui@PAGEOFF+100]
	fadd	s1, s1, s0
	fcmp	s1, s2
	fcsel	s0, s0, s1, gt
	str	s0, [x8, _s_forge_controls_ui@PAGEOFF+100]
	b	LBB23_91
LBB23_43:
	bl	_forge_runtime_state_get
Lloh373:
	adrp	x9, _s_forge_controls_ui@PAGE+104
	mov	x8, x0
	ldr	w0, [x25]
	mov	w10, #29920                     ; =0x74e0
	ldr	x19, [sp, #8]                   ; 8-byte Reload
	movk	w10, #60, lsl #16
Lloh374:
	ldr	s9, [x9, _s_forge_controls_ui@PAGEOFF+104]
	str	s8, [x8, x10]
	cbnz	w0, LBB23_45
; %bb.44:
	bl	_forge_runtime_state_get
LBB23_45:
	mov	w8, #29924                      ; =0x74e4
	movk	w8, #60, lsl #16
	str	s9, [x0, x8]
	bl	_forge_controls_save
LBB23_46:
	mov	x0, x20
	mov	x1, x19
	mov	w2, w24
	mov	x3, x23
LBB23_47:
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #128]              ; 16-byte Folded Reload
	add	sp, sp, #224
	b	_orig_pc_menu_event_function_invoke
LBB23_48:
	bl	_forge_runtime_state_get
	add	x9, x0, #964, lsl #12           ; =3948544
	ldr	w8, [x19]
	ldr	s8, [x9, #13536]
	cbz	w8, LBB23_69
; %bb.49:
	mov	x0, x8
	b	LBB23_70
LBB23_50:
	adrp	x8, _s_forge_controls_ui@PAGE+108
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+108]
	cmp	w9, #0
	cset	w9, eq
	str	w9, [x8, _s_forge_controls_ui@PAGEOFF+108]
	b	LBB23_13
LBB23_51:
	adrp	x8, _s_forge_controls_ui@PAGE+108
	mov	x0, x20
	mov	x1, x19
	mov	w2, w24
	mov	x3, x23
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+108]
	cmp	w9, #0
	cset	w9, eq
	str	w9, [x8, _s_forge_controls_ui@PAGEOFF+108]
	b	LBB23_47
LBB23_52:
	mov	w20, #-1                        ; =0xffffffff
LBB23_53:
	bl	_orig_network_chat_typing
	cbz	w0, LBB23_92
LBB23_54:
	bl	_orig_network_chat_typing
	cbz	w0, LBB23_94
LBB23_55:
	mov	w0, #11                         ; =0xb
	bl	_forge_gp_button_down
	fmov	s0, #-0.25000000
	cbnz	w0, LBB23_98
; %bb.56:
	fmov	s0, #0.25000000
	cbz	w19, LBB23_98
; %bb.57:
	ldrh	w8, [x19]
	cbz	w8, LBB23_96
; %bb.58:
	cmp	w8, #2
	b.ne	LBB23_98
; %bb.59:
	ldrh	w8, [x19, #4]
	cmp	w8, #14
	b.eq	LBB23_97
	b	LBB23_98
LBB23_60:
	cbz	w20, LBB23_46
; %bb.61:
	mov	x26, x20
Lloh375:
	adrp	x25, l_.str.137@PAGE
Lloh376:
	add	x25, x25, l_.str.137@PAGEOFF
	b	LBB23_63
	.p2align	4, , 8
LBB23_62:                               ;   in Loop: Header=BB23_63 Depth=1
	ldr	w26, [x26, #48]
	cbz	w26, LBB23_46
LBB23_63:                               ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x26, #4]
	cbz	w0, LBB23_62
; %bb.64:                               ;   in Loop: Header=BB23_63 Depth=1
	mov	x1, x25
	mov	w2, #11                         ; =0xb
	bl	_csstrncmp
	cbnz	w0, LBB23_62
; %bb.65:
	ldr	w8, [x26, #4]
	add	x0, x8, #11
	bl	_atoi
	sub	w8, w0, #1
	cmp	w8, #11
	b.hi	LBB23_46
; %bb.66:
Lloh377:
	adrp	x19, _s_forge_controls_ui@PAGE+108
Lloh378:
	add	x19, x19, _s_forge_controls_ui@PAGEOFF+108
	ldr	w9, [x19]
	stp	w8, w9, [x19, #4]
	bl	_system_milliseconds
	str	w0, [x19, #12]
	add	x0, sp, #64
	add	x1, sp, #16
	sub	x2, x29, #84
	sub	x3, x29, #88
	sub	x4, x29, #92
	sub	x5, x29, #96
	bl	_forge_poll_controller_state
	mov	w20, wzr
Lloh379:
	adrp	x19, _s_forge_controls_ui@PAGE
Lloh380:
	add	x19, x19, _s_forge_controls_ui@PAGEOFF
LBB23_67:                               ; =>This Inner Loop Header: Depth=1
	add	w0, w20, #1
	add	w23, w20, #1
	bl	_forge_key_state
	add	w8, w19, w20, lsl #2
	mov	w20, w23
	add	w8, w8, #128
	ubfx	w9, w0, #15, #1
	cmp	w23, #254
	str	w9, [x8]
	b.ne	LBB23_67
; %bb.68:
	mov	w0, #1                          ; =0x1
	bl	_forge_gp_button_down
Lloh381:
	adrp	x19, _s_forge_controls_ui@PAGE+1152
Lloh382:
	add	x19, x19, _s_forge_controls_ui@PAGEOFF+1152
	str	w0, [x19]
	mov	w0, #2                          ; =0x2
	bl	_forge_gp_button_down
	str	w0, [x19, #4]
	mov	w0, #3                          ; =0x3
	bl	_forge_gp_button_down
	str	w0, [x19, #8]
	mov	w0, #4                          ; =0x4
	bl	_forge_gp_button_down
	str	w0, [x19, #12]
	mov	w0, #5                          ; =0x5
	bl	_forge_gp_button_down
	str	w0, [x19, #16]
	mov	w0, #6                          ; =0x6
	bl	_forge_gp_button_down
	str	w0, [x19, #20]
	mov	w0, #7                          ; =0x7
	bl	_forge_gp_button_down
	str	w0, [x19, #24]
	mov	w0, #8                          ; =0x8
	bl	_forge_gp_button_down
	str	w0, [x19, #28]
	mov	w0, #9                          ; =0x9
	bl	_forge_gp_button_down
	str	w0, [x19, #32]
	mov	w0, #10                         ; =0xa
	bl	_forge_gp_button_down
	str	w0, [x19, #36]
	mov	w0, #11                         ; =0xb
	bl	_forge_gp_button_down
	str	w0, [x19, #40]
	mov	w0, #12                         ; =0xc
	bl	_forge_gp_button_down
	str	w0, [x19, #44]
	mov	w0, #13                         ; =0xd
	bl	_forge_gp_button_down
	str	w0, [x19, #48]
	mov	w0, #14                         ; =0xe
	bl	_forge_gp_button_down
	str	w0, [x19, #52]
	mov	w0, #15                         ; =0xf
	bl	_forge_gp_button_down
	str	w0, [x19, #56]
	mov	w0, #16                         ; =0x10
	bl	_forge_gp_button_down
	mov	w8, w0
	mov	w0, #1                          ; =0x1
	str	w8, [x19, #60]
	b	LBB23_91
LBB23_69:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
LBB23_70:
	add	x9, x0, #964, lsl #12           ; =3948544
	mov	w20, #29792                     ; =0x7460
	movk	w20, #60, lsl #16
	mov	w23, #12                        ; =0xc
	add	x24, sp, #64
	add	x25, sp, #16
	ldr	s9, [x9, #13540]
	b	LBB23_73
	.p2align	4, , 8
LBB23_71:                               ;   in Loop: Header=BB23_73 Depth=1
	add	w9, w8, w20
	mov	x0, x8
	ldr	w9, [x9]
	str	w9, [x24]
LBB23_72:                               ;   in Loop: Header=BB23_73 Depth=1
	add	w9, w0, w20
	add	w20, w20, #4
	add	w9, w9, #64
	add	w24, w24, #4
	subs	w23, w23, #1
	ldr	w9, [x9]
	str	w9, [x25]
	add	w25, w25, #4
	b.eq	LBB23_76
LBB23_73:                               ; =>This Inner Loop Header: Depth=1
	cbnz	w8, LBB23_71
; %bb.74:                               ;   in Loop: Header=BB23_73 Depth=1
	bl	_forge_runtime_state_get
	add	w9, w0, w20
	ldr	w8, [x19]
	ldr	w9, [x9]
	mov	x0, x8
	str	w9, [x24]
	cbnz	w8, LBB23_72
; %bb.75:                               ;   in Loop: Header=BB23_73 Depth=1
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
	b	LBB23_72
LBB23_76:
	bl	_forge_controls_init_defaults
	mov	w23, #29792                     ; =0x7460
	mov	w24, #29856                     ; =0x74a0
	mov	w20, wzr
	movk	w23, #60, lsl #16
	movk	w24, #60, lsl #16
	add	x25, sp, #64
	add	x26, sp, #16
Lloh383:
	adrp	x27, _s_forge_controls_ui@PAGE
Lloh384:
	add	x27, x27, _s_forge_controls_ui@PAGEOFF
	b	LBB23_78
	.p2align	4, , 8
LBB23_77:                               ;   in Loop: Header=BB23_78 Depth=1
	add	w8, w20, w24
	add	w20, w20, #4
	add	w8, w0, w8
	cmp	w20, #48
	str	w28, [x8]
	b.eq	LBB23_86
LBB23_78:                               ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x19]
	cbz	w0, LBB23_80
; %bb.79:                               ;   in Loop: Header=BB23_78 Depth=1
	add	w8, w20, w23
	add	w9, w27, w20
	add	w8, w0, w8
	add	w9, w9, #4
	ldr	w8, [x8]
	str	w8, [x9]
	b	LBB23_81
	.p2align	4, , 8
LBB23_80:                               ;   in Loop: Header=BB23_78 Depth=1
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x19]
	add	w8, w8, w20
	add	w28, w27, w20
	add	w8, w8, w23
	add	w9, w28, #4
	ldr	w8, [x8]
	str	w8, [x9]
	cbz	w0, LBB23_84
LBB23_81:                               ;   in Loop: Header=BB23_78 Depth=1
	add	w8, w20, w24
	add	w9, w25, w20
	add	w8, w0, w8
	add	w10, w27, w20
	add	w10, w10, #52
	ldr	w28, [x9]
	ldr	w8, [x8]
	str	w8, [x10]
LBB23_82:                               ;   in Loop: Header=BB23_78 Depth=1
	add	w8, w20, w23
	add	w9, w26, w20
	add	w8, w0, w8
	str	w28, [x8]
	ldr	w0, [x19]
	ldr	w28, [x9]
	cbnz	w0, LBB23_77
; %bb.83:                               ;   in Loop: Header=BB23_78 Depth=1
	bl	_forge_runtime_state_get
	b	LBB23_77
LBB23_84:                               ;   in Loop: Header=BB23_78 Depth=1
	bl	_forge_runtime_state_get
	add	w8, w0, w20
	add	w9, w25, w20
	add	w8, w8, w24
	ldr	w0, [x19]
	add	w10, w28, #52
	ldr	w28, [x9]
	ldr	w8, [x8]
	str	w8, [x10]
	cbnz	w0, LBB23_82
; %bb.85:                               ;   in Loop: Header=BB23_78 Depth=1
	bl	_forge_runtime_state_get
	b	LBB23_82
LBB23_86:
	fmov	v0.2s, #1.00000000
	ldr	w8, [x19]
Lloh385:
	adrp	x9, _s_forge_controls_ui@PAGE+100
Lloh386:
	add	x9, x9, _s_forge_controls_ui@PAGEOFF+100
Lloh387:
	str	d0, [x9]
	cbz	w8, LBB23_88
; %bb.87:
	mov	w9, #29920                      ; =0x74e0
	movk	w9, #60, lsl #16
	str	s8, [x8, x9]
	b	LBB23_90
LBB23_88:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
	mov	w9, #29920                      ; =0x74e0
	movk	w9, #60, lsl #16
	str	s8, [x0, x9]
	cbnz	w8, LBB23_90
; %bb.89:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB23_90:
	mov	w9, #29924                      ; =0x74e4
	adrp	x10, _s_forge_controls_ui@PAGE+112
	movk	w9, #60, lsl #16
	mov	w11, #-1                        ; =0xffffffff
	mov	w0, #1                          ; =0x1
	str	s9, [x8, x9]
	str	w11, [x10, _s_forge_controls_ui@PAGEOFF+112]
LBB23_91:
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #128]              ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
LBB23_92:
	bl	_social_chat_typing
	cbnz	w0, LBB23_54
; %bb.93:
	adrp	x8, _s_forge_keys_down@PAGE+80
	fmov	s0, #-0.25000000
	ldrb	w8, [x8, _s_forge_keys_down@PAGEOFF+80]
	cbnz	w8, LBB23_98
	b	LBB23_54
LBB23_94:
	bl	_social_chat_typing
	cbnz	w0, LBB23_55
; %bb.95:
	adrp	x8, _s_forge_keys_down@PAGE+4
	fmov	s0, #-0.25000000
	ldrb	w8, [x8, _s_forge_keys_down@PAGEOFF+4]
	cbnz	w8, LBB23_98
	b	LBB23_55
LBB23_96:
	ldrsh	w8, [x19, #4]
	tbz	w8, #31, LBB23_98
LBB23_97:
	fmov	s0, #-0.25000000
LBB23_98:
	cmp	w20, #1
	b.eq	LBB23_101
; %bb.99:
	cbnz	w20, LBB23_103
; %bb.100:
	adrp	x8, _s_forge_controls_ui@PAGE+100
	fmov	s2, #0.25000000
	mov	w0, #1                          ; =0x1
	ldr	s1, [x8, _s_forge_controls_ui@PAGEOFF+100]
	fadd	s0, s0, s1
	fmov	s1, #2.50000000
	fcmp	s0, s2
	fcsel	s0, s2, s0, mi
	fcmp	s0, s1
	fcsel	s0, s1, s0, gt
	str	s0, [x8, _s_forge_controls_ui@PAGEOFF+100]
	b	LBB23_91
LBB23_101:
	adrp	x8, _s_forge_controls_ui@PAGE+104
	fmov	s2, #0.25000000
	ldr	s1, [x8, _s_forge_controls_ui@PAGEOFF+104]
	fadd	s0, s0, s1
	fmov	s1, #2.50000000
	fcmp	s0, s2
	fcsel	s0, s2, s0, mi
	fcmp	s0, s1
	fcsel	s0, s1, s0, gt
LBB23_102:
	mov	w0, #1                          ; =0x1
	str	s0, [x8, _s_forge_controls_ui@PAGEOFF+104]
	b	LBB23_91
LBB23_103:
	adrp	x8, _s_forge_controls_ui@PAGE+108
	mov	w0, #1                          ; =0x1
	str	w0, [x8, _s_forge_controls_ui@PAGEOFF+108]
	b	LBB23_91
LBB23_104:
	adrp	x8, _s_forge_controls_ui@PAGE+104
	fmov	s0, #0.25000000
	fmov	s2, #2.50000000
	ldr	s1, [x8, _s_forge_controls_ui@PAGEOFF+104]
	fadd	s1, s1, s0
	fcmp	s1, s2
	fcsel	s0, s0, s1, gt
	b	LBB23_102
	.loh AdrpAdd	Lloh347, Lloh348
	.loh AdrpAdd	Lloh349, Lloh350
	.loh AdrpAdd	Lloh351, Lloh352
	.loh AdrpAdd	Lloh353, Lloh354
	.loh AdrpAdd	Lloh355, Lloh356
	.loh AdrpAdd	Lloh357, Lloh358
	.loh AdrpLdrGot	Lloh359, Lloh360
	.loh AdrpAdd	Lloh362, Lloh363
	.loh AdrpLdrGot	Lloh361, Lloh364
	.loh AdrpLdr	Lloh365, Lloh366
	.loh AdrpLdr	Lloh367, Lloh368
	.loh AdrpAdd	Lloh369, Lloh370
	.loh AdrpAdd	Lloh371, Lloh372
	.loh AdrpLdr	Lloh373, Lloh374
	.loh AdrpAdd	Lloh375, Lloh376
	.loh AdrpAdd	Lloh379, Lloh380
	.loh AdrpAdd	Lloh377, Lloh378
	.loh AdrpAdd	Lloh381, Lloh382
	.loh AdrpAdd	Lloh383, Lloh384
	.loh AdrpAddStr	Lloh385, Lloh386, Lloh387
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_controls_ui_ensure_loaded
_forge_controls_ui_ensure_loaded:       ; @forge_controls_ui_ensure_loaded
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
Lloh388:
	adrp	x19, _g_forge_state@GOTPAGE
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
Lloh389:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x19]
	cbnz	w0, LBB24_2
; %bb.1:
	bl	_forge_runtime_state_get
LBB24_2:
	add	x8, x0, #964, lsl #12           ; =3948544
	ldr	w8, [x8, #13408]
	cbnz	w8, LBB24_7
; %bb.3:
	ldr	w0, [x19]
	cbnz	w0, LBB24_5
; %bb.4:
	bl	_forge_runtime_state_get
LBB24_5:
	add	x8, x0, #964, lsl #12           ; =3948544
	ldr	w8, [x8, #13472]
	cbnz	w8, LBB24_7
; %bb.6:
	bl	_forge_controls_init_defaults
	bl	_forge_controls_load
LBB24_7:
Lloh390:
	adrp	x8, _s_forge_controls_ui@PAGE
Lloh391:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF]
	cbnz	w8, LBB24_27
; %bb.8:
	ldr	w8, [x19]
	mov	w23, #29792                     ; =0x7460
	mov	w20, #12                        ; =0xc
	movk	w23, #60, lsl #16
Lloh392:
	adrp	x24, _s_forge_controls_ui@PAGE+52
Lloh393:
	add	x24, x24, _s_forge_controls_ui@PAGEOFF+52
	b	LBB24_11
	.p2align	4, , 8
LBB24_9:                                ;   in Loop: Header=BB24_11 Depth=1
	add	w9, w8, w23
	sub	w10, w24, #48
	mov	x0, x8
	ldr	w9, [x9]
	str	w9, [x10]
LBB24_10:                               ;   in Loop: Header=BB24_11 Depth=1
	add	w9, w0, w23
	add	w23, w23, #4
	add	w9, w9, #64
	subs	w20, w20, #1
	ldr	w9, [x9]
	str	w9, [x24]
	add	w24, w24, #4
	b.eq	LBB24_14
LBB24_11:                               ; =>This Inner Loop Header: Depth=1
	cbnz	w8, LBB24_9
; %bb.12:                               ;   in Loop: Header=BB24_11 Depth=1
	bl	_forge_runtime_state_get
	add	w9, w0, w23
	ldr	w8, [x19]
	sub	w10, w24, #48
	ldr	w9, [x9]
	mov	x0, x8
	str	w9, [x10]
	cbnz	w8, LBB24_10
; %bb.13:                               ;   in Loop: Header=BB24_11 Depth=1
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
	b	LBB24_10
LBB24_14:
	mov	x0, x8
	cbnz	w8, LBB24_16
; %bb.15:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
LBB24_16:
	add	x9, x0, #964, lsl #12           ; =3948544
	fmov	s0, #0.25000000
	ldr	s1, [x9, #13536]
	fcmp	s1, s0
	fmov	s0, #1.00000000
	b.lt	LBB24_20
; %bb.17:
	mov	x0, x8
	cbnz	w8, LBB24_19
; %bb.18:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
LBB24_19:
	add	x9, x0, #964, lsl #12           ; =3948544
	ldr	s0, [x9, #13536]
LBB24_20:
	adrp	x9, _s_forge_controls_ui@PAGE+100
	str	s0, [x9, _s_forge_controls_ui@PAGEOFF+100]
	cbnz	w8, LBB24_22
; %bb.21:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB24_22:
	add	x9, x8, #964, lsl #12           ; =3948544
	fmov	s0, #0.25000000
	ldr	s1, [x9, #13540]
	fcmp	s1, s0
	fmov	s0, #1.00000000
	b.lt	LBB24_26
; %bb.23:
	ldr	w0, [x19]
	cbnz	w0, LBB24_25
; %bb.24:
	bl	_forge_runtime_state_get
LBB24_25:
	add	x8, x0, #964, lsl #12           ; =3948544
	ldr	s0, [x8, #13540]
LBB24_26:
Lloh394:
	adrp	x8, _s_forge_controls_ui@PAGE
Lloh395:
	add	x8, x8, _s_forge_controls_ui@PAGEOFF
	mov	w9, #-1                         ; =0xffffffff
	mov	w10, #1                         ; =0x1
	str	s0, [x8, #104]
	str	w9, [x8, #112]
	str	w10, [x8]
LBB24_27:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh388, Lloh389
	.loh AdrpLdr	Lloh390, Lloh391
	.loh AdrpAdd	Lloh392, Lloh393
	.loh AdrpAdd	Lloh394, Lloh395
                                        ; -- End function
	.globl	_pc_menu_game_data_function_invoke ; -- Begin function pc_menu_game_data_function_invoke
	.p2align	4
_pc_menu_game_data_function_invoke:     ; @pc_menu_game_data_function_invoke
; %bb.0:
	sub	sp, sp, #464
	stp	x20, x19, [sp, #432]            ; 16-byte Folded Spill
	mov	x19, x0
	mov	w0, w1
	stp	x28, x27, [sp, #384]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #400]            ; 16-byte Folded Spill
	mov	w20, w1
	stp	x24, x23, [sp, #416]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #448]            ; 16-byte Folded Spill
	add	x29, sp, #448
	bl	_pc_menu_game_data_input_name
	mov	x23, x0
Lloh396:
	adrp	x25, l_.str.2@PAGE
Lloh397:
	add	x25, x25, l_.str.2@PAGEOFF
	cbz	w19, LBB25_3
; %bb.1:
	ldr	w9, [x19, #4]
	ldr	w8, [x19, #48]
	cmp	w9, #0
	csel	x24, x25, x9, eq
	cbz	w8, LBB25_4
; %bb.2:
	ldr	w8, [x8, #4]
	cmp	w8, #0
	csel	x25, x25, x8, eq
	b	LBB25_4
LBB25_3:
	mov	x24, x25
LBB25_4:
	bl	_firefight_active
Lloh398:
	adrp	x26, _g_forge_session_enabled@GOTPAGE
Lloh399:
	ldr	w26, [x26, _g_forge_session_enabled@GOTPAGEOFF]
	cbnz	w0, LBB25_6
; %bb.5:
	bl	_multiplayer_firefight_mode
	cbz	w0, LBB25_25
LBB25_6:
	mov	w8, wzr
LBB25_7:
	str	w8, [x26]
LBB25_8:
	cbz	w23, LBB25_14
; %bb.9:
Lloh400:
	adrp	x1, l_.str.49@PAGE
Lloh401:
	add	x1, x1, l_.str.49@PAGEOFF
	mov	x0, x23
	bl	_csstrcmp
	cbnz	w0, LBB25_11
; %bb.10:
Lloh402:
	adrp	x1, l_.str.33@PAGE
Lloh403:
	add	x1, x1, l_.str.33@PAGEOFF
	mov	x0, x24
	bl	_csstrcmp
	cbz	w0, LBB25_41
LBB25_11:
Lloh404:
	adrp	x1, l_.str.49@PAGE
Lloh405:
	add	x1, x1, l_.str.49@PAGEOFF
	mov	x0, x23
	bl	_csstrcmp
	cbnz	w0, LBB25_13
; %bb.12:
Lloh406:
	adrp	x1, l_.str.35@PAGE
Lloh407:
	add	x1, x1, l_.str.35@PAGEOFF
	mov	x0, x24
	bl	_csstrcmp
	cbz	w0, LBB25_44
LBB25_13:
Lloh408:
	adrp	x1, l_.str.50@PAGE
Lloh409:
	add	x1, x1, l_.str.50@PAGEOFF
	mov	x0, x23
	bl	_csstrcmp
	cbz	w0, LBB25_18
LBB25_14:
	mov	x0, x19
	mov	w1, w20
	bl	_orig_pc_menu_game_data_function_invoke
	cbz	w23, LBB25_17
; %bb.15:
	ldr	w8, [x26]
	cbz	w8, LBB25_17
; %bb.16:
Lloh410:
	adrp	x1, l_.str.51@PAGE
Lloh411:
	add	x1, x1, l_.str.51@PAGEOFF
	mov	x0, x23
	bl	_csstrcmp
	cbz	w0, LBB25_28
LBB25_17:
	ldp	x29, x30, [sp, #448]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #432]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #416]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #400]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #384]            ; 16-byte Folded Reload
	add	sp, sp, #464
	ret
LBB25_18:
	mov	x8, x19
	.p2align	4, , 8
LBB25_19:                               ; =>This Inner Loop Header: Depth=1
	mov	x0, x8
	cbz	w0, LBB25_23
; %bb.20:                               ;   in Loop: Header=BB25_19 Depth=1
	ldr	w8, [x0, #48]
	cbnz	w8, LBB25_19
; %bb.21:
Lloh412:
	adrp	x1, l_.str.136@PAGE
Lloh413:
	add	x1, x1, l_.str.136@PAGEOFF
	add	x2, sp, #48
	str	wzr, [sp, #48]
	bl	_fw_descendant
	cbz	w0, LBB25_23
; %bb.22:
	ldrsh	w8, [x0, #60]
	cmp	w8, #4
	b.ge	LBB25_24
LBB25_23:
	mov	x0, x19
	mov	w1, w20
	bl	_orig_pc_menu_game_data_function_invoke
LBB25_24:
	mov	x0, x19
	ldp	x29, x30, [sp, #448]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #432]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #416]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #400]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #384]            ; 16-byte Folded Reload
	add	sp, sp, #464
	b	_forge_controls_menu_update
LBB25_25:
Lloh414:
	adrp	x1, l_.str.20@PAGE
Lloh415:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	x0, x24
	mov	w2, #6                          ; =0x6
	bl	_csstrncmp
	cbz	w0, LBB25_27
; %bb.26:
Lloh416:
	adrp	x1, l_.str.20@PAGE
Lloh417:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	x0, x25
	mov	w2, #6                          ; =0x6
	bl	_csstrncmp
	cbnz	w0, LBB25_8
LBB25_27:
	mov	w8, #1                          ; =0x1
	b	LBB25_7
LBB25_28:
	str	wzr, [sp, #48]
	cbz	w19, LBB25_17
; %bb.29:
Lloh418:
	adrp	x1, l_.str.52@PAGE
Lloh419:
	add	x1, x1, l_.str.52@PAGEOFF
	add	x2, sp, #48
	mov	x0, x19
	bl	_fw_descendant
	cbz	w0, LBB25_31
; %bb.30:
	strb	wzr, [x0, #16]
LBB25_31:
Lloh420:
	adrp	x1, l_.str.53@PAGE
Lloh421:
	add	x1, x1, l_.str.53@PAGEOFF
	add	x2, sp, #48
	mov	x0, x19
	str	wzr, [sp, #48]
	bl	_fw_descendant
	cbz	w0, LBB25_33
; %bb.32:
	strb	wzr, [x0, #16]
LBB25_33:
Lloh422:
	adrp	x1, l_.str.54@PAGE
Lloh423:
	add	x1, x1, l_.str.54@PAGEOFF
	add	x2, sp, #48
	mov	x0, x19
	str	wzr, [sp, #48]
	bl	_fw_descendant
	cbz	w0, LBB25_35
; %bb.34:
	strb	wzr, [x0, #16]
LBB25_35:
Lloh424:
	adrp	x1, l_.str.55@PAGE
Lloh425:
	add	x1, x1, l_.str.55@PAGEOFF
	add	x2, sp, #48
	mov	x0, x19
	str	wzr, [sp, #48]
	bl	_fw_descendant
	cbz	w0, LBB25_37
; %bb.36:
	strb	wzr, [x0, #16]
LBB25_37:
Lloh426:
	adrp	x1, l_.str.56@PAGE
Lloh427:
	add	x1, x1, l_.str.56@PAGEOFF
	add	x2, sp, #48
	mov	x0, x19
	str	wzr, [sp, #48]
	bl	_fw_descendant
	cbz	w0, LBB25_39
; %bb.38:
	strb	wzr, [x0, #16]
LBB25_39:
Lloh428:
	adrp	x1, l_.str.57@PAGE
Lloh429:
	add	x1, x1, l_.str.57@PAGEOFF
	add	x2, sp, #48
	mov	x0, x19
	str	wzr, [sp, #48]
	bl	_fw_descendant
	cbz	w0, LBB25_17
; %bb.40:
	strb	wzr, [x0, #16]
	b	LBB25_17
LBB25_41:
	str	wzr, [sp, #48]
	cbz	w19, LBB25_58
; %bb.42:
Lloh430:
	adrp	x1, l_.str.138@PAGE
Lloh431:
	add	x1, x1, l_.str.138@PAGEOFF
	add	x2, sp, #48
	mov	x0, x19
	bl	_fw_descendant
	ldr	w20, [x19, #72]
	cbz	w0, LBB25_62
; %bb.43:
	ldrsh	w8, [x0, #60]
	cmp	w8, #0
	cset	w24, gt
	b	LBB25_63
LBB25_44:
	movi	v0.2d, #0000000000000000
	str	xzr, [sp, #80]
	stp	q0, q0, [sp, #48]
	cbz	w19, LBB25_51
; %bb.45:
	ldr	w24, [x19, #52]
	cbz	w24, LBB25_51
; %bb.46:
	mov	w25, wzr
	mov	w23, #-1                        ; =0xffffffff
	add	x26, sp, #48
Lloh432:
	adrp	x20, l_.str.139@PAGE
Lloh433:
	add	x20, x20, l_.str.139@PAGEOFF
	b	LBB25_48
	.p2align	4, , 8
LBB25_47:                               ;   in Loop: Header=BB25_48 Depth=1
	ldr	w24, [x24, #44]
	cbz	w24, LBB25_52
LBB25_48:                               ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x24, #4]
	cbz	w0, LBB25_47
; %bb.49:                               ;   in Loop: Header=BB25_48 Depth=1
	mov	x1, x20
	mov	w2, #10                         ; =0xa
	bl	_csstrncmp
	cmp	w25, #10
	ccmp	w0, #0, #0, lt
	b.ne	LBB25_47
; %bb.50:                               ;   in Loop: Header=BB25_48 Depth=1
	ldr	w8, [x19, #56]
	str	w24, [x26, w25, sxtw #2]
	cmp	w24, w8
	csel	w23, w25, w23, eq
	add	w25, w25, #1
	b	LBB25_47
LBB25_51:
	mov	w23, #-1                        ; =0xffffffff
LBB25_52:
	adrp	x20, _s_forge_profile_screen_storage@PAGE
	ldr	w8, [x20, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w8, LBB25_59
; %bb.53:
	mov	x25, x8
	add	x24, x8, #12
	add	x27, x8, #4
	ldr	w26, [x25], #8
	cmp	w26, #0
	b.le	LBB25_61
; %bb.54:
	ldr	w8, [x24]
	tbnz	w23, #31, LBB25_139
; %bb.55:
	cmp	w8, #0
	ccmp	w23, #2, #0, eq
	b.lo	LBB25_146
; %bb.56:
	ldr	w9, [x27]
	subs	w9, w9, #1
	b.lt	LBB25_149
; %bb.57:
	ldr	w8, [sp, #48]
	mov	w23, wzr
	str	w9, [x27]
	b	LBB25_165
LBB25_58:
	mov	w8, #72                         ; =0x48
	mov	w24, wzr
	ldr	w20, [x8]
	b	LBB25_63
LBB25_59:
	mov	w0, #1                          ; =0x1
	mov	w1, #4436                       ; =0x1154
	mov	w19, #4436                      ; =0x1154
	bl	_calloc
	str	w0, [x20, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w0, LBB25_215
; %bb.60:
	add	x24, x0, #12
	add	x27, x0, #4
	add	x25, x0, #8
LBB25_61:
	str	wzr, [x27]
	str	wzr, [x25]
	b	LBB25_175
LBB25_62:
	mov	w24, wzr
LBB25_63:
Lloh434:
	adrp	x8, _s_forge_menu@PAGE
Lloh435:
	ldr	w8, [x8, _s_forge_menu@PAGEOFF]
	cmp	w24, w8
	b.eq	LBB25_65
; %bb.64:
	mov	w0, w24
	bl	_scan_forge_edit_maps
LBB25_65:
	ldr	w23, [x19, #52]
	cbz	w23, LBB25_114
; %bb.66:
	cmp	w24, #0
Lloh436:
	adrp	x8, l_.str.142@PAGE
Lloh437:
	add	x8, x8, l_.str.142@PAGEOFF
Lloh438:
	adrp	x9, l_.str.141@PAGE
Lloh439:
	add	x9, x9, l_.str.141@PAGEOFF
	mov	w27, wzr
	csel	x8, x9, x8, eq
Lloh440:
	adrp	x26, _s_forge_menu@PAGE+4049
Lloh441:
	add	x26, x26, _s_forge_menu@PAGEOFF+4049
	add	w28, w8, #1
Lloh442:
	adrp	x25, l_.str.139@PAGE
Lloh443:
	add	x25, x25, l_.str.139@PAGEOFF
	ldrb	w8, [x8]
Lloh444:
	adrp	x24, _s_forge_menu@PAGE+4
Lloh445:
	add	x24, x24, _s_forge_menu@PAGEOFF+4
	stp	x20, x28, [sp, #24]             ; 16-byte Folded Spill
	str	w8, [sp, #20]                   ; 4-byte Spill
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [sp, #44]                   ; 4-byte Spill
	b	LBB25_68
	.p2align	4, , 8
LBB25_67:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w23, [x23, #44]
	add	w27, w27, #1
	add	w26, w26, #64
	cbz	w23, LBB25_111
LBB25_68:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB25_82 Depth 2
                                        ;     Child Loop BB25_94 Depth 2
	cmp	w27, #1
	b.lt	LBB25_67
; %bb.69:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w0, [x23, #4]
	cbz	w0, LBB25_111
; %bb.70:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	x1, x25
	mov	w2, #10                         ; =0xa
	bl	_csstrncmp
	cbnz	w0, LBB25_111
; %bb.71:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w8, [x24]
	cbz	w8, LBB25_85
; %bb.72:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w28, [x24, #4]
	add	w9, w27, w28
	sub	w20, w9, #1
	cmp	w20, w8
	cset	w8, lt
	strb	w8, [x23, #16]
	b.ge	LBB25_97
; %bb.73:                               ;   in Loop: Header=BB25_68 Depth=1
	add	x2, sp, #48
	mov	x0, x23
Lloh446:
	adrp	x1, l_.str.140@PAGE
Lloh447:
	add	x1, x1, l_.str.140@PAGEOFF
	str	wzr, [sp, #48]
	bl	_fw_descendant
	sxtw	x8, w20
Lloh448:
	adrp	x9, _s_forge_menu@PAGE
Lloh449:
	add	x9, x9, _s_forge_menu@PAGEOFF
	add	x8, x9, x8, lsl #6
	mov	w9, #4112                       ; =0x1010
	add	x24, x8, x9
	cbz	w24, LBB25_100
; %bb.74:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	x25, x0
	cbz	w25, LBB25_100
; %bb.75:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w1, [x25]
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x25, #64]
	cmn	w1, #1
	b.eq	LBB25_78
; %bb.76:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB25_78
; %bb.77:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB25_78:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w0, [x25, #60]
	cbnz	w0, LBB25_80
; %bb.79:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh450:
	adrp	x2, l_.str.154@PAGE
Lloh451:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
	str	w0, [x25, #60]
	cbz	w0, LBB25_100
LBB25_80:                               ;   in Loop: Header=BB25_68 Depth=1
	ldrb	w10, [x24]
	cbz	w10, LBB25_98
; %bb.81:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	w8, wzr
	add	w9, w26, w28, lsl #6
	.p2align	4, , 8
LBB25_82:                               ;   Parent Loop BB25_68 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w11, [x25, #60]
	and	w10, w10, #0xff
	add	w12, w9, w8
	add	w11, w11, w8, lsl #1
	strh	w10, [x11]
	add	w11, w8, #1
	ldrb	w10, [x12]
	cbz	w10, LBB25_84
; %bb.83:                               ;   in Loop: Header=BB25_82 Depth=2
	cmp	w8, #253
	mov	w8, w11
	b.lo	LBB25_82
LBB25_84:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w0, [x25, #60]
	b	LBB25_99
LBB25_85:                               ;   in Loop: Header=BB25_68 Depth=1
	cmp	w27, #1
	cset	w8, eq
	strb	w8, [x23, #16]
	b.ne	LBB25_102
; %bb.86:                               ;   in Loop: Header=BB25_68 Depth=1
	add	x2, sp, #48
	mov	x0, x23
Lloh452:
	adrp	x1, l_.str.140@PAGE
Lloh453:
	add	x1, x1, l_.str.140@PAGEOFF
	str	wzr, [sp, #48]
	bl	_fw_descendant
	mov	x25, x0
	cbz	w25, LBB25_101
; %bb.87:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w1, [x25]
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x25, #64]
	cmn	w1, #1
	b.eq	LBB25_90
; %bb.88:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB25_90
; %bb.89:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB25_90:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w0, [x25, #60]
Lloh454:
	adrp	x1, l_.str.143@PAGE
Lloh455:
	add	x1, x1, l_.str.143@PAGEOFF
	cbnz	w0, LBB25_92
; %bb.91:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh456:
	adrp	x2, l_.str.154@PAGE
Lloh457:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
Lloh458:
	adrp	x1, l_.str.143@PAGE
Lloh459:
	add	x1, x1, l_.str.143@PAGEOFF
	str	w0, [x25, #60]
	cbz	w0, LBB25_110
LBB25_92:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w10, [sp, #20]                  ; 4-byte Reload
	cbz	w10, LBB25_109
; %bb.93:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	w8, wzr
	.p2align	4, , 8
LBB25_94:                               ;   Parent Loop BB25_68 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w9, [x25, #60]
	and	w10, w10, #0xff
	add	w11, w28, w8
	add	w9, w9, w8, lsl #1
	strh	w10, [x9]
	add	w9, w8, #1
	ldrb	w10, [x11]
	cbz	w10, LBB25_96
; %bb.95:                               ;   in Loop: Header=BB25_94 Depth=2
	cmp	w8, #253
	mov	w8, w9
	b.lo	LBB25_94
LBB25_96:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	w0, [x25, #60]
Lloh460:
	adrp	x25, l_.str.139@PAGE
Lloh461:
	add	x25, x25, l_.str.139@PAGEOFF
Lloh462:
	adrp	x1, l_.str.143@PAGE
Lloh463:
	add	x1, x1, l_.str.143@PAGEOFF
	strh	wzr, [x0, w9, sxtw #1]
	b	LBB25_103
LBB25_97:                               ;   in Loop: Header=BB25_68 Depth=1
	ldr	x28, [sp, #32]                  ; 8-byte Reload
	b	LBB25_102
LBB25_98:                               ;   in Loop: Header=BB25_68 Depth=1
	mov	w11, wzr
LBB25_99:                               ;   in Loop: Header=BB25_68 Depth=1
	strh	wzr, [x0, w11, sxtw #1]
LBB25_100:                              ;   in Loop: Header=BB25_68 Depth=1
	ldr	w8, [x19, #56]
	ldr	x28, [sp, #32]                  ; 8-byte Reload
	cmp	w23, w8
	ldr	w8, [sp, #44]                   ; 4-byte Reload
	csel	w8, w20, w8, eq
	str	w8, [sp, #44]                   ; 4-byte Spill
LBB25_101:                              ;   in Loop: Header=BB25_68 Depth=1
Lloh464:
	adrp	x25, l_.str.139@PAGE
Lloh465:
	add	x25, x25, l_.str.139@PAGEOFF
LBB25_102:                              ;   in Loop: Header=BB25_68 Depth=1
Lloh466:
	adrp	x1, l_.str.143@PAGE
Lloh467:
	add	x1, x1, l_.str.143@PAGEOFF
LBB25_103:                              ;   in Loop: Header=BB25_68 Depth=1
	add	x2, sp, #48
	mov	x0, x23
	str	wzr, [sp, #48]
	mov	x24, x1
	bl	_fw_descendant
	cbz	w0, LBB25_105
; %bb.104:                              ;   in Loop: Header=BB25_68 Depth=1
	ldr	w8, [x19, #56]
	add	x2, sp, #48
	mov	x0, x23
	mov	x1, x24
	str	wzr, [sp, #48]
	cmp	w23, w8
	cset	w20, eq
	bl	_fw_descendant
	strb	w20, [x0, #16]
LBB25_105:                              ;   in Loop: Header=BB25_68 Depth=1
Lloh468:
	adrp	x20, l_.str.144@PAGE
Lloh469:
	add	x20, x20, l_.str.144@PAGEOFF
	add	x2, sp, #48
	mov	x0, x23
	mov	x1, x20
	str	wzr, [sp, #48]
	bl	_fw_descendant
	cbz	w0, LBB25_107
; %bb.106:                              ;   in Loop: Header=BB25_68 Depth=1
	add	x2, sp, #48
	mov	x0, x23
	mov	x1, x20
	str	wzr, [sp, #48]
	bl	_fw_descendant
	strb	wzr, [x0, #16]
LBB25_107:                              ;   in Loop: Header=BB25_68 Depth=1
Lloh470:
	adrp	x20, l_.str.145@PAGE
Lloh471:
	add	x20, x20, l_.str.145@PAGEOFF
	add	x2, sp, #48
	mov	x0, x23
	mov	x1, x20
	str	wzr, [sp, #48]
	bl	_fw_descendant
Lloh472:
	adrp	x24, _s_forge_menu@PAGE+4
Lloh473:
	add	x24, x24, _s_forge_menu@PAGEOFF+4
	cbz	w0, LBB25_67
; %bb.108:                              ;   in Loop: Header=BB25_68 Depth=1
	add	x2, sp, #48
	mov	x0, x23
	mov	x1, x20
	str	wzr, [sp, #48]
	bl	_fw_descendant
	strb	wzr, [x0, #16]
	b	LBB25_67
LBB25_109:                              ;   in Loop: Header=BB25_68 Depth=1
Lloh474:
	adrp	x25, l_.str.139@PAGE
Lloh475:
	add	x25, x25, l_.str.139@PAGEOFF
	strh	wzr, [x0, wzr, sxtw #1]
	b	LBB25_103
LBB25_110:                              ;   in Loop: Header=BB25_68 Depth=1
Lloh476:
	adrp	x25, l_.str.139@PAGE
Lloh477:
	add	x25, x25, l_.str.139@PAGEOFF
	b	LBB25_103
LBB25_111:
	ldr	x20, [sp, #24]                  ; 8-byte Reload
	ldr	w9, [sp, #44]                   ; 4-byte Reload
	tbnz	w9, #31, LBB25_114
; %bb.112:
Lloh478:
	adrp	x8, _s_forge_menu@PAGE+4
Lloh479:
	ldr	w8, [x8, _s_forge_menu@PAGEOFF+4]
	cmp	w9, w8
	b.ge	LBB25_114
; %bb.113:
	adrp	x8, _s_forge_menu@PAGE+12
	str	w9, [x8, _s_forge_menu@PAGEOFF+12]
LBB25_114:
	cbz	w20, LBB25_17
; %bb.115:
Lloh480:
	adrp	x1, l_.str.146@PAGE
Lloh481:
	add	x1, x1, l_.str.146@PAGEOFF
	add	x2, sp, #48
	mov	x0, x20
	str	wzr, [sp, #48]
	bl	_fw_descendant
	mov	x25, x0
Lloh482:
	adrp	x1, l_.str.147@PAGE
Lloh483:
	add	x1, x1, l_.str.147@PAGEOFF
	add	x2, sp, #48
	mov	x0, x20
	str	wzr, [sp, #48]
	bl	_fw_descendant
	mov	x26, x0
Lloh484:
	adrp	x1, l_.str.148@PAGE
Lloh485:
	add	x1, x1, l_.str.148@PAGEOFF
	add	x2, sp, #48
	mov	x0, x20
	str	wzr, [sp, #48]
	bl	_fw_descendant
	mov	x27, x0
Lloh486:
	adrp	x1, l_.str.149@PAGE
Lloh487:
	add	x1, x1, l_.str.149@PAGEOFF
	add	x2, sp, #48
	mov	x0, x20
	str	wzr, [sp, #48]
	bl	_fw_descendant
	mov	x24, x0
Lloh488:
	adrp	x1, l_.str.150@PAGE
Lloh489:
	add	x1, x1, l_.str.150@PAGEOFF
	add	x2, sp, #48
	mov	x0, x20
	str	wzr, [sp, #48]
	bl	_fw_descendant
	mov	x23, x0
Lloh490:
	adrp	x1, l_.str.151@PAGE
Lloh491:
	add	x1, x1, l_.str.151@PAGEOFF
	add	x2, sp, #48
	mov	x0, x20
	str	wzr, [sp, #48]
	mov	x28, x20
	bl	_fw_descendant
	mov	x19, x0
	cbz	w25, LBB25_117
; %bb.116:
	strb	wzr, [x25, #16]
LBB25_117:
	cbz	w26, LBB25_119
; %bb.118:
	strb	wzr, [x26, #16]
LBB25_119:
	cbz	w27, LBB25_121
; %bb.120:
	strb	wzr, [x27, #16]
LBB25_121:
Lloh492:
	adrp	x1, l_.str.152@PAGE
Lloh493:
	add	x1, x1, l_.str.152@PAGEOFF
	add	x2, sp, #48
	mov	x0, x28
	str	wzr, [sp, #48]
	mov	x20, x28
	bl	_fw_descendant
	cbz	w0, LBB25_123
; %bb.122:
	strb	wzr, [x0, #16]
LBB25_123:
	mov	w8, #1                          ; =0x1
Lloh494:
	adrp	x1, l_.str.152@PAGE
Lloh495:
	add	x1, x1, l_.str.152@PAGEOFF
	add	x2, sp, #48
	mov	x0, x20
	str	w8, [sp, #48]
	bl	_fw_descendant
	cbz	w0, LBB25_125
; %bb.124:
	strb	wzr, [x0, #16]
LBB25_125:
	mov	w8, #2                          ; =0x2
Lloh496:
	adrp	x1, l_.str.152@PAGE
Lloh497:
	add	x1, x1, l_.str.152@PAGEOFF
	add	x2, sp, #48
	mov	x0, x20
	str	w8, [sp, #48]
	bl	_fw_descendant
	cbz	w0, LBB25_127
; %bb.126:
	strb	wzr, [x0, #16]
LBB25_127:
Lloh498:
	adrp	x8, _s_forge_menu@PAGE+4
Lloh499:
	add	x8, x8, _s_forge_menu@PAGEOFF+4
	ldr	w9, [x8]
	ldr	w8, [x8, #8]
	cmp	w9, #0
	cset	w10, gt
	cmn	w8, #1
	ccmp	w8, w9, #0, gt
	cset	w9, lt
	tst	w10, w9
	b.eq	LBB25_133
; %bb.128:
Lloh500:
	adrp	x25, _s_forge_menu@PAGE
Lloh501:
	add	x25, x25, _s_forge_menu@PAGEOFF
	add	w26, w25, #16
Lloh502:
	adrp	x2, l_.str.37@PAGE
Lloh503:
	add	x2, x2, l_.str.37@PAGEOFF
	add	w8, w26, w8, lsl #6
	sub	x0, x29, #200
	mov	w1, #128                        ; =0x80
	str	w8, [sp]
	bl	_halo_linux_snprintf
	sub	x0, x29, #200
	bl	_custom_edition_maps_display_index
	ldr	w8, [x25, #12]
	mov	w9, #8208                       ; =0x2010
	add	w9, w25, w9
	mov	w20, w0
Lloh504:
	adrp	x2, l_.str.153@PAGE
Lloh505:
	add	x2, x2, l_.str.153@PAGEOFF
	add	x0, sp, #48
	mov	w1, #192                        ; =0xc0
	lsl	w8, w8, #6
	add	w9, w9, w8
	add	w8, w26, w8
	stp	w9, w8, [sp]
	bl	_halo_linux_snprintf
	cmn	w20, #1
	b.eq	LBB25_133
; %bb.129:
	mov	w0, w20
	bl	_custom_edition_maps_description
	cbz	w0, LBB25_156
; %bb.130:
	ldrb	w9, [sp, #48]
	cbz	w9, LBB25_154
; %bb.131:
	add	x8, sp, #48
	mov	w10, wzr
	add	w8, w8, #1
	.p2align	4, , 8
LBB25_132:                              ; =>This Inner Loop Header: Depth=1
	and	w9, w9, #0xff
	add	w11, w0, w10, lsl #1
	add	w12, w8, w10
	add	w10, w10, #1
	strh	w9, [x11]
	ldrb	w9, [x12]
	cbnz	w9, LBB25_132
	b	LBB25_155
LBB25_133:
	cbz	w24, LBB25_135
; %bb.134:
	strb	wzr, [x24, #16]
LBB25_135:
	cbz	w23, LBB25_137
; %bb.136:
	strb	wzr, [x23, #16]
LBB25_137:
	cbz	w19, LBB25_17
; %bb.138:
	strb	wzr, [x19, #16]
	b	LBB25_17
LBB25_139:
	cmp	w8, #9
	b.ne	LBB25_145
; %bb.140:
	ldr	w8, [x19, #56]
	cbz	w8, LBB25_145
; %bb.141:
	ldr	w0, [x8, #4]
	cbz	w0, LBB25_145
; %bb.142:
Lloh506:
	adrp	x1, l_.str.155@PAGE
Lloh507:
	add	x1, x1, l_.str.155@PAGEOFF
	bl	_csstrcmp
	cbnz	w0, LBB25_145
; %bb.143:
	ldr	w8, [x27]
	add	w9, w8, #10
	cmp	w9, w26
	b.ge	LBB25_145
; %bb.144:
	add	w8, w8, #1
	mov	w23, #9                         ; =0x9
	str	w8, [x27]
	ldr	w8, [sp, #84]
	str	w8, [x19, #56]
	ldr	w8, [x27]
	add	w8, w8, #9
	b	LBB25_172
LBB25_145:
	ldr	w8, [x25]
	b	LBB25_173
LBB25_146:
	sub	w9, w23, #10
	cmp	w8, #9
	ccmn	w9, #3, #2, eq
	b.hi	LBB25_149
; %bb.147:
	ldr	w9, [x27]
	add	w10, w9, #10
	cmp	w10, w26
	b.ge	LBB25_149
; %bb.148:
	add	w8, w9, #1
	mov	w23, #9                         ; =0x9
	str	w8, [x27]
	ldr	w8, [sp, #84]
	b	LBB25_165
LBB25_149:
	cmp	w23, #9
	b.eq	LBB25_162
; %bb.150:
	cbnz	w23, LBB25_168
; %bb.151:
	cmp	w8, #1
	b.ne	LBB25_167
; %bb.152:
	ldr	w8, [x27]
	subs	w8, w8, #1
	b.lt	LBB25_167
; %bb.153:
	str	w8, [x27]
	mov	w23, #1                         ; =0x1
	ldr	w8, [sp, #52]
	b	LBB25_165
LBB25_154:
	mov	w10, wzr
LBB25_155:
	strh	wzr, [x0, w10, sxtw #1]
LBB25_156:
	cbz	w24, LBB25_158
; %bb.157:
	mov	w8, #1                          ; =0x1
	strh	w20, [x24, #64]
	strb	w8, [x24, #16]
LBB25_158:
	cbz	w23, LBB25_160
; %bb.159:
	mov	w8, #1                          ; =0x1
	strh	w20, [x23, #80]
	strb	w8, [x23, #16]
LBB25_160:
	cbz	w19, LBB25_17
; %bb.161:
	mov	w8, #1                          ; =0x1
	strh	w20, [x19, #64]
	strb	w8, [x19, #16]
	b	LBB25_17
LBB25_162:
	cmp	w8, #8
	b.ne	LBB25_166
; %bb.163:
	ldr	w8, [x27]
	add	w9, w8, #10
	cmp	w9, w26
	b.ge	LBB25_166
; %bb.164:
	add	w8, w8, #1
	mov	w23, #8                         ; =0x8
	str	w8, [x27]
	ldr	w8, [sp, #80]
LBB25_165:
	str	w8, [x19, #56]
	b	LBB25_168
LBB25_166:
	mov	w23, #9                         ; =0x9
	b	LBB25_168
LBB25_167:
	mov	w23, wzr
LBB25_168:
	ldr	w8, [x27]
	add	w9, w8, w23
	cmp	w9, w26
	b.lt	LBB25_171
; %bb.169:
	mvn	w9, w8
	sub	w10, w8, w26
	add	w9, w26, w9
	mvn	w10, w10
	bic	w9, w10, w9, asr #31
	mov	w10, #9                         ; =0x9
	cmp	w9, #9
	csel	w23, w9, w10, lt
	add	x9, sp, #48
	ldr	w9, [x9, w23, uxtw #2]
	cbz	w9, LBB25_171
; %bb.170:
	str	w9, [x19, #56]
	ldr	w8, [x27]
LBB25_171:
	add	w8, w8, w23
LBB25_172:
	str	w8, [x25]
LBB25_173:
	cmp	w8, w26
	b.lo	LBB25_175
; %bb.174:
	bic	w9, w8, w8, asr #31
	sub	w10, w26, #1
	cmp	w8, w26
	csel	w8, w9, w10, lt
	str	w8, [x25]
LBB25_175:
	str	w23, [x24]
	ldr	w0, [x20, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w0, LBB25_177
; %bb.176:
	ldr	w28, [x0]
	b	LBB25_179
LBB25_177:
	mov	w0, #1                          ; =0x1
	mov	w1, #4436                       ; =0x1154
	mov	w19, #4436                      ; =0x1154
	bl	_calloc
	str	w0, [x20, _s_forge_profile_screen_storage@PAGEOFF]
	cbz	w0, LBB25_215
; %bb.178:
	mov	w28, wzr
LBB25_179:
	add	x8, x0, #276
	mov	w20, wzr
	add	x25, sp, #48
Lloh508:
	adrp	x19, l_.str.144@PAGE
Lloh509:
	add	x19, x19, l_.str.144@PAGEOFF
	str	x8, [sp, #24]                   ; 8-byte Spill
	ldp	w9, w8, [x0, #4]
	str	w8, [sp, #32]                   ; 4-byte Spill
	add	w8, w0, w9, lsl #6
	add	w23, w8, #277
	str	w9, [sp, #44]                   ; 4-byte Spill
	b	LBB25_181
	.p2align	4, , 8
LBB25_180:                              ;   in Loop: Header=BB25_181 Depth=1
	add	w20, w20, #1
	add	w23, w23, #64
	cmp	w20, #10
	b.eq	LBB25_17
LBB25_181:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB25_193 Depth 2
	ldr	w26, [x25, w20, sxtw #2]
	cbz	w26, LBB25_180
; %bb.182:                              ;   in Loop: Header=BB25_181 Depth=1
	cbz	w28, LBB25_196
; %bb.183:                              ;   in Loop: Header=BB25_181 Depth=1
	ldr	w8, [sp, #44]                   ; 4-byte Reload
	add	w24, w20, w8
	cmp	w24, w28
	cset	w8, lt
	strb	w8, [x26, #16]
	b.ge	LBB25_208
; %bb.184:                              ;   in Loop: Header=BB25_181 Depth=1
	sub	x2, x29, #200
	mov	x0, x26
Lloh510:
	adrp	x1, l_.str.140@PAGE
Lloh511:
	add	x1, x1, l_.str.140@PAGEOFF
	stur	wzr, [x29, #-200]
	bl	_fw_descendant
	ldr	x9, [sp, #24]                   ; 8-byte Reload
	sxtw	x8, w24
	add	x25, x9, x8, lsl #6
	cbz	w25, LBB25_208
; %bb.185:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	x27, x0
	cbz	w27, LBB25_208
; %bb.186:                              ;   in Loop: Header=BB25_181 Depth=1
	ldr	w1, [x27]
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x27, #64]
	cmn	w1, #1
	b.eq	LBB25_189
; %bb.187:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB25_189
; %bb.188:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB25_189:                              ;   in Loop: Header=BB25_181 Depth=1
	ldr	w0, [x27, #60]
	cbnz	w0, LBB25_191
; %bb.190:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh512:
	adrp	x2, l_.str.154@PAGE
Lloh513:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
	str	w0, [x27, #60]
	cbz	w0, LBB25_208
LBB25_191:                              ;   in Loop: Header=BB25_181 Depth=1
	ldrb	w9, [x25]
	cbz	w9, LBB25_206
; %bb.192:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	w8, wzr
	.p2align	4, , 8
LBB25_193:                              ;   Parent Loop BB25_181 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w10, [x27, #60]
	and	w9, w9, #0xff
	add	w11, w23, w8
	add	w10, w10, w8, lsl #1
	strh	w9, [x10]
	add	w10, w8, #1
	ldrb	w9, [x11]
	cbz	w9, LBB25_195
; %bb.194:                              ;   in Loop: Header=BB25_193 Depth=2
	cmp	w8, #253
	mov	w8, w10
	b.lo	LBB25_193
LBB25_195:                              ;   in Loop: Header=BB25_181 Depth=1
	ldr	w0, [x27, #60]
	b	LBB25_207
	.p2align	4, , 8
LBB25_196:                              ;   in Loop: Header=BB25_181 Depth=1
	cmp	w20, #0
	cset	w8, eq
	strb	w8, [x26, #16]
	cbnz	w20, LBB25_204
; %bb.197:                              ;   in Loop: Header=BB25_181 Depth=1
	sub	x2, x29, #200
	mov	x0, x26
Lloh514:
	adrp	x1, l_.str.140@PAGE
Lloh515:
	add	x1, x1, l_.str.140@PAGEOFF
	stur	wzr, [x29, #-200]
	bl	_fw_descendant
	mov	x27, x0
	cbz	w27, LBB25_204
; %bb.198:                              ;   in Loop: Header=BB25_181 Depth=1
	ldr	w1, [x27]
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x27, #64]
	cmn	w1, #1
	b.eq	LBB25_201
; %bb.199:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB25_201
; %bb.200:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB25_201:                              ;   in Loop: Header=BB25_181 Depth=1
	ldr	w0, [x27, #60]
	cbnz	w0, LBB25_203
; %bb.202:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh516:
	adrp	x2, l_.str.154@PAGE
Lloh517:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
	str	w0, [x27, #60]
	cbz	w0, LBB25_204
LBB25_203:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	w9, #78                         ; =0x4e
	mov	w10, #79                        ; =0x4f
	strh	w9, [x0]
	ldr	w8, [x27, #60]
	strh	w10, [x8, #2]
	ldr	w8, [x27, #60]
	strh	w9, [x8, #4]
	mov	w9, #69                         ; =0x45
	ldr	w8, [x27, #60]
	strh	w9, [x8, #6]
	ldr	w8, [x27, #60]
	strh	wzr, [x8, #8]
LBB25_204:                              ;   in Loop: Header=BB25_181 Depth=1
	sub	x2, x29, #200
	mov	x0, x26
Lloh518:
	adrp	x1, l_.str.143@PAGE
Lloh519:
	add	x1, x1, l_.str.143@PAGEOFF
	stur	wzr, [x29, #-200]
	bl	_fw_descendant
	cbz	w0, LBB25_211
; %bb.205:                              ;   in Loop: Header=BB25_181 Depth=1
	sub	x2, x29, #200
	mov	x0, x26
Lloh520:
	adrp	x1, l_.str.143@PAGE
Lloh521:
	add	x1, x1, l_.str.143@PAGEOFF
	stur	wzr, [x29, #-200]
	bl	_fw_descendant
	mov	w24, wzr
	b	LBB25_210
LBB25_206:                              ;   in Loop: Header=BB25_181 Depth=1
	mov	w10, wzr
LBB25_207:                              ;   in Loop: Header=BB25_181 Depth=1
	strh	wzr, [x0, w10, sxtw #1]
LBB25_208:                              ;   in Loop: Header=BB25_181 Depth=1
	sub	x2, x29, #200
	mov	x0, x26
Lloh522:
	adrp	x1, l_.str.143@PAGE
Lloh523:
	add	x1, x1, l_.str.143@PAGEOFF
	stur	wzr, [x29, #-200]
	bl	_fw_descendant
	add	x25, sp, #48
	cbz	w0, LBB25_211
; %bb.209:                              ;   in Loop: Header=BB25_181 Depth=1
	ldr	w8, [sp, #32]                   ; 4-byte Reload
	sub	x2, x29, #200
	mov	x0, x26
Lloh524:
	adrp	x1, l_.str.143@PAGE
Lloh525:
	add	x1, x1, l_.str.143@PAGEOFF
	stur	wzr, [x29, #-200]
	cmp	w24, w8
	cset	w24, eq
	bl	_fw_descendant
LBB25_210:                              ;   in Loop: Header=BB25_181 Depth=1
	strb	w24, [x0, #16]
LBB25_211:                              ;   in Loop: Header=BB25_181 Depth=1
	sub	x2, x29, #200
	mov	x0, x26
	mov	x1, x19
	stur	wzr, [x29, #-200]
	bl	_fw_descendant
	cbz	w0, LBB25_213
; %bb.212:                              ;   in Loop: Header=BB25_181 Depth=1
	ldr	w8, [sp, #44]                   ; 4-byte Reload
	sub	x2, x29, #200
	mov	x0, x26
	mov	x1, x19
	stur	wzr, [x29, #-200]
	cmp	w8, #0
	ccmp	w20, #0, #0, gt
	cset	w24, eq
	bl	_fw_descendant
	strb	w24, [x0, #16]
LBB25_213:                              ;   in Loop: Header=BB25_181 Depth=1
	sub	x2, x29, #200
	mov	x0, x26
Lloh526:
	adrp	x1, l_.str.145@PAGE
Lloh527:
	add	x1, x1, l_.str.145@PAGEOFF
	stur	wzr, [x29, #-200]
	bl	_fw_descendant
	cbz	w0, LBB25_180
; %bb.214:                              ;   in Loop: Header=BB25_181 Depth=1
	ldr	w8, [sp, #44]                   ; 4-byte Reload
	sub	x2, x29, #200
	mov	x0, x26
Lloh528:
	adrp	x1, l_.str.145@PAGE
Lloh529:
	add	x1, x1, l_.str.145@PAGEOFF
	stur	wzr, [x29, #-200]
	add	w8, w8, #10
	cmp	w8, w28
	ccmp	w20, #9, #0, lt
	cset	w24, eq
	bl	_fw_descendant
	strb	w24, [x0, #16]
	b	LBB25_180
LBB25_215:
Lloh530:
	adrp	x0, l_.str.133@PAGE
Lloh531:
	add	x0, x0, l_.str.133@PAGEOFF
	str	w19, [sp]
	bl	_platform_log
	bl	_abort
	.loh AdrpAdd	Lloh396, Lloh397
	.loh AdrpLdrGot	Lloh398, Lloh399
	.loh AdrpAdd	Lloh400, Lloh401
	.loh AdrpAdd	Lloh402, Lloh403
	.loh AdrpAdd	Lloh404, Lloh405
	.loh AdrpAdd	Lloh406, Lloh407
	.loh AdrpAdd	Lloh408, Lloh409
	.loh AdrpAdd	Lloh410, Lloh411
	.loh AdrpAdd	Lloh412, Lloh413
	.loh AdrpAdd	Lloh414, Lloh415
	.loh AdrpAdd	Lloh416, Lloh417
	.loh AdrpAdd	Lloh418, Lloh419
	.loh AdrpAdd	Lloh420, Lloh421
	.loh AdrpAdd	Lloh422, Lloh423
	.loh AdrpAdd	Lloh424, Lloh425
	.loh AdrpAdd	Lloh426, Lloh427
	.loh AdrpAdd	Lloh428, Lloh429
	.loh AdrpAdd	Lloh430, Lloh431
	.loh AdrpAdd	Lloh432, Lloh433
	.loh AdrpLdr	Lloh434, Lloh435
	.loh AdrpAdd	Lloh444, Lloh445
	.loh AdrpAdd	Lloh442, Lloh443
	.loh AdrpAdd	Lloh440, Lloh441
	.loh AdrpAdd	Lloh438, Lloh439
	.loh AdrpAdd	Lloh436, Lloh437
	.loh AdrpAdd	Lloh448, Lloh449
	.loh AdrpAdd	Lloh446, Lloh447
	.loh AdrpAdd	Lloh450, Lloh451
	.loh AdrpAdd	Lloh452, Lloh453
	.loh AdrpAdd	Lloh454, Lloh455
	.loh AdrpAdd	Lloh458, Lloh459
	.loh AdrpAdd	Lloh456, Lloh457
	.loh AdrpAdd	Lloh462, Lloh463
	.loh AdrpAdd	Lloh460, Lloh461
	.loh AdrpAdd	Lloh464, Lloh465
	.loh AdrpAdd	Lloh466, Lloh467
	.loh AdrpAdd	Lloh468, Lloh469
	.loh AdrpAdd	Lloh472, Lloh473
	.loh AdrpAdd	Lloh470, Lloh471
	.loh AdrpAdd	Lloh474, Lloh475
	.loh AdrpAdd	Lloh476, Lloh477
	.loh AdrpLdr	Lloh478, Lloh479
	.loh AdrpAdd	Lloh490, Lloh491
	.loh AdrpAdd	Lloh488, Lloh489
	.loh AdrpAdd	Lloh486, Lloh487
	.loh AdrpAdd	Lloh484, Lloh485
	.loh AdrpAdd	Lloh482, Lloh483
	.loh AdrpAdd	Lloh480, Lloh481
	.loh AdrpAdd	Lloh492, Lloh493
	.loh AdrpAdd	Lloh494, Lloh495
	.loh AdrpAdd	Lloh496, Lloh497
	.loh AdrpAdd	Lloh498, Lloh499
	.loh AdrpAdd	Lloh504, Lloh505
	.loh AdrpAdd	Lloh502, Lloh503
	.loh AdrpAdd	Lloh500, Lloh501
	.loh AdrpAdd	Lloh506, Lloh507
	.loh AdrpAdd	Lloh508, Lloh509
	.loh AdrpAdd	Lloh510, Lloh511
	.loh AdrpAdd	Lloh512, Lloh513
	.loh AdrpAdd	Lloh514, Lloh515
	.loh AdrpAdd	Lloh516, Lloh517
	.loh AdrpAdd	Lloh518, Lloh519
	.loh AdrpAdd	Lloh520, Lloh521
	.loh AdrpAdd	Lloh522, Lloh523
	.loh AdrpAdd	Lloh524, Lloh525
	.loh AdrpAdd	Lloh526, Lloh527
	.loh AdrpAdd	Lloh528, Lloh529
	.loh AdrpAdd	Lloh530, Lloh531
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_controls_menu_update
_forge_controls_menu_update:            ; @forge_controls_menu_update
; %bb.0:
	sub	sp, sp, #320
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	mov	x28, x0
	mov	x8, x0
	stp	d11, d10, [sp, #208]            ; 16-byte Folded Spill
	stp	d9, d8, [sp, #224]              ; 16-byte Folded Spill
	stp	x26, x25, [sp, #256]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #272]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #288]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #304]            ; 16-byte Folded Spill
	add	x29, sp, #304
	.p2align	4, , 8
LBB26_1:                                ; =>This Inner Loop Header: Depth=1
	mov	x0, x8
	cbz	w0, LBB26_7
; %bb.2:                                ;   in Loop: Header=BB26_1 Depth=1
	ldr	w8, [x0, #48]
	cbnz	w8, LBB26_1
; %bb.3:
Lloh532:
	adrp	x1, l_.str.136@PAGE
Lloh533:
	add	x1, x1, l_.str.136@PAGEOFF
	add	x2, sp, #108
	str	wzr, [sp, #108]
	bl	_fw_descendant
	cbz	w0, LBB26_7
; %bb.4:
	ldrsh	w19, [x0, #60]
	cbnz	w28, LBB26_8
LBB26_5:
	bl	_forge_controls_ui_ensure_loaded
	cmp	w19, #3
	b.gt	LBB26_26
; %bb.6:
	adrp	x8, _s_forge_controls_ui@PAGE+112
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, _s_forge_controls_ui@PAGEOFF+112]
	b	LBB26_204
LBB26_7:
	mov	w19, wzr
	cbz	w28, LBB26_5
LBB26_8:
	ldr	w23, [x28, #56]
	cbz	w23, LBB26_15
; %bb.9:
Lloh534:
	adrp	x20, l_.str.137@PAGE
Lloh535:
	add	x20, x20, l_.str.137@PAGEOFF
	b	LBB26_11
	.p2align	4, , 8
LBB26_10:                               ;   in Loop: Header=BB26_11 Depth=1
	ldr	w23, [x23, #48]
	cbz	w23, LBB26_13
LBB26_11:                               ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x23, #4]
	cbz	w0, LBB26_10
; %bb.12:                               ;   in Loop: Header=BB26_11 Depth=1
	mov	x1, x20
	mov	w2, #11                         ; =0xb
	bl	_csstrncmp
	cbnz	w0, LBB26_10
	b	LBB26_14
LBB26_13:
	mov	x23, xzr
LBB26_14:
	bl	_forge_controls_ui_ensure_loaded
	cmp	w19, #4
	b.lt	LBB26_16
	b	LBB26_27
LBB26_15:
	bl	_forge_controls_ui_ensure_loaded
	cmp	w19, #3
	b.gt	LBB26_26
LBB26_16:
	adrp	x8, _s_forge_controls_ui@PAGE+112
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, _s_forge_controls_ui@PAGEOFF+112]
	ldr	w19, [x28, #52]
	cbz	w19, LBB26_204
; %bb.17:
	mov	w23, #30                        ; =0x1e
	mov	w24, #103                       ; =0x67
Lloh536:
	adrp	x20, l_.str.137@PAGE
Lloh537:
	add	x20, x20, l_.str.137@PAGEOFF
	b	LBB26_20
LBB26_18:                               ;   in Loop: Header=BB26_20 Depth=1
	madd	w8, w8, w23, w24
	strh	w8, [x19, #12]
	.p2align	4, , 8
LBB26_19:                               ;   in Loop: Header=BB26_20 Depth=1
	ldr	w19, [x19, #44]
	cbz	w19, LBB26_204
LBB26_20:                               ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x19, #4]
	cbz	w0, LBB26_19
; %bb.21:                               ;   in Loop: Header=BB26_20 Depth=1
	mov	x1, x20
	mov	w2, #11                         ; =0xb
	bl	_csstrncmp
	cbnz	w0, LBB26_19
; %bb.22:                               ;   in Loop: Header=BB26_20 Depth=1
	ldr	w8, [x19, #4]
	add	x0, x8, #11
	bl	_atoi
	sub	w8, w0, #1
	cmp	w8, #6
	b.ls	LBB26_18
; %bb.23:                               ;   in Loop: Header=BB26_20 Depth=1
	cmp	w8, #7
	b.lt	LBB26_19
; %bb.24:                               ;   in Loop: Header=BB26_20 Depth=1
	strb	wzr, [x19, #16]
	ldr	w8, [x28, #56]
	cmp	w8, w19
	b.ne	LBB26_19
; %bb.25:                               ;   in Loop: Header=BB26_20 Depth=1
	ldr	w8, [x28, #52]
	strh	wzr, [x28, #60]
	str	w8, [x28, #56]
	b	LBB26_19
LBB26_26:
	mov	x23, xzr
LBB26_27:
	sub	x0, x29, #112
	sub	x1, x29, #116
	sub	x2, x29, #120
	sub	x3, x29, #124
	sub	x4, x29, #128
	sub	x5, x29, #132
	bl	_forge_poll_controller_state
	adrp	x26, _s_forge_controls_ui@PAGE+112
	str	w19, [sp, #40]                  ; 4-byte Spill
	ldr	w8, [x26, _s_forge_controls_ui@PAGEOFF+112]
	cmp	w8, #11
	b.hi	LBB26_105
; %bb.28:
	bl	_system_milliseconds
Lloh538:
	adrp	x8, _s_forge_controls_ui@PAGE+112
Lloh539:
	add	x8, x8, _s_forge_controls_ui@PAGEOFF+112
	ldr	w9, [x8, #8]
	sub	w9, w0, w9
	cmp	w9, #120
	b.lo	LBB26_102
; %bb.29:
	ldr	w19, [x8]
	mov	w24, w0
	bl	_orig_network_chat_typing
	cbnz	w0, LBB26_31
; %bb.30:
	bl	_social_chat_typing
	cbz	w0, LBB26_35
LBB26_31:
	mov	w20, #1                         ; =0x1
	bl	_orig_network_chat_typing
	cbz	w0, LBB26_36
LBB26_32:
	bl	_orig_network_chat_typing
	cbnz	w0, LBB26_34
; %bb.33:
	bl	_social_chat_typing
	cbz	w0, LBB26_39
LBB26_34:
	mov	w8, #1                          ; =0x1
	b	LBB26_40
LBB26_35:
	adrp	x8, _s_forge_keys_down@PAGE+41
	ldrb	w8, [x8, _s_forge_keys_down@PAGEOFF+41]
	cmp	w8, #0
	cset	w20, eq
	bl	_orig_network_chat_typing
	cbnz	w0, LBB26_32
LBB26_36:
	bl	_social_chat_typing
	cbnz	w0, LBB26_32
; %bb.37:
	adrp	x8, _s_forge_keys_down@PAGE+76
	ldrb	w8, [x8, _s_forge_keys_down@PAGEOFF+76]
	cbz	w8, LBB26_32
; %bb.38:
	mov	w8, wzr
	b	LBB26_40
LBB26_39:
	adrp	x8, _s_forge_keys_down@PAGE+42
	ldrb	w8, [x8, _s_forge_keys_down@PAGEOFF+42]
	cmp	w8, #0
	cset	w8, eq
LBB26_40:
Lloh540:
	adrp	x9, _s_forge_controls_ui@PAGE+232
Lloh541:
	ldr	w9, [x9, _s_forge_controls_ui@PAGEOFF+232]
	cmp	w9, #0
	csinc	w9, w20, wzr, eq
	cbz	w9, LBB26_101
; %bb.41:
Lloh542:
	adrp	x9, _s_forge_controls_ui@PAGE+156
Lloh543:
	add	x9, x9, _s_forge_controls_ui@PAGEOFF+156
	ldr	w10, [x9, #152]
	cmp	w10, #0
	csinc	w8, w8, wzr, eq
	tbnz	w8, #0, LBB26_44
; %bb.42:
	ldr	w8, [x9]
	cbnz	w8, LBB26_44
; %bb.43:
Lloh544:
	adrp	x8, _s_forge_controls_ui@PAGE+4
Lloh545:
	add	x8, x8, _s_forge_controls_ui@PAGEOFF+4
	add	x10, x8, #48
	mov	w20, wzr
	ldr	w9, [x8, #112]
	cmp	w9, #0
	csel	x8, x8, x10, eq
	b	LBB26_100
LBB26_44:
	mov	w0, #1                          ; =0x1
	mov	w20, #1                         ; =0x1
	bl	_forge_gp_button_down
	cbz	w0, LBB26_46
; %bb.45:
Lloh546:
	adrp	x8, _s_forge_controls_ui@PAGE+1152
Lloh547:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1152]
	cbz	w8, LBB26_76
LBB26_46:
	mov	w0, #2                          ; =0x2
	mov	w20, #2                         ; =0x2
	bl	_forge_gp_button_down
	cbz	w0, LBB26_48
; %bb.47:
Lloh548:
	adrp	x8, _s_forge_controls_ui@PAGE+1156
Lloh549:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1156]
	cbz	w8, LBB26_76
LBB26_48:
	mov	w0, #3                          ; =0x3
	mov	w20, #3                         ; =0x3
	bl	_forge_gp_button_down
	cbz	w0, LBB26_50
; %bb.49:
Lloh550:
	adrp	x8, _s_forge_controls_ui@PAGE+1160
Lloh551:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1160]
	cbz	w8, LBB26_76
LBB26_50:
	mov	w0, #4                          ; =0x4
	mov	w20, #4                         ; =0x4
	bl	_forge_gp_button_down
	cbz	w0, LBB26_52
; %bb.51:
Lloh552:
	adrp	x8, _s_forge_controls_ui@PAGE+1164
Lloh553:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1164]
	cbz	w8, LBB26_76
LBB26_52:
	mov	w0, #5                          ; =0x5
	mov	w20, #5                         ; =0x5
	bl	_forge_gp_button_down
	cbz	w0, LBB26_54
; %bb.53:
Lloh554:
	adrp	x8, _s_forge_controls_ui@PAGE+1168
Lloh555:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1168]
	cbz	w8, LBB26_76
LBB26_54:
	mov	w0, #6                          ; =0x6
	mov	w20, #6                         ; =0x6
	bl	_forge_gp_button_down
	cbz	w0, LBB26_56
; %bb.55:
Lloh556:
	adrp	x8, _s_forge_controls_ui@PAGE+1172
Lloh557:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1172]
	cbz	w8, LBB26_76
LBB26_56:
	mov	w0, #7                          ; =0x7
	mov	w20, #7                         ; =0x7
	bl	_forge_gp_button_down
	cbz	w0, LBB26_58
; %bb.57:
Lloh558:
	adrp	x8, _s_forge_controls_ui@PAGE+1176
Lloh559:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1176]
	cbz	w8, LBB26_76
LBB26_58:
	mov	w0, #8                          ; =0x8
	mov	w20, #8                         ; =0x8
	bl	_forge_gp_button_down
	cbz	w0, LBB26_60
; %bb.59:
Lloh560:
	adrp	x8, _s_forge_controls_ui@PAGE+1180
Lloh561:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1180]
	cbz	w8, LBB26_76
LBB26_60:
	mov	w0, #9                          ; =0x9
	mov	w20, #9                         ; =0x9
	bl	_forge_gp_button_down
	cbz	w0, LBB26_62
; %bb.61:
Lloh562:
	adrp	x8, _s_forge_controls_ui@PAGE+1184
Lloh563:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1184]
	cbz	w8, LBB26_76
LBB26_62:
	mov	w0, #10                         ; =0xa
	mov	w20, #10                        ; =0xa
	bl	_forge_gp_button_down
	cbz	w0, LBB26_64
; %bb.63:
Lloh564:
	adrp	x8, _s_forge_controls_ui@PAGE+1188
Lloh565:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1188]
	cbz	w8, LBB26_76
LBB26_64:
	mov	w0, #11                         ; =0xb
	mov	w20, #11                        ; =0xb
	bl	_forge_gp_button_down
	cbz	w0, LBB26_66
; %bb.65:
Lloh566:
	adrp	x8, _s_forge_controls_ui@PAGE+1192
Lloh567:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1192]
	cbz	w8, LBB26_76
LBB26_66:
	mov	w0, #12                         ; =0xc
	mov	w20, #12                        ; =0xc
	bl	_forge_gp_button_down
	cbz	w0, LBB26_68
; %bb.67:
Lloh568:
	adrp	x8, _s_forge_controls_ui@PAGE+1196
Lloh569:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1196]
	cbz	w8, LBB26_76
LBB26_68:
	mov	w0, #13                         ; =0xd
	mov	w20, #13                        ; =0xd
	bl	_forge_gp_button_down
	cbz	w0, LBB26_70
; %bb.69:
Lloh570:
	adrp	x8, _s_forge_controls_ui@PAGE+1200
Lloh571:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1200]
	cbz	w8, LBB26_76
LBB26_70:
	mov	w0, #14                         ; =0xe
	mov	w20, #14                        ; =0xe
	bl	_forge_gp_button_down
	cbz	w0, LBB26_72
; %bb.71:
Lloh572:
	adrp	x8, _s_forge_controls_ui@PAGE+1204
Lloh573:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1204]
	cbz	w8, LBB26_76
LBB26_72:
	mov	w0, #15                         ; =0xf
	mov	w20, #15                        ; =0xf
	bl	_forge_gp_button_down
	cbz	w0, LBB26_74
; %bb.73:
Lloh574:
	adrp	x8, _s_forge_controls_ui@PAGE+1208
Lloh575:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1208]
	cbz	w8, LBB26_76
LBB26_74:
	mov	w0, #16                         ; =0x10
	mov	w20, #16                        ; =0x10
	bl	_forge_gp_button_down
	cbz	w0, LBB26_205
; %bb.75:
Lloh576:
	adrp	x8, _s_forge_controls_ui@PAGE+1212
Lloh577:
	ldr	w8, [x8, _s_forge_controls_ui@PAGEOFF+1212]
	cbnz	w8, LBB26_205
LBB26_76:
	adrp	x8, _s_forge_controls_ui@PAGE+52
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+52]
	cmp	w9, w20
	b.ne	LBB26_78
; %bb.77:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+52]
LBB26_78:
	adrp	x8, _s_forge_controls_ui@PAGE+56
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+56]
	cmp	w9, w20
	b.ne	LBB26_80
; %bb.79:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+56]
LBB26_80:
	adrp	x8, _s_forge_controls_ui@PAGE+60
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+60]
	cmp	w9, w20
	b.ne	LBB26_82
; %bb.81:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+60]
LBB26_82:
	adrp	x8, _s_forge_controls_ui@PAGE+64
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+64]
	cmp	w9, w20
	b.ne	LBB26_84
; %bb.83:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+64]
LBB26_84:
	adrp	x8, _s_forge_controls_ui@PAGE+68
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+68]
	cmp	w9, w20
	b.ne	LBB26_86
; %bb.85:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+68]
LBB26_86:
	adrp	x8, _s_forge_controls_ui@PAGE+72
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+72]
	cmp	w9, w20
	b.ne	LBB26_88
; %bb.87:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+72]
LBB26_88:
	adrp	x8, _s_forge_controls_ui@PAGE+76
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+76]
	cmp	w9, w20
	b.ne	LBB26_90
; %bb.89:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+76]
LBB26_90:
	adrp	x8, _s_forge_controls_ui@PAGE+80
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+80]
	cmp	w9, w20
	b.ne	LBB26_92
; %bb.91:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+80]
LBB26_92:
	adrp	x8, _s_forge_controls_ui@PAGE+84
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+84]
	cmp	w9, w20
	b.ne	LBB26_94
; %bb.93:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+84]
LBB26_94:
	adrp	x8, _s_forge_controls_ui@PAGE+88
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+88]
	cmp	w9, w20
	b.ne	LBB26_96
; %bb.95:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+88]
LBB26_96:
	adrp	x8, _s_forge_controls_ui@PAGE+92
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+92]
	cmp	w9, w20
	b.ne	LBB26_98
; %bb.97:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+92]
LBB26_98:
Lloh578:
	adrp	x8, _s_forge_controls_ui@PAGE+52
Lloh579:
	add	x8, x8, _s_forge_controls_ui@PAGEOFF+52
	ldr	w9, [x8, #44]
	cmp	w9, w20
	b.ne	LBB26_100
; %bb.99:
	str	wzr, [x8, #44]
LBB26_100:
	str	w20, [x8, w19, sxtw #2]
LBB26_101:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x26, _s_forge_controls_ui@PAGEOFF+112]
LBB26_102:
	mov	w20, wzr
Lloh580:
	adrp	x19, _s_forge_controls_ui@PAGE
Lloh581:
	add	x19, x19, _s_forge_controls_ui@PAGEOFF
	.p2align	4, , 8
LBB26_103:                              ; =>This Inner Loop Header: Depth=1
	add	w0, w20, #1
	add	w24, w20, #1
	bl	_forge_key_state
	add	w8, w19, w20, lsl #2
	mov	w20, w24
	add	w8, w8, #128
	ubfx	w9, w0, #15, #1
	cmp	w24, #254
	str	w9, [x8]
	b.ne	LBB26_103
; %bb.104:
	mov	w0, #1                          ; =0x1
	bl	_forge_gp_button_down
Lloh582:
	adrp	x19, _s_forge_controls_ui@PAGE+1152
Lloh583:
	add	x19, x19, _s_forge_controls_ui@PAGEOFF+1152
	str	w0, [x19]
	mov	w0, #2                          ; =0x2
	bl	_forge_gp_button_down
	str	w0, [x19, #4]
	mov	w0, #3                          ; =0x3
	bl	_forge_gp_button_down
	str	w0, [x19, #8]
	mov	w0, #4                          ; =0x4
	bl	_forge_gp_button_down
	str	w0, [x19, #12]
	mov	w0, #5                          ; =0x5
	bl	_forge_gp_button_down
	str	w0, [x19, #16]
	mov	w0, #6                          ; =0x6
	bl	_forge_gp_button_down
	str	w0, [x19, #20]
	mov	w0, #7                          ; =0x7
	bl	_forge_gp_button_down
	str	w0, [x19, #24]
	mov	w0, #8                          ; =0x8
	bl	_forge_gp_button_down
	str	w0, [x19, #28]
	mov	w0, #9                          ; =0x9
	bl	_forge_gp_button_down
	str	w0, [x19, #32]
	mov	w0, #10                         ; =0xa
	bl	_forge_gp_button_down
	str	w0, [x19, #36]
	mov	w0, #11                         ; =0xb
	bl	_forge_gp_button_down
	str	w0, [x19, #40]
	mov	w0, #12                         ; =0xc
	bl	_forge_gp_button_down
	str	w0, [x19, #44]
	mov	w0, #13                         ; =0xd
	bl	_forge_gp_button_down
	str	w0, [x19, #48]
	mov	w0, #14                         ; =0xe
	bl	_forge_gp_button_down
	str	w0, [x19, #52]
	mov	w0, #15                         ; =0xf
	bl	_forge_gp_button_down
	str	w0, [x19, #56]
	mov	w0, #16                         ; =0x10
	bl	_forge_gp_button_down
	str	w0, [x19, #60]
LBB26_105:
	cbz	w28, LBB26_204
; %bb.106:
	ldr	w20, [x28, #52]
	str	x28, [sp, #32]                  ; 8-byte Spill
	cbz	w20, LBB26_202
; %bb.107:
	mov	w9, #1120403456                 ; =0x42c80000
	add	x8, sp, #108
	add	w8, w8, #1
	fmov	s9, #0.50000000
	fmov	s8, w9
	str	x8, [sp, #24]                   ; 8-byte Spill
	add	x8, sp, #44
	add	w19, w8, #1
	b	LBB26_110
LBB26_108:                              ;   in Loop: Header=BB26_110 Depth=1
	strb	wzr, [x20, #16]
	.p2align	4, , 8
LBB26_109:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w20, [x20, #44]
	cbz	w20, LBB26_202
LBB26_110:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB26_123 Depth 2
                                        ;     Child Loop BB26_164 Depth 2
                                        ;     Child Loop BB26_176 Depth 2
                                        ;     Child Loop BB26_135 Depth 2
                                        ;     Child Loop BB26_187 Depth 2
                                        ;     Child Loop BB26_199 Depth 2
	ldr	w0, [x20, #4]
	cbz	w0, LBB26_109
; %bb.111:                              ;   in Loop: Header=BB26_110 Depth=1
Lloh584:
	adrp	x1, l_.str.137@PAGE
Lloh585:
	add	x1, x1, l_.str.137@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	_csstrncmp
	cbnz	w0, LBB26_109
; %bb.112:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w8, [x20, #4]
	add	x0, x8, #11
	bl	_atoi
	mov	w24, w0
	sub	w25, w0, #1
	sub	x2, x29, #108
	mov	x0, x20
Lloh586:
	adrp	x1, l_.str.157@PAGE
Lloh587:
	add	x1, x1, l_.str.157@PAGEOFF
	stur	wzr, [x29, #-108]
	bl	_fw_descendant
Lloh588:
	adrp	x26, l_.str.158@PAGE
Lloh589:
	add	x26, x26, l_.str.158@PAGEOFF
	mov	x27, x0
	sub	x2, x29, #108
	mov	x0, x20
	mov	x1, x26
	stur	wzr, [x29, #-108]
	bl	_fw_descendant
	mov	x28, x0
	mov	w8, #1                          ; =0x1
	sub	x2, x29, #108
	mov	x0, x20
	mov	x1, x26
	stur	w8, [x29, #-108]
	bl	_fw_descendant
	ldr	w8, [sp, #40]                   ; 4-byte Reload
	mov	x26, x0
	cmp	w8, #5
	b.eq	LBB26_126
; %bb.113:                              ;   in Loop: Header=BB26_110 Depth=1
	cmp	w8, #4
	b.ne	LBB26_109
; %bb.114:                              ;   in Loop: Header=BB26_110 Depth=1
	cmp	w25, #12
	b.hs	LBB26_108
; %bb.115:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, #24                         ; =0x18
	mov	w9, #99                         ; =0x63
	madd	w8, w25, w8, w9
	mov	w9, #1                          ; =0x1
	strb	w9, [x20, #16]
	strh	w8, [x20, #12]
	cbz	w27, LBB26_142
; %bb.116:                              ;   in Loop: Header=BB26_110 Depth=1
Lloh590:
	adrp	x8, _s_forge_bind_labels@PAGE
Lloh591:
	add	x8, x8, _s_forge_bind_labels@PAGEOFF
	ldr	w1, [x27]
	ldr	w8, [x8, w25, sxtw #2]
	cmn	w1, #1
	str	x8, [sp, #16]                   ; 8-byte Spill
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x27, #64]
	b.eq	LBB26_119
; %bb.117:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB26_119
; %bb.118:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB26_119:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x27, #60]
	cbnz	w0, LBB26_121
; %bb.120:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh592:
	adrp	x2, l_.str.154@PAGE
Lloh593:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
	str	w0, [x27, #60]
	cbz	w0, LBB26_142
LBB26_121:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Reload
	ldrb	w10, [x9]
	cbz	w10, LBB26_140
; %bb.122:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, wzr
	add	w9, w9, #1
	.p2align	4, , 8
LBB26_123:                              ;   Parent Loop BB26_110 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w11, [x27, #60]
	and	w10, w10, #0xff
	add	w12, w9, w8
	add	w11, w11, w8, lsl #1
	strh	w10, [x11]
	add	w11, w8, #1
	ldrb	w10, [x12]
	cbz	w10, LBB26_125
; %bb.124:                              ;   in Loop: Header=BB26_123 Depth=2
	cmp	w8, #253
	mov	w8, w11
	b.lo	LBB26_123
LBB26_125:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x27, #60]
	b	LBB26_141
LBB26_126:                              ;   in Loop: Header=BB26_110 Depth=1
	cmp	w25, #1
	b.hi	LBB26_138
; %bb.127:                              ;   in Loop: Header=BB26_110 Depth=1
Lloh594:
	adrp	x9, _s_forge_controls_ui@PAGE+100
Lloh595:
	add	x9, x9, _s_forge_controls_ui@PAGEOFF+100
	add	x8, x9, #4
	cmp	w25, #0
	csel	x8, x9, x8, eq
	mov	w9, #30                         ; =0x1e
	mov	w10, #103                       ; =0x67
	madd	w9, w25, w9, w10
Lloh596:
	adrp	x10, l_.str.161@PAGE
Lloh597:
	add	x10, x10, l_.str.161@PAGEOFF
	ldr	s10, [x8]
Lloh598:
	adrp	x8, l_.str.162@PAGE
Lloh599:
	add	x8, x8, l_.str.162@PAGEOFF
	csel	x24, x10, x8, eq
	mov	w8, #1                          ; =0x1
	strh	w9, [x20, #12]
	strb	w8, [x20, #16]
	cbz	w27, LBB26_179
; %bb.128:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w1, [x27]
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x27, #64]
	cmn	w1, #1
	b.eq	LBB26_131
; %bb.129:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB26_131
; %bb.130:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB26_131:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x27, #60]
	cbnz	w0, LBB26_133
; %bb.132:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh600:
	adrp	x2, l_.str.154@PAGE
Lloh601:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
	str	w0, [x27, #60]
	cbz	w0, LBB26_179
LBB26_133:                              ;   in Loop: Header=BB26_110 Depth=1
	ldrb	w10, [x24]
	cbz	w10, LBB26_177
; %bb.134:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, wzr
	add	w9, w24, #1
	.p2align	4, , 8
LBB26_135:                              ;   Parent Loop BB26_110 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w11, [x27, #60]
	and	w10, w10, #0xff
	add	w12, w9, w8
	add	w11, w11, w8, lsl #1
	strh	w10, [x11]
	add	w11, w8, #1
	ldrb	w10, [x12]
	cbz	w10, LBB26_137
; %bb.136:                              ;   in Loop: Header=BB26_135 Depth=2
	cmp	w8, #253
	mov	w8, w11
	b.lo	LBB26_135
LBB26_137:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x27, #60]
	b	LBB26_178
LBB26_138:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Reload
	strb	wzr, [x20, #16]
	ldr	w8, [x8, #56]
	cmp	w8, w20
	b.ne	LBB26_109
; %bb.139:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	x9, [sp, #32]                   ; 8-byte Reload
	ldr	w8, [x9, #52]
	strh	wzr, [x9, #60]
	str	w8, [x9, #56]
	b	LBB26_109
LBB26_140:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w11, wzr
LBB26_141:                              ;   in Loop: Header=BB26_110 Depth=1
	strh	wzr, [x0, w11, sxtw #1]
LBB26_142:                              ;   in Loop: Header=BB26_110 Depth=1
Lloh602:
	adrp	x27, _s_forge_controls_ui@PAGE+112
Lloh603:
	add	x27, x27, _s_forge_controls_ui@PAGEOFF+112
	ldr	w8, [x27]
	cmp	w8, w25
	b.ne	LBB26_145
; %bb.143:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w8, [x27, #4]
	cbnz	w8, LBB26_145
; %bb.144:                              ;   in Loop: Header=BB26_110 Depth=1
	add	x0, sp, #108
	mov	w1, #64                         ; =0x40
Lloh604:
	adrp	x2, l_.str.159@PAGE
Lloh605:
	add	x2, x2, l_.str.159@PAGEOFF
	b	LBB26_150
LBB26_145:                              ;   in Loop: Header=BB26_110 Depth=1
Lloh606:
	adrp	x9, _s_forge_controls_ui@PAGE
Lloh607:
	add	x9, x9, _s_forge_controls_ui@PAGEOFF
	add	w8, w9, w24, lsl #2
	ldr	w24, [x9, #108]
	ldr	w0, [x8]
	bl	_forge_vk_display_name
	mov	x8, x0
	cmp	w20, w23
	b.ne	LBB26_148
; %bb.146:                              ;   in Loop: Header=BB26_110 Depth=1
	cbnz	w24, LBB26_148
; %bb.147:                              ;   in Loop: Header=BB26_110 Depth=1
	add	x0, sp, #108
	mov	w1, #64                         ; =0x40
Lloh608:
	adrp	x2, l_.str.160@PAGE
Lloh609:
	add	x2, x2, l_.str.160@PAGEOFF
	b	LBB26_149
LBB26_148:                              ;   in Loop: Header=BB26_110 Depth=1
	add	x0, sp, #108
	mov	w1, #64                         ; =0x40
Lloh610:
	adrp	x2, l_.str.1@PAGE
Lloh611:
	add	x2, x2, l_.str.1@PAGEOFF
LBB26_149:                              ;   in Loop: Header=BB26_110 Depth=1
	str	w8, [sp]
LBB26_150:                              ;   in Loop: Header=BB26_110 Depth=1
	bl	_halo_linux_snprintf
	ldr	w8, [x27]
	cmp	w8, w25
	b.ne	LBB26_153
; %bb.151:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w8, [x27, #4]
	cmp	w8, #1
	b.ne	LBB26_153
; %bb.152:                              ;   in Loop: Header=BB26_110 Depth=1
	add	x0, sp, #44
	mov	w1, #64                         ; =0x40
Lloh612:
	adrp	x2, l_.str.159@PAGE
Lloh613:
	add	x2, x2, l_.str.159@PAGEOFF
	bl	_halo_linux_snprintf
	cbnz	w28, LBB26_157
	b	LBB26_168
LBB26_153:                              ;   in Loop: Header=BB26_110 Depth=1
Lloh614:
	adrp	x9, _s_forge_controls_ui@PAGE
Lloh615:
	add	x9, x9, _s_forge_controls_ui@PAGEOFF
	add	x8, x9, w25, sxtw #2
	ldr	w24, [x9, #108]
	ldr	w0, [x8, #52]
	bl	_forge_gp_display_name
	cmp	w24, #1
	mov	x8, x0
	ccmp	w20, w23, #0, eq
	add	x0, sp, #44
	mov	w1, #64                         ; =0x40
	b.ne	LBB26_155
; %bb.154:                              ;   in Loop: Header=BB26_110 Depth=1
Lloh616:
	adrp	x2, l_.str.160@PAGE
Lloh617:
	add	x2, x2, l_.str.160@PAGEOFF
	b	LBB26_156
LBB26_155:                              ;   in Loop: Header=BB26_110 Depth=1
Lloh618:
	adrp	x2, l_.str.1@PAGE
Lloh619:
	add	x2, x2, l_.str.1@PAGEOFF
LBB26_156:                              ;   in Loop: Header=BB26_110 Depth=1
	str	w8, [sp]
	bl	_halo_linux_snprintf
	cbz	w28, LBB26_168
LBB26_157:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w1, [x28]
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x28, #64]
	cmn	w1, #1
	b.eq	LBB26_160
; %bb.158:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB26_160
; %bb.159:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB26_160:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x28, #60]
	cbnz	w0, LBB26_162
; %bb.161:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh620:
	adrp	x2, l_.str.154@PAGE
Lloh621:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
	str	w0, [x28, #60]
	cbz	w0, LBB26_168
LBB26_162:                              ;   in Loop: Header=BB26_110 Depth=1
	ldrb	w9, [sp, #108]
	cbz	w9, LBB26_166
; %bb.163:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	x12, [sp, #24]                  ; 8-byte Reload
	mov	w8, wzr
	.p2align	4, , 8
LBB26_164:                              ;   Parent Loop BB26_110 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w10, [x28, #60]
	and	w9, w9, #0xff
	add	w11, w12, w8
	add	w10, w10, w8, lsl #1
	add	w8, w8, #1
	strh	w9, [x10]
	ldrb	w9, [x11]
	cbnz	w9, LBB26_164
; %bb.165:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x28, #60]
	b	LBB26_167
LBB26_166:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, wzr
LBB26_167:                              ;   in Loop: Header=BB26_110 Depth=1
	strh	wzr, [x0, w8, sxtw #1]
LBB26_168:                              ;   in Loop: Header=BB26_110 Depth=1
	cbz	w26, LBB26_109
; %bb.169:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w1, [x26]
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x26, #64]
	cmn	w1, #1
	b.eq	LBB26_172
; %bb.170:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB26_172
; %bb.171:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB26_172:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x26, #60]
	cbnz	w0, LBB26_174
; %bb.173:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh622:
	adrp	x2, l_.str.154@PAGE
Lloh623:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
	str	w0, [x26, #60]
	cbz	w0, LBB26_109
LBB26_174:                              ;   in Loop: Header=BB26_110 Depth=1
	ldrb	w9, [sp, #44]
	cbz	w9, LBB26_201
; %bb.175:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, wzr
	.p2align	4, , 8
LBB26_176:                              ;   Parent Loop BB26_110 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w10, [x26, #60]
	and	w9, w9, #0xff
	add	w11, w19, w8
	add	w10, w10, w8, lsl #1
	add	w8, w8, #1
	strh	w9, [x10]
	ldrb	w9, [x11]
	cbnz	w9, LBB26_176
	b	LBB26_200
LBB26_177:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w11, wzr
LBB26_178:                              ;   in Loop: Header=BB26_110 Depth=1
	strh	wzr, [x0, w11, sxtw #1]
LBB26_179:                              ;   in Loop: Header=BB26_110 Depth=1
	fmul	s0, s10, s8
	cmp	w20, w23
Lloh624:
	adrp	x9, l_.str.164@PAGE
Lloh625:
	add	x9, x9, l_.str.164@PAGEOFF
Lloh626:
	adrp	x10, l_.str.163@PAGE
Lloh627:
	add	x10, x10, l_.str.163@PAGEOFF
	csel	x2, x10, x9, eq
	add	x0, sp, #108
	mov	w1, #64                         ; =0x40
	fadd	s0, s0, s9
	fcvtzs	w8, s0
	str	w8, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #44
	mov	w1, #64                         ; =0x40
Lloh628:
	adrp	x2, l_.str.165@PAGE
Lloh629:
	add	x2, x2, l_.str.165@PAGEOFF
	bl	_halo_linux_snprintf
	cbz	w28, LBB26_191
; %bb.180:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w1, [x28]
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x28, #64]
	cmn	w1, #1
	b.eq	LBB26_183
; %bb.181:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB26_183
; %bb.182:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB26_183:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x28, #60]
	cbnz	w0, LBB26_185
; %bb.184:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh630:
	adrp	x2, l_.str.154@PAGE
Lloh631:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
	str	w0, [x28, #60]
	cbz	w0, LBB26_191
LBB26_185:                              ;   in Loop: Header=BB26_110 Depth=1
	ldrb	w9, [sp, #108]
	cbz	w9, LBB26_189
; %bb.186:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	x12, [sp, #24]                  ; 8-byte Reload
	mov	w8, wzr
	.p2align	4, , 8
LBB26_187:                              ;   Parent Loop BB26_110 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w10, [x28, #60]
	and	w9, w9, #0xff
	add	w11, w12, w8
	add	w10, w10, w8, lsl #1
	add	w8, w8, #1
	strh	w9, [x10]
	ldrb	w9, [x11]
	cbnz	w9, LBB26_187
; %bb.188:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x28, #60]
	b	LBB26_190
LBB26_189:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, wzr
LBB26_190:                              ;   in Loop: Header=BB26_110 Depth=1
	strh	wzr, [x0, w8, sxtw #1]
LBB26_191:                              ;   in Loop: Header=BB26_110 Depth=1
	cbz	w26, LBB26_109
; %bb.192:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w1, [x26]
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x26, #64]
	cmn	w1, #1
	b.eq	LBB26_195
; %bb.193:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w0, #19553                      ; =0x4c61
	movk	w0, #17509, lsl #16
	bl	_tag_get
	cbz	w0, LBB26_195
; %bb.194:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #248]
LBB26_195:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x26, #60]
	cbnz	w0, LBB26_197
; %bb.196:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	x0, xzr
	mov	w1, #512                        ; =0x200
Lloh632:
	adrp	x2, l_.str.154@PAGE
Lloh633:
	add	x2, x2, l_.str.154@PAGEOFF
	mov	w3, #219                        ; =0xdb
	bl	_ui_widget_realloc
	str	w0, [x26, #60]
	cbz	w0, LBB26_109
LBB26_197:                              ;   in Loop: Header=BB26_110 Depth=1
	ldrb	w9, [sp, #44]
	cbz	w9, LBB26_201
; %bb.198:                              ;   in Loop: Header=BB26_110 Depth=1
	mov	w8, wzr
	.p2align	4, , 8
LBB26_199:                              ;   Parent Loop BB26_110 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w10, [x26, #60]
	and	w9, w9, #0xff
	add	w11, w19, w8
	add	w10, w10, w8, lsl #1
	add	w8, w8, #1
	strh	w9, [x10]
	ldrb	w9, [x11]
	cbnz	w9, LBB26_199
LBB26_200:                              ;   in Loop: Header=BB26_110 Depth=1
	ldr	w0, [x26, #60]
	strh	wzr, [x0, w8, sxtw #1]
	b	LBB26_109
LBB26_201:                              ;   in Loop: Header=BB26_110 Depth=1
	strh	wzr, [x0, wzr, sxtw #1]
	b	LBB26_109
LBB26_202:
	ldr	x8, [sp, #32]                   ; 8-byte Reload
	adrp	x9, _s_forge_controls_ui@PAGE+112
	ldr	w8, [x8, #72]
	cbz	w8, LBB26_204
; %bb.203:
	ldr	w9, [x9, _s_forge_controls_ui@PAGEOFF+112]
	cmp	w23, #0
	cset	w10, ne
	cmn	w9, #1
	mov	w9, #2                          ; =0x2
	csel	w9, w9, w10, gt
	strh	w9, [x8, #64]
LBB26_204:
	ldp	x29, x30, [sp, #304]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #288]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #272]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #224]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #208]            ; 16-byte Folded Reload
	add	sp, sp, #320
	ret
LBB26_205:
	ldr	w8, [x26, _s_forge_controls_ui@PAGEOFF+112]
	tbnz	w8, #31, LBB26_102
; %bb.206:
	mov	w25, wzr
	adrp	x20, _s_forge_controls_ui@PAGE+120
	b	LBB26_208
LBB26_207:                              ;   in Loop: Header=BB26_208 Depth=1
	mov	w25, w28
	cmp	w28, #253
	mov	x28, x27
	b.eq	LBB26_102
LBB26_208:                              ; =>This Inner Loop Header: Depth=1
	mov	x27, x28
	add	w28, w25, #1
	cmp	w28, #8
	b.eq	LBB26_207
; %bb.209:                              ;   in Loop: Header=BB26_208 Depth=1
	cmp	w28, #27
	b.eq	LBB26_207
; %bb.210:                              ;   in Loop: Header=BB26_208 Depth=1
	cmp	w28, #46
	b.eq	LBB26_207
; %bb.211:                              ;   in Loop: Header=BB26_208 Depth=1
	and	w8, w28, #0xfe
	cmp	w8, #16
	ccmp	w25, #17, #4, ne
	b.eq	LBB26_207
; %bb.212:                              ;   in Loop: Header=BB26_208 Depth=1
	cmp	w28, #13
	b.eq	LBB26_214
; %bb.213:                              ;   in Loop: Header=BB26_208 Depth=1
	cmp	w28, #1
	b.ne	LBB26_215
LBB26_214:                              ;   in Loop: Header=BB26_208 Depth=1
	ldr	w8, [x20, _s_forge_controls_ui@PAGEOFF+120]
	sub	w8, w24, w8
	cmp	w8, #260
	b.lo	LBB26_207
LBB26_215:                              ;   in Loop: Header=BB26_208 Depth=1
	add	w0, w25, #1
	bl	_forge_key_state
	tbz	w0, #31, LBB26_207
; %bb.216:                              ;   in Loop: Header=BB26_208 Depth=1
Lloh634:
	adrp	x8, _s_forge_controls_ui@PAGE
Lloh635:
	add	x8, x8, _s_forge_controls_ui@PAGEOFF
	add	w8, w8, w25, lsl #2
	add	w8, w8, #128
	ldr	w8, [x8]
	cbnz	w8, LBB26_207
; %bb.217:                              ;   in Loop: Header=BB26_208 Depth=1
	add	w0, w25, #1
	bl	_forge_vk_display_name
	cbz	w0, LBB26_207
; %bb.218:                              ;   in Loop: Header=BB26_208 Depth=1
Lloh636:
	adrp	x1, l_.str.156@PAGE
Lloh637:
	add	x1, x1, l_.str.156@PAGEOFF
	bl	_csstrcmp
	cbz	w0, LBB26_207
; %bb.219:
	adrp	x8, _s_forge_controls_ui@PAGE+4
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+4]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_221
; %bb.220:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+4]
LBB26_221:
	adrp	x8, _s_forge_controls_ui@PAGE+8
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+8]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_223
; %bb.222:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+8]
LBB26_223:
	adrp	x8, _s_forge_controls_ui@PAGE+12
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+12]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_225
; %bb.224:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+12]
LBB26_225:
	adrp	x8, _s_forge_controls_ui@PAGE+16
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+16]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_227
; %bb.226:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+16]
LBB26_227:
	adrp	x8, _s_forge_controls_ui@PAGE+20
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+20]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_229
; %bb.228:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+20]
LBB26_229:
	adrp	x8, _s_forge_controls_ui@PAGE+24
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+24]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_231
; %bb.230:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+24]
LBB26_231:
	adrp	x8, _s_forge_controls_ui@PAGE+28
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+28]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_233
; %bb.232:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+28]
LBB26_233:
	adrp	x8, _s_forge_controls_ui@PAGE+32
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+32]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_235
; %bb.234:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+32]
LBB26_235:
	adrp	x8, _s_forge_controls_ui@PAGE+36
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+36]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_237
; %bb.236:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+36]
LBB26_237:
	adrp	x8, _s_forge_controls_ui@PAGE+40
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+40]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_239
; %bb.238:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+40]
LBB26_239:
	adrp	x8, _s_forge_controls_ui@PAGE+44
	add	w20, w25, #1
	ldr	w9, [x8, _s_forge_controls_ui@PAGEOFF+44]
	sub	w9, w25, w9
	cmn	w9, #1
	b.ne	LBB26_241
; %bb.240:
	str	wzr, [x8, _s_forge_controls_ui@PAGEOFF+44]
LBB26_241:
Lloh638:
	adrp	x8, _s_forge_controls_ui@PAGE+4
Lloh639:
	add	x8, x8, _s_forge_controls_ui@PAGEOFF+4
	ldr	w9, [x8, #44]
	sub	w9, w25, w9
	cmn	w9, #1
	b.eq	LBB26_243
; %bb.242:
	mov	x28, x27
	b	LBB26_100
LBB26_243:
	str	wzr, [x8, #44]
	mov	x28, x27
	b	LBB26_100
	.loh AdrpAdd	Lloh532, Lloh533
	.loh AdrpAdd	Lloh534, Lloh535
	.loh AdrpAdd	Lloh536, Lloh537
	.loh AdrpAdd	Lloh538, Lloh539
	.loh AdrpLdr	Lloh540, Lloh541
	.loh AdrpAdd	Lloh542, Lloh543
	.loh AdrpAdd	Lloh544, Lloh545
	.loh AdrpLdr	Lloh546, Lloh547
	.loh AdrpLdr	Lloh548, Lloh549
	.loh AdrpLdr	Lloh550, Lloh551
	.loh AdrpLdr	Lloh552, Lloh553
	.loh AdrpLdr	Lloh554, Lloh555
	.loh AdrpLdr	Lloh556, Lloh557
	.loh AdrpLdr	Lloh558, Lloh559
	.loh AdrpLdr	Lloh560, Lloh561
	.loh AdrpLdr	Lloh562, Lloh563
	.loh AdrpLdr	Lloh564, Lloh565
	.loh AdrpLdr	Lloh566, Lloh567
	.loh AdrpLdr	Lloh568, Lloh569
	.loh AdrpLdr	Lloh570, Lloh571
	.loh AdrpLdr	Lloh572, Lloh573
	.loh AdrpLdr	Lloh574, Lloh575
	.loh AdrpLdr	Lloh576, Lloh577
	.loh AdrpAdd	Lloh578, Lloh579
	.loh AdrpAdd	Lloh580, Lloh581
	.loh AdrpAdd	Lloh582, Lloh583
	.loh AdrpAdd	Lloh584, Lloh585
	.loh AdrpAdd	Lloh588, Lloh589
	.loh AdrpAdd	Lloh586, Lloh587
	.loh AdrpAdd	Lloh590, Lloh591
	.loh AdrpAdd	Lloh592, Lloh593
	.loh AdrpAdd	Lloh598, Lloh599
	.loh AdrpAdd	Lloh596, Lloh597
	.loh AdrpAdd	Lloh594, Lloh595
	.loh AdrpAdd	Lloh600, Lloh601
	.loh AdrpAdd	Lloh602, Lloh603
	.loh AdrpAdd	Lloh604, Lloh605
	.loh AdrpAdd	Lloh606, Lloh607
	.loh AdrpAdd	Lloh608, Lloh609
	.loh AdrpAdd	Lloh610, Lloh611
	.loh AdrpAdd	Lloh612, Lloh613
	.loh AdrpAdd	Lloh614, Lloh615
	.loh AdrpAdd	Lloh616, Lloh617
	.loh AdrpAdd	Lloh618, Lloh619
	.loh AdrpAdd	Lloh620, Lloh621
	.loh AdrpAdd	Lloh622, Lloh623
	.loh AdrpAdd	Lloh628, Lloh629
	.loh AdrpAdd	Lloh626, Lloh627
	.loh AdrpAdd	Lloh624, Lloh625
	.loh AdrpAdd	Lloh630, Lloh631
	.loh AdrpAdd	Lloh632, Lloh633
	.loh AdrpAdd	Lloh634, Lloh635
	.loh AdrpAdd	Lloh636, Lloh637
	.loh AdrpAdd	Lloh638, Lloh639
                                        ; -- End function
	.globl	_forge_is_main_menu_active      ; -- Begin function forge_is_main_menu_active
	.p2align	4
_forge_is_main_menu_active:             ; @forge_is_main_menu_active
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_global_scenario_try_and_get
	mov	x19, x0
	bl	_forge_get_active_map_name
	cbz	w19, LBB27_2
; %bb.1:
	ldrh	w8, [x19, #60]
	cmp	w8, #2
	b.ne	LBB27_4
LBB27_2:
	mov	w0, #1                          ; =0x1
LBB27_3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB27_4:
	cbz	w0, LBB27_7
; %bb.5:
Lloh640:
	adrp	x1, l_.str.58@PAGE
Lloh641:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x19, x0
	bl	__stricmp
	cbz	w0, LBB27_2
; %bb.6:
Lloh642:
	adrp	x1, l_.str.59@PAGE
Lloh643:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB27_2
LBB27_7:
	mov	w0, wzr
	b	LBB27_3
	.loh AdrpAdd	Lloh640, Lloh641
	.loh AdrpAdd	Lloh642, Lloh643
                                        ; -- End function
	.globl	_network_chat_update            ; -- Begin function network_chat_update
	.p2align	4
_network_chat_update:                   ; @network_chat_update
; %bb.0:
	sub	sp, sp, #384
	stp	x28, x27, [sp, #320]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #336]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #352]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #368]            ; 16-byte Folded Spill
	add	x29, sp, #368
	bl	_system_milliseconds
	mov	w19, w0
	bl	_forge_get_active_map_name
	mov	x20, x0
	bl	_orig_network_chat_update
	bl	_global_scenario_try_and_get
	mov	x23, x0
	bl	_forge_get_active_map_name
	cbz	w23, LBB28_2
; %bb.1:
	ldrh	w8, [x23, #60]
	cmp	w8, #2
	b.ne	LBB28_10
LBB28_2:
	sub	x0, x29, #64
	sub	x2, x29, #96
	mov	w1, #16                         ; =0x10
	mov	w3, #32                         ; =0x20
	bl	_firefight_stats_poll_pending_link_popup
	cbz	w0, LBB28_8
; %bb.3:
Lloh644:
	adrp	x2, l_.str.60@PAGE
Lloh645:
	add	x2, x2, l_.str.60@PAGEOFF
	sub	x8, x29, #64
	add	x0, sp, #16
	mov	w1, #256                        ; =0x100
	str	w8, [sp]
	bl	_halo_linux_snprintf
	ldrb	w8, [sp, #16]
Lloh646:
	adrp	x19, _network_chat_update.msg@PAGE
Lloh647:
	add	x19, x19, _network_chat_update.msg@PAGEOFF
	mov	w9, wzr
	cbz	w8, LBB28_7
; %bb.4:
	add	x10, sp, #16
Lloh648:
	adrp	x11, _network_chat_update.msg@PAGE
Lloh649:
	add	x11, x11, _network_chat_update.msg@PAGEOFF
	add	w10, w10, #1
	.p2align	4, , 8
LBB28_5:                                ; =>This Inner Loop Header: Depth=1
	add	w12, w10, w9
	and	w13, w8, #0xff
	ldrb	w8, [x12]
	add	w12, w11, w9, lsl #1
	add	w9, w9, #1
	strh	w13, [x12]
	cbz	w8, LBB28_7
; %bb.6:                                ;   in Loop: Header=BB28_5 Depth=1
	cmp	w9, #255
	b.lo	LBB28_5
LBB28_7:
	mov	w0, #2                          ; =0x2
	strh	wzr, [x19, w9, sxtw #1]
	bl	_ui_play_audio_feedback_sound
	mov	x0, x19
	mov	w1, wzr
	bl	_display_error_text_deferred
LBB28_8:
Lloh650:
	adrp	x19, _g_forge_state@GOTPAGE
	adrp	x9, _g_last_forge_map_name@PAGE
Lloh651:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
	strb	wzr, [x9, _g_last_forge_map_name@PAGEOFF]
	ldr	w8, [x19]
	cbz	w8, LBB28_31
; %bb.9:
	str	wzr, [x8, #8]
	b	LBB28_33
LBB28_10:
	cbz	w0, LBB28_13
; %bb.11:
Lloh652:
	adrp	x1, l_.str.58@PAGE
Lloh653:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x23, x0
	bl	__stricmp
	cbz	w0, LBB28_2
; %bb.12:
Lloh654:
	adrp	x1, l_.str.59@PAGE
Lloh655:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x23
	bl	__stricmp
	cbz	w0, LBB28_2
LBB28_13:
Lloh656:
	adrp	x24, _g_forge_session_enabled@GOTPAGE
Lloh657:
	ldr	w24, [x24, _g_forge_session_enabled@GOTPAGEOFF]
	ldr	w8, [x24]
	cbnz	w8, LBB28_20
; %bb.14:
	bl	_game_connection
	cmp	w0, #1
	b.ne	LBB28_20
; %bb.15:
	bl	_firing_range_requested
	cbnz	w0, LBB28_20
; %bb.16:
	bl	_game_engine_get_variant
	mov	x23, x0
	cbz	w23, LBB28_20
; %bb.17:
Lloh658:
	adrp	x1, l_.str.42@PAGE
Lloh659:
	add	x1, x1, l_.str.42@PAGEOFF
	mov	x0, x23
	bl	_msvc_wcsicmp
	cbz	w0, LBB28_19
; %bb.18:
	ldr	w8, [x23, #64]
	mov	w9, #1073741823                 ; =0x3fffffff
	cmp	w8, w9
	b.ne	LBB28_20
LBB28_19:
	mov	w8, #1                          ; =0x1
	str	w8, [x24]
LBB28_20:
	cbz	w20, LBB28_28
; %bb.21:
	ldrb	w8, [x20]
	cbz	w8, LBB28_28
; %bb.22:
Lloh660:
	adrp	x23, _g_last_forge_map_name@PAGE
Lloh661:
	add	x23, x23, _g_last_forge_map_name@PAGEOFF
	mov	x0, x20
	mov	x1, x23
	bl	__stricmp
	cbz	w0, LBB28_28
; %bb.23:
	ldrb	w24, [x23]
Lloh662:
	adrp	x2, l_.str.1@PAGE
Lloh663:
	add	x2, x2, l_.str.1@PAGEOFF
	mov	x0, x23
	mov	w1, #128                        ; =0x80
	str	w20, [sp]
	bl	_halo_linux_snprintf
Lloh664:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh665:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh666:
	ldr	w0, [x8]
	cbnz	w0, LBB28_25
; %bb.24:
	bl	_forge_runtime_state_get
LBB28_25:
	str	wzr, [x0, #8]
	cbz	w24, LBB28_27
; %bb.26:
	mov	w0, #1                          ; =0x1
	bl	_forge_reset_transient_session_state
LBB28_27:
	bl	_forge_normalize_mcc_hud_tags
LBB28_28:
	adrp	x8, _g_last_forge_frame_ms@PAGE
	ldr	w9, [x8, _g_last_forge_frame_ms@PAGEOFF]
	cbz	w9, LBB28_34
; %bb.29:
	subs	w9, w19, w9
	mov	w10, #249                       ; =0xf9
	ccmp	w9, w10, #2, ne
	b.hi	LBB28_34
; %bb.30:
	ucvtf	s0, w9
	mov	w9, #1148846080                 ; =0x447a0000
	fmov	s1, w9
	fdiv	s0, s0, s1
	b	LBB28_35
LBB28_31:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
	str	wzr, [x0, #8]
	cbnz	w8, LBB28_33
; %bb.32:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB28_33:
	mov	w0, wzr
	str	wzr, [x8, #4]
	bl	_forge_reset_transient_session_state
	ldp	x29, x30, [sp, #368]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #352]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #336]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #384
	ret
LBB28_34:
	mov	w9, #4719                       ; =0x126f
	movk	w9, #15491, lsl #16
	fmov	s0, w9
LBB28_35:
	str	w19, [x8, _g_last_forge_frame_ms@PAGEOFF]
	ldp	x29, x30, [sp, #368]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #352]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #336]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #384
	b	_forge_3d_update
	.loh AdrpAdd	Lloh646, Lloh647
	.loh AdrpAdd	Lloh644, Lloh645
	.loh AdrpAdd	Lloh648, Lloh649
	.loh AdrpLdrGot	Lloh650, Lloh651
	.loh AdrpAdd	Lloh652, Lloh653
	.loh AdrpAdd	Lloh654, Lloh655
	.loh AdrpLdrGot	Lloh656, Lloh657
	.loh AdrpAdd	Lloh658, Lloh659
	.loh AdrpAdd	Lloh660, Lloh661
	.loh AdrpLdrGotLdr	Lloh664, Lloh665, Lloh666
	.loh AdrpAdd	Lloh662, Lloh663
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_reset_transient_session_state
_forge_reset_transient_session_state:   ; @forge_reset_transient_session_state
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
Lloh667:
	adrp	x20, _g_forge_state@GOTPAGE
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	mov	w19, w0
	add	x29, sp, #32
Lloh668:
	ldr	w20, [x20, _g_forge_state@GOTPAGEOFF]
	ldr	w8, [x20]
	cbz	w8, LBB29_2
; %bb.1:
	str	wzr, [x8, #44]
	b	LBB29_3
LBB29_2:
	bl	_forge_runtime_state_get
	ldr	w8, [x20]
	str	wzr, [x0, #44]
	cbz	w8, LBB29_14
LBB29_3:
	movi	v0.2d, #0xffffffffffffffff
	stur	d0, [x8, #76]
LBB29_4:
	mov	w9, #-1                         ; =0xffffffff
	str	wzr, [x8, #84]
	str	w9, [x8, #132]
LBB29_5:
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, #136]
LBB29_6:
	strb	wzr, [x8, #140]
	bl	_forge_3d_reset_session_tracking
	cbz	w19, LBB29_9
; %bb.7:
	ldr	w0, [x20]
	cbz	w0, LBB29_10
; %bb.8:
	mov	w8, #29784                      ; =0x7458
	movk	w8, #60, lsl #16
	str	wzr, [x0, x8]
	b	LBB29_11
LBB29_9:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
LBB29_10:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x20]
	mov	w9, #29784                      ; =0x7458
	movk	w9, #60, lsl #16
	str	wzr, [x8, x9]
	cbz	w0, LBB29_17
LBB29_11:
	add	w8, w0, #249, lsl #12           ; =1019904
	add	w9, w0, #249, lsl #12           ; =1019904
	add	w8, w8, #344
	add	w9, w9, #348
	str	wzr, [x8]
	strb	wzr, [x9]
LBB29_12:
	mov	w8, #37276                      ; =0x919c
	movk	w8, #15, lsl #16
	str	wzr, [x0, x8]
LBB29_13:
	add	x8, x0, #249, lsl #12           ; =1019904
	mov	w2, #57908                      ; =0xe234
	add	x0, x8, #548
	mov	w1, wzr
	movk	w2, #19, lsl #16
	bl	_csmemset
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	b	_forge_network_reset_session
LBB29_14:
	bl	_forge_runtime_state_get
	ldr	w8, [x20]
	mov	w23, #-1                        ; =0xffffffff
	str	w23, [x0, #80]
	cbz	w8, LBB29_19
; %bb.15:
	str	w23, [x8, #76]
	str	wzr, [x8, #84]
LBB29_16:
	movi	v0.2d, #0xffffffffffffffff
	stur	d0, [x8, #132]
	b	LBB29_6
LBB29_17:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x20]
	mov	w9, #37208                      ; =0x9158
	movk	w9, #15, lsl #16
	str	wzr, [x8, x9]
	cbz	w0, LBB29_24
; %bb.18:
	add	w8, w0, #249, lsl #12           ; =1019904
	add	w9, w8, #348
	add	w8, w8, #412
	strb	wzr, [x9]
	str	wzr, [x8]
	b	LBB29_13
LBB29_19:
	bl	_forge_runtime_state_get
	ldr	w8, [x20]
	str	w23, [x0, #76]
	cbnz	w8, LBB29_4
; %bb.20:
	bl	_forge_runtime_state_get
	ldr	w8, [x20]
	str	wzr, [x0, #84]
	cbnz	w8, LBB29_16
; %bb.21:
	bl	_forge_runtime_state_get
	ldr	w8, [x20]
	str	w23, [x0, #132]
	cbnz	w8, LBB29_5
; %bb.22:
	bl	_forge_runtime_state_get
	ldr	w8, [x20]
	str	w23, [x0, #136]
	cbnz	w8, LBB29_6
; %bb.23:
	bl	_forge_runtime_state_get
	mov	x8, x0
	b	LBB29_6
LBB29_24:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x20]
	mov	w9, #37212                      ; =0x915c
	movk	w9, #15, lsl #16
	strb	wzr, [x8, x9]
	cbnz	w0, LBB29_12
; %bb.25:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x20]
	mov	w9, #37276                      ; =0x919c
	movk	w9, #15, lsl #16
	str	wzr, [x8, x9]
	cbnz	w0, LBB29_13
; %bb.26:
	bl	_forge_runtime_state_get
	b	LBB29_13
	.loh AdrpLdrGot	Lloh667, Lloh668
                                        ; -- End function
	.globl	_network_chat_draw              ; -- Begin function network_chat_draw
	.p2align	4
_network_chat_draw:                     ; @network_chat_draw
; %bb.0:
	sub	sp, sp, #64
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	mov	w19, w0
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	bl	_orig_network_chat_draw
Lloh669:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh670:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh671:
	ldr	w8, [x8]
	cbz	w8, LBB30_11
; %bb.1:
	bl	_global_scenario_try_and_get
	mov	x20, x0
	bl	_forge_get_active_map_name
	cbz	w20, LBB30_11
; %bb.2:
	ldrh	w8, [x20, #60]
	cmp	w8, #2
	b.eq	LBB30_11
; %bb.3:
	cbz	w0, LBB30_6
; %bb.4:
Lloh672:
	adrp	x1, l_.str.58@PAGE
Lloh673:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x20, x0
	bl	__stricmp
	cbz	w0, LBB30_11
; %bb.5:
Lloh674:
	adrp	x1, l_.str.59@PAGE
Lloh675:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x20
	bl	__stricmp
	cbz	w0, LBB30_11
LBB30_6:
	bl	_hud_get_font_index
	mov	w20, w0
	cmn	w0, #1
	b.eq	LBB30_9
; %bb.7:
	mov	w0, #28276                      ; =0x6e74
	mov	w1, w20
	movk	w0, #26223, lsl #16
	bl	_tag_get
	mov	w23, #13                        ; =0xd
	cbz	w0, LBB30_10
; %bb.8:
	ldrh	w8, [x0, #4]
	ldrh	w9, [x0, #6]
	ldrh	w10, [x0, #8]
	add	w8, w9, w8
	add	w8, w8, w10
	sxth	w9, w8
	cmp	w9, #1
	csel	w23, w23, w8, lt
	b	LBB30_10
LBB30_9:
	mov	w23, #13                        ; =0xd
LBB30_10:
Lloh676:
	adrp	x8, _render@GOTPAGE
	add	x0, sp, #8
Lloh677:
	ldr	w8, [x8, _render@GOTPAGEOFF]
	ldrh	w9, [x8, #62]
	ldrh	w10, [x8, #60]
	ldur	x8, [x8, #68]
	neg	w9, w9
	neg	w10, w10
	sxth	w1, w9
	sxth	w2, w10
	str	x8, [sp, #8]
	bl	_offset_rectangle2d
	ldrsh	w1, [sp, #10]
	mov	w0, w19
	ldrsh	w2, [sp, #8]
	mov	w5, w20
	ldrsh	w3, [sp, #14]
	sxth	w6, w23
	ldrsh	w4, [sp, #12]
	bl	_forge_3d_draw_hud
LBB30_11:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpLdrGotLdr	Lloh669, Lloh670, Lloh671
	.loh AdrpAdd	Lloh672, Lloh673
	.loh AdrpAdd	Lloh674, Lloh675
	.loh AdrpLdrGot	Lloh676, Lloh677
                                        ; -- End function
	.globl	_network_chat_typing            ; -- Begin function network_chat_typing
	.p2align	4
_network_chat_typing:                   ; @network_chat_typing
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_orig_network_chat_typing
	cbz	w0, LBB31_2
LBB31_1:
	mov	w0, #1                          ; =0x1
	b	LBB31_9
LBB31_2:
Lloh678:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh679:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh680:
	ldr	w8, [x8]
	cbz	w8, LBB31_8
; %bb.3:
Lloh681:
	adrp	x20, _g_forge_state@GOTPAGE
Lloh682:
	ldr	w20, [x20, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x20]
	cbz	w0, LBB31_5
; %bb.4:
	ldr	w8, [x0]
	cbnz	w8, LBB31_6
	b	LBB31_8
LBB31_5:
	bl	_forge_runtime_state_get
	ldr	w8, [x0]
	cbz	w8, LBB31_8
LBB31_6:
	bl	_global_scenario_try_and_get
	mov	x19, x0
	bl	_forge_get_active_map_name
	cbz	w19, LBB31_8
; %bb.7:
	ldrh	w8, [x19, #60]
	cmp	w8, #2
	b.ne	LBB31_10
LBB31_8:
	mov	w0, wzr
LBB31_9:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB31_10:
	cbz	w0, LBB31_13
; %bb.11:
Lloh683:
	adrp	x1, l_.str.58@PAGE
Lloh684:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x19, x0
	bl	__stricmp
	cbz	w0, LBB31_8
; %bb.12:
Lloh685:
	adrp	x1, l_.str.59@PAGE
Lloh686:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB31_8
LBB31_13:
	ldr	w0, [x20]
	cbnz	w0, LBB31_15
; %bb.14:
	bl	_forge_runtime_state_get
LBB31_15:
	ldr	w8, [x0, #8]
	cbnz	w8, LBB31_1
; %bb.16:
	bl	_forge_has_held_item_to_cancel
	cbnz	w0, LBB31_1
; %bb.17:
	adrp	x19, _s_forge_esc_cancel_ms@PAGE
	ldr	w8, [x19, _s_forge_esc_cancel_ms@PAGEOFF]
	cbz	w8, LBB31_8
; %bb.18:
	bl	_system_milliseconds
	ldr	w8, [x19, _s_forge_esc_cancel_ms@PAGEOFF]
	sub	w8, w0, w8
	cmp	w8, #250
	b.lo	LBB31_1
	b	LBB31_8
	.loh AdrpLdrGotLdr	Lloh678, Lloh679, Lloh680
	.loh AdrpLdrGot	Lloh681, Lloh682
	.loh AdrpAdd	Lloh683, Lloh684
	.loh AdrpAdd	Lloh685, Lloh686
                                        ; -- End function
	.globl	_network_chat_handle_up         ; -- Begin function network_chat_handle_up
	.p2align	4
_network_chat_handle_up:                ; @network_chat_handle_up
; %bb.0:
	cbz	w1, LBB32_4
; %bb.1:
	cbz	w2, LBB32_4
; %bb.2:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	mov	x20, x1
	add	x1, x1, #4
	mov	w23, w2
	mov	w2, #1                          ; =0x1
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	mov	w19, w0
	bl	_forge_network_intercept_chat_packet
	mov	x1, x20
	mov	w8, w0
	mov	w0, w19
	mov	w2, w23
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	cbz	w8, LBB32_4
; %bb.3:
	ret
LBB32_4:
	b	_orig_network_chat_handle_up
                                        ; -- End function
	.globl	_network_chat_handle_down       ; -- Begin function network_chat_handle_down
	.p2align	4
_network_chat_handle_down:              ; @network_chat_handle_down
; %bb.0:
	cbz	w0, LBB33_4
; %bb.1:
	cbz	w1, LBB33_4
; %bb.2:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	mov	w19, w1
	add	x1, x0, #4
	mov	x20, x0
	mov	w0, #-1                         ; =0xffffffff
	mov	w2, wzr
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_forge_network_intercept_chat_packet
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	mov	w1, w19
	mov	w8, w0
	mov	x0, x20
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	cbz	w8, LBB33_4
; %bb.3:
	ret
LBB33_4:
	b	_orig_network_chat_handle_down
                                        ; -- End function
	.globl	_network_objects_handle_changes ; -- Begin function network_objects_handle_changes
	.p2align	4
_network_objects_handle_changes:        ; @network_objects_handle_changes
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	mov	w19, w1
	mov	x20, x0
	bl	_forge_network_pre_handle_object_changes
	mov	x0, x20
	mov	w1, w19
	bl	_orig_network_objects_handle_changes
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	mov	x0, x20
	mov	w1, w19
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_forge_network_post_handle_object_changes
                                        ; -- End function
	.globl	_director_update                ; -- Begin function director_update
	.p2align	4
_director_update:                       ; @director_update
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_orig_director_update
Lloh687:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh688:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh689:
	ldr	w8, [x8]
	cbz	w8, LBB35_6
; %bb.1:
Lloh690:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh691:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh692:
	ldr	w0, [x8]
	cbz	w0, LBB35_3
; %bb.2:
	ldr	w8, [x0]
	cbnz	w8, LBB35_4
	b	LBB35_6
LBB35_3:
	bl	_forge_runtime_state_get
	ldr	w8, [x0]
	cbz	w8, LBB35_6
LBB35_4:
	bl	_global_scenario_try_and_get
	mov	x19, x0
	bl	_forge_get_active_map_name
	cbz	w19, LBB35_6
; %bb.5:
	ldrh	w8, [x19, #60]
	cmp	w8, #2
	b.ne	LBB35_7
LBB35_6:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB35_7:
	cbz	w0, LBB35_10
; %bb.8:
Lloh693:
	adrp	x1, l_.str.58@PAGE
Lloh694:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x19, x0
	bl	__stricmp
	cbz	w0, LBB35_6
; %bb.9:
Lloh695:
	adrp	x1, l_.str.59@PAGE
Lloh696:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB35_6
LBB35_10:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	mov	w0, wzr
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_forge_3d_apply_monitor_camera
	.loh AdrpLdrGotLdr	Lloh687, Lloh688, Lloh689
	.loh AdrpLdrGotLdr	Lloh690, Lloh691, Lloh692
	.loh AdrpAdd	Lloh693, Lloh694
	.loh AdrpAdd	Lloh695, Lloh696
                                        ; -- End function
	.globl	_director_get_perspective       ; -- Begin function director_get_perspective
	.p2align	4
_director_get_perspective:              ; @director_get_perspective
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
Lloh697:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	mov	w19, w0
	add	x29, sp, #32
Lloh698:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh699:
	ldr	w8, [x8]
	cbz	w8, LBB36_16
; %bb.1:
Lloh700:
	adrp	x23, _g_forge_state@GOTPAGE
Lloh701:
	ldr	w23, [x23, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x23]
	cbz	w0, LBB36_3
; %bb.2:
	ldr	w8, [x0]
	cbnz	w8, LBB36_4
	b	LBB36_16
LBB36_3:
	bl	_forge_runtime_state_get
	ldr	w8, [x0]
	cbz	w8, LBB36_16
LBB36_4:
	bl	_global_scenario_try_and_get
	mov	x20, x0
	bl	_forge_get_active_map_name
	cbz	w20, LBB36_16
; %bb.5:
	ldrh	w8, [x20, #60]
	cmp	w8, #2
	b.eq	LBB36_16
; %bb.6:
	cbz	w0, LBB36_9
; %bb.7:
Lloh702:
	adrp	x1, l_.str.58@PAGE
Lloh703:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x20, x0
	bl	__stricmp
	cbz	w0, LBB36_16
; %bb.8:
Lloh704:
	adrp	x1, l_.str.59@PAGE
Lloh705:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x20
	bl	__stricmp
	cbz	w0, LBB36_16
LBB36_9:
	ldr	w0, [x23]
	cbnz	w0, LBB36_11
; %bb.10:
	bl	_forge_runtime_state_get
LBB36_11:
	ldr	w8, [x0, #4]
	cmp	w8, #1
	b.ne	LBB36_16
; %bb.12:
	ldr	w0, [x23]
	cbnz	w0, LBB36_14
; %bb.13:
	bl	_forge_runtime_state_get
LBB36_14:
	ldr	w8, [x0, #40]
	cbz	w8, LBB36_16
; %bb.15:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	mov	w0, #1                          ; =0x1
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
LBB36_16:
	mov	w0, w19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	b	_orig_director_get_perspective
	.loh AdrpLdrGotLdr	Lloh697, Lloh698, Lloh699
	.loh AdrpLdrGot	Lloh700, Lloh701
	.loh AdrpAdd	Lloh702, Lloh703
	.loh AdrpAdd	Lloh704, Lloh705
                                        ; -- End function
	.globl	_render_interpolation_camera    ; -- Begin function render_interpolation_camera
	.p2align	4
_render_interpolation_camera:           ; @render_interpolation_camera
; %bb.0:
	stp	x26, x25, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	mov	w20, w0
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	bl	_orig_render_interpolation_camera
Lloh706:
	adrp	x25, _g_forge_session_enabled@GOTPAGE
Lloh707:
	adrp	x24, _g_forge_state@GOTPAGE
	mov	x19, x0
Lloh708:
	ldr	w25, [x25, _g_forge_session_enabled@GOTPAGEOFF]
	ldr	w8, [x25]
Lloh709:
	ldr	w24, [x24, _g_forge_state@GOTPAGEOFF]
	cbz	w8, LBB37_10
; %bb.1:
	ldr	w0, [x24]
	cbnz	w0, LBB37_3
; %bb.2:
	bl	_forge_runtime_state_get
LBB37_3:
	ldr	w8, [x0]
	cbz	w8, LBB37_10
; %bb.4:
	bl	_global_scenario_try_and_get
	mov	x23, x0
	bl	_forge_get_active_map_name
	cbz	w23, LBB37_10
; %bb.5:
	ldrh	w8, [x23, #60]
	cmp	w8, #2
	b.eq	LBB37_10
; %bb.6:
	cbz	w0, LBB37_9
; %bb.7:
Lloh710:
	adrp	x1, l_.str.58@PAGE
Lloh711:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x23, x0
	bl	__stricmp
	cbz	w0, LBB37_10
; %bb.8:
Lloh712:
	adrp	x1, l_.str.59@PAGE
Lloh713:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x23
	bl	__stricmp
	cbz	w0, LBB37_10
LBB37_9:
	bl	_forge_render_begin_monitor_visibility
LBB37_10:
	cbz	w19, LBB37_17
; %bb.11:
	ldr	w8, [x25]
	cbz	w8, LBB37_17
; %bb.12:
	ldr	w0, [x24]
	cbz	w0, LBB37_14
; %bb.13:
	ldr	w8, [x0]
	cbnz	w8, LBB37_15
	b	LBB37_17
LBB37_14:
	bl	_forge_runtime_state_get
	ldr	w8, [x0]
	cbz	w8, LBB37_17
LBB37_15:
	bl	_global_scenario_try_and_get
	mov	x23, x0
	bl	_forge_get_active_map_name
	cbz	w23, LBB37_17
; %bb.16:
	ldrh	w8, [x23, #60]
	cmp	w8, #2
	b.ne	LBB37_19
LBB37_17:
	mov	x0, x19
LBB37_18:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
	ret
LBB37_19:
	cbz	w0, LBB37_23
; %bb.20:
Lloh714:
	adrp	x1, l_.str.58@PAGE
Lloh715:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x23, x0
	bl	__stricmp
	cbz	w0, LBB37_17
; %bb.21:
Lloh716:
	adrp	x1, l_.str.59@PAGE
Lloh717:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x23
	bl	__stricmp
	cbnz	w20, LBB37_17
; %bb.22:
	cbnz	w0, LBB37_24
	b	LBB37_17
LBB37_23:
	cbnz	w20, LBB37_17
LBB37_24:
	ldr	w0, [x24]
	cbnz	w0, LBB37_26
; %bb.25:
	bl	_forge_runtime_state_get
LBB37_26:
	ldr	w8, [x0, #4]
	cmp	w8, #1
	b.ne	LBB37_17
; %bb.27:
	ldp	q3, q0, [x19, #16]
Lloh718:
	adrp	x20, _render_interpolation_camera.s_live_obs@PAGE
Lloh719:
	add	x20, x20, _render_interpolation_camera.s_live_obs@PAGEOFF
	ldur	q1, [x19, #44]
	mov	x0, x20
	ldr	q2, [x19]
	stur	q1, [x20, #44]
	stp	q3, q0, [x20, #16]
	str	q2, [x20]
	bl	_forge_3d_fill_live_observer_result
	mov	w8, w0
	mov	x0, x20
	cbnz	w8, LBB37_18
	b	LBB37_17
	.loh AdrpLdrGot	Lloh707, Lloh709
	.loh AdrpLdrGot	Lloh706, Lloh708
	.loh AdrpAdd	Lloh710, Lloh711
	.loh AdrpAdd	Lloh712, Lloh713
	.loh AdrpAdd	Lloh714, Lloh715
	.loh AdrpAdd	Lloh716, Lloh717
	.loh AdrpAdd	Lloh718, Lloh719
                                        ; -- End function
	.globl	_first_person_weapon_draw       ; -- Begin function first_person_weapon_draw
	.p2align	4
_first_person_weapon_draw:              ; @first_person_weapon_draw
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
Lloh720:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
Lloh721:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh722:
	ldr	w8, [x8]
	cbz	w8, LBB38_9
; %bb.1:
Lloh723:
	adrp	x19, _g_forge_state@GOTPAGE
Lloh724:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x19]
	cbz	w0, LBB38_3
; %bb.2:
	ldr	w8, [x0]
	cbnz	w8, LBB38_4
	b	LBB38_9
LBB38_3:
	bl	_forge_runtime_state_get
	ldr	w8, [x0]
	cbz	w8, LBB38_9
LBB38_4:
	ldr	w0, [x19]
	cbz	w0, LBB38_6
; %bb.5:
	ldr	w8, [x0, #4]
	cbnz	w8, LBB38_7
	b	LBB38_9
LBB38_6:
	bl	_forge_runtime_state_get
	ldr	w8, [x0, #4]
	cbz	w8, LBB38_9
LBB38_7:
	bl	_global_scenario_try_and_get
	mov	x19, x0
	bl	_forge_get_active_map_name
	cbz	w19, LBB38_9
; %bb.8:
	ldrh	w8, [x19, #60]
	cmp	w8, #2
	b.ne	LBB38_10
LBB38_9:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_orig_first_person_weapon_draw
LBB38_10:
	cbz	w0, LBB38_13
; %bb.11:
Lloh725:
	adrp	x1, l_.str.58@PAGE
Lloh726:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x19, x0
	bl	__stricmp
	cbz	w0, LBB38_9
; %bb.12:
Lloh727:
	adrp	x1, l_.str.59@PAGE
Lloh728:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB38_9
LBB38_13:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh720, Lloh721, Lloh722
	.loh AdrpLdrGot	Lloh723, Lloh724
	.loh AdrpAdd	Lloh725, Lloh726
	.loh AdrpAdd	Lloh727, Lloh728
                                        ; -- End function
	.globl	_game_engine_post_rasterize_objects ; -- Begin function game_engine_post_rasterize_objects
	.p2align	4
_game_engine_post_rasterize_objects:    ; @game_engine_post_rasterize_objects
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
Lloh729:
	adrp	x23, _g_forge_session_enabled@GOTPAGE
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
Lloh730:
	adrp	x20, _g_forge_state@GOTPAGE
	add	x29, sp, #32
Lloh731:
	ldr	w23, [x23, _g_forge_session_enabled@GOTPAGEOFF]
	ldr	w8, [x23]
Lloh732:
	ldr	w20, [x20, _g_forge_state@GOTPAGEOFF]
	cbz	w8, LBB39_10
; %bb.1:
	ldr	w0, [x20]
	cbnz	w0, LBB39_3
; %bb.2:
	bl	_forge_runtime_state_get
LBB39_3:
	ldr	w8, [x0]
	cbz	w8, LBB39_10
; %bb.4:
	bl	_global_scenario_try_and_get
	mov	x19, x0
	bl	_forge_get_active_map_name
	cbz	w19, LBB39_10
; %bb.5:
	ldrh	w8, [x19, #60]
	cmp	w8, #2
	b.eq	LBB39_10
; %bb.6:
	cbz	w0, LBB39_9
; %bb.7:
Lloh733:
	adrp	x1, l_.str.58@PAGE
Lloh734:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x19, x0
	bl	__stricmp
	cbz	w0, LBB39_10
; %bb.8:
Lloh735:
	adrp	x1, l_.str.59@PAGE
Lloh736:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB39_10
LBB39_9:
	bl	_forge_render_end_monitor_visibility
LBB39_10:
	bl	_orig_game_engine_post_rasterize_objects
	ldr	w8, [x23]
	cbz	w8, LBB39_16
; %bb.11:
	ldr	w0, [x20]
	cbz	w0, LBB39_13
; %bb.12:
	ldr	w8, [x0]
	cbnz	w8, LBB39_14
	b	LBB39_16
LBB39_13:
	bl	_forge_runtime_state_get
	ldr	w8, [x0]
	cbz	w8, LBB39_16
LBB39_14:
	bl	_global_scenario_try_and_get
	mov	x19, x0
	bl	_forge_get_active_map_name
	cbz	w19, LBB39_16
; %bb.15:
	ldrh	w8, [x19, #60]
	cmp	w8, #2
	b.ne	LBB39_17
LBB39_16:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
LBB39_17:
	cbz	w0, LBB39_20
; %bb.18:
Lloh737:
	adrp	x1, l_.str.58@PAGE
Lloh738:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x19, x0
	bl	__stricmp
	cbz	w0, LBB39_16
; %bb.19:
Lloh739:
	adrp	x1, l_.str.59@PAGE
Lloh740:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB39_16
LBB39_20:
	mov	w0, wzr
	bl	_rasterizer_set_stencil_mode
	movi	d0, #0000000000000000
	movi	d1, #0000000000000000
	bl	_rasterizer_set_frustum_z
	mov	w0, wzr
	bl	_rasterizer_models_begin
	mov	x0, xzr
	bl	_forge_render_world_3d_overlays
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	b	_rasterizer_models_end
	.loh AdrpLdrGot	Lloh730, Lloh732
	.loh AdrpLdrGot	Lloh729, Lloh731
	.loh AdrpAdd	Lloh733, Lloh734
	.loh AdrpAdd	Lloh735, Lloh736
	.loh AdrpAdd	Lloh737, Lloh738
	.loh AdrpAdd	Lloh739, Lloh740
                                        ; -- End function
	.globl	_hud_render_weapon_interface    ; -- Begin function hud_render_weapon_interface
	.p2align	4
_hud_render_weapon_interface:           ; @hud_render_weapon_interface
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
Lloh741:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
Lloh742:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh743:
	ldr	w8, [x8]
	cbz	w8, LBB40_9
; %bb.1:
Lloh744:
	adrp	x19, _g_forge_state@GOTPAGE
Lloh745:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
	ldr	w8, [x19]
	cbz	w8, LBB40_3
; %bb.2:
	ldr	w8, [x8]
	cbnz	w8, LBB40_4
	b	LBB40_9
LBB40_3:
	mov	x20, x0
	bl	_forge_runtime_state_get
	mov	x8, x0
	mov	x0, x20
	ldr	w8, [x8]
	cbz	w8, LBB40_9
LBB40_4:
	ldr	w8, [x19]
	cbz	w8, LBB40_6
; %bb.5:
	ldr	w8, [x8, #4]
	cbnz	w8, LBB40_7
	b	LBB40_9
LBB40_6:
	mov	x19, x0
	bl	_forge_runtime_state_get
	mov	x8, x0
	mov	x0, x19
	ldr	w8, [x8, #4]
	cbz	w8, LBB40_9
LBB40_7:
	mov	x23, x0
	bl	_global_scenario_try_and_get
	mov	x20, x0
	bl	_forge_get_active_map_name
	mov	x19, x0
	mov	x0, x23
	cbz	w20, LBB40_9
; %bb.8:
	ldrh	w8, [x20, #60]
	cmp	w8, #2
	b.ne	LBB40_10
LBB40_9:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	b	_orig_hud_render_weapon_interface
LBB40_10:
	cbz	w19, LBB40_13
; %bb.11:
Lloh746:
	adrp	x1, l_.str.58@PAGE
Lloh747:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	mov	w8, w0
	mov	x0, x23
	cbz	w8, LBB40_9
; %bb.12:
Lloh748:
	adrp	x1, l_.str.59@PAGE
Lloh749:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	mov	w8, w0
	mov	x0, x23
	cbz	w8, LBB40_9
LBB40_13:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh741, Lloh742, Lloh743
	.loh AdrpLdrGot	Lloh744, Lloh745
	.loh AdrpAdd	Lloh746, Lloh747
	.loh AdrpAdd	Lloh748, Lloh749
                                        ; -- End function
	.globl	_hud_draw_numbers               ; -- Begin function hud_draw_numbers
	.p2align	4
_hud_draw_numbers:                      ; @hud_draw_numbers
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	adrp	x19, _s_forge_in_hud_draw_numbers@PAGE
	mov	w8, #1                          ; =0x1
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	strb	w8, [x19, _s_forge_in_hud_draw_numbers@PAGEOFF]
	bl	_orig_hud_draw_numbers
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	strb	wzr, [x19, _s_forge_in_hud_draw_numbers@PAGEOFF]
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.globl	_hud_draw_bitmap_direct         ; -- Begin function hud_draw_bitmap_direct
	.p2align	4
_hud_draw_bitmap_direct:                ; @hud_draw_bitmap_direct
; %bb.0:
	stp	d9, d8, [sp, #-80]!             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	fmov	s8, s1
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	fmov	s9, s0
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	w19, w5
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	mov	w20, w4
	mov	x23, x3
	mov	x24, x2
	mov	w25, w1
	mov	x26, x0
	bl	_forge_is_mcc_hud_active
	cbz	w26, LBB42_5
; %bb.1:
	cbz	w0, LBB42_5
; %bb.2:
	ldrh	w8, [x26, #4]
	cmp	w8, #512
	b.lo	LBB42_4
; %bb.3:
	ldrh	w8, [x26, #6]
	cmp	w8, #511
	b.hi	LBB42_5
LBB42_4:
	mov	w8, #39322                      ; =0x999a
	fmov	s0, #0.50000000
	movk	w8, #16153, lsl #16
	fmov	s1, w8
	adrp	x8, _s_forge_in_hud_draw_numbers@PAGE
	fmul	s0, s9, s0
	ldrb	w8, [x8, _s_forge_in_hud_draw_numbers@PAGEOFF]
	fcmp	s9, s1
	cset	w9, le
	tst	w9, w8
	fcsel	s9, s9, s0, ne
LBB42_5:
	mov	x0, x26
	mov	w1, w25
	mov	x2, x24
	mov	x3, x23
	mov	w4, w20
	mov	w5, w19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	fmov	s0, s9
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	fmov	s1, s8
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #80               ; 16-byte Folded Reload
	b	_orig_hud_draw_bitmap_direct
                                        ; -- End function
	.globl	_render_model                   ; -- Begin function render_model
	.p2align	4
_render_model:                          ; @render_model
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	fmov	s8, s1
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	fmov	s9, s0
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	mov	x26, x5
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	mov	x24, x7
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	mov	x23, x6
	str	x1, [sp, #32]                   ; 8-byte Spill
	mov	x19, x4
	ldr	w8, [x29, #24]
	mov	x27, x3
	ldr	w25, [x29, #16]
	mov	x28, x2
	mov	w20, w0
	str	w8, [sp, #44]                   ; 4-byte Spill
	ldrsh	w8, [x29, #20]
	cmn	w25, #1
	str	w8, [sp, #28]                   ; 4-byte Spill
	b.eq	LBB43_3
; %bb.1:
	mov	w0, w25
	bl	_firefight_is_generator_hidden_biped
	cbz	w0, LBB43_3
LBB43_2:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB43_3:
Lloh750:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh751:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh752:
	ldr	w8, [x8]
	cbz	w8, LBB43_11
; %bb.4:
Lloh753:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh754:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh755:
	ldr	w0, [x8]
	cbz	w0, LBB43_6
; %bb.5:
	ldr	w8, [x0]
	cbnz	w8, LBB43_7
	b	LBB43_11
LBB43_6:
	bl	_forge_runtime_state_get
	ldr	w8, [x0]
	cbz	w8, LBB43_11
LBB43_7:
	stp	x28, x19, [sp, #8]              ; 16-byte Folded Spill
	mov	x28, x27
	mov	x19, x26
	mov	x27, x23
	mov	x23, x24
	bl	_global_scenario_try_and_get
	mov	x26, x0
	bl	_forge_get_active_map_name
	cbz	w26, LBB43_9
; %bb.8:
	ldrh	w8, [x26, #60]
	cmp	w8, #2
	b.ne	LBB43_22
LBB43_9:
	mov	x24, x23
LBB43_10:
	mov	x23, x27
	mov	x26, x19
	mov	x27, x28
	ldp	x28, x19, [sp, #8]              ; 16-byte Folded Reload
LBB43_11:
	cmn	w25, #1
	ccmn	w20, #1, #4, ne
	b.eq	LBB43_21
; %bb.12:
	mov	w0, w25
	mov	w1, #960                        ; =0x3c0
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB43_21
; %bb.13:
	mov	w0, #25701                      ; =0x6465
	mov	w1, w20
	movk	w0, #28015, lsl #16
	bl	_tag_get
	cbz	w0, LBB43_21
; %bb.14:
	ldr	s0, [x0, #8]
	fcmp	s0, #0.0
	b.le	LBB43_16
; %bb.15:
	str	wzr, [x0, #8]
LBB43_16:
	ldr	w8, [x0, #208]
	cmp	w8, #1
	b.gt	LBB43_19
; %bb.17:
	fmov	s0, #1.00000000
	ldr	s1, [x0, #24]
	fadd	s0, s1, s0
	fcmp	s9, s0
	b.pl	LBB43_19
; %bb.18:
	fmov	s9, s0
LBB43_19:
	movi	v0.2s, #66, lsl #24
	fcmp	s9, s0
	b.pl	LBB43_21
; %bb.20:
	movi	v9.2s, #66, lsl #24
LBB43_21:
	ldr	w8, [sp, #44]                   ; 4-byte Reload
	mov	w0, w20
	ldr	x1, [sp, #32]                   ; 8-byte Reload
	fmov	s0, s9
	mov	x2, x28
	mov	x3, x27
	mov	x4, x19
	mov	x5, x26
	str	w8, [x29, #24]
	mov	x6, x23
	ldr	w8, [sp, #28]                   ; 4-byte Reload
	fmov	s1, s8
	str	w25, [x29, #16]
	mov	x7, x24
	strh	w8, [x29, #20]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	add	sp, sp, #144
	b	_orig_render_model
LBB43_22:
	mov	x24, x0
	cbz	w24, LBB43_26
; %bb.23:
Lloh756:
	adrp	x1, l_.str.58@PAGE
Lloh757:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x0, x24
	bl	__stricmp
	cbz	w0, LBB43_9
; %bb.24:
Lloh758:
	adrp	x1, l_.str.59@PAGE
Lloh759:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x24
	bl	__stricmp
	cmn	w25, #1
	b.eq	LBB43_9
; %bb.25:
	mov	x24, x23
	cbnz	w0, LBB43_27
	b	LBB43_10
LBB43_26:
	mov	x24, x23
	cmn	w25, #1
	b.eq	LBB43_47
LBB43_27:
	mov	w0, w25
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	mov	x23, x27
	mov	x26, x19
	mov	x27, x28
	ldp	x28, x19, [sp, #8]              ; 16-byte Folded Reload
	cbz	w0, LBB43_30
; %bb.28:
	ldr	w0, [x0, #204]
	cmn	w0, #1
	b.eq	LBB43_30
; %bb.29:
	bl	_forge_is_unit_in_monitor_mode
	cbnz	w0, LBB43_2
LBB43_30:
Lloh760:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh761:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh762:
	ldr	w0, [x8]
	cbnz	w0, LBB43_32
; %bb.31:
	bl	_forge_runtime_state_get
LBB43_32:
	ldr	w8, [x0, #4]
	cmp	w8, #1
	b.ne	LBB43_37
; %bb.33:
Lloh763:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh764:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh765:
	ldr	w0, [x8]
	cbnz	w0, LBB43_35
; %bb.34:
	bl	_forge_runtime_state_get
LBB43_35:
	ldr	w8, [x0, #40]
	cbnz	w8, LBB43_37
; %bb.36:
	mov	w0, wzr
	bl	_player_control_get_unit_index
	cmp	w0, w25
	b.eq	LBB43_2
LBB43_37:
	ldr	w2, [sp, #44]                   ; 4-byte Reload
	mov	w0, w25
	mov	x1, x26
	bl	_forge_monitor_render_player_unit
	cbnz	w0, LBB43_2
; %bb.38:
Lloh766:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh767:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh768:
	ldr	w0, [x8]
	cbnz	w0, LBB43_40
; %bb.39:
	bl	_forge_runtime_state_get
LBB43_40:
	ldr	w8, [x0, #76]
	cmp	w25, w8
	b.ne	LBB43_11
; %bb.41:
Lloh769:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh770:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh771:
	ldr	w0, [x8]
	cbnz	w0, LBB43_43
; %bb.42:
	bl	_forge_runtime_state_get
LBB43_43:
	ldr	w8, [x0, #80]
	tbnz	w8, #31, LBB43_11
; %bb.44:
	mov	w0, w25
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB43_11
; %bb.45:
	ldrsh	w8, [x0, #416]
	cmp	w8, #1
	b.lt	LBB43_11
; %bb.46:
	add	x1, x0, #416
	mov	w0, w25
	bl	_object_header_block_get
	ldr	x8, [sp, #32]                   ; 8-byte Reload
	cmp	w0, #0
	csel	x8, x8, x0, eq
	str	x8, [sp, #32]                   ; 8-byte Spill
	b	LBB43_11
LBB43_47:
	mov	x23, x27
	mov	x26, x19
	mov	x27, x28
	ldp	x28, x19, [sp, #8]              ; 16-byte Folded Reload
	b	LBB43_21
	.loh AdrpLdrGotLdr	Lloh750, Lloh751, Lloh752
	.loh AdrpLdrGotLdr	Lloh753, Lloh754, Lloh755
	.loh AdrpAdd	Lloh756, Lloh757
	.loh AdrpAdd	Lloh758, Lloh759
	.loh AdrpLdrGotLdr	Lloh760, Lloh761, Lloh762
	.loh AdrpLdrGotLdr	Lloh763, Lloh764, Lloh765
	.loh AdrpLdrGotLdr	Lloh766, Lloh767, Lloh768
	.loh AdrpLdrGotLdr	Lloh769, Lloh770, Lloh771
                                        ; -- End function
	.globl	_hs_compile_and_evaluate        ; -- Begin function hs_compile_and_evaluate
	.p2align	4
_hs_compile_and_evaluate:               ; @hs_compile_and_evaluate
; %bb.0:
	sub	sp, sp, #64
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	cbz	w0, LBB44_9
; %bb.1:
	mov	x19, x0
	.p2align	4, , 8
LBB44_2:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x19]
	cmp	w8, #32
	ccmp	w8, #9, #4, ne
	b.ne	LBB44_4
; %bb.3:                                ;   in Loop: Header=BB44_2 Depth=1
	add	x19, x19, #1
	b	LBB44_2
LBB44_4:
	mov	x20, x0
Lloh772:
	adrp	x1, l_.str.61@PAGE
Lloh773:
	add	x1, x1, l_.str.61@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB44_10
; %bb.5:
Lloh774:
	adrp	x1, l_.str.62@PAGE
Lloh775:
	add	x1, x1, l_.str.62@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB44_10
; %bb.6:
Lloh776:
	adrp	x1, l_.str.63@PAGE
Lloh777:
	add	x1, x1, l_.str.63@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB44_10
; %bb.7:
Lloh778:
	adrp	x1, l_.str.68@PAGE
Lloh779:
	add	x1, x1, l_.str.68@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB44_18
; %bb.8:
Lloh780:
	adrp	x1, l_.str.69@PAGE
Lloh781:
	add	x1, x1, l_.str.69@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	mov	w8, w0
	mov	x0, x20
	cbz	w8, LBB44_18
LBB44_9:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_orig_hs_compile_and_evaluate
LBB44_10:
Lloh782:
	adrp	x19, _g_forge_state@GOTPAGE
Lloh783:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x19]
	cbz	w0, LBB44_12
; %bb.11:
	ldr	w20, [x0, #40]
	b	LBB44_13
LBB44_12:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x19]
	ldr	w20, [x8, #40]
	cbz	w0, LBB44_20
LBB44_13:
	cmp	w20, #0
	cset	w8, eq
	str	w8, [x0, #40]
LBB44_14:
	ldr	w8, [x0, #40]
Lloh784:
	adrp	x20, l_.str.65@PAGE
Lloh785:
	add	x20, x20, l_.str.65@PAGEOFF
Lloh786:
	adrp	x23, l_.str.66@PAGE
Lloh787:
	add	x23, x23, l_.str.66@PAGEOFF
Lloh788:
	adrp	x1, l_.str.64@PAGE
Lloh789:
	add	x1, x1, l_.str.64@PAGEOFF
	mov	w0, wzr
	cmp	w8, #0
	csel	x8, x23, x20, eq
	str	w8, [sp]
	bl	_console_printf
	ldr	w0, [x19]
	cbnz	w0, LBB44_16
; %bb.15:
	bl	_forge_runtime_state_get
LBB44_16:
	ldr	w8, [x0, #40]
Lloh790:
	adrp	x0, l_.str.67@PAGE
Lloh791:
	add	x0, x0, l_.str.67@PAGEOFF
	cmp	w8, #0
	csel	x8, x23, x20, eq
	str	w8, [sp]
	bl	_forge_set_status
LBB44_17:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	mov	w0, #1                          ; =0x1
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB44_18:
Lloh792:
	adrp	x19, _g_forge_state@GOTPAGE
Lloh793:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	mov	w9, #1                          ; =0x1
Lloh794:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
Lloh795:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
	ldr	w0, [x19]
Lloh796:
	str	w9, [x8]
	cbz	w0, LBB44_22
; %bb.19:
	ldr	w20, [x0, #4]
	b	LBB44_23
LBB44_20:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x19]
	cmp	w20, #0
	cset	w9, eq
	str	w9, [x8, #40]
	cbnz	w0, LBB44_14
; %bb.21:
	bl	_forge_runtime_state_get
	b	LBB44_14
LBB44_22:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x19]
	ldr	w20, [x8, #4]
	cbz	w0, LBB44_25
LBB44_23:
	cmp	w20, #0
	cset	w8, eq
	str	w8, [x0, #4]
LBB44_24:
	ldr	w8, [x0, #4]
Lloh797:
	adrp	x9, l_.str.72@PAGE
Lloh798:
	add	x9, x9, l_.str.72@PAGEOFF
Lloh799:
	adrp	x10, l_.str.71@PAGE
Lloh800:
	add	x10, x10, l_.str.71@PAGEOFF
Lloh801:
	adrp	x1, l_.str.70@PAGE
Lloh802:
	add	x1, x1, l_.str.70@PAGEOFF
	mov	w0, wzr
	cmp	w8, #1
	csel	x8, x10, x9, eq
	str	w8, [sp]
	bl	_console_printf
	b	LBB44_17
LBB44_25:
	bl	_forge_runtime_state_get
	mov	x8, x0
	ldr	w0, [x19]
	cmp	w20, #0
	cset	w9, eq
	str	w9, [x8, #4]
	cbnz	w0, LBB44_24
; %bb.26:
	bl	_forge_runtime_state_get
	b	LBB44_24
	.loh AdrpAdd	Lloh772, Lloh773
	.loh AdrpAdd	Lloh774, Lloh775
	.loh AdrpAdd	Lloh776, Lloh777
	.loh AdrpAdd	Lloh778, Lloh779
	.loh AdrpAdd	Lloh780, Lloh781
	.loh AdrpLdrGot	Lloh782, Lloh783
	.loh AdrpAdd	Lloh788, Lloh789
	.loh AdrpAdd	Lloh786, Lloh787
	.loh AdrpAdd	Lloh784, Lloh785
	.loh AdrpAdd	Lloh790, Lloh791
	.loh AdrpLdrGotStr	Lloh793, Lloh795, Lloh796
	.loh AdrpLdrGot	Lloh792, Lloh794
	.loh AdrpAdd	Lloh801, Lloh802
	.loh AdrpAdd	Lloh799, Lloh800
	.loh AdrpAdd	Lloh797, Lloh798
                                        ; -- End function
	.globl	_hs_runtime_update              ; -- Begin function hs_runtime_update
	.p2align	4
_hs_runtime_update:                     ; @hs_runtime_update
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
Lloh803:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
Lloh804:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh805:
	ldr	w8, [x8]
	cbz	w8, LBB45_3
; %bb.1:
	bl	_global_scenario_try_and_get
	mov	x19, x0
	bl	_forge_get_active_map_name
	cbz	w19, LBB45_3
; %bb.2:
	ldrh	w8, [x19, #60]
	cmp	w8, #2
	b.ne	LBB45_4
LBB45_3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_orig_hs_runtime_update
LBB45_4:
	cbz	w0, LBB45_7
; %bb.5:
Lloh806:
	adrp	x1, l_.str.58@PAGE
Lloh807:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x19, x0
	bl	__stricmp
	cbz	w0, LBB45_3
; %bb.6:
Lloh808:
	adrp	x1, l_.str.59@PAGE
Lloh809:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB45_3
LBB45_7:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh803, Lloh804, Lloh805
	.loh AdrpAdd	Lloh806, Lloh807
	.loh AdrpAdd	Lloh808, Lloh809
                                        ; -- End function
	.globl	_cinematic_start                ; -- Begin function cinematic_start
	.p2align	4
_cinematic_start:                       ; @cinematic_start
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
Lloh810:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
Lloh811:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh812:
	ldr	w8, [x8]
	cbz	w8, LBB46_3
; %bb.1:
	bl	_global_scenario_try_and_get
	mov	x19, x0
	bl	_forge_get_active_map_name
	cbz	w19, LBB46_3
; %bb.2:
	ldrh	w8, [x19, #60]
	cmp	w8, #2
	b.ne	LBB46_4
LBB46_3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_orig_cinematic_start
LBB46_4:
	cbz	w0, LBB46_7
; %bb.5:
Lloh813:
	adrp	x1, l_.str.58@PAGE
Lloh814:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x19, x0
	bl	__stricmp
	cbz	w0, LBB46_3
; %bb.6:
Lloh815:
	adrp	x1, l_.str.59@PAGE
Lloh816:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB46_3
LBB46_7:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh810, Lloh811, Lloh812
	.loh AdrpAdd	Lloh813, Lloh814
	.loh AdrpAdd	Lloh815, Lloh816
                                        ; -- End function
	.globl	_scenario_trigger_volume_test_object ; -- Begin function scenario_trigger_volume_test_object
	.p2align	4
_scenario_trigger_volume_test_object:   ; @scenario_trigger_volume_test_object
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
Lloh817:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	mov	w19, w1
	mov	w20, w0
	add	x29, sp, #32
Lloh818:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh819:
	ldr	w8, [x8]
	cbz	w8, LBB47_3
; %bb.1:
	bl	_global_scenario_try_and_get
	mov	x23, x0
	bl	_forge_get_active_map_name
	cbz	w23, LBB47_3
; %bb.2:
	ldrh	w8, [x23, #60]
	cmp	w8, #2
	b.ne	LBB47_4
LBB47_3:
	mov	w0, w20
	mov	w1, w19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	b	_orig_scenario_trigger_volume_test_object
LBB47_4:
	cbz	w0, LBB47_7
; %bb.5:
Lloh820:
	adrp	x1, l_.str.58@PAGE
Lloh821:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x23, x0
	bl	__stricmp
	cbz	w0, LBB47_3
; %bb.6:
Lloh822:
	adrp	x1, l_.str.59@PAGE
Lloh823:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x23
	bl	__stricmp
	cbz	w0, LBB47_3
LBB47_7:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	mov	w0, wzr
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh817, Lloh818, Lloh819
	.loh AdrpAdd	Lloh820, Lloh821
	.loh AdrpAdd	Lloh822, Lloh823
                                        ; -- End function
	.globl	_game_engine_remap_object_definition ; -- Begin function game_engine_remap_object_definition
	.p2align	4
_game_engine_remap_object_definition:   ; @game_engine_remap_object_definition
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
Lloh824:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
Lloh825:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh826:
	ldr	w8, [x8]
	cbnz	w8, LBB48_5
; %bb.1:
Lloh827:
	adrp	x8, _g_forge_state@GOTPAGE
Lloh828:
	ldr	w8, [x8, _g_forge_state@GOTPAGEOFF]
Lloh829:
	ldr	w8, [x8]
	cbnz	w8, LBB48_3
; %bb.2:
	mov	w19, w0
	bl	_forge_runtime_state_get
	mov	x8, x0
	mov	w0, w19
LBB48_3:
	add	x9, x8, #248, lsl #12           ; =1015808
	ldr	w8, [x9, #4440]
	cbnz	w8, LBB48_5
; %bb.4:
	mov	w19, w0
	bl	_custom_edition_cache_tags_loaded
	mov	w8, w0
	mov	w0, w19
	cbz	w8, LBB48_6
LBB48_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB48_6:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_orig_game_engine_remap_object_definition
	.loh AdrpLdrGotLdr	Lloh824, Lloh825, Lloh826
	.loh AdrpLdrGotLdr	Lloh827, Lloh828, Lloh829
                                        ; -- End function
	.globl	_menu_tags_unloaded             ; -- Begin function menu_tags_unloaded
	.p2align	4
_menu_tags_unloaded:                    ; @menu_tags_unloaded
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_forge_runtime_on_map_unload
Lloh830:
	adrp	x19, _g_forge_state@GOTPAGE
	adrp	x9, _s_save_forge_btn_tag@PAGE
	mov	w10, #-1                        ; =0xffffffff
	adrp	x11, _g_last_forge_map_name@PAGE
Lloh831:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
	str	w10, [x9, _s_save_forge_btn_tag@PAGEOFF]
	strb	wzr, [x11, _g_last_forge_map_name@PAGEOFF]
	ldr	w8, [x19]
	cbz	w8, LBB49_2
; %bb.1:
	str	wzr, [x8, #44]
	b	LBB49_3
LBB49_2:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
	str	wzr, [x0, #44]
	cbz	w8, LBB49_11
LBB49_3:
	mov	w9, #29784                      ; =0x7458
	mov	w10, #-1                        ; =0xffffffff
	movk	w9, #60, lsl #16
	str	w10, [x8, #80]
	str	wzr, [x8, x9]
LBB49_4:
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, #76]
LBB49_5:
	str	w9, [x8, #136]
LBB49_6:
	adrp	x19, _s_pause_saved_instances@PAGE
	mov	w9, #-1                         ; =0xffffffff
	ldr	w0, [x19, _s_pause_saved_instances@PAGEOFF]
	str	w9, [x8, #132]
	cbz	w0, LBB49_8
; %bb.7:
	adrp	x20, _s_pause_saved_count@PAGE
	ldr	w1, [x20, _s_pause_saved_count@PAGEOFF]
	bl	_cache_files_set_tag_instances
	str	wzr, [x19, _s_pause_saved_instances@PAGEOFF]
	str	wzr, [x20, _s_pause_saved_count@PAGEOFF]
LBB49_8:
	adrp	x19, _s_pause_alloc_instances@PAGE
	ldr	w0, [x19, _s_pause_alloc_instances@PAGEOFF]
	cbz	w0, LBB49_10
; %bb.9:
	bl	_free
	str	wzr, [x19, _s_pause_alloc_instances@PAGEOFF]
LBB49_10:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_orig_menu_tags_unloaded
LBB49_11:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
	mov	w9, #29784                      ; =0x7458
	movk	w9, #60, lsl #16
	str	wzr, [x0, x9]
	cbz	w8, LBB49_14
; %bb.12:
	movi	v0.2d, #0xffffffffffffffff
	stur	d0, [x8, #76]
LBB49_13:
	mov	w9, #-1                         ; =0xffffffff
	b	LBB49_5
LBB49_14:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
	mov	w20, #-1                        ; =0xffffffff
	str	w20, [x0, #80]
	cbnz	w8, LBB49_4
; %bb.15:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
	str	w20, [x0, #76]
	cbnz	w8, LBB49_13
; %bb.16:
	bl	_forge_runtime_state_get
	ldr	w8, [x19]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x0, #136]
	cbnz	w8, LBB49_6
; %bb.17:
	bl	_forge_runtime_state_get
	mov	x8, x0
	b	LBB49_6
	.loh AdrpLdrGot	Lloh830, Lloh831
                                        ; -- End function
	.globl	_forge_level_is_session         ; -- Begin function forge_level_is_session
	.p2align	4
_forge_level_is_session:                ; @forge_level_is_session
; %bb.0:
Lloh832:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh833:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh834:
	ldr	w8, [x8]
	cbz	w8, LBB50_2
; %bb.1:
	mov	w0, #1                          ; =0x1
	ret
LBB50_2:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_firing_range_requested
	cbz	w0, LBB50_5
LBB50_3:
	mov	w0, wzr
LBB50_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB50_5:
	bl	_game_engine_get_variant
	mov	x19, x0
	cbz	w19, LBB50_3
; %bb.6:
Lloh835:
	adrp	x1, l_.str.42@PAGE
Lloh836:
	add	x1, x1, l_.str.42@PAGEOFF
	mov	x0, x19
	bl	_msvc_wcsicmp
	cbz	w0, LBB50_8
; %bb.7:
	ldr	w8, [x19, #64]
	mov	w9, #1073741823                 ; =0x3fffffff
	cmp	w8, w9
	cset	w0, eq
	b	LBB50_4
LBB50_8:
	mov	w0, #1                          ; =0x1
	b	LBB50_4
	.loh AdrpLdrGotLdr	Lloh832, Lloh833, Lloh834
	.loh AdrpAdd	Lloh835, Lloh836
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function menu_tags_loaded
lCPI51_0:
	.short	83                              ; 0x53
	.short	65                              ; 0x41
	.short	86                              ; 0x56
	.short	69                              ; 0x45
	.short	32                              ; 0x20
	.short	77                              ; 0x4d
	.short	65                              ; 0x41
	.short	80                              ; 0x50
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_menu_tags_loaded
	.p2align	4
_menu_tags_loaded:                      ; @menu_tags_loaded
; %bb.0:
	sub	sp, sp, #144
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	mov	x19, x0
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	bl	_orig_menu_tags_loaded
Lloh837:
	adrp	x20, _g_forge_state@GOTPAGE
	adrp	x23, _s_save_forge_btn_tag@PAGE
	mov	w8, #-1                         ; =0xffffffff
	adrp	x9, _g_last_forge_map_name@PAGE
Lloh838:
	ldr	w20, [x20, _g_forge_state@GOTPAGEOFF]
	str	w8, [x23, _s_save_forge_btn_tag@PAGEOFF]
	strb	wzr, [x9, _g_last_forge_map_name@PAGEOFF]
	ldr	w0, [x20]
	cbnz	w0, LBB51_2
; %bb.1:
	bl	_forge_runtime_state_get
LBB51_2:
Lloh839:
	adrp	x24, _g_forge_session_enabled@GOTPAGE
	mov	w8, #29784                      ; =0x7458
	movk	w8, #60, lsl #16
Lloh840:
	ldr	w24, [x24, _g_forge_session_enabled@GOTPAGEOFF]
	str	wzr, [x0, x8]
	cbz	w19, LBB51_5
; %bb.3:
Lloh841:
	adrp	x1, l_.str.59@PAGE
Lloh842:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB51_15
; %bb.4:
Lloh843:
	adrp	x1, l_.str.58@PAGE
Lloh844:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB51_15
LBB51_5:
	ldr	w8, [x24]
	cbnz	w8, LBB51_11
; %bb.6:
	bl	_firing_range_requested
	cbnz	w0, LBB51_11
; %bb.7:
	bl	_game_engine_get_variant
	mov	x20, x0
	cbz	w20, LBB51_11
; %bb.8:
Lloh845:
	adrp	x1, l_.str.42@PAGE
Lloh846:
	add	x1, x1, l_.str.42@PAGEOFF
	mov	x0, x20
	bl	_msvc_wcsicmp
	cbz	w0, LBB51_10
; %bb.9:
	ldr	w8, [x20, #64]
	mov	w9, #1073741823                 ; =0x3fffffff
	cmp	w8, w9
	b.ne	LBB51_11
LBB51_10:
	mov	w8, #1                          ; =0x1
	str	w8, [x24]
LBB51_11:
	mov	w0, #1                          ; =0x1
	bl	_forge_reset_transient_session_state
	bl	_game_connection
	cbz	w0, LBB51_13
; %bb.12:
	bl	_network_game_is_active
	cbnz	w0, LBB51_14
LBB51_13:
	bl	_dispose_global_network_game_client
	bl	_dispose_global_network_game_server
	mov	w0, wzr
	bl	_network_game_accept_remote_connections
LBB51_14:
	mov	w0, wzr
	cbnz	w19, LBB51_22
	b	LBB51_24
LBB51_15:
	mov	w0, wzr
	bl	_forge_reset_transient_session_state
	str	wzr, [x24]
	bl	_network_game_is_active
	cbz	w0, LBB51_18
; %bb.16:
	ldr	w8, [x20]
	cbz	w8, LBB51_19
LBB51_17:
	str	wzr, [x8, #4]
	b	LBB51_21
LBB51_18:
	bl	_forge_variant_give_back
	ldr	w8, [x20]
	cbnz	w8, LBB51_17
LBB51_19:
	bl	_forge_runtime_state_get
	ldr	w8, [x20]
	str	wzr, [x0, #4]
	cbnz	w8, LBB51_21
; %bb.20:
	bl	_forge_runtime_state_get
	mov	x8, x0
LBB51_21:
	adrp	x9, _s_is_forge_map_cache_valid@PAGE
	str	wzr, [x8, #8]
	strb	wzr, [x9, _s_is_forge_map_cache_valid@PAGEOFF]
	bl	_custom_edition_maps_look_again
	mov	w0, wzr
	cbz	w19, LBB51_24
LBB51_22:
	ldr	w8, [x24]
	cbz	w8, LBB51_24
; %bb.23:
Lloh847:
	adrp	x1, l_.str.59@PAGE
Lloh848:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	_csstrcmp
	cmp	w0, #0
	cset	w0, ne
LBB51_24:
	bl	_mcc_pause_forge
	ldr	w8, [x24]
	cbz	w19, LBB51_99
; %bb.25:
	cbz	w8, LBB51_99
; %bb.26:
Lloh849:
	adrp	x1, l_.str.59@PAGE
Lloh850:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	_csstrcmp
	cbz	w0, LBB51_98
; %bb.27:
	mov	w0, #19553                      ; =0x4c61
Lloh851:
	adrp	x1, l_.str.73@PAGE
Lloh852:
	add	x1, x1, l_.str.73@PAGEOFF
	movk	w0, #17509, lsl #16
	bl	_tag_loaded
	mov	w19, w0
	bl	_forge_runtime_markers_preload
	add	x0, sp, #60
	str	wzr, [sp, #60]
	bl	_cache_files_tag_instances
	ldr	w8, [sp, #60]
	mov	w9, #64999                      ; =0xfde7
	str	x0, [sp, #48]                   ; 8-byte Spill
	sub	w8, w8, #1
	cmp	w8, w9
	ccmp	w0, #0, #4, lo
	ccmn	w19, #1, #4, ne
	b.eq	LBB51_97
; %bb.28:
	mov	w0, #19553                      ; =0x4c61
	mov	w1, w19
	movk	w0, #17509, lsl #16
	str	w19, [sp, #56]                  ; 4-byte Spill
	bl	_tag_get
	ldr	w8, [sp, #60]
	mov	x25, x0
	lsl	w27, w8, #5
	add	w0, w27, #64
	bl	_malloc
	mov	x20, x0
	mov	w0, #1004                       ; =0x3ec
	bl	_malloc
	mov	x24, x0
	mov	w0, #1                          ; =0x1
	mov	w1, #12                         ; =0xc
	mov	w19, #1                         ; =0x1
	bl	_calloc
	mov	x26, x0
	mov	w0, #1                          ; =0x1
	mov	w1, #20                         ; =0x14
	bl	_calloc
	mov	x28, x0
	mov	w0, #32                         ; =0x20
	mov	w1, #2                          ; =0x2
	bl	_calloc
	cmp	w25, #0
	ccmp	w0, #0, #4, ne
	ccmp	w28, #0, #4, ne
	ccmp	w26, #0, #4, ne
	ccmp	w24, #0, #4, ne
	ccmp	w20, #0, #4, ne
	b.eq	LBB51_97
; %bb.29:
Lloh853:
	adrp	x8, lCPI51_0@PAGE
	mov	w9, #46                         ; =0x2e
	movk	w9, #46, lsl #16
	ldr	x1, [sp, #48]                   ; 8-byte Reload
	mov	w10, #22                        ; =0x16
	str	w0, [x28, #12]
Lloh854:
	ldr	q0, [x8, lCPI51_0@PAGEOFF]
	mov	w2, w27
	str	w9, [x0, #16]
	str	w10, [x28]
	stp	w19, w28, [x26]
	str	q0, [x0]
	mov	x0, x20
	bl	_csmemcpy
	ldrsw	x8, [sp, #60]
	mov	w10, #-512425984                ; =0xe1750000
	mov	w1, wzr
	mov	w2, #32                         ; =0x20
	mov	w19, #-512425984                ; =0xe1750000
	add	w9, w8, #1
	add	x0, x20, x8, lsl #5
	bfxil	w19, w8, #0, #16
	bfxil	w10, w9, #0, #16
	add	w28, w10, #16, lsl #12          ; =65536
	str	w28, [x23, _s_save_forge_btn_tag@PAGEOFF]
	bl	_csmemset
	ldrsw	x8, [sp, #60]
	mov	x9, #-35726                     ; =0xffffffffffff7472
	movk	x9, #30067, lsl #16
	str	x20, [sp, #40]                  ; 8-byte Spill
	mov	w23, #-1                        ; =0xffffffff
	mov	x0, x24
	mov	x1, x25
	mov	w2, #1004                       ; =0x3ec
	add	x8, x20, x8, lsl #5
Lloh855:
	adrp	x20, l_.str.75@PAGE
Lloh856:
	add	x20, x20, l_.str.75@PAGEOFF
	str	x9, [x8]
	stp	w23, w19, [x8, #8]
	stp	w20, w26, [x8, #16]
	bl	_csmemcpy
Lloh857:
	adrp	x2, l_.str.43@PAGE
Lloh858:
	add	x2, x2, l_.str.43@PAGEOFF
	add	x0, x24, #4
	mov	w1, #32                         ; =0x20
	bl	_halo_linux_snprintf
	mov	w8, #29810                      ; =0x7472
	stp	wzr, w19, [x24, #244]
	movk	w8, #30067, lsl #16
	stp	w8, w20, [x24, #236]
	ldp	w19, w26, [x25, #84]
	sub	w20, w19, #1
	cmp	x26, #0
	ccmp	w20, #16, #2, ne
	b.hs	LBB51_41
; %bb.30:
	add	w8, w19, w19, lsl #3
	lsl	w27, w8, #3
	mov	w0, w27
	bl	_malloc
	mov	x25, x0
	cbz	w25, LBB51_41
; %bb.31:
	mov	x0, x25
	mov	x1, x26
	mov	w2, w27
	bl	_csmemcpy
	and	w8, w19, #0x3
	cmp	w20, #3
	b.hs	LBB51_33
; %bb.32:
	mov	w0, #19553                      ; =0x4c61
	mov	w9, wzr
	movk	w0, #17509, lsl #16
	b	LBB51_37
LBB51_33:
	movi	d0, #0xffffffff00000000
	and	w11, w19, #0x1c
	mov	w0, #19553                      ; =0x4c61
	mov	w9, wzr
	add	w10, w25, #232
	neg	w11, w11
	mov	w12, #132                       ; =0x84
	mov	w13, #30583                     ; =0x7777
	movk	w0, #17509, lsl #16
	.p2align	4, , 8
LBB51_34:                               ; =>This Inner Loop Header: Depth=1
	sub	w14, w10, #232
	sub	w15, w10, #226
	sub	w16, w10, #224
	str	d0, [x10]
	sub	w9, w9, #4
	str	w12, [x14]
	sub	w14, w10, #220
	strh	w13, [x15]
	sub	w15, w10, #216
	str	w0, [x16]
	sub	w16, w10, #160
	str	wzr, [x14]
	sub	w14, w10, #154
	str	d0, [x15]
	sub	w15, w10, #152
	str	w12, [x16]
	sub	w16, w10, #148
	strh	w13, [x14]
	sub	w14, w10, #144
	str	w0, [x15]
	sub	w15, w10, #88
	str	wzr, [x16]
	sub	w16, w10, #82
	str	d0, [x14]
	sub	w14, w10, #80
	str	w12, [x15]
	sub	w15, w10, #76
	strh	w13, [x16]
	sub	w16, w10, #72
	str	w0, [x14]
	sub	w14, w10, #16
	str	wzr, [x15]
	sub	w15, w10, #10
	cmp	w11, w9
	str	d0, [x16]
	str	w12, [x14]
	sub	w14, w10, #8
	strh	w13, [x15]
	sub	w15, w10, #4
	add	w10, w10, #288
	str	w0, [x14]
	str	wzr, [x15]
	b.ne	LBB51_34
; %bb.35:
	cbz	w8, LBB51_40
; %bb.36:
	neg	w9, w9
LBB51_37:
	movi	d0, #0xffffffff00000000
	add	w10, w9, w9, lsl #3
	lsl	w10, w10, #3
	mov	w11, #132                       ; =0x84
	add	x12, x25, w10, sxtw
	mov	w10, #30583                     ; =0x7777
	cmp	w8, #1
	str	w11, [x12]
	strh	w10, [x12, #6]
	stp	w0, wzr, [x12, #8]
	str	d0, [x12, #16]
	b.eq	LBB51_40
; %bb.38:
	mov	w12, #72                        ; =0x48
	cmp	w8, #2
	madd	w13, w9, w12, w25
	add	w14, w13, #72
	add	w15, w13, #78
	add	w16, w13, #80
	add	w17, w13, #84
	str	w11, [x14]
	add	w11, w13, #88
	strh	w10, [x15]
	str	w0, [x16]
	str	wzr, [x17]
	str	d0, [x11]
	b.eq	LBB51_40
; %bb.39:
	madd	w8, w9, w12, w25
	mov	w9, #132                        ; =0x84
	add	w11, w8, #144
	add	w12, w8, #150
	add	w13, w8, #152
	str	w9, [x11]
	add	w9, w8, #156
	add	w8, w8, #160
	strh	w10, [x12]
	str	w0, [x13]
	str	wzr, [x9]
	str	d0, [x8]
LBB51_40:
	str	w25, [x24, #88]
LBB51_41:
	ldr	w8, [sp, #60]
	mov	w1, wzr
	ldr	x19, [sp, #40]                  ; 8-byte Reload
	mov	w2, #32                         ; =0x20
	add	w8, w19, w8, lsl #5
	add	w0, w8, #32
	bl	_csmemset
	ldr	w8, [sp, #60]
	mov	x11, #-45983                    ; =0xffffffffffff4c61
	movk	x11, #17509, lsl #16
Lloh859:
	adrp	x9, l_.str.76@PAGE
Lloh860:
	add	x9, x9, l_.str.76@PAGEOFF
	mov	x0, x19
	str	w28, [sp, #12]                  ; 4-byte Spill
	add	w10, w19, w8, lsl #5
	add	w1, w8, #2
	add	w12, w10, #32
	add	w13, w10, #40
	add	w14, w10, #48
	str	x11, [x12]
	add	w11, w10, #44
	add	w10, w10, #52
	str	w9, [x14]
	adrp	x9, _s_pause_saved_instances@PAGE
	adrp	x12, _s_pause_saved_count@PAGE
	str	w28, [x11]
	adrp	x11, _s_pause_alloc_instances@PAGE
	str	w24, [x10]
	ldr	x10, [sp, #48]                  ; 8-byte Reload
	str	w23, [x13]
	str	w8, [x12, _s_pause_saved_count@PAGEOFF]
	str	w19, [x11, _s_pause_alloc_instances@PAGEOFF]
	str	w10, [x9, _s_pause_saved_instances@PAGEOFF]
	bl	_cache_files_set_tag_instances
	ldp	w5, w8, [sp, #56]               ; 4-byte Folded Reload
	mov	w17, #19553                     ; =0x4c61
	movk	w17, #17509, lsl #16
	cmp	w8, #1
	b.lt	LBB51_97
; %bb.42:
	mov	x2, x19
	mov	w28, wzr
Lloh861:
	adrp	x19, l_.str.73@PAGE
Lloh862:
	add	x19, x19, l_.str.73@PAGEOFF
	b	LBB51_44
	.p2align	4, , 8
LBB51_43:                               ;   in Loop: Header=BB51_44 Depth=1
	ldr	w8, [sp, #60]
	add	w28, w28, #1
	cmp	w28, w8
	b.ge	LBB51_97
LBB51_44:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB51_50 Depth 2
                                        ;     Child Loop BB51_59 Depth 2
                                        ;     Child Loop BB51_63 Depth 2
                                        ;     Child Loop BB51_66 Depth 2
                                        ;     Child Loop BB51_72 Depth 2
                                        ;       Child Loop BB51_79 Depth 3
	sxtw	x8, w28
	add	x20, x2, x8, lsl #5
	ldr	w8, [x20]
	cmp	w8, w17
	b.ne	LBB51_43
; %bb.45:                               ;   in Loop: Header=BB51_44 Depth=1
	ldr	w9, [x20, #20]
	cbz	w9, LBB51_43
; %bb.46:                               ;   in Loop: Header=BB51_44 Depth=1
	ldrh	w8, [x9]
	cmp	w8, #3
	b.ne	LBB51_43
; %bb.47:                               ;   in Loop: Header=BB51_44 Depth=1
	ldr	w11, [x9, #992]
	ldr	w12, [x9, #996]
	sub	w8, w11, #1
	cmp	x12, #0
	ccmp	w8, #16, #2, ne
	b.hs	LBB51_43
; %bb.48:                               ;   in Loop: Header=BB51_44 Depth=1
	mov	w23, wzr
	mov	w26, #12                        ; =0xc
	mov	w27, #80                        ; =0x50
	mov	w24, w11
	mov	x25, x12
	stp	x9, x12, [sp, #24]              ; 16-byte Folded Spill
	str	w11, [sp, #48]                  ; 4-byte Spill
	b	LBB51_50
	.p2align	4, , 8
LBB51_49:                               ;   in Loop: Header=BB51_50 Depth=2
	add	w23, w23, #1
	add	w26, w26, #80
	add	w25, w25, #80
	sub	w24, w24, #1
	add	w27, w27, #80
	cmp	w11, w23
	b.eq	LBB51_43
LBB51_50:                               ;   Parent Loop BB51_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w8, w12, w26
	ldr	w8, [x8]
	cmp	w8, w5
	b.eq	LBB51_54
; %bb.51:                               ;   in Loop: Header=BB51_50 Depth=2
	ldr	w10, [sp, #60]
	and	w9, w8, #0xffff
	cmn	w8, #1
	ccmp	w9, w10, #0, ne
	b.ge	LBB51_49
; %bb.52:                               ;   in Loop: Header=BB51_50 Depth=2
	add	x8, x2, x9, lsl #5
	ldr	w0, [x8, #16]
	cbz	w0, LBB51_49
; %bb.53:                               ;   in Loop: Header=BB51_50 Depth=2
	mov	x1, x19
	bl	_csstrcmp
	ldp	x12, x2, [sp, #32]              ; 16-byte Folded Reload
	mov	w17, #19553                     ; =0x4c61
	ldr	w11, [sp, #48]                  ; 4-byte Reload
	movk	w17, #17509, lsl #16
	ldr	w5, [sp, #56]                   ; 4-byte Reload
	cbnz	w0, LBB51_49
LBB51_54:                               ;   in Loop: Header=BB51_44 Depth=1
	add	w8, w11, #1
	str	w8, [sp, #8]                    ; 4-byte Spill
	add	w8, w8, w8, lsl #2
	lsl	w0, w8, #4
	bl	_malloc
	ldp	x1, x2, [sp, #32]               ; 16-byte Folded Reload
	mov	w17, #19553                     ; =0x4c61
	ldr	w8, [sp, #48]                   ; 4-byte Reload
	movk	w17, #17509, lsl #16
	ldr	w5, [sp, #56]                   ; 4-byte Reload
	cbz	w0, LBB51_43
; %bb.55:                               ;   in Loop: Header=BB51_44 Depth=1
	ldrsh	w10, [x1, #54]
	cmp	w8, #4
	mov	w8, #25                         ; =0x19
	mov	w9, #29                         ; =0x1d
	csel	w19, w9, w8, lt
	ldr	w9, [x20, #12]
	str	x0, [sp, #16]                   ; 8-byte Spill
	sub	w8, w10, #20
	cmp	w10, #59
	csel	w20, w8, wzr, gt
	cmp	w26, #12
	stp	w10, w9, [sp]                   ; 8-byte Folded Spill
	sub	w9, w26, #12
	b.eq	LBB51_57
; %bb.56:                               ;   in Loop: Header=BB51_44 Depth=1
	sub	w2, w26, #12
	bl	_csmemcpy
	ldr	x1, [sp, #32]                   ; 8-byte Reload
	sub	w9, w26, #12
	ldr	x0, [sp, #16]                   ; 8-byte Reload
LBB51_57:                               ;   in Loop: Header=BB51_44 Depth=1
	add	w26, w0, w26
	add	w1, w9, w1
	sub	w0, w26, #12
	mov	w2, #80                         ; =0x50
	bl	_csmemcpy
	mov	w10, #19553                     ; =0x4c61
	sub	w11, w26, #12
	movk	w10, #17509, lsl #16
	sub	w8, w26, #8
	sub	w9, w26, #4
	str	w10, [x11]
Lloh863:
	adrp	x10, l_.str.76@PAGE
Lloh864:
	add	x10, x10, l_.str.76@PAGEOFF
	str	wzr, [x9]
	str	w10, [x8]
	ldr	w8, [sp, #48]                   ; 4-byte Reload
	cmp	w23, w8
	ldr	w8, [sp, #12]                   ; 4-byte Reload
	str	w8, [x26]
	b.ge	LBB51_60
; %bb.58:                               ;   in Loop: Header=BB51_44 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Reload
	add	w26, w8, w27
	.p2align	4, , 8
LBB51_59:                               ;   Parent Loop BB51_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x26
	mov	x1, x25
	mov	w2, #80                         ; =0x50
	bl	_csmemcpy
	add	w25, w25, #80
	add	w26, w26, #80
	subs	w24, w24, #1
	b.ne	LBB51_59
LBB51_60:                               ;   in Loop: Header=BB51_44 Depth=1
	ldr	w3, [sp, #48]                   ; 4-byte Reload
	ldr	w5, [sp, #56]                   ; 4-byte Reload
	ldr	x2, [sp, #40]                   ; 8-byte Reload
	ldr	w0, [sp, #4]                    ; 4-byte Reload
	cmp	w3, #3
	b.hs	LBB51_62
; %bb.61:                               ;   in Loop: Header=BB51_44 Depth=1
	ldp	x4, x11, [sp, #16]              ; 16-byte Folded Reload
	mov	w17, #19553                     ; =0x4c61
	mov	w8, wzr
	movk	w17, #17509, lsl #16
	b	LBB51_65
LBB51_62:                               ;   in Loop: Header=BB51_44 Depth=1
	ldr	x4, [sp, #16]                   ; 8-byte Reload
	add	w9, w3, #1
	mov	w10, wzr
	and	w8, w9, #0x3c
	add	w11, w4, #214
	.p2align	4, , 8
LBB51_63:                               ;   Parent Loop BB51_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	orr	w12, w10, #0x2
	madd	w14, w19, w10, w20
	orr	w13, w10, #0x1
	sub	w15, w11, #160
	madd	w12, w19, w12, w20
	orr	w16, w10, #0x3
	madd	w13, w19, w13, w20
	sub	w17, w11, #80
	madd	w16, w19, w16, w20
	strh	w14, [x15]
	add	w14, w11, #80
	add	w10, w10, #4
	strh	w12, [x11]
	add	w11, w11, #320
	cmp	w8, w10
	strh	w13, [x17]
	strh	w16, [x14]
	b.ne	LBB51_63
; %bb.64:                               ;   in Loop: Header=BB51_44 Depth=1
	mov	w17, #19553                     ; =0x4c61
	ldr	x11, [sp, #24]                  ; 8-byte Reload
	movk	w17, #17509, lsl #16
	cmp	w9, w8
	b.eq	LBB51_67
LBB51_65:                               ;   in Loop: Header=BB51_44 Depth=1
	mov	w9, #80                         ; =0x50
	madd	w9, w8, w9, w4
	add	w9, w9, #54
	.p2align	4, , 8
LBB51_66:                               ;   Parent Loop BB51_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	madd	w10, w19, w8, w20
	add	w8, w8, #1
	cmp	w8, w3
	strh	w10, [x9]
	add	w9, w9, #80
	b.le	LBB51_66
LBB51_67:                               ;   in Loop: Header=BB51_44 Depth=1
	ldr	w9, [sp, #8]                    ; 4-byte Reload
	ldrh	w8, [x11, #40]
	str	w4, [x11, #996]
	str	w9, [x11, #992]
	ldr	w9, [sp]                        ; 4-byte Reload
	add	w8, w8, w19
Lloh865:
	adrp	x19, l_.str.73@PAGE
Lloh866:
	add	x19, x19, l_.str.73@PAGEOFF
	strh	w8, [x11, #40]
	cmp	w9, #59
	b.gt	LBB51_43
; %bb.68:                               ;   in Loop: Header=BB51_44 Depth=1
	ldr	w11, [sp, #60]
	cmp	w9, #10
	mov	w8, #-22                        ; =0xffffffea
	mov	w9, #-14                        ; =0xfffffff2
	csel	w8, w9, w8, gt
	cmp	w11, #1
	b.lt	LBB51_43
; %bb.69:                               ;   in Loop: Header=BB51_44 Depth=1
	mov	w9, wzr
	b	LBB51_72
LBB51_70:                               ;   in Loop: Header=BB51_72 Depth=2
	ldr	w11, [sp, #60]
	.p2align	4, , 8
LBB51_71:                               ;   in Loop: Header=BB51_72 Depth=2
	add	w9, w9, #1
	cmp	w9, w11
	b.ge	LBB51_43
LBB51_72:                               ;   Parent Loop BB51_44 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB51_79 Depth 3
	sxtw	x10, w9
	add	x10, x2, x10, lsl #5
	ldr	w12, [x10]
	cmp	w12, w17
	b.ne	LBB51_71
; %bb.73:                               ;   in Loop: Header=BB51_72 Depth=2
	ldr	w10, [x10, #20]
	cbz	w10, LBB51_71
; %bb.74:                               ;   in Loop: Header=BB51_72 Depth=2
	ldr	w13, [x10, #992]
	ldr	w10, [x10, #996]
	sub	w12, w13, #1
	cmp	x10, #0
	ccmp	w12, #16, #2, ne
	b.hs	LBB51_71
; %bb.75:                               ;   in Loop: Header=BB51_72 Depth=2
	and	w11, w13, #0x3
	cmp	w12, #3
	b.hs	LBB51_77
; %bb.76:                               ;   in Loop: Header=BB51_72 Depth=2
	mov	w12, wzr
	b	LBB51_89
LBB51_77:                               ;   in Loop: Header=BB51_72 Depth=2
	and	w14, w13, #0x1c
	mov	w12, wzr
	add	w13, w10, #172
	neg	w14, w14
	b	LBB51_79
	.p2align	4, , 8
LBB51_78:                               ;   in Loop: Header=BB51_79 Depth=3
	add	w13, w13, #320
	sub	w12, w12, #4
	cmp	w14, w12
	b.eq	LBB51_87
LBB51_79:                               ;   Parent Loop BB51_44 Depth=1
                                        ;     Parent Loop BB51_72 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	sub	w15, w13, #160
	ldr	w15, [x15]
	cmp	w15, w0
	b.ne	LBB51_81
; %bb.80:                               ;   in Loop: Header=BB51_79 Depth=3
	sub	w15, w13, #118
	ldrh	w16, [x15]
	add	w16, w16, w8
	strh	w16, [x15]
LBB51_81:                               ;   in Loop: Header=BB51_79 Depth=3
	sub	w15, w13, #80
	ldr	w15, [x15]
	cmp	w15, w0
	b.ne	LBB51_83
; %bb.82:                               ;   in Loop: Header=BB51_79 Depth=3
	sub	w15, w13, #38
	ldrh	w16, [x15]
	add	w16, w16, w8
	strh	w16, [x15]
LBB51_83:                               ;   in Loop: Header=BB51_79 Depth=3
	ldr	w15, [x13]
	cmp	w15, w0
	b.ne	LBB51_85
; %bb.84:                               ;   in Loop: Header=BB51_79 Depth=3
	add	w15, w13, #42
	ldrh	w16, [x15]
	add	w16, w16, w8
	strh	w16, [x15]
LBB51_85:                               ;   in Loop: Header=BB51_79 Depth=3
	add	w15, w13, #80
	ldr	w15, [x15]
	cmp	w15, w0
	b.ne	LBB51_78
; %bb.86:                               ;   in Loop: Header=BB51_79 Depth=3
	add	w15, w13, #122
	ldrh	w16, [x15]
	add	w16, w16, w8
	strh	w16, [x15]
	b	LBB51_78
LBB51_87:                               ;   in Loop: Header=BB51_72 Depth=2
	cbz	w11, LBB51_70
; %bb.88:                               ;   in Loop: Header=BB51_72 Depth=2
	neg	w12, w12
LBB51_89:                               ;   in Loop: Header=BB51_72 Depth=2
	add	w13, w12, w12, lsl #2
	lsl	w13, w13, #4
	add	x13, x10, w13, sxtw
	ldr	w14, [x13, #12]
	cmp	w14, w0
	b.ne	LBB51_91
; %bb.90:                               ;   in Loop: Header=BB51_72 Depth=2
	ldrh	w14, [x13, #54]
	add	w14, w14, w8
	strh	w14, [x13, #54]
LBB51_91:                               ;   in Loop: Header=BB51_72 Depth=2
	cmp	w11, #1
	b.eq	LBB51_70
; %bb.92:                               ;   in Loop: Header=BB51_72 Depth=2
	mov	w13, #80                        ; =0x50
	madd	w13, w12, w13, w10
	add	w14, w13, #92
	ldr	w14, [x14]
	cmp	w14, w0
	b.ne	LBB51_94
; %bb.93:                               ;   in Loop: Header=BB51_72 Depth=2
	add	w13, w13, #134
	ldrh	w14, [x13]
	add	w14, w14, w8
	strh	w14, [x13]
LBB51_94:                               ;   in Loop: Header=BB51_72 Depth=2
	cmp	w11, #2
	b.eq	LBB51_70
; %bb.95:                               ;   in Loop: Header=BB51_72 Depth=2
	mov	w11, #80                        ; =0x50
	madd	w10, w12, w11, w10
	add	w11, w10, #172
	ldr	w11, [x11]
	cmp	w11, w0
	b.ne	LBB51_70
; %bb.96:                               ;   in Loop: Header=BB51_72 Depth=2
	add	w10, w10, #214
	ldrh	w11, [x10]
	add	w11, w11, w8
	strh	w11, [x10]
	b	LBB51_70
LBB51_97:
Lloh867:
	adrp	x24, _g_forge_session_enabled@GOTPAGE
Lloh868:
	ldr	w24, [x24, _g_forge_session_enabled@GOTPAGEOFF]
LBB51_98:
	ldr	w8, [x24]
LBB51_99:
	cbz	w8, LBB51_101
; %bb.100:
	bl	_forge_runtime_init
LBB51_101:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpLdrGot	Lloh837, Lloh838
	.loh AdrpLdrGot	Lloh839, Lloh840
	.loh AdrpAdd	Lloh841, Lloh842
	.loh AdrpAdd	Lloh843, Lloh844
	.loh AdrpAdd	Lloh845, Lloh846
	.loh AdrpAdd	Lloh847, Lloh848
	.loh AdrpAdd	Lloh849, Lloh850
	.loh AdrpAdd	Lloh851, Lloh852
	.loh AdrpAdd	Lloh857, Lloh858
	.loh AdrpAdd	Lloh855, Lloh856
	.loh AdrpLdr	Lloh853, Lloh854
	.loh AdrpAdd	Lloh859, Lloh860
	.loh AdrpAdd	Lloh861, Lloh862
	.loh AdrpAdd	Lloh863, Lloh864
	.loh AdrpAdd	Lloh865, Lloh866
	.loh AdrpLdrGot	Lloh867, Lloh868
                                        ; -- End function
	.globl	_forge_ce_file_reference_create_from_path ; -- Begin function forge_ce_file_reference_create_from_path
	.p2align	4
_forge_ce_file_reference_create_from_path: ; @forge_ce_file_reference_create_from_path
; %bb.0:
	stp	x28, x27, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	sub	sp, sp, #512
	mov	x8, x1
	mov	x20, x0
	mov	x1, sp
	mov	x0, x8
	mov	w19, w2
	bl	_resolve_forge_maps_redirect_path
	mov	x1, x0
	mov	x0, x20
	mov	w2, w19
	bl	_file_reference_create_from_path
	add	sp, sp, #512
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #48             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.p2align	4                               ; -- Begin function resolve_forge_maps_redirect_path
_resolve_forge_maps_redirect_path:      ; @resolve_forge_maps_redirect_path
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #592
	mov	x19, x0
	cbz	w19, LBB53_7
; %bb.1:
	ldrb	w8, [x19]
	cbz	w8, LBB53_40
; %bb.2:
	mov	x25, x1
Lloh869:
	adrp	x1, l_.str.178@PAGE
Lloh870:
	add	x1, x1, l_.str.178@PAGEOFF
	mov	x0, x19
	mov	w2, #15                         ; =0xf
	mov	w20, #15                        ; =0xf
	bl	__strnicmp
	cbz	w0, LBB53_8
; %bb.3:
Lloh871:
	adrp	x1, l_.str.179@PAGE
Lloh872:
	add	x1, x1, l_.str.179@PAGEOFF
	mov	x0, x19
	mov	w2, #15                         ; =0xf
	bl	__strnicmp
	cbz	w0, LBB53_8
; %bb.4:
Lloh873:
	adrp	x1, l_.str.180@PAGE
Lloh874:
	add	x1, x1, l_.str.180@PAGEOFF
	mov	x0, x19
	mov	w2, #12                         ; =0xc
	mov	w20, #12                        ; =0xc
	bl	__strnicmp
	cbz	w0, LBB53_6
; %bb.5:
Lloh875:
	adrp	x1, l_.str.181@PAGE
Lloh876:
	add	x1, x1, l_.str.181@PAGEOFF
	mov	x0, x19
	mov	w2, #12                         ; =0xc
	bl	__strnicmp
	cbnz	w0, LBB53_40
LBB53_6:
Lloh877:
	adrp	x26, l_.str.2@PAGE
Lloh878:
	add	x26, x26, l_.str.2@PAGEOFF
	b	LBB53_9
LBB53_7:
	mov	x19, xzr
	b	LBB53_40
LBB53_8:
Lloh879:
	adrp	x26, l_.str.184@PAGE
Lloh880:
	add	x26, x26, l_.str.184@PAGEOFF
LBB53_9:
	add	x20, x19, w20, uxtw
	mov	w1, #92                         ; =0x5c
	mov	x0, x20
	bl	_strchr
	cbnz	w0, LBB53_40
; %bb.10:
	mov	x0, x20
	mov	w1, #47                         ; =0x2f
	bl	_strchr
	cbnz	w0, LBB53_40
; %bb.11:
Lloh881:
	adrp	x1, l_.str.129@PAGE
Lloh882:
	add	x1, x1, l_.str.129@PAGEOFF
	mov	x0, x20
	bl	__stricmp
	cbz	w0, LBB53_16
; %bb.12:
Lloh883:
	adrp	x1, l_.str.130@PAGE
Lloh884:
	add	x1, x1, l_.str.130@PAGEOFF
	mov	x0, x20
	bl	__stricmp
	cbz	w0, LBB53_16
; %bb.13:
Lloh885:
	adrp	x1, l_.str.131@PAGE
Lloh886:
	add	x1, x1, l_.str.131@PAGEOFF
	mov	x0, x20
	bl	__stricmp
	cbz	w0, LBB53_16
; %bb.14:
	mov	x0, x20
	mov	w1, #46                         ; =0x2e
	bl	_strrchr
	mov	x23, x0
	cbz	w23, LBB53_20
; %bb.15:
	sub	w24, w23, w20
	b	LBB53_21
LBB53_16:
Lloh887:
	adrp	x2, l_.str.37@PAGE
Lloh888:
	add	x2, x2, l_.str.37@PAGEOFF
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	str	w20, [sp]
	bl	_halo_linux_snprintf
Lloh889:
	adrp	x1, l_.str.89@PAGE
Lloh890:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbz	w0, LBB53_18
LBB53_17:
	bl	_fclose
	b	LBB53_40
LBB53_18:
Lloh891:
	adrp	x2, l_.str.182@PAGE
Lloh892:
	add	x2, x2, l_.str.182@PAGEOFF
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	str	w20, [sp]
	bl	_halo_linux_snprintf
Lloh893:
	adrp	x1, l_.str.89@PAGE
Lloh894:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbz	w0, LBB53_40
; %bb.19:
	bl	_fclose
Lloh895:
	adrp	x2, l_.str.183@PAGE
Lloh896:
	add	x2, x2, l_.str.183@PAGEOFF
	mov	x19, x25
	mov	x0, x25
	mov	w1, #512                        ; =0x200
	str	w20, [sp, #4]
	b	LBB53_39
LBB53_20:
	mov	x0, x20
	bl	_csstrlen
	mov	w24, w0
LBB53_21:
	sub	w8, w24, #64
	cmn	w8, #63
	b.lo	LBB53_40
; %bb.22:
	sub	x0, x29, #128
	mov	x1, x20
	mov	w2, w24
	sub	x27, x29, #128
	bl	_csmemcpy
	strb	wzr, [x27, w24, sxtw]
	cbz	w23, LBB53_24
; %bb.23:
Lloh897:
	adrp	x1, l_.str.185@PAGE
Lloh898:
	add	x1, x1, l_.str.185@PAGEOFF
	mov	x0, x23
	bl	__stricmp
	cbz	w0, LBB53_28
LBB53_24:
Lloh899:
	adrp	x2, l_.str.37@PAGE
Lloh900:
	add	x2, x2, l_.str.37@PAGEOFF
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	str	w20, [sp]
	bl	_halo_linux_snprintf
Lloh901:
	adrp	x1, l_.str.89@PAGE
Lloh902:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_17
; %bb.25:
Lloh903:
	adrp	x2, l_.str.191@PAGE
Lloh904:
	add	x2, x2, l_.str.191@PAGEOFF
	sub	x8, x29, #128
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
Lloh905:
	adrp	x23, l_.str.186@PAGE
Lloh906:
	add	x23, x23, l_.str.186@PAGEOFF
	stp	w8, w20, [sp, #4]
	str	w23, [sp]
	bl	_halo_linux_snprintf
Lloh907:
	adrp	x1, l_.str.89@PAGE
Lloh908:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_36
; %bb.26:
Lloh909:
	adrp	x2, l_.str.193@PAGE
Lloh910:
	add	x2, x2, l_.str.193@PAGEOFF
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	stp	w23, w20, [sp]
	bl	_halo_linux_snprintf
Lloh911:
	adrp	x1, l_.str.89@PAGE
Lloh912:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbz	w0, LBB53_35
LBB53_27:
	bl	_fclose
Lloh913:
	adrp	x2, l_.str.194@PAGE
Lloh914:
	add	x2, x2, l_.str.194@PAGEOFF
	mov	x19, x25
	mov	x0, x25
	mov	w1, #512                        ; =0x200
	str	w20, [sp, #8]
	b	LBB53_38
LBB53_28:
Lloh915:
	adrp	x2, l_.str.189@PAGE
Lloh916:
	add	x2, x2, l_.str.189@PAGEOFF
	sub	x8, x29, #128
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
Lloh917:
	adrp	x23, l_.str.186@PAGE
Lloh918:
	add	x23, x23, l_.str.186@PAGEOFF
	stp	w23, w8, [sp]
	bl	_halo_linux_snprintf
Lloh919:
	adrp	x1, l_.str.89@PAGE
Lloh920:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbz	w0, LBB53_30
LBB53_29:
	bl	_fclose
	sub	x8, x29, #128
Lloh921:
	adrp	x2, l_.str.190@PAGE
Lloh922:
	add	x2, x2, l_.str.190@PAGEOFF
	b	LBB53_37
LBB53_30:
Lloh923:
	adrp	x2, l_.str.191@PAGE
Lloh924:
	add	x2, x2, l_.str.191@PAGEOFF
	sub	x8, x29, #128
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	str	w23, [sp]
	stp	w8, w20, [sp, #4]
	bl	_halo_linux_snprintf
Lloh925:
	adrp	x1, l_.str.89@PAGE
Lloh926:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_36
; %bb.31:
Lloh927:
	adrp	x2, l_.str.189@PAGE
Lloh928:
	add	x2, x2, l_.str.189@PAGEOFF
	sub	x8, x29, #128
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
Lloh929:
	adrp	x23, l_.str.187@PAGE
Lloh930:
	add	x23, x23, l_.str.187@PAGEOFF
	stp	w23, w8, [sp]
	bl	_halo_linux_snprintf
Lloh931:
	adrp	x1, l_.str.89@PAGE
Lloh932:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_29
; %bb.32:
Lloh933:
	adrp	x2, l_.str.191@PAGE
Lloh934:
	add	x2, x2, l_.str.191@PAGEOFF
	sub	x8, x29, #128
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	str	w23, [sp]
	stp	w8, w20, [sp, #4]
	bl	_halo_linux_snprintf
Lloh935:
	adrp	x1, l_.str.89@PAGE
Lloh936:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_36
; %bb.33:
Lloh937:
	adrp	x2, l_.str.189@PAGE
Lloh938:
	add	x2, x2, l_.str.189@PAGEOFF
	sub	x8, x29, #128
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
Lloh939:
	adrp	x23, l_.str.188@PAGE
Lloh940:
	add	x23, x23, l_.str.188@PAGEOFF
	stp	w23, w8, [sp]
	bl	_halo_linux_snprintf
Lloh941:
	adrp	x1, l_.str.89@PAGE
Lloh942:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_29
; %bb.34:
Lloh943:
	adrp	x2, l_.str.191@PAGE
Lloh944:
	add	x2, x2, l_.str.191@PAGEOFF
	sub	x8, x29, #128
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	str	w23, [sp]
	stp	w8, w20, [sp, #4]
	bl	_halo_linux_snprintf
Lloh945:
	adrp	x1, l_.str.89@PAGE
Lloh946:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_36
	b	LBB53_24
LBB53_35:
Lloh947:
	adrp	x2, l_.str.191@PAGE
Lloh948:
	add	x2, x2, l_.str.191@PAGEOFF
	sub	x8, x29, #128
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
Lloh949:
	adrp	x23, l_.str.187@PAGE
Lloh950:
	add	x23, x23, l_.str.187@PAGEOFF
	stp	w8, w20, [sp, #4]
	str	w23, [sp]
	bl	_halo_linux_snprintf
Lloh951:
	adrp	x1, l_.str.89@PAGE
Lloh952:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbz	w0, LBB53_41
LBB53_36:
	bl	_fclose
	sub	x8, x29, #128
Lloh953:
	adrp	x2, l_.str.192@PAGE
Lloh954:
	add	x2, x2, l_.str.192@PAGEOFF
	str	w20, [sp, #12]
LBB53_37:
	mov	x19, x25
	mov	x0, x25
	mov	w1, #512                        ; =0x200
	str	w8, [sp, #8]
LBB53_38:
	str	w23, [sp, #4]
LBB53_39:
	str	w26, [sp]
	bl	_halo_linux_snprintf
LBB53_40:
	mov	x0, x19
	add	sp, sp, #592
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB53_41:
Lloh955:
	adrp	x2, l_.str.193@PAGE
Lloh956:
	add	x2, x2, l_.str.193@PAGEOFF
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	stp	w23, w20, [sp]
	bl	_halo_linux_snprintf
Lloh957:
	adrp	x1, l_.str.89@PAGE
Lloh958:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_27
; %bb.42:
Lloh959:
	adrp	x2, l_.str.191@PAGE
Lloh960:
	add	x2, x2, l_.str.191@PAGEOFF
	sub	x8, x29, #128
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
Lloh961:
	adrp	x23, l_.str.188@PAGE
Lloh962:
	add	x23, x23, l_.str.188@PAGEOFF
	stp	w8, w20, [sp, #4]
	str	w23, [sp]
	bl	_halo_linux_snprintf
Lloh963:
	adrp	x1, l_.str.89@PAGE
Lloh964:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_36
; %bb.43:
Lloh965:
	adrp	x2, l_.str.193@PAGE
Lloh966:
	add	x2, x2, l_.str.193@PAGEOFF
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	stp	w23, w20, [sp]
	bl	_halo_linux_snprintf
Lloh967:
	adrp	x1, l_.str.89@PAGE
Lloh968:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #16
	bl	_forge_host_fopen
	cbnz	w0, LBB53_27
	b	LBB53_40
	.loh AdrpAdd	Lloh869, Lloh870
	.loh AdrpAdd	Lloh871, Lloh872
	.loh AdrpAdd	Lloh873, Lloh874
	.loh AdrpAdd	Lloh875, Lloh876
	.loh AdrpAdd	Lloh877, Lloh878
	.loh AdrpAdd	Lloh879, Lloh880
	.loh AdrpAdd	Lloh881, Lloh882
	.loh AdrpAdd	Lloh883, Lloh884
	.loh AdrpAdd	Lloh885, Lloh886
	.loh AdrpAdd	Lloh889, Lloh890
	.loh AdrpAdd	Lloh887, Lloh888
	.loh AdrpAdd	Lloh893, Lloh894
	.loh AdrpAdd	Lloh891, Lloh892
	.loh AdrpAdd	Lloh895, Lloh896
	.loh AdrpAdd	Lloh897, Lloh898
	.loh AdrpAdd	Lloh901, Lloh902
	.loh AdrpAdd	Lloh899, Lloh900
	.loh AdrpAdd	Lloh907, Lloh908
	.loh AdrpAdd	Lloh905, Lloh906
	.loh AdrpAdd	Lloh903, Lloh904
	.loh AdrpAdd	Lloh911, Lloh912
	.loh AdrpAdd	Lloh909, Lloh910
	.loh AdrpAdd	Lloh913, Lloh914
	.loh AdrpAdd	Lloh919, Lloh920
	.loh AdrpAdd	Lloh917, Lloh918
	.loh AdrpAdd	Lloh915, Lloh916
	.loh AdrpAdd	Lloh921, Lloh922
	.loh AdrpAdd	Lloh925, Lloh926
	.loh AdrpAdd	Lloh923, Lloh924
	.loh AdrpAdd	Lloh931, Lloh932
	.loh AdrpAdd	Lloh929, Lloh930
	.loh AdrpAdd	Lloh927, Lloh928
	.loh AdrpAdd	Lloh935, Lloh936
	.loh AdrpAdd	Lloh933, Lloh934
	.loh AdrpAdd	Lloh941, Lloh942
	.loh AdrpAdd	Lloh939, Lloh940
	.loh AdrpAdd	Lloh937, Lloh938
	.loh AdrpAdd	Lloh945, Lloh946
	.loh AdrpAdd	Lloh943, Lloh944
	.loh AdrpAdd	Lloh951, Lloh952
	.loh AdrpAdd	Lloh949, Lloh950
	.loh AdrpAdd	Lloh947, Lloh948
	.loh AdrpAdd	Lloh953, Lloh954
	.loh AdrpAdd	Lloh957, Lloh958
	.loh AdrpAdd	Lloh955, Lloh956
	.loh AdrpAdd	Lloh963, Lloh964
	.loh AdrpAdd	Lloh961, Lloh962
	.loh AdrpAdd	Lloh959, Lloh960
	.loh AdrpAdd	Lloh967, Lloh968
	.loh AdrpAdd	Lloh965, Lloh966
                                        ; -- End function
	.globl	_forge_ce_fopen                 ; -- Begin function forge_ce_fopen
	.p2align	4
_forge_ce_fopen:                        ; @forge_ce_fopen
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	sub	sp, sp, #1696
	mov	x20, x1
	add	x1, sp, #20
	mov	x19, x0
	bl	_resolve_forge_maps_redirect_path
	mov	x1, x20
	bl	_halo_linux_fopen
	cbnz	w0, LBB54_28
; %bb.1:
	str	xzr, [sp, #536]
	str	wzr, [sp, #532]
	cbz	w19, LBB54_27
; %bb.2:
	ldrb	w8, [x19]
	cbz	w8, LBB54_27
; %bb.3:
	mov	x0, x19
	mov	w1, #92                         ; =0x5c
	bl	_strrchr
	cbnz	w0, LBB54_5
; %bb.4:
	mov	x0, x19
	mov	w1, #47                         ; =0x2f
	bl	_strrchr
LBB54_5:
	cmp	w0, #0
	mov	w1, #46                         ; =0x2e
	csinc	x20, x19, x0, eq
	mov	x0, x20
	bl	_strrchr
	mov	x23, x0
	cbz	w23, LBB54_27
; %bb.6:
Lloh969:
	adrp	x1, l_.str.185@PAGE
Lloh970:
	add	x1, x1, l_.str.185@PAGEOFF
	mov	x0, x23
	bl	__stricmp
	mov	w19, w0
	cbz	w0, LBB54_8
; %bb.7:
Lloh971:
	adrp	x1, l_.str.195@PAGE
Lloh972:
	add	x1, x1, l_.str.195@PAGEOFF
	mov	x0, x23
	bl	__stricmp
	cbnz	w0, LBB54_27
LBB54_8:
	subs	w23, w23, w20
	mov	w8, #127                        ; =0x7f
	ccmp	w23, w8, #2, ne
	b.hi	LBB54_27
; %bb.9:
	sub	x0, x29, #160
	mov	x1, x20
	mov	w2, w23
	sub	x20, x29, #160
	bl	_csmemcpy
Lloh973:
	adrp	x2, l_.str.90@PAGE
Lloh974:
	add	x2, x2, l_.str.90@PAGEOFF
	add	x0, sp, #1056
	mov	w1, #512                        ; =0x200
	strb	wzr, [x20, w23, sxtw]
	str	w20, [sp]
	bl	_halo_linux_snprintf
Lloh975:
	adrp	x1, l_.str.89@PAGE
Lloh976:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1056
	bl	_forge_host_fopen
	mov	x20, x0
	cbnz	w20, LBB54_15
; %bb.10:
Lloh977:
	adrp	x2, l_.str.79@PAGE
Lloh978:
	add	x2, x2, l_.str.79@PAGEOFF
	sub	x8, x29, #160
	add	x0, sp, #1056
	mov	w1, #512                        ; =0x200
	str	w8, [sp]
	bl	_halo_linux_snprintf
Lloh979:
	adrp	x1, l_.str.89@PAGE
Lloh980:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1056
	bl	_forge_host_fopen
	mov	x20, x0
	cbnz	w20, LBB54_14
; %bb.11:
Lloh981:
	adrp	x2, l_.str.80@PAGE
Lloh982:
	add	x2, x2, l_.str.80@PAGEOFF
	sub	x8, x29, #160
	add	x0, sp, #1056
	mov	w1, #512                        ; =0x200
	stp	w8, w8, [sp]
	bl	_halo_linux_snprintf
Lloh983:
	adrp	x1, l_.str.89@PAGE
Lloh984:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1056
	bl	_forge_host_fopen
	mov	x20, x0
	cbnz	w20, LBB54_14
; %bb.12:
Lloh985:
	adrp	x2, l_.str.83@PAGE
Lloh986:
	add	x2, x2, l_.str.83@PAGEOFF
	sub	x8, x29, #160
	add	x0, sp, #1056
	mov	w1, #512                        ; =0x200
	stp	w8, w8, [sp]
	bl	_halo_linux_snprintf
Lloh987:
	adrp	x1, l_.str.89@PAGE
Lloh988:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1056
	bl	_forge_host_fopen
	mov	x20, x0
	cbnz	w20, LBB54_14
; %bb.13:
Lloh989:
	adrp	x2, l_.str.84@PAGE
Lloh990:
	add	x2, x2, l_.str.84@PAGEOFF
	sub	x8, x29, #160
	add	x0, sp, #1056
	mov	w1, #512                        ; =0x200
	str	w8, [sp]
	bl	_halo_linux_snprintf
Lloh991:
	adrp	x1, l_.str.89@PAGE
Lloh992:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1056
	bl	_forge_host_fopen
	mov	x20, x0
	cbz	w20, LBB54_29
LBB54_14:
	mov	w8, wzr
	tbnz	w8, #0, LBB54_27
LBB54_15:
	add	x0, sp, #544
	mov	w1, #1                          ; =0x1
	mov	w2, #512                        ; =0x200
	mov	x3, x20
	add	x23, sp, #544
	bl	_fread
	cmp	w0, #512
	b.ne	LBB54_26
; %bb.16:
	add	x0, sp, #540
	add	x1, x23, #508
	mov	w2, #4                          ; =0x4
	bl	_csmemcpy
	ldr	w8, [sp, #540]
	mov	w9, #18225                      ; =0x4731
	movk	w9, #17996, lsl #16
	cmp	w8, w9
	b.ne	LBB54_18
; %bb.17:
	cmp	w19, #0
	mov	w8, #500                        ; =0x1f4
	mov	w9, #492                        ; =0x1ec
	add	x19, sp, #544
	csel	w8, w9, w8, eq
	add	x0, sp, #536
	add	x1, x19, x8
	mov	w2, #4                          ; =0x4
	mov	w9, #504                        ; =0x1f8
	mov	w10, #496                       ; =0x1f0
	csel	w23, w10, w9, eq
	bl	_csmemcpy
	add	x0, sp, #532
	add	x1, x19, x23
	mov	w2, #4                          ; =0x4
	bl	_csmemcpy
LBB54_18:
	ldr	w0, [sp, #532]
	ldr	w23, [sp, #536]
	sub	w8, w0, #1
	cmp	w8, #1024, lsl #12              ; =4194304
	mov	w8, #2047                       ; =0x7ff
	ccmp	w23, w8, #0, lo
	b.ls	LBB54_26
; %bb.19:
	bl	_malloc
	mov	x19, x0
	cbz	w19, LBB54_26
; %bb.20:
	mov	x0, x20
	mov	w1, w23
	mov	w2, wzr
	bl	_fseek
	cbnz	w0, LBB54_25
; %bb.21:
	ldr	w2, [sp, #532]
	mov	x0, x19
	mov	w1, #1                          ; =0x1
	mov	x3, x20
	bl	_fread
	ldr	w8, [sp, #532]
	cmp	w0, w8
	b.ne	LBB54_25
; %bb.22:
	mov	x0, x20
	bl	_fclose
	adrp	x20, _s_embed_vfile.1@PAGE
	ldr	w0, [x20, _s_embed_vfile.1@PAGEOFF]
	cbz	w0, LBB54_24
; %bb.23:
	bl	_free
LBB54_24:
	ldr	w10, [sp, #532]
	adrp	x8, _s_embed_vfile.0@PAGE
	mov	w9, #1                          ; =0x1
	adrp	x11, _s_embed_vfile.2@PAGE
	adrp	x12, _s_embed_vfile.3@PAGE
	mov	w0, #28313                      ; =0x6e99
	str	w19, [x20, _s_embed_vfile.1@PAGEOFF]
	movk	w0, #32516, lsl #16
	strb	w9, [x8, _s_embed_vfile.0@PAGEOFF]
	str	w10, [x11, _s_embed_vfile.2@PAGEOFF]
	str	wzr, [x12, _s_embed_vfile.3@PAGEOFF]
	b	LBB54_28
LBB54_25:
	mov	x0, x19
	bl	_free
LBB54_26:
	mov	x0, x20
	bl	_fclose
LBB54_27:
	mov	x0, xzr
LBB54_28:
	add	sp, sp, #1696
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
LBB54_29:
Lloh993:
	adrp	x2, l_.str.86@PAGE
Lloh994:
	add	x2, x2, l_.str.86@PAGEOFF
	sub	x8, x29, #160
	add	x0, sp, #1056
	mov	w1, #512                        ; =0x200
	stp	w8, w8, [sp]
	bl	_halo_linux_snprintf
Lloh995:
	adrp	x1, l_.str.89@PAGE
Lloh996:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1056
	bl	_forge_host_fopen
	mov	x20, x0
	cmp	w20, #0
	cset	w8, eq
	tbnz	w8, #0, LBB54_27
	b	LBB54_15
	.loh AdrpAdd	Lloh969, Lloh970
	.loh AdrpAdd	Lloh971, Lloh972
	.loh AdrpAdd	Lloh975, Lloh976
	.loh AdrpAdd	Lloh973, Lloh974
	.loh AdrpAdd	Lloh979, Lloh980
	.loh AdrpAdd	Lloh977, Lloh978
	.loh AdrpAdd	Lloh983, Lloh984
	.loh AdrpAdd	Lloh981, Lloh982
	.loh AdrpAdd	Lloh987, Lloh988
	.loh AdrpAdd	Lloh985, Lloh986
	.loh AdrpAdd	Lloh991, Lloh992
	.loh AdrpAdd	Lloh989, Lloh990
	.loh AdrpAdd	Lloh995, Lloh996
	.loh AdrpAdd	Lloh993, Lloh994
                                        ; -- End function
	.globl	_forge_ce_fread                 ; -- Begin function forge_ce_fread
	.p2align	4
_forge_ce_fread:                        ; @forge_ce_fread
; %bb.0:
	mov	w8, #28313                      ; =0x6e99
	movk	w8, #32516, lsl #16
	cmp	w3, w8
	b.eq	LBB55_2
; %bb.1:
	b	_fread
LBB55_2:
	mov	w8, wzr
	cbz	w2, LBB55_11
; %bb.3:
	cbz	w1, LBB55_11
; %bb.4:
	adrp	x9, _s_embed_vfile.0@PAGE
	ldrb	w9, [x9, _s_embed_vfile.0@PAGEOFF]
	cbz	w9, LBB55_11
; %bb.5:
Lloh997:
	adrp	x9, _s_embed_vfile.1@PAGE
Lloh998:
	ldr	w9, [x9, _s_embed_vfile.1@PAGEOFF]
	cbz	w9, LBB55_11
; %bb.6:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	adrp	x20, _s_embed_vfile.3@PAGE
Lloh999:
	adrp	x10, _s_embed_vfile.2@PAGE
	mul	w19, w2, w1
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	ldr	w8, [x20, _s_embed_vfile.3@PAGEOFF]
Lloh1000:
	ldr	w10, [x10, _s_embed_vfile.2@PAGEOFF]
	subs	w10, w10, w8
	csel	w10, wzr, w10, lo
	cmp	w19, w10
	b.ls	LBB55_8
; %bb.7:
	udiv	w10, w10, w1
	mul	w19, w10, w1
LBB55_8:
	cbz	w19, LBB55_10
; %bb.9:
	add	x8, x9, w8, sxtw
	mov	w23, w1
	mov	x1, x8
	mov	w2, w19
	bl	_csmemcpy
	ldr	w8, [x20, _s_embed_vfile.3@PAGEOFF]
	mov	w1, w23
	add	w8, w8, w19
	str	w8, [x20, _s_embed_vfile.3@PAGEOFF]
LBB55_10:
	udiv	w8, w19, w1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
LBB55_11:
	mov	w0, w8
	ret
	.loh AdrpLdr	Lloh997, Lloh998
	.loh AdrpLdr	Lloh999, Lloh1000
                                        ; -- End function
	.globl	_forge_ce_fseek                 ; -- Begin function forge_ce_fseek
	.p2align	4
_forge_ce_fseek:                        ; @forge_ce_fseek
; %bb.0:
	mov	w8, #28313                      ; =0x6e99
	movk	w8, #32516, lsl #16
	cmp	w0, w8
	b.eq	LBB56_2
; %bb.1:
	b	_fseek
LBB56_2:
	adrp	x8, _s_embed_vfile.0@PAGE
	ldrb	w8, [x8, _s_embed_vfile.0@PAGEOFF]
	cbz	w8, LBB56_7
; %bb.3:
	adrp	x8, _s_embed_vfile.2@PAGE
	cbz	w2, LBB56_10
; %bb.4:
	cmp	w2, #2
	b.eq	LBB56_8
; %bb.5:
	cmp	w2, #1
	b.ne	LBB56_7
; %bb.6:
Lloh1001:
	adrp	x9, _s_embed_vfile.3@PAGE
Lloh1002:
	ldr	w9, [x9, _s_embed_vfile.3@PAGEOFF]
	b	LBB56_9
LBB56_7:
	mov	w0, #-1                         ; =0xffffffff
	ret
LBB56_8:
	ldr	w9, [x8, _s_embed_vfile.2@PAGEOFF]
LBB56_9:
	add	w1, w9, w1
LBB56_10:
	mov	w0, #-1                         ; =0xffffffff
	tbnz	w1, #31, LBB56_13
; %bb.11:
	ldr	w8, [x8, _s_embed_vfile.2@PAGEOFF]
	cmp	w1, w8
	b.hi	LBB56_13
; %bb.12:
	adrp	x8, _s_embed_vfile.3@PAGE
	mov	w0, wzr
	str	w1, [x8, _s_embed_vfile.3@PAGEOFF]
LBB56_13:
	ret
	.loh AdrpLdr	Lloh1001, Lloh1002
                                        ; -- End function
	.globl	_forge_ce_ftell                 ; -- Begin function forge_ce_ftell
	.p2align	4
_forge_ce_ftell:                        ; @forge_ce_ftell
; %bb.0:
	mov	w8, #28313                      ; =0x6e99
	movk	w8, #32516, lsl #16
	cmp	w0, w8
	b.eq	LBB57_2
; %bb.1:
	b	_ftell
LBB57_2:
	adrp	x8, _s_embed_vfile.0@PAGE
Lloh1003:
	adrp	x9, _s_embed_vfile.3@PAGE
	ldrb	w8, [x8, _s_embed_vfile.0@PAGEOFF]
Lloh1004:
	ldr	w9, [x9, _s_embed_vfile.3@PAGEOFF]
	cmp	w8, #0
	csinv	w0, w9, wzr, ne
	ret
	.loh AdrpLdr	Lloh1003, Lloh1004
                                        ; -- End function
	.globl	_forge_ce_fclose                ; -- Begin function forge_ce_fclose
	.p2align	4
_forge_ce_fclose:                       ; @forge_ce_fclose
; %bb.0:
	mov	w8, #28313                      ; =0x6e99
	movk	w8, #32516, lsl #16
	cmp	w0, w8
	b.eq	LBB58_2
; %bb.1:
	b	_fclose
LBB58_2:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	adrp	x19, _s_embed_vfile.1@PAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	ldr	w0, [x19, _s_embed_vfile.1@PAGEOFF]
	cbz	w0, LBB58_4
; %bb.3:
	bl	_free
	str	wzr, [x19, _s_embed_vfile.1@PAGEOFF]
LBB58_4:
	adrp	x8, _s_embed_vfile.0@PAGE
	adrp	x9, _s_embed_vfile.2@PAGE
	adrp	x10, _s_embed_vfile.3@PAGE
	mov	w0, wzr
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	strb	wzr, [x8, _s_embed_vfile.0@PAGEOFF]
	str	wzr, [x9, _s_embed_vfile.2@PAGEOFF]
	str	wzr, [x10, _s_embed_vfile.3@PAGEOFF]
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.globl	_forge_ce_FindFirstFileA        ; -- Begin function forge_ce_FindFirstFileA
	.p2align	4
_forge_ce_FindFirstFileA:               ; @forge_ce_FindFirstFileA
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	mov	x23, x0
	mov	x19, x1
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	cbz	w23, LBB59_4
; %bb.1:
	adrp	x24, _s_forge_ce_find.0@PAGE
	ldrb	w8, [x24, _s_forge_ce_find.0@PAGEOFF]
	tbnz	w8, #0, LBB59_4
; %bb.2:
Lloh1005:
	adrp	x1, l_.str.77@PAGE
Lloh1006:
	add	x1, x1, l_.str.77@PAGEOFF
	mov	x0, x23
	bl	__stricmp
	cbz	w0, LBB59_5
; %bb.3:
Lloh1007:
	adrp	x1, l_.str.78@PAGE
Lloh1008:
	add	x1, x1, l_.str.78@PAGEOFF
	mov	x0, x23
	bl	__stricmp
	cbz	w0, LBB59_5
LBB59_4:
	mov	x1, x19
	mov	x0, x23
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	b	_FindFirstFileA
LBB59_5:
	mov	w8, #1                          ; =0x1
	mov	x0, x23
	mov	x1, x19
	mov	w20, #28161                     ; =0x6e01
	movk	w20, #32516, lsl #16
	strb	w8, [x24, _s_forge_ce_find.0@PAGEOFF]
	bl	_FindFirstFileA
	adrp	x8, _s_forge_ce_find.1@PAGE
	adrp	x9, _s_forge_ce_find.2@PAGE
	mov	w10, #-1                        ; =0xffffffff
	adrp	x11, _s_forge_ce_find.3@PAGE
	cmn	w0, #1
	str	w0, [x8, _s_forge_ce_find.1@PAGEOFF]
	str	w10, [x9, _s_forge_ce_find.2@PAGEOFF]
	str	wzr, [x11, _s_forge_ce_find.3@PAGEOFF]
	b.ne	LBB59_8
; %bb.6:
	mov	x0, x19
	bl	_forge_ce_advance_forge_dirs
	cbnz	w0, LBB59_8
; %bb.7:
	mov	w20, #-1                        ; =0xffffffff
	strb	wzr, [x24, _s_forge_ce_find.0@PAGEOFF]
LBB59_8:
	mov	x0, x20
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh1005, Lloh1006
	.loh AdrpAdd	Lloh1007, Lloh1008
                                        ; -- End function
	.p2align	4                               ; -- Begin function forge_ce_advance_forge_dirs
_forge_ce_advance_forge_dirs:           ; @forge_ce_advance_forge_dirs
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #928
	adrp	x26, _s_forge_ce_find.3@PAGE
	ldr	w8, [x26, _s_forge_ce_find.3@PAGEOFF]
	cmp	w8, #2
	b.gt	LBB60_21
; %bb.1:
	adrp	x27, _s_forge_ce_find.2@PAGE
	str	x0, [sp, #16]                   ; 8-byte Spill
	add	x9, sp, #600
Lloh1009:
	adrp	x20, l_.str.1@PAGE
Lloh1010:
	add	x20, x20, l_.str.1@PAGEOFF
	add	x19, x9, #44
	ldr	w0, [x27, _s_forge_ce_find.2@PAGEOFF]
	add	x23, sp, #536
Lloh1011:
	adrp	x25, l_.str.89@PAGE
Lloh1012:
	add	x25, x25, l_.str.89@PAGEOFF
	b	LBB60_4
	.p2align	4, , 8
LBB60_2:                                ;   in Loop: Header=BB60_4 Depth=1
	ldr	w0, [x27, _s_forge_ce_find.2@PAGEOFF]
	bl	_CloseHandle
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x27, _s_forge_ce_find.2@PAGEOFF]
LBB60_3:                                ;   in Loop: Header=BB60_4 Depth=1
	ldr	w8, [x26, _s_forge_ce_find.3@PAGEOFF]
	mov	w0, #-1                         ; =0xffffffff
	add	w8, w8, #1
	cmp	w8, #3
	str	w8, [x26, _s_forge_ce_find.3@PAGEOFF]
	b.ge	LBB60_21
LBB60_4:                                ; =>This Inner Loop Header: Depth=1
Lloh1013:
	adrp	x9, _forge_ce_advance_forge_dirs.find_roots@PAGE
Lloh1014:
	add	x9, x9, _forge_ce_advance_forge_dirs.find_roots@PAGEOFF
	cmn	w0, #1
	ldr	w24, [x9, w8, sxtw #2]
	b.ne	LBB60_6
; %bb.5:                                ;   in Loop: Header=BB60_4 Depth=1
Lloh1015:
	adrp	x9, _forge_ce_advance_forge_dirs.find_patterns@PAGE
Lloh1016:
	add	x9, x9, _forge_ce_advance_forge_dirs.find_patterns@PAGEOFF
	add	x1, sp, #600
	ldr	w0, [x9, w8, sxtw #2]
	bl	_FindFirstFileA
	cmn	w0, #1
	str	w0, [x27, _s_forge_ce_find.2@PAGEOFF]
	b.ne	LBB60_7
	b	LBB60_3
	.p2align	4, , 8
LBB60_6:                                ;   in Loop: Header=BB60_4 Depth=1
	add	x1, sp, #600
	bl	_FindNextFileA
	cbz	w0, LBB60_2
LBB60_7:                                ;   in Loop: Header=BB60_4 Depth=1
	ldrb	w8, [sp, #644]
	cmp	w8, #46
	b.eq	LBB60_20
; %bb.8:                                ;   in Loop: Header=BB60_4 Depth=1
	mov	x0, x19
	bl	_csstrlen
	cbz	w0, LBB60_20
; %bb.9:                                ;   in Loop: Header=BB60_4 Depth=1
	mov	x0, x19
	bl	_csstrlen
	cmp	w0, #63
	b.hi	LBB60_20
; %bb.10:                               ;   in Loop: Header=BB60_4 Depth=1
	ldr	w28, [sp, #600]
	add	x0, sp, #536
	mov	w1, #64                         ; =0x40
	mov	x2, x20
	str	w19, [sp]
	bl	_halo_linux_snprintf
	tbnz	w28, #4, LBB60_14
; %bb.11:                               ;   in Loop: Header=BB60_4 Depth=1
	add	x0, sp, #536
	mov	w1, #46                         ; =0x2e
	bl	_strrchr
	mov	x28, x0
	cbz	w28, LBB60_20
; %bb.12:                               ;   in Loop: Header=BB60_4 Depth=1
	mov	x0, x28
Lloh1017:
	adrp	x1, l_.str.125@PAGE
Lloh1018:
	add	x1, x1, l_.str.125@PAGEOFF
	bl	__stricmp
	cbnz	w0, LBB60_20
; %bb.13:                               ;   in Loop: Header=BB60_4 Depth=1
	strb	wzr, [x28]
	.p2align	4, , 8
LBB60_14:                               ;   in Loop: Header=BB60_4 Depth=1
	add	x0, sp, #24
	mov	w1, #512                        ; =0x200
Lloh1019:
	adrp	x2, l_.str.200@PAGE
Lloh1020:
	add	x2, x2, l_.str.200@PAGEOFF
	str	w23, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #24
	mov	x1, x25
	bl	_forge_host_fopen
	cbz	w0, LBB60_16
; %bb.15:                               ;   in Loop: Header=BB60_4 Depth=1
	bl	_fclose
	b	LBB60_20
	.p2align	4, , 8
LBB60_16:                               ;   in Loop: Header=BB60_4 Depth=1
	ldrb	w8, [sp, #600]
	tbnz	w8, #4, LBB60_18
; %bb.17:                               ;   in Loop: Header=BB60_4 Depth=1
	add	x0, sp, #24
	mov	w1, #512                        ; =0x200
Lloh1021:
	adrp	x2, l_.str.202@PAGE
Lloh1022:
	add	x2, x2, l_.str.202@PAGEOFF
	b	LBB60_19
	.p2align	4, , 8
LBB60_18:                               ;   in Loop: Header=BB60_4 Depth=1
	add	x0, sp, #24
	mov	w1, #512                        ; =0x200
Lloh1023:
	adrp	x2, l_.str.201@PAGE
Lloh1024:
	add	x2, x2, l_.str.201@PAGEOFF
	str	w23, [sp, #8]
LBB60_19:                               ;   in Loop: Header=BB60_4 Depth=1
	stp	w24, w23, [sp]
	bl	_halo_linux_snprintf
	add	x0, sp, #24
	mov	x1, x25
	bl	_forge_host_fopen
	cbnz	w0, LBB60_22
	.p2align	4, , 8
LBB60_20:                               ;   in Loop: Header=BB60_4 Depth=1
	ldr	w0, [x27, _s_forge_ce_find.2@PAGEOFF]
	b	LBB60_6
LBB60_21:
	mov	w0, wzr
	b	LBB60_23
LBB60_22:
	bl	_fclose
	ldr	x19, [sp, #16]                  ; 8-byte Reload
	mov	w1, wzr
	mov	w2, #320                        ; =0x140
	mov	x0, x19
	bl	_csmemset
	mov	w8, #128                        ; =0x80
Lloh1025:
	adrp	x2, l_.str.203@PAGE
Lloh1026:
	add	x2, x2, l_.str.203@PAGEOFF
	mov	w1, #260                        ; =0x104
	str	w8, [x19], #44
	add	x8, sp, #536
	mov	x0, x19
	str	w8, [sp]
	bl	_halo_linux_snprintf
	mov	w0, #1                          ; =0x1
LBB60_23:
	add	sp, sp, #928
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh1011, Lloh1012
	.loh AdrpAdd	Lloh1009, Lloh1010
	.loh AdrpAdd	Lloh1013, Lloh1014
	.loh AdrpAdd	Lloh1015, Lloh1016
	.loh AdrpAdd	Lloh1017, Lloh1018
	.loh AdrpAdd	Lloh1019, Lloh1020
	.loh AdrpAdd	Lloh1021, Lloh1022
	.loh AdrpAdd	Lloh1023, Lloh1024
	.loh AdrpAdd	Lloh1025, Lloh1026
                                        ; -- End function
	.globl	_forge_ce_FindNextFileA         ; -- Begin function forge_ce_FindNextFileA
	.p2align	4
_forge_ce_FindNextFileA:                ; @forge_ce_FindNextFileA
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	mov	w8, #28161                      ; =0x6e01
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	movk	w8, #32516, lsl #16
	add	x29, sp, #16
	cmp	w0, w8
	b.eq	LBB61_2
; %bb.1:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_FindNextFileA
LBB61_2:
	adrp	x19, _s_forge_ce_find.1@PAGE
	ldr	w0, [x19, _s_forge_ce_find.1@PAGEOFF]
	cmn	w0, #1
	b.eq	LBB61_6
; %bb.3:
	mov	x20, x1
	bl	_FindNextFileA
	cbz	w0, LBB61_5
; %bb.4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	mov	w0, #1                          ; =0x1
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB61_5:
	ldr	w0, [x19, _s_forge_ce_find.1@PAGEOFF]
	bl	_CloseHandle
	mov	w8, #-1                         ; =0xffffffff
	mov	x1, x20
	str	w8, [x19, _s_forge_ce_find.1@PAGEOFF]
LBB61_6:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	mov	x0, x1
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_forge_ce_advance_forge_dirs
                                        ; -- End function
	.globl	_forge_ce_CloseHandle           ; -- Begin function forge_ce_CloseHandle
	.p2align	4
_forge_ce_CloseHandle:                  ; @forge_ce_CloseHandle
; %bb.0:
	mov	w8, #28161                      ; =0x6e01
	movk	w8, #32516, lsl #16
	cmp	w0, w8
	b.eq	LBB62_2
; %bb.1:
	b	_CloseHandle
LBB62_2:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	adrp	x19, _s_forge_ce_find.1@PAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	ldr	w0, [x19, _s_forge_ce_find.1@PAGEOFF]
	cmn	w0, #1
	b.eq	LBB62_4
; %bb.3:
	bl	_CloseHandle
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x19, _s_forge_ce_find.1@PAGEOFF]
LBB62_4:
	adrp	x19, _s_forge_ce_find.2@PAGE
	ldr	w0, [x19, _s_forge_ce_find.2@PAGEOFF]
	cmn	w0, #1
	b.eq	LBB62_6
; %bb.5:
	bl	_CloseHandle
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x19, _s_forge_ce_find.2@PAGEOFF]
LBB62_6:
	adrp	x8, _s_forge_ce_find.0@PAGE
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	strb	wzr, [x8, _s_forge_ce_find.0@PAGEOFF]
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.globl	_forge_window_is_focused        ; -- Begin function forge_window_is_focused
	.p2align	4
_forge_window_is_focused:               ; @forge_window_is_focused
; %bb.0:
	mov	w0, #1                          ; =0x1
	ret
                                        ; -- End function
	.globl	_forge_chat_typing              ; -- Begin function forge_chat_typing
	.p2align	4
_forge_chat_typing:                     ; @forge_chat_typing
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	bl	_orig_network_chat_typing
	cbz	w0, LBB64_2
; %bb.1:
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB64_2:
	bl	_social_chat_typing
	cmp	w0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.globl	_forge_menu_open                ; -- Begin function forge_menu_open
	.p2align	4
_forge_menu_open:                       ; @forge_menu_open
; %bb.0:
Lloh1027:
	adrp	x8, _g_forge_session_enabled@GOTPAGE
Lloh1028:
	ldr	w8, [x8, _g_forge_session_enabled@GOTPAGEOFF]
Lloh1029:
	ldr	w8, [x8]
	cbz	w8, LBB65_3
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
Lloh1030:
	adrp	x19, _g_forge_state@GOTPAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
Lloh1031:
	ldr	w19, [x19, _g_forge_state@GOTPAGEOFF]
	ldr	w0, [x19]
	cbz	w0, LBB65_4
; %bb.2:
	ldr	w8, [x0]
	cbnz	w8, LBB65_5
	b	LBB65_10
LBB65_3:
	mov	w0, wzr
	ret
LBB65_4:
	bl	_forge_runtime_state_get
	ldr	w8, [x0]
	cbz	w8, LBB65_10
LBB65_5:
	ldr	w0, [x19]
	cbz	w0, LBB65_7
; %bb.6:
	ldr	w8, [x0, #8]
	cbnz	w8, LBB65_8
	b	LBB65_10
LBB65_7:
	bl	_forge_runtime_state_get
	ldr	w8, [x0, #8]
	cbz	w8, LBB65_10
LBB65_8:
	bl	_global_scenario_try_and_get
	mov	x19, x0
	bl	_forge_get_active_map_name
	cbz	w19, LBB65_10
; %bb.9:
	ldrh	w8, [x19, #60]
	cmp	w8, #2
	b.ne	LBB65_12
LBB65_10:
	mov	w0, wzr
LBB65_11:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB65_12:
	cbz	w0, LBB65_15
; %bb.13:
Lloh1032:
	adrp	x1, l_.str.58@PAGE
Lloh1033:
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x19, x0
	bl	__stricmp
	cbz	w0, LBB65_11
; %bb.14:
Lloh1034:
	adrp	x1, l_.str.59@PAGE
Lloh1035:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x19
	bl	__stricmp
	cbz	w0, LBB65_11
LBB65_15:
	mov	w0, #1                          ; =0x1
	b	LBB65_11
	.loh AdrpLdrGotLdr	Lloh1027, Lloh1028, Lloh1029
	.loh AdrpLdrGot	Lloh1030, Lloh1031
	.loh AdrpAdd	Lloh1032, Lloh1033
	.loh AdrpAdd	Lloh1034, Lloh1035
                                        ; -- End function
	.globl	_platform_ui_pointer_read       ; -- Begin function platform_ui_pointer_read
	.p2align	4
_platform_ui_pointer_read:              ; @platform_ui_pointer_read
; %bb.0:
	b	_orig_platform_ui_pointer_read
                                        ; -- End function
	.globl	_platform_input_read            ; -- Begin function platform_input_read
	.p2align	4
_platform_input_read:                   ; @platform_input_read
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	mov	x19, x0
	bl	_orig_platform_input_read
	cbz	w19, LBB67_9
; %bb.1:
Lloh1036:
	adrp	x0, _s_forge_keys_down@PAGE
Lloh1037:
	add	x0, x0, _s_forge_keys_down@PAGEOFF
	mov	x1, x19
	mov	w2, #512                        ; =0x200
	bl	_csmemcpy
Lloh1038:
	adrp	x0, _s_forge_mouse_down@PAGE
Lloh1039:
	add	x0, x0, _s_forge_mouse_down@PAGEOFF
	add	x1, x19, #512
	mov	w2, #8                          ; =0x8
	bl	_csmemcpy
	ldr	w8, [x19, #532]
	cbz	w8, LBB67_8
; %bb.2:
	bl	_forge_has_held_item_to_cancel
	adrp	x20, _s_forge_esc_cancel_ms@PAGE
	cbz	w0, LBB67_5
; %bb.3:
	ldrb	w8, [x19, #41]
	cbz	w8, LBB67_5
; %bb.4:
	bl	_system_milliseconds
	str	w0, [x20, _s_forge_esc_cancel_ms@PAGEOFF]
	cbnz	w0, LBB67_6
	b	LBB67_9
LBB67_5:
	ldr	w0, [x20, _s_forge_esc_cancel_ms@PAGEOFF]
	cbz	w0, LBB67_9
LBB67_6:
	bl	_system_milliseconds
	ldr	w8, [x20, _s_forge_esc_cancel_ms@PAGEOFF]
	sub	w8, w0, w8
	cmp	w8, #249
	b.hi	LBB67_9
; %bb.7:
	strb	wzr, [x19, #41]
	b	LBB67_9
LBB67_8:
	mov	x0, x19
	mov	w1, wzr
	mov	w2, #512                        ; =0x200
	bl	_csmemset
	add	x0, x19, #512
	mov	w1, wzr
	mov	w2, #8                          ; =0x8
	bl	_csmemset
	movi	v0.2d, #0000000000000000
	add	x8, x19, #520
	str	q0, [x8]
LBB67_9:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh1038, Lloh1039
	.loh AdrpAdd	Lloh1036, Lloh1037
                                        ; -- End function
	.globl	_platform_next_keystroke        ; -- Begin function platform_next_keystroke
	.p2align	4
_platform_next_keystroke:               ; @platform_next_keystroke
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	mov	x19, x0
	bl	_orig_platform_next_keystroke
	cbz	w0, LBB68_11
; %bb.1:
	cbz	w19, LBB68_10
; %bb.2:
	adrp	x20, _s_forge_esc_cancel_ms@PAGE
	b	LBB68_6
	.p2align	4, , 8
LBB68_3:                                ;   in Loop: Header=BB68_6 Depth=1
	bl	_forge_has_held_item_to_cancel
	cbz	w0, LBB68_8
; %bb.4:                                ;   in Loop: Header=BB68_6 Depth=1
	bl	_system_milliseconds
	str	w0, [x20, _s_forge_esc_cancel_ms@PAGEOFF]
LBB68_5:                                ;   in Loop: Header=BB68_6 Depth=1
	mov	x0, x19
	bl	_orig_platform_next_keystroke
	cbz	w0, LBB68_11
LBB68_6:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x19]
	cmp	w8, #27
	b.eq	LBB68_3
; %bb.7:                                ;   in Loop: Header=BB68_6 Depth=1
	ldrb	w8, [x19, #1]
	cmp	w8, #27
	b.eq	LBB68_3
	b	LBB68_10
	.p2align	4, , 8
LBB68_8:                                ;   in Loop: Header=BB68_6 Depth=1
	ldr	w8, [x20, _s_forge_esc_cancel_ms@PAGEOFF]
	cbz	w8, LBB68_10
; %bb.9:                                ;   in Loop: Header=BB68_6 Depth=1
	bl	_system_milliseconds
	ldr	w8, [x20, _s_forge_esc_cancel_ms@PAGEOFF]
	sub	w8, w0, w8
	cmp	w8, #250
	b.lo	LBB68_5
LBB68_10:
	mov	w0, #1                          ; =0x1
LBB68_11:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.globl	_XInputGetState                 ; -- Begin function XInputGetState
	.p2align	4
_XInputGetState:                        ; @XInputGetState
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	mov	x19, x1
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	mov	x20, x0
	bl	_orig_XInputGetState
	cbz	w19, LBB69_3
; %bb.1:
	mov	w23, w0
	mov	x0, x20
	bl	_xinput_device_port
	mov	w8, w0
	mov	w0, w23
	cbnz	w8, LBB69_3
; %bb.2:
	cmp	w0, #0
	ldur	q0, [x19, #4]
	ldrh	w10, [x19, #20]
	adrp	x8, _s_forge_pad_valid@PAGE
	cset	w9, eq
Lloh1040:
	adrp	x11, _s_forge_pad@PAGE
Lloh1041:
	add	x11, x11, _s_forge_pad@PAGEOFF
	str	w9, [x8, _s_forge_pad_valid@PAGEOFF]
	str	q0, [x11]
	strh	w10, [x11, #16]
LBB69_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh1040, Lloh1041
                                        ; -- End function
	.globl	_forge_pad_read                 ; -- Begin function forge_pad_read
	.p2align	4
_forge_pad_read:                        ; @forge_pad_read
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	mov	w1, wzr
	mov	w2, #18                         ; =0x12
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	mov	x19, x0
	bl	_csmemset
Lloh1042:
	adrp	x8, _s_forge_pad_valid@PAGE
Lloh1043:
	ldr	w8, [x8, _s_forge_pad_valid@PAGEOFF]
	cbz	w8, LBB70_3
; %bb.1:
	bl	_orig_network_chat_typing
	cbnz	w0, LBB70_3
; %bb.2:
	bl	_social_chat_typing
	cbz	w0, LBB70_5
LBB70_3:
	mov	w0, wzr
LBB70_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB70_5:
Lloh1044:
	adrp	x8, _s_forge_pad@PAGE
Lloh1045:
	add	x8, x8, _s_forge_pad@PAGEOFF
	mov	w0, #1                          ; =0x1
	ldrh	w9, [x8]
	strh	w9, [x19]
	ldur	x9, [x8, #2]
	stur	x9, [x19, #2]
	ldur	d0, [x8, #10]
	stur	d0, [x19, #10]
	b	LBB70_4
	.loh AdrpLdr	Lloh1042, Lloh1043
	.loh AdrpAdd	Lloh1044, Lloh1045
                                        ; -- End function
	.p2align	4                               ; -- Begin function is_forge_created_map_file
_is_forge_created_map_file:             ; @is_forge_created_map_file
; %bb.0:
	stp	x28, x27, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #3600
	mov	x19, x2
	mov	x20, x1
	cbz	w3, LBB71_3
; %bb.1:
	cbz	w4, LBB71_3
; %bb.2:
Lloh1046:
	adrp	x2, l_.str.91@PAGE
Lloh1047:
	add	x2, x2, l_.str.91@PAGEOFF
	mov	x23, x0
	mov	x0, x3
	mov	w1, w4
	bl	_halo_linux_snprintf
	mov	x0, x23
LBB71_3:
Lloh1048:
	adrp	x1, l_.str.89@PAGE
Lloh1049:
	add	x1, x1, l_.str.89@PAGEOFF
	bl	_forge_host_fopen
	mov	x23, x0
	cbz	w23, LBB71_9
; %bb.4:
	add	x0, sp, #1552
	mov	w1, #1                          ; =0x1
	mov	w2, #2048                       ; =0x800
	mov	x3, x23
	add	x24, sp, #1552
	bl	_fread
	cmp	w0, #2048
	b.ne	LBB71_12
; %bb.5:
	ldr	w8, [sp, #2060]
	mov	w9, #18225                      ; =0x4731
	movk	w9, #17996, lsl #16
	cmp	w8, w9
	b.ne	LBB71_10
; %bb.6:
	ldr	w24, [sp, #2040]
	mov	w9, #4194303                    ; =0x3fffff
	ldr	w1, [sp, #2036]
	sub	w8, w24, #1
	cmp	w8, w9
	mov	w8, #2047                       ; =0x7ff
	ccmp	w1, w8, #0, lo
	b.ls	LBB71_13
; %bb.7:
	mov	x0, x23
	mov	w2, wzr
	bl	_fseek
	cbnz	w0, LBB71_13
; %bb.8:
	cmp	w24, #1023
	mov	w8, #1023                       ; =0x3ff
	csel	w2, w24, w8, lo
	add	x0, sp, #16
	mov	w1, #1                          ; =0x1
	mov	x3, x23
	bl	_fread
	b	LBB71_13
LBB71_9:
	mov	w24, wzr
	cbnz	w20, LBB71_15
	b	LBB71_17
LBB71_10:
Lloh1050:
	adrp	x1, l_.str.94@PAGE
Lloh1051:
	add	x1, x1, l_.str.94@PAGEOFF
	add	x0, x24, #32
	mov	w2, #13                         ; =0xd
	bl	__strnicmp
	cbz	w0, LBB71_13
; %bb.11:
Lloh1052:
	adrp	x1, l_.str.95@PAGE
Lloh1053:
	add	x1, x1, l_.str.95@PAGEOFF
	add	x0, x24, #32
	mov	w2, #13                         ; =0xd
	bl	__strnicmp
	cbz	w0, LBB71_13
LBB71_12:
	mov	w24, wzr
	b	LBB71_14
LBB71_13:
	mov	w24, #1                         ; =0x1
LBB71_14:
	mov	x0, x23
	bl	_fclose
	cbz	w20, LBB71_17
LBB71_15:
	mov	x0, x20
	bl	_csstrlen
	cmp	w0, #7
	b.lo	LBB71_17
; %bb.16:
	mov	x0, x20
	bl	_csstrlen
	add	x8, x20, w0, sxtw
Lloh1054:
	adrp	x1, l_.str.87@PAGE
Lloh1055:
	add	x1, x1, l_.str.87@PAGEOFF
	sub	x0, x8, #6
	bl	__stricmp
	cmp	w0, #0
	csinc	w24, w24, wzr, ne
LBB71_17:
Lloh1056:
	adrp	x2, l_.str.81@PAGE
Lloh1057:
	add	x2, x2, l_.str.81@PAGEOFF
	add	x0, sp, #1040
	mov	w1, #512                        ; =0x200
	stp	w20, w20, [sp]
	bl	_halo_linux_snprintf
Lloh1058:
	adrp	x1, l_.str.89@PAGE
Lloh1059:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1040
	bl	_forge_host_fopen
	mov	x23, x0
	cbnz	w23, LBB71_21
; %bb.18:
Lloh1060:
	adrp	x2, l_.str.82@PAGE
Lloh1061:
	add	x2, x2, l_.str.82@PAGEOFF
	add	x0, sp, #1040
	mov	w1, #512                        ; =0x200
	stp	w20, w20, [sp]
	bl	_halo_linux_snprintf
Lloh1062:
	adrp	x1, l_.str.89@PAGE
Lloh1063:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1040
	bl	_forge_host_fopen
	mov	x23, x0
	cbnz	w23, LBB71_21
; %bb.19:
Lloh1064:
	adrp	x2, l_.str.85@PAGE
Lloh1065:
	add	x2, x2, l_.str.85@PAGEOFF
	add	x0, sp, #1040
	mov	w1, #512                        ; =0x200
	stp	w20, w20, [sp]
	bl	_halo_linux_snprintf
Lloh1066:
	adrp	x1, l_.str.89@PAGE
Lloh1067:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1040
	bl	_forge_host_fopen
	mov	x23, x0
	cbnz	w23, LBB71_21
; %bb.20:
Lloh1068:
	adrp	x2, l_.str.96@PAGE
Lloh1069:
	add	x2, x2, l_.str.96@PAGEOFF
	add	x0, sp, #1040
	mov	w1, #512                        ; =0x200
	str	w20, [sp]
	bl	_halo_linux_snprintf
Lloh1070:
	adrp	x1, l_.str.89@PAGE
Lloh1071:
	add	x1, x1, l_.str.89@PAGEOFF
	add	x0, sp, #1040
	bl	_forge_host_fopen
	mov	x23, x0
	cbz	w23, LBB71_24
LBB71_21:
	add	x0, sp, #16
	mov	w1, #1                          ; =0x1
	mov	w2, #1023                       ; =0x3ff
	mov	x3, x23
	add	x20, sp, #16
	bl	_fread
	strb	wzr, [x20, w0, sxtw]
	mov	x0, x23
	bl	_fclose
Lloh1072:
	adrp	x1, l_.str.92@PAGE
Lloh1073:
	add	x1, x1, l_.str.92@PAGEOFF
	add	x0, sp, #16
	bl	_strstr
	cmp	w0, #0
Lloh1074:
	adrp	x1, l_.str.93@PAGE
Lloh1075:
	add	x1, x1, l_.str.93@PAGEOFF
	add	x0, sp, #16
	csinc	w20, w24, wzr, eq
	bl	_strstr
	cmp	w0, #0
	csinc	w24, w24, wzr, eq
	cbz	w19, LBB71_23
LBB71_22:
	str	w24, [x19]
LBB71_23:
	mov	w0, w20
	add	sp, sp, #3600
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
LBB71_24:
	mov	w20, w24
	cbnz	w19, LBB71_22
	b	LBB71_23
	.loh AdrpAdd	Lloh1046, Lloh1047
	.loh AdrpAdd	Lloh1048, Lloh1049
	.loh AdrpAdd	Lloh1050, Lloh1051
	.loh AdrpAdd	Lloh1052, Lloh1053
	.loh AdrpAdd	Lloh1054, Lloh1055
	.loh AdrpAdd	Lloh1058, Lloh1059
	.loh AdrpAdd	Lloh1056, Lloh1057
	.loh AdrpAdd	Lloh1062, Lloh1063
	.loh AdrpAdd	Lloh1060, Lloh1061
	.loh AdrpAdd	Lloh1066, Lloh1067
	.loh AdrpAdd	Lloh1064, Lloh1065
	.loh AdrpAdd	Lloh1070, Lloh1071
	.loh AdrpAdd	Lloh1068, Lloh1069
	.loh AdrpAdd	Lloh1074, Lloh1075
	.loh AdrpAdd	Lloh1072, Lloh1073
                                        ; -- End function
	.p2align	4                               ; -- Begin function fw_descendant
_fw_descendant:                         ; @fw_descendant
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	ldr	w19, [x0, #52]
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	cbz	w19, LBB72_7
; %bb.1:
	mov	x20, x2
	mov	x23, x1
	.p2align	4, , 8
LBB72_2:                                ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x19, #4]
	cbz	w0, LBB72_5
; %bb.3:                                ;   in Loop: Header=BB72_2 Depth=1
	mov	x1, x23
	bl	_csstrcmp
	cbnz	w0, LBB72_5
; %bb.4:                                ;   in Loop: Header=BB72_2 Depth=1
	ldr	w8, [x20]
	sub	w9, w8, #1
	str	w9, [x20]
	cbz	w8, LBB72_9
LBB72_5:                                ;   in Loop: Header=BB72_2 Depth=1
	mov	x0, x19
	mov	x1, x23
	mov	x2, x20
	bl	_fw_descendant
	cbnz	w0, LBB72_8
; %bb.6:                                ;   in Loop: Header=BB72_2 Depth=1
	ldr	w19, [x19, #44]
	cbnz	w19, LBB72_2
LBB72_7:
	mov	x19, xzr
	b	LBB72_9
LBB72_8:
	mov	x19, x0
LBB72_9:
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.section	__TEXT,__const
	.globl	_D3DSIMPLERENDERSTATEENCODE     ; @D3DSIMPLERENDERSTATEENCODE
	.weak_definition	_D3DSIMPLERENDERSTATEENCODE
	.p2align	2, 0x0
_D3DSIMPLERENDERSTATEENCODE:
	.long	262752                          ; 0x40260
	.long	262756                          ; 0x40264
	.long	262760                          ; 0x40268
	.long	262764                          ; 0x4026c
	.long	262768                          ; 0x40270
	.long	262772                          ; 0x40274
	.long	262776                          ; 0x40278
	.long	262780                          ; 0x4027c
	.long	262792                          ; 0x40288
	.long	262796                          ; 0x4028c
	.long	264800                          ; 0x40a60
	.long	264804                          ; 0x40a64
	.long	264808                          ; 0x40a68
	.long	264812                          ; 0x40a6c
	.long	264816                          ; 0x40a70
	.long	264820                          ; 0x40a74
	.long	264824                          ; 0x40a78
	.long	264828                          ; 0x40a7c
	.long	264832                          ; 0x40a80
	.long	264836                          ; 0x40a84
	.long	264840                          ; 0x40a88
	.long	264844                          ; 0x40a8c
	.long	264848                          ; 0x40a90
	.long	264852                          ; 0x40a94
	.long	264856                          ; 0x40a98
	.long	264860                          ; 0x40a9c
	.long	264864                          ; 0x40aa0
	.long	264868                          ; 0x40aa4
	.long	264872                          ; 0x40aa8
	.long	264876                          ; 0x40aac
	.long	264880                          ; 0x40ab0
	.long	264884                          ; 0x40ab4
	.long	264888                          ; 0x40ab8
	.long	264892                          ; 0x40abc
	.long	264896                          ; 0x40ac0
	.long	264900                          ; 0x40ac4
	.long	264904                          ; 0x40ac8
	.long	264908                          ; 0x40acc
	.long	264912                          ; 0x40ad0
	.long	264916                          ; 0x40ad4
	.long	264920                          ; 0x40ad8
	.long	264924                          ; 0x40adc
	.long	268280                          ; 0x417f8
	.long	269856                          ; 0x41e20
	.long	269860                          ; 0x41e24
	.long	269888                          ; 0x41e40
	.long	269892                          ; 0x41e44
	.long	269896                          ; 0x41e48
	.long	269900                          ; 0x41e4c
	.long	269904                          ; 0x41e50
	.long	269908                          ; 0x41e54
	.long	269912                          ; 0x41e58
	.long	269916                          ; 0x41e5c
	.long	269920                          ; 0x41e60
	.long	269712                          ; 0x41d90
	.long	269940                          ; 0x41e74
	.long	269944                          ; 0x41e78
	.long	262996                          ; 0x40354
	.long	262972                          ; 0x4033c
	.long	262916                          ; 0x40304
	.long	262912                          ; 0x40300
	.long	262976                          ; 0x40340
	.long	262980                          ; 0x40344
	.long	262984                          ; 0x40348
	.long	263004                          ; 0x4035c
	.long	262928                          ; 0x40310
	.long	263036                          ; 0x4037c
	.long	263000                          ; 0x40358
	.long	263028                          ; 0x40374
	.long	263032                          ; 0x40378
	.long	263012                          ; 0x40364
	.long	263016                          ; 0x40368
	.long	263020                          ; 0x4036c
	.long	263008                          ; 0x40360
	.long	262992                          ; 0x40350
	.long	262988                          ; 0x4034c
	.long	264696                          ; 0x409f8
	.long	263044                          ; 0x40384
	.long	263048                          ; 0x40388
	.long	262960                          ; 0x40330
	.long	262964                          ; 0x40334
	.long	262968                          ; 0x40338

	.globl	_D3DPRIMITIVETOVERTEXCOUNT      ; @D3DPRIMITIVETOVERTEXCOUNT
	.weak_definition	_D3DPRIMITIVETOVERTEXCOUNT
	.p2align	2, 0x0
_D3DPRIMITIVETOVERTEXCOUNT:
	.space	8
	.long	1                               ; 0x1
	.long	0                               ; 0x0
	.long	2                               ; 0x2
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	3                               ; 0x3
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	4                               ; 0x4
	.long	0                               ; 0x0
	.long	2                               ; 0x2
	.long	2                               ; 0x2
	.space	8

.zerofill __DATA,__bss,_s_is_forge_map_cache_valid,1,2 ; @s_is_forge_map_cache_valid
.zerofill __DATA,__bss,_s_ce_map_forge_made,8192,0 ; @s_ce_map_forge_made
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"watanoge_forge"

.zerofill __DATA,__bss,_s_snap_editor,272,2 ; @s_snap_editor
l_.str.1:                               ; @.str.1
	.asciz	"%s"

l_.str.2:                               ; @.str.2
	.space	1

.zerofill __DATA,__bss,_s_snap_layout_tag,256,0 ; @s_snap_layout_tag
l_.str.3:                               ; @.str.3
	.asciz	"LAYOUT"

	.section	__DATA,__const
	.p2align	2, 0x0                          ; @s_snap_autogen_names
_s_snap_autogen_names:
	.long	l_.str.99
	.long	l_.str.100
	.long	l_.str.101
	.long	l_.str.102

	.section	__TEXT,__cstring,cstring_literals
l_.str.4:                               ; @.str.4
	.asciz	"ADD POINT"

l_.str.5:                               ; @.str.5
	.asciz	"%d OF %d"

l_.str.6:                               ; @.str.6
	.asciz	"POINT"

l_.str.7:                               ; @.str.7
	.asciz	"NONE"

l_.str.8:                               ; @.str.8
	.asciz	"PRESET"

	.section	__DATA,__const
	.p2align	2, 0x0                          ; @s_snap_preset_names
_s_snap_preset_names:
	.long	l_.str.103
	.long	l_.str.104
	.long	l_.str.105
	.long	l_.str.106
	.long	l_.str.107
	.long	l_.str.108
	.long	l_.str.109
	.long	l_.str.110
	.long	l_.str.111
	.long	l_.str.112
	.long	l_.str.113

	.section	__TEXT,__cstring,cstring_literals
l_.str.9:                               ; @.str.9
	.asciz	"OFFSET FORWARD"

l_.str.10:                              ; @.str.10
	.asciz	"%+.2f"

l_.str.11:                              ; @.str.11
	.asciz	"OFFSET SIDE"

l_.str.12:                              ; @.str.12
	.asciz	"OFFSET UP"

l_.str.13:                              ; @.str.13
	.asciz	"FACING"

	.section	__DATA,__const
	.p2align	2, 0x0                          ; @s_snap_dir_names
_s_snap_dir_names:
	.long	l_.str.114
	.long	l_.str.115
	.long	l_.str.116
	.long	l_.str.117
	.long	l_.str.118
	.long	l_.str.119

	.section	__TEXT,__cstring,cstring_literals
l_.str.14:                              ; @.str.14
	.asciz	"DELETE POINT"

l_.str.15:                              ; @.str.15
	.asciz	"DELETE ALL POINTS"

	.section	__DATA,__data
	.p2align	2, 0x0                          ; @s_snap_layout
_s_snap_layout:
	.long	4294967295                      ; 0xffffffff

	.section	__TEXT,__cstring,cstring_literals
l_.str.16:                              ; @.str.16
	.asciz	"%d POINTS"

l_.str.17:                              ; @.str.17
	.asciz	"gamemode select forge"

l_.str.18:                              ; @.str.18
	.asciz	"gamemode select choose"

l_.str.19:                              ; @.str.19
	.asciz	"gm_forge_item"

l_.str.20:                              ; @.str.20
	.asciz	"forge_"

l_.str.21:                              ; @.str.21
	.asciz	"gamemode select standard"

l_.str.22:                              ; @.str.22
	.asciz	"gamemode select ranked"

l_.str.23:                              ; @.str.23
	.asciz	"gamemode select firefight"

l_.str.24:                              ; @.str.24
	.asciz	"new campaign decision"

l_.str.25:                              ; @.str.25
	.asciz	"campaign menu init"

l_.str.26:                              ; @.str.26
	.asciz	"port coop begin"

l_.str.27:                              ; @.str.27
	.asciz	"port play init"

l_.str.28:                              ; @.str.28
	.asciz	"firing range begin"

l_.str.29:                              ; @.str.29
	.asciz	"mp type select"

l_.str.30:                              ; @.str.30
	.asciz	"main menu intialize"

l_.str.31:                              ; @.str.31
	.asciz	"main menu initialize"

l_.str.32:                              ; @.str.32
	.asciz	"load game menu init"

l_.str.33:                              ; @.str.33
	.asciz	"forge_edit_maps_list"

l_.str.34:                              ; @.str.34
	.asciz	"list_item_1"

l_.str.35:                              ; @.str.35
	.asciz	"forge_tag_profile_list"

.zerofill __DATA,__bss,_s_forge_profile_screen_storage,4,2 ; @s_forge_profile_screen_storage
l_.str.36:                              ; @.str.36
	.asciz	"load game menu activated"

.zerofill __DATA,__bss,_s_forge_menu,12304,2 ; @s_forge_menu
l_.str.37:                              ; @.str.37
	.asciz	"custom_maps\\%s"

.zerofill __DATA,__bss,_s_forge_start_kind,4,2 ; @s_forge_start_kind
l_.str.38:                              ; @.str.38
	.asciz	"initialize sp level list solo"

l_.str.39:                              ; @.str.39
	.asciz	"solo level set map"

l_.str.40:                              ; @.str.40
	.asciz	"levels\\test\\bloodgulch\\bloodgulch"

l_.str.41:                              ; @.str.41
	.asciz	"mp level select"

	.section	__TEXT,__ustring
	.p2align	1, 0x0                          ; @.str.42
l_.str.42:
	.short	70                              ; 0x46
	.short	111                             ; 0x6f
	.short	114                             ; 0x72
	.short	103                             ; 0x67
	.short	101                             ; 0x65
	.short	0                               ; 0x0

	.section	__DATA,__data
	.p2align	2, 0x0                          ; @s_save_forge_btn_tag
_s_save_forge_btn_tag:
	.long	4294967295                      ; 0xffffffff

	.section	__TEXT,__cstring,cstring_literals
l_.str.43:                              ; @.str.43
	.asciz	"save_forge_button"

l_.str.44:                              ; @.str.44
	.asciz	"controls screen init"

l_.str.45:                              ; @.str.45
	.asciz	"controls screen defaults"

l_.str.46:                              ; @.str.46
	.asciz	"controls screen change set"

l_.str.47:                              ; @.str.47
	.asciz	"controls binding slot"

l_.str.48:                              ; @.str.48
	.asciz	"controls begin binding"

	.section	__DATA,__data
	.p2align	2, 0x0                          ; @s_forge_controls_ui
_s_forge_controls_ui:
	.long	0                               ; 0x0
	.space	48
	.space	48
	.long	0x3f800000                      ; float 1
	.long	0x3f800000                      ; float 1
	.long	0                               ; 0x0
	.long	4294967295                      ; 0xffffffff
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.space	1024
	.space	68

	.section	__TEXT,__cstring,cstring_literals
l_.str.49:                              ; @.str.49
	.asciz	"load game list update"

l_.str.50:                              ; @.str.50
	.asciz	"controls update menu"

l_.str.51:                              ; @.str.51
	.asciz	"server settings update"

l_.str.52:                              ; @.str.52
	.asciz	"op_game_type"

l_.str.53:                              ; @.str.53
	.asciz	"op_player_options"

l_.str.54:                              ; @.str.54
	.asciz	"op_item_options"

l_.str.55:                              ; @.str.55
	.asciz	"op_vehicle_options"

l_.str.56:                              ; @.str.56
	.asciz	"op_indicator_options"

l_.str.57:                              ; @.str.57
	.asciz	"op_team_options"

l_.str.58:                              ; @.str.58
	.asciz	"levels\\ui\\ui"

l_.str.59:                              ; @.str.59
	.asciz	"ui"

.zerofill __DATA,__bss,_network_chat_update.msg,512,1 ; @network_chat_update.msg
l_.str.60:                              ; @.str.60
	.asciz	"\rEnter Code on Halostats\r%s"

.zerofill __DATA,__bss,_g_last_forge_map_name,128,0 ; @g_last_forge_map_name
.zerofill __DATA,__bss,_g_last_forge_frame_ms,4,2 ; @g_last_forge_frame_ms
.zerofill __DATA,__bss,_s_forge_esc_cancel_ms,4,2 ; @s_forge_esc_cancel_ms
.zerofill __DATA,__bss,_render_interpolation_camera.s_live_obs,60,2 ; @render_interpolation_camera.s_live_obs
.zerofill __DATA,__bss,_s_forge_in_hud_draw_numbers,1,2 ; @s_forge_in_hud_draw_numbers
l_.str.61:                              ; @.str.61
	.asciz	"third_person"

l_.str.62:                              ; @.str.62
	.asciz	"forge_third_person"

l_.str.63:                              ; @.str.63
	.asciz	"3rd_person"

l_.str.64:                              ; @.str.64
	.asciz	"Forge 3rd-Person View: %s"

l_.str.65:                              ; @.str.65
	.asciz	"ON"

l_.str.66:                              ; @.str.66
	.asciz	"OFF"

l_.str.67:                              ; @.str.67
	.asciz	"3rd-Person Forge View: %s"

l_.str.68:                              ; @.str.68
	.asciz	"forge"

l_.str.69:                              ; @.str.69
	.asciz	"forge_mode"

l_.str.70:                              ; @.str.70
	.asciz	"Mode: %s"

l_.str.71:                              ; @.str.71
	.asciz	"Forge Mode"

l_.str.72:                              ; @.str.72
	.asciz	"Spartan Play"

.zerofill __DATA,__bss,_s_pause_saved_instances,4,2 ; @s_pause_saved_instances
.zerofill __DATA,__bss,_s_pause_saved_count,4,2 ; @s_pause_saved_count
.zerofill __DATA,__bss,_s_pause_alloc_instances,4,2 ; @s_pause_alloc_instances
l_.str.73:                              ; @.str.73
	.asciz	"pc\\pause\\settings_button"

l_.str.75:                              ; @.str.75
	.asciz	"pc\\pause\\save_forge_button text"

l_.str.76:                              ; @.str.76
	.asciz	"pc\\pause\\save_forge_button"

.zerofill __DATA,__bss,_s_embed_vfile.0,1,2 ; @s_embed_vfile.0
.zerofill __DATA,__bss,_s_embed_vfile.1,4,2 ; @s_embed_vfile.1
.zerofill __DATA,__bss,_s_embed_vfile.2,4,2 ; @s_embed_vfile.2
.zerofill __DATA,__bss,_s_embed_vfile.3,4,2 ; @s_embed_vfile.3
l_.str.77:                              ; @.str.77
	.asciz	"d:\\custom_maps\\*.*"

l_.str.78:                              ; @.str.78
	.asciz	"custom_maps\\*.*"

.zerofill __DATA,__bss,_s_forge_mouse_down,8,0 ; @s_forge_mouse_down
.zerofill __DATA,__bss,_s_forge_keys_down,512,0 ; @s_forge_keys_down
.zerofill __DATA,__bss,_s_forge_pad_valid,4,2 ; @s_forge_pad_valid
.zerofill __DATA,__bss,_s_forge_pad,18,1 ; @s_forge_pad
	.section	__DATA,__const
	.p2align	2, 0x0                          ; @is_custom_map_leaf_forge_made.s_forge_check_fmts
_is_custom_map_leaf_forge_made.s_forge_check_fmts:
	.long	l_.str.79
	.long	l_.str.80
	.long	l_.str.81
	.long	l_.str.82
	.long	l_.str.83
	.long	l_.str.84
	.long	l_.str.85
	.long	l_.str.86

	.section	__TEXT,__cstring,cstring_literals
l_.str.79:                              ; @.str.79
	.asciz	"OpenCE Forge/forge_maps/%s.map"

l_.str.80:                              ; @.str.80
	.asciz	"OpenCE Forge/forge_maps/%s/%s.map"

l_.str.81:                              ; @.str.81
	.asciz	"OpenCE Forge/forge_maps/%s/%s.txt"

l_.str.82:                              ; @.str.82
	.asciz	"Faber_data/forge_maps/%s/%s.txt"

l_.str.83:                              ; @.str.83
	.asciz	"Faber_data/forge_maps/%s/%s.map"

l_.str.84:                              ; @.str.84
	.asciz	"forge_maps/%s.map"

l_.str.85:                              ; @.str.85
	.asciz	"forge_maps/%s/%s.txt"

l_.str.86:                              ; @.str.86
	.asciz	"forge_maps/%s/%s.map"

l_.str.87:                              ; @.str.87
	.asciz	"_forge"

l_.str.88:                              ; @.str.88
	.asciz	"%s/%s"

l_.str.89:                              ; @.str.89
	.asciz	"rb"

l_.str.90:                              ; @.str.90
	.asciz	"custom_maps/%s.map"

l_.str.91:                              ; @.str.91
	.asciz	"Community Creator"

l_.str.92:                              ; @.str.92
	.asciz	"[OpenCE Forge Map]"

l_.str.93:                              ; @.str.93
	.asciz	"ForgeSource=UserCreated"

l_.str.94:                              ; @.str.94
	.asciz	"levels\\forge\\"

l_.str.95:                              ; @.str.95
	.asciz	"levels/forge/"

l_.str.96:                              ; @.str.96
	.asciz	"custom_maps/%s.txt"

l_.str.97:                              ; @.str.97
	.asciz	"Halo: Forge"

l_.str.98:                              ; @.str.98
	.asciz	"Forge's tags are not ready: they are built from the game's maps at the main menu."

l_.str.99:                              ; @.str.99
	.asciz	"4-SIDE BOX"

l_.str.100:                             ; @.str.100
	.asciz	"2-END BRIDGE"

l_.str.101:                             ; @.str.101
	.asciz	"6-FACE CUBE"

l_.str.102:                             ; @.str.102
	.asciz	"4 BASE EDGES"

l_.str.103:                             ; @.str.103
	.asciz	"CUSTOM OFFSET"

l_.str.104:                             ; @.str.104
	.asciz	"FRONT FACE"

l_.str.105:                             ; @.str.105
	.asciz	"BACK FACE"

l_.str.106:                             ; @.str.106
	.asciz	"LEFT FACE"

l_.str.107:                             ; @.str.107
	.asciz	"RIGHT FACE"

l_.str.108:                             ; @.str.108
	.asciz	"TOP FACE"

l_.str.109:                             ; @.str.109
	.asciz	"BOTTOM FACE"

l_.str.110:                             ; @.str.110
	.asciz	"FRONT BASE"

l_.str.111:                             ; @.str.111
	.asciz	"BACK BASE"

l_.str.112:                             ; @.str.112
	.asciz	"LEFT BASE"

l_.str.113:                             ; @.str.113
	.asciz	"RIGHT BASE"

l_.str.114:                             ; @.str.114
	.asciz	"FRONT (+X)"

l_.str.115:                             ; @.str.115
	.asciz	"RIGHT (-Y)"

l_.str.116:                             ; @.str.116
	.asciz	"BACK (-X)"

l_.str.117:                             ; @.str.117
	.asciz	"LEFT (+Y)"

l_.str.118:                             ; @.str.118
	.asciz	"UP (+Z)"

l_.str.119:                             ; @.str.119
	.asciz	"DOWN (-Z)"

.zerofill __DATA,__bss,_s_pre_forge_variant,196,2 ; @s_pre_forge_variant
	.section	__DATA,__const
	.p2align	2, 0x0                          ; @scan_forge_edit_maps.forge_scan_dirs
_scan_forge_edit_maps.forge_scan_dirs:
	.long	l_.str.120
	.long	l_.str.121
	.long	l_.str.122

	.section	__TEXT,__cstring,cstring_literals
l_.str.120:                             ; @.str.120
	.asciz	"OpenCE Forge\\forge_maps\\*"

l_.str.121:                             ; @.str.121
	.asciz	"Faber_data\\forge_maps\\*"

l_.str.122:                             ; @.str.122
	.asciz	"forge_maps\\*"

l_.str.123:                             ; @.str.123
	.asciz	"."

l_.str.124:                             ; @.str.124
	.asciz	".."

l_.str.125:                             ; @.str.125
	.asciz	".map"

l_.str.126:                             ; @.str.126
	.asciz	"User Created Forge Map"

l_.str.127:                             ; @.str.127
	.asciz	"Downloaded Forge Map"

l_.str.128:                             ; @.str.128
	.asciz	"custom_maps\\*.map"

l_.str.129:                             ; @.str.129
	.asciz	"bitmaps.map"

l_.str.130:                             ; @.str.130
	.asciz	"sounds.map"

l_.str.131:                             ; @.str.131
	.asciz	"loc.map"

l_.str.132:                             ; @.str.132
	.asciz	"custom_maps/%s"

l_.str.133:                             ; @.str.133
	.asciz	"Forge: out of memory for s_forge_profile_screen (%lu bytes)"

.zerofill __DATA,__bss,_s_forge_start_map,128,0 ; @s_forge_start_map
l_.str.134:                             ; @.str.134
	.asciz	"pc\\main_menu\\forge_select\\forge_tag_profile_screen"

l_.str.135:                             ; @.str.135
	.asciz	"pc\\main_menu\\multiplayer_type_select\\server_settings\\server_settings_screen"

l_.str.136:                             ; @.str.136
	.asciz	"group_spinner"

l_.str.137:                             ; @.str.137
	.asciz	"op_command_"

l_.str.138:                             ; @.str.138
	.asciz	"edit_maps_kind_spinner"

l_.str.139:                             ; @.str.139
	.asciz	"list_item_"

l_.str.140:                             ; @.str.140
	.asciz	"list_item_text"

l_.str.141:                             ; @.str.141
	.asciz	"(No User Created Maps Yet)"

l_.str.142:                             ; @.str.142
	.asciz	"(No Downloaded Forge Maps)"

l_.str.143:                             ; @.str.143
	.asciz	"list_item_arrows"

l_.str.144:                             ; @.str.144
	.asciz	"scroll_up_button"

l_.str.145:                             ; @.str.145
	.asciz	"scroll_down_button"

l_.str.146:                             ; @.str.146
	.asciz	"replay_level_right_name"

l_.str.147:                             ; @.str.147
	.asciz	"replay_level_right_pic"

l_.str.148:                             ; @.str.148
	.asciz	"replay_level_right_data"

l_.str.149:                             ; @.str.149
	.asciz	"mp_map_right_name"

l_.str.150:                             ; @.str.150
	.asciz	"mp_map_right_pic"

l_.str.151:                             ; @.str.151
	.asciz	"mp_map_right_data"

l_.str.152:                             ; @.str.152
	.asciz	"difficulty_indicator"

l_.str.153:                             ; @.str.153
	.asciz	"%s\r\n%s.map\r\nPress OK to Edit in Forge"

l_.str.154:                             ; @.str.154
	.asciz	"port/forge/src/forge_hooks.c"

l_.str.155:                             ; @.str.155
	.asciz	"forge_browser_button_bar"

l_.str.156:                             ; @.str.156
	.asciz	"-"

l_.str.157:                             ; @.str.157
	.asciz	"command_label"

l_.str.158:                             ; @.str.158
	.asciz	"command_binding"

	.section	__DATA,__const
	.p2align	2, 0x0                          ; @s_forge_bind_labels
_s_forge_bind_labels:
	.long	l_.str.166
	.long	l_.str.167
	.long	l_.str.168
	.long	l_.str.169
	.long	l_.str.170
	.long	l_.str.171
	.long	l_.str.172
	.long	l_.str.173
	.long	l_.str.174
	.long	l_.str.175
	.long	l_.str.176
	.long	l_.str.177

	.section	__TEXT,__cstring,cstring_literals
l_.str.159:                             ; @.str.159
	.asciz	"PRESS KEY/PAD"

l_.str.160:                             ; @.str.160
	.asciz	"> %s <"

l_.str.161:                             ; @.str.161
	.asciz	"PAD LOOK SENS"

l_.str.162:                             ; @.str.162
	.asciz	"PAD FLY SPEED"

l_.str.163:                             ; @.str.163
	.asciz	"< %d%% >"

l_.str.164:                             ; @.str.164
	.asciz	"%d%%"

l_.str.165:                             ; @.str.165
	.asciz	"LEFT / RIGHT"

l_.str.166:                             ; @.str.166
	.asciz	"FORGE / SPARTAN"

l_.str.167:                             ; @.str.167
	.asciz	"OBJECT PALETTE"

l_.str.168:                             ; @.str.168
	.asciz	"3RD-PERSON VIEW"

l_.str.169:                             ; @.str.169
	.asciz	"QUICK SAVE MAP"

l_.str.170:                             ; @.str.170
	.asciz	"ROTATE ITEM"

l_.str.171:                             ; @.str.171
	.asciz	"SNAP TO FLOOR"

l_.str.172:                             ; @.str.172
	.asciz	"SNAP TO SURFACE"

l_.str.173:                             ; @.str.173
	.asciz	"ROTATION SNAP"

l_.str.174:                             ; @.str.174
	.asciz	"OBJECT OPTIONS"

l_.str.175:                             ; @.str.175
	.asciz	"DELETE OBJECT"

l_.str.176:                             ; @.str.176
	.asciz	"COPY OBJECT"

l_.str.177:                             ; @.str.177
	.asciz	"OBJECT SETTINGS"

l_.str.178:                             ; @.str.178
	.asciz	"d:\\custom_maps\\"

l_.str.179:                             ; @.str.179
	.asciz	"d:/custom_maps/"

l_.str.180:                             ; @.str.180
	.asciz	"custom_maps\\"

l_.str.181:                             ; @.str.181
	.asciz	"custom_maps/"

l_.str.182:                             ; @.str.182
	.asciz	"Faber_data\\forge_maps\\%s"

l_.str.183:                             ; @.str.183
	.asciz	"%sFaber_data\\forge_maps\\%s"

l_.str.184:                             ; @.str.184
	.asciz	"d:\\"

l_.str.185:                             ; @.str.185
	.asciz	".bmp"

l_.str.186:                             ; @.str.186
	.asciz	"OpenCE Forge\\forge_maps"

l_.str.187:                             ; @.str.187
	.asciz	"Faber_data\\forge_maps"

l_.str.188:                             ; @.str.188
	.asciz	"forge_maps"

l_.str.189:                             ; @.str.189
	.asciz	"%s\\%s\\custom.bmp"

l_.str.190:                             ; @.str.190
	.asciz	"%s%s\\%s\\custom.bmp"

l_.str.191:                             ; @.str.191
	.asciz	"%s\\%s\\%s"

l_.str.192:                             ; @.str.192
	.asciz	"%s%s\\%s\\%s"

l_.str.193:                             ; @.str.193
	.asciz	"%s\\%s"

l_.str.194:                             ; @.str.194
	.asciz	"%s%s\\%s"

l_.str.195:                             ; @.str.195
	.asciz	".txt"

.zerofill __DATA,__bss,_s_forge_ce_find.0,1,2 ; @s_forge_ce_find.0
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @s_forge_ce_find.1
_s_forge_ce_find.1:
	.long	4294967295

	.p2align	2, 0x0                          ; @s_forge_ce_find.2
_s_forge_ce_find.2:
	.long	4294967295

.zerofill __DATA,__bss,_s_forge_ce_find.3,4,2 ; @s_forge_ce_find.3
	.section	__DATA,__const
	.p2align	2, 0x0                          ; @forge_ce_advance_forge_dirs.find_patterns
_forge_ce_advance_forge_dirs.find_patterns:
	.long	l_.str.197
	.long	l_.str.198
	.long	l_.str.199

	.section	__TEXT,__cstring,cstring_literals
l_.str.197:                             ; @.str.197
	.asciz	"OpenCE Forge\\forge_maps\\*.*"

l_.str.198:                             ; @.str.198
	.asciz	"Faber_data\\forge_maps\\*.*"

l_.str.199:                             ; @.str.199
	.asciz	"d:\\forge_maps\\*.*"

	.section	__DATA,__const
	.p2align	2, 0x0                          ; @forge_ce_advance_forge_dirs.find_roots
_forge_ce_advance_forge_dirs.find_roots:
	.long	l_.str.186
	.long	l_.str.187
	.long	l_.str.188

	.section	__TEXT,__cstring,cstring_literals
l_.str.200:                             ; @.str.200
	.asciz	"custom_maps\\%s.map"

l_.str.201:                             ; @.str.201
	.asciz	"%s\\%s\\%s.map"

l_.str.202:                             ; @.str.202
	.asciz	"%s\\%s.map"

l_.str.203:                             ; @.str.203
	.asciz	"%s.map"

.subsections_via_symbols
