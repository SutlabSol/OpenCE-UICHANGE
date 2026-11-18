	.watchos_version_min 2, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_effects_initialize             ; -- Begin function effects_initialize
	.p2align	4
_effects_initialize:                    ; @effects_initialize
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #2048                       ; =0x800
	mov	w2, #252                        ; =0xfc
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_game_state_data_new
Lloh2:
	adrp	x19, _effect_data@GOTPAGE
	mov	w1, #4096                       ; =0x1000
	mov	w2, #60                         ; =0x3c
Lloh3:
	ldr	w19, [x19, _effect_data@GOTPAGEOFF]
	str	w0, [x19]
Lloh4:
	adrp	x0, l_.str.1@PAGE
Lloh5:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_game_state_data_new
Lloh6:
	adrp	x8, _effect_location_data@GOTPAGE
Lloh7:
	ldr	w8, [x8, _effect_location_data@GOTPAGEOFF]
	ldr	w9, [x19]
Lloh8:
	str	w0, [x8]
	cbz	w9, LBB0_3
; %bb.1:
	cbz	w0, LBB0_3
; %bb.2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
Lloh9:
	adrp	x1, l_.str.2@PAGE
Lloh10:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w0, wzr
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_error
	.loh AdrpLdrGotStr	Lloh6, Lloh7, Lloh8
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh9, Lloh10
                                        ; -- End function
	.globl	_effects_initialize_for_new_map ; -- Begin function effects_initialize_for_new_map
	.p2align	4
_effects_initialize_for_new_map:        ; @effects_initialize_for_new_map
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
Lloh11:
	adrp	x8, _effect_data@GOTPAGE
	mov	x29, sp
Lloh12:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
Lloh13:
	ldr	w0, [x8]
	bl	_data_make_valid
Lloh14:
	adrp	x8, _effect_location_data@GOTPAGE
Lloh15:
	ldr	w8, [x8, _effect_location_data@GOTPAGEOFF]
Lloh16:
	ldr	w0, [x8]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	_data_make_valid
	.loh AdrpLdrGotLdr	Lloh14, Lloh15, Lloh16
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
                                        ; -- End function
	.globl	_effects_port_relocate          ; -- Begin function effects_port_relocate
	.p2align	4
_effects_port_relocate:                 ; @effects_port_relocate
; %bb.0:
	sub	sp, sp, #64
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
Lloh17:
	adrp	x23, _effect_data@GOTPAGE
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
Lloh18:
	ldr	w23, [x23, _effect_data@GOTPAGEOFF]
	ldr	w1, [x23]
	ldrsh	w8, [x1, #32]
	cmp	w8, #1
	b.lt	LBB2_8
; %bb.1:
	mov	x20, x0
	mov	w19, wzr
	b	LBB2_3
	.p2align	4, , 8
LBB2_2:                                 ;   in Loop: Header=BB2_3 Depth=1
	ldr	w1, [x23]
	add	w19, w19, #1
	ldrsh	w8, [x1, #32]
	cmp	w19, w8
	b.ge	LBB2_8
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x20
	mov	w2, w19
	bl	_game_state_relocation_element
	cbz	w0, LBB2_2
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=1
	ldr	w8, [x0, #48]
	cbnz	w8, LBB2_7
; %bb.5:                                ;   in Loop: Header=BB2_3 Depth=1
	ldr	w8, [x0, #52]
	cbnz	w8, LBB2_7
; %bb.6:                                ;   in Loop: Header=BB2_3 Depth=1
	ldr	w8, [x0, #56]
	cbz	w8, LBB2_2
LBB2_7:
Lloh19:
	adrp	x1, l_.str.3@PAGE
Lloh20:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w0, #2                          ; =0x2
	str	w19, [sp]
	bl	_error
	mov	w0, wzr
	b	LBB2_9
LBB2_8:
	mov	w0, #1                          ; =0x1
LBB2_9:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpAdd	Lloh19, Lloh20
                                        ; -- End function
	.globl	_effects_dispose_from_old_map   ; -- Begin function effects_dispose_from_old_map
	.p2align	4
_effects_dispose_from_old_map:          ; @effects_dispose_from_old_map
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
Lloh21:
	adrp	x8, _effect_data@GOTPAGE
	mov	x29, sp
Lloh22:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
Lloh23:
	ldr	w0, [x8]
	bl	_data_make_invalid
Lloh24:
	adrp	x8, _effect_location_data@GOTPAGE
Lloh25:
	ldr	w8, [x8, _effect_location_data@GOTPAGEOFF]
Lloh26:
	ldr	w0, [x8]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	_data_make_invalid
	.loh AdrpLdrGotLdr	Lloh24, Lloh25, Lloh26
	.loh AdrpLdrGotLdr	Lloh21, Lloh22, Lloh23
                                        ; -- End function
	.globl	_effects_dispose                ; -- Begin function effects_dispose
	.p2align	4
_effects_dispose:                       ; @effects_dispose
; %bb.0:
Lloh27:
	adrp	x8, _effect_data@GOTPAGE
Lloh28:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
	ldr	w9, [x8]
	cbz	w9, LBB4_2
; %bb.1:
	str	wzr, [x8]
LBB4_2:
Lloh29:
	adrp	x8, _effect_location_data@GOTPAGE
Lloh30:
	ldr	w8, [x8, _effect_location_data@GOTPAGEOFF]
	ldr	w9, [x8]
	cbz	w9, LBB4_4
; %bb.3:
	str	wzr, [x8]
LBB4_4:
	ret
	.loh AdrpLdrGot	Lloh27, Lloh28
	.loh AdrpLdrGot	Lloh29, Lloh30
                                        ; -- End function
	.globl	_effect_delete                  ; -- Begin function effect_delete
	.p2align	4
_effect_delete:                         ; @effect_delete
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
Lloh31:
	adrp	x24, _effect_data@GOTPAGE
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	w19, w0
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	mov	w1, w19
Lloh32:
	ldr	w24, [x24, _effect_data@GOTPAGEOFF]
	add	x29, sp, #64
	ldr	w8, [x24]
	mov	x0, x8
	bl	_datum_try_and_get
	mov	x20, x0
	cbz	w20, LBB5_7
; %bb.1:
	ldr	w1, [x20, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldr	w9, [x0, #40]
	mov	w8, #32                         ; =0x20
	cmp	w9, #32
	sxth	w9, w9
	csel	w25, w8, w9, gt
	cmp	w25, #1
	b.lt	LBB5_6
; %bb.2:
Lloh33:
	adrp	x27, _effect_location_data@GOTPAGE
	mov	w8, wzr
	mov	w26, wzr
	add	x28, x20, #92
Lloh34:
	ldr	w27, [x27, _effect_location_data@GOTPAGEOFF]
	b	LBB5_4
	.p2align	4, , 8
LBB5_3:                                 ;   in Loop: Header=BB5_4 Depth=1
	add	w26, w26, #1
	sxth	w8, w26
	cmp	w25, w8
	b.le	LBB5_6
LBB5_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB5_5 Depth 2
	ldr	w20, [x28, w8, sxtw #2]
	cmn	w20, #1
	b.eq	LBB5_3
	.p2align	4, , 8
LBB5_5:                                 ;   Parent Loop BB5_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x27]
	mov	w1, w20
	bl	_datum_get
	ldr	w8, [x27]
	mov	x23, x0
	mov	w1, w20
	mov	x0, x8
	bl	_datum_delete
	ldr	w20, [x23, #4]
	cmn	w20, #1
	b.ne	LBB5_5
	b	LBB5_3
LBB5_6:
	ldr	w0, [x24]
	mov	w1, w19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	b	_datum_delete
LBB5_7:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh31, Lloh32
	.loh AdrpLdrGot	Lloh33, Lloh34
                                        ; -- End function
	.globl	_effects_discard_gameplay       ; -- Begin function effects_discard_gameplay
	.p2align	4
_effects_discard_gameplay:              ; @effects_discard_gameplay
; %bb.0:
	sub	sp, sp, #96
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
Lloh35:
	adrp	x20, _effect_data@GOTPAGE
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
Lloh36:
	ldr	w20, [x20, _effect_data@GOTPAGEOFF]
	ldr	w0, [x20]
	cbz	w0, LBB6_26
; %bb.1:
	ldrb	w8, [x0, #36]
	cbz	w8, LBB6_26
; %bb.2:
	mov	w1, #-1                         ; =0xffffffff
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB6_26
; %bb.3:
	mov	w28, #29729                     ; =0x7421
	mov	w26, #27237                     ; =0x6a65
	mov	w19, w0
	movk	w28, #27248, lsl #16
	movk	w26, #28514, lsl #16
	b	LBB6_6
	.p2align	4, , 8
LBB6_4:                                 ;   in Loop: Header=BB6_6 Depth=1
	mov	w0, w19
	bl	_effect_delete
LBB6_5:                                 ;   in Loop: Header=BB6_6 Depth=1
Lloh37:
	adrp	x20, _effect_data@GOTPAGE
	mov	w1, w19
Lloh38:
	ldr	w20, [x20, _effect_data@GOTPAGEOFF]
	ldr	w0, [x20]
	bl	_data_next_index
	mov	w19, w0
	cmn	w0, #1
	b.eq	LBB6_26
LBB6_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_9 Depth 2
                                        ;       Child Loop BB6_18 Depth 3
	ldr	w0, [x20]
	mov	w1, w19
	bl	_datum_get
	ldr	w1, [x0, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	mov	x23, x0
	str	x0, [sp, #8]                    ; 8-byte Spill
	ldr	w8, [x23, #52]!
	cmp	w8, #1
	b.lt	LBB6_5
; %bb.7:                                ;   in Loop: Header=BB6_6 Depth=1
	mov	w1, wzr
	mov	w27, wzr
	b	LBB6_9
	.p2align	4, , 8
LBB6_8:                                 ;   in Loop: Header=BB6_9 Depth=2
	ldr	w8, [x23]
	add	w27, w27, #1
	sxth	w1, w27
	cmp	w8, w1
	b.le	LBB6_5
LBB6_9:                                 ;   Parent Loop BB6_6 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB6_18 Depth 3
	tbnz	w27, #15, LBB6_14
; %bb.10:                               ;   in Loop: Header=BB6_9 Depth=2
	ldr	x8, [sp, #8]                    ; 8-byte Reload
	ldr	w8, [x8, #56]
	cbz	w8, LBB6_14
; %bb.11:                               ;   in Loop: Header=BB6_9 Depth=2
	ldr	x9, [sp, #8]                    ; 8-byte Reload
	ldr	w9, [x9, #60]
	cbz	w9, LBB6_13
; %bb.12:                               ;   in Loop: Header=BB6_9 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #68
	b.ne	LBB6_14
LBB6_13:                                ;   in Loop: Header=BB6_9 Depth=2
	add	w9, w1, w1, lsl #4
	lsl	w9, w9, #2
	add	x24, x8, w9, sxtw
	b	LBB6_15
	.p2align	4, , 8
LBB6_14:                                ;   in Loop: Header=BB6_9 Depth=2
	mov	x0, x23
	mov	w2, #68                         ; =0x44
	bl	_tag_block_get_element_with_size
	mov	x24, x0
LBB6_15:                                ;   in Loop: Header=BB6_9 Depth=2
	mov	x25, x24
	ldr	w8, [x25, #44]!
	cmp	w8, #1
	b.lt	LBB6_8
; %bb.16:                               ;   in Loop: Header=BB6_9 Depth=2
	mov	w1, wzr
	mov	w20, wzr
	b	LBB6_18
	.p2align	4, , 8
LBB6_17:                                ;   in Loop: Header=BB6_18 Depth=3
	ldr	w8, [x25]
	add	w20, w20, #1
	sxth	w1, w20
	cmp	w8, w1
	b.le	LBB6_8
LBB6_18:                                ;   Parent Loop BB6_6 Depth=1
                                        ;     Parent Loop BB6_9 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	tbnz	w20, #15, LBB6_23
; %bb.19:                               ;   in Loop: Header=BB6_18 Depth=3
	ldr	w8, [x24, #48]
	cbz	w8, LBB6_23
; %bb.20:                               ;   in Loop: Header=BB6_18 Depth=3
	ldr	w9, [x24, #52]
	cbz	w9, LBB6_22
; %bb.21:                               ;   in Loop: Header=BB6_18 Depth=3
	ldr	w9, [x9, #12]
	cmp	w9, #104
	b.ne	LBB6_23
LBB6_22:                                ;   in Loop: Header=BB6_18 Depth=3
	mov	w9, #104                        ; =0x68
	mul	w9, w1, w9
	add	x0, x8, w9, sxtw
	b	LBB6_24
	.p2align	4, , 8
LBB6_23:                                ;   in Loop: Header=BB6_18 Depth=3
	mov	x0, x25
	mov	w2, #104                        ; =0x68
	bl	_tag_block_get_element_with_size
LBB6_24:                                ;   in Loop: Header=BB6_18 Depth=3
	ldr	w8, [x0, #36]
	cmn	w8, #1
	b.eq	LBB6_17
; %bb.25:                               ;   in Loop: Header=BB6_18 Depth=3
	ldr	w8, [x0, #20]
	cmp	w8, w28
	ccmp	w8, w26, #4, ne
	b.ne	LBB6_17
	b	LBB6_4
LBB6_26:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpLdrGot	Lloh35, Lloh36
	.loh AdrpLdrGot	Lloh37, Lloh38
                                        ; -- End function
	.globl	_effect_new_attached_from_markers ; -- Begin function effect_new_attached_from_markers
	.p2align	4
_effect_new_attached_from_markers:      ; @effect_new_attached_from_markers
; %bb.0:
	sub	sp, sp, #160
	stp	d9, d8, [sp, #64]               ; 16-byte Folded Spill
	fmov	s8, s1
	fmov	s9, s0
	stp	x28, x27, [sp, #80]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	mov	x25, x5
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	mov	x23, x6
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	mov	x19, x7
	mov	w26, w4
	mov	w27, w3
	mov	w20, w2
	mov	w24, w0
	cmn	w2, #1
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	b.eq	LBB7_22
LBB7_1:
	cmp	w26, #0
	b.le	LBB7_23
LBB7_2:
	cbz	w23, LBB7_24
LBB7_3:
	cbz	w19, LBB7_25
LBB7_4:
	fcmp	s9, #0.0
	b.lt	LBB7_20
; %bb.5:
	fmov	s0, #1.00000000
	fcmp	s9, s0
	b.hi	LBB7_20
LBB7_6:
	fcmp	s8, #0.0
	b.lt	LBB7_21
; %bb.7:
	fmov	s0, #1.00000000
	fcmp	s8, s0
	b.hi	LBB7_21
LBB7_8:
	mov	w0, w24
	mov	w2, #1                          ; =0x1
	bl	_effect_allocate
	mov	w28, w0
	cmn	w0, #1
	b.eq	LBB7_19
; %bb.9:
Lloh39:
	adrp	x8, _effect_data@GOTPAGE
	stp	w24, w27, [sp, #24]             ; 8-byte Folded Spill
	str	x25, [sp, #32]                  ; 8-byte Spill
	mov	w1, w28
	ldp	w27, w25, [x29, #16]
Lloh40:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
Lloh41:
	ldr	w0, [x8]
	bl	_datum_get
Lloh42:
	adrp	x8, _global_real_rgb_white@GOTPAGE
	cmp	w27, #0
	mov	x24, x0
Lloh43:
	ldr	w8, [x8, _global_real_rgb_white@GOTPAGEOFF]
	stp	s9, s8, [x0, #68]
Lloh44:
	ldr	w8, [x8]
	csel	x8, x8, x27, eq
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
	str	x9, [x0, #24]!
	str	w8, [x24, #32]
	bl	_valid_real_rgb_color
	cbz	w0, LBB7_26
LBB7_10:
	ldr	x27, [sp, #32]                  ; 8-byte Reload
	cbnz	w25, LBB7_27
; %bb.11:
	stp	wzr, wzr, [x24, #52]
LBB7_12:
	adrp	x8, _effects_corpse_nonviolent@PAGE
	str	w20, [x24, #60]
	ldrb	w8, [x8, _effects_corpse_nonviolent@PAGEOFF]
	cbz	w8, LBB7_17
; %bb.13:
	mov	w0, w20
	mov	w1, #1                          ; =0x1
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB7_17
; %bb.14:
	ldrh	w8, [x0, #182]
	tbz	w8, #2, LBB7_17
; %bb.15:
	ldr	w8, [x0, #972]
	cmn	w8, #1
	b.eq	LBB7_17
; %bb.16:
	add	w25, w8, #30
	bl	_game_time_get
	cmp	w25, w0
	b.lt	LBB7_32
LBB7_17:
	adrp	x8, _debug_effects_nonviolent@PAGE
	ldrb	w8, [x8, _debug_effects_nonviolent@PAGEOFF]
	cbnz	w8, LBB7_28
LBB7_18:
	ldr	w8, [sp, #28]                   ; 4-byte Reload
	mov	w0, w20
	strh	w26, [sp, #48]
	stp	w27, w23, [sp, #52]
	str	w19, [sp, #60]
	cmn	w8, #1
	csel	w1, wzr, w8, eq
	strh	w1, [sp, #40]
	bl	_object_get_node_matrix
	add	x8, sp, #40
	adrp	x9, _global_effect_marker_list@PAGE
	str	w0, [sp, #44]
	add	x0, x24, #92
	mov	w1, #-1                         ; =0xffffffff
	mov	w2, #128                        ; =0x80
	str	w8, [x9, _global_effect_marker_list@PAGEOFF]
	bl	_csmemset
Lloh45:
	adrp	x1, _effect_marker_list_get_markers_by_name@PAGE
Lloh46:
	add	x1, x1, _effect_marker_list_get_markers_by_name@PAGEOFF
	mov	x0, x24
	bl	_effect_build_locations
	movi	d0, #0000000000000000
	mov	w0, w28
	bl	_effect_update
LBB7_19:
	mov	w0, w28
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB7_20:
Lloh47:
	adrp	x8, l_.str.5@PAGE
Lloh48:
	add	x8, x8, l_.str.5@PAGEOFF
Lloh49:
	adrp	x0, l_.str.9@PAGE
Lloh50:
	add	x0, x0, l_.str.9@PAGEOFF
	mov	w28, w24
	mov	w24, w1
	mov	x1, x8
	mov	w2, #381                        ; =0x17d
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w1, w24
	mov	w24, w28
	b	LBB7_6
LBB7_21:
Lloh51:
	adrp	x8, l_.str.5@PAGE
Lloh52:
	add	x8, x8, l_.str.5@PAGEOFF
Lloh53:
	adrp	x0, l_.str.9@PAGE
Lloh54:
	add	x0, x0, l_.str.9@PAGEOFF
	mov	w28, w24
	mov	w24, w1
	mov	x1, x8
	mov	w2, #382                        ; =0x17e
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w1, w24
	mov	w24, w28
	b	LBB7_8
LBB7_22:
Lloh55:
	adrp	x8, l_.str.5@PAGE
Lloh56:
	add	x8, x8, l_.str.5@PAGEOFF
Lloh57:
	adrp	x0, l_.str.4@PAGE
Lloh58:
	add	x0, x0, l_.str.4@PAGEOFF
	mov	w28, w24
	mov	w24, w1
	mov	x1, x8
	mov	w2, #375                        ; =0x177
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w1, w24
	mov	w24, w28
	b	LBB7_1
LBB7_23:
Lloh59:
	adrp	x8, l_.str.5@PAGE
Lloh60:
	add	x8, x8, l_.str.5@PAGEOFF
Lloh61:
	adrp	x0, l_.str.6@PAGE
Lloh62:
	add	x0, x0, l_.str.6@PAGEOFF
	mov	w28, w24
	mov	w24, w1
	mov	x1, x8
	mov	w2, #377                        ; =0x179
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w1, w24
	mov	w24, w28
	b	LBB7_2
LBB7_24:
Lloh63:
	adrp	x8, l_.str.5@PAGE
Lloh64:
	add	x8, x8, l_.str.5@PAGEOFF
Lloh65:
	adrp	x0, l_.str.7@PAGE
Lloh66:
	add	x0, x0, l_.str.7@PAGEOFF
	mov	w28, w24
	mov	w24, w1
	mov	x1, x8
	mov	w2, #379                        ; =0x17b
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w1, w24
	mov	w24, w28
	b	LBB7_3
LBB7_25:
Lloh67:
	adrp	x8, l_.str.5@PAGE
Lloh68:
	add	x8, x8, l_.str.5@PAGEOFF
Lloh69:
	adrp	x0, l_.str.8@PAGE
Lloh70:
	add	x0, x0, l_.str.8@PAGEOFF
	mov	w28, w24
	mov	w24, w1
	mov	x1, x8
	mov	w2, #380                        ; =0x17c
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w1, w24
	mov	w24, w28
	b	LBB7_4
LBB7_26:
Lloh71:
	adrp	x0, l_.str.9@PAGE
Lloh72:
	add	x0, x0, l_.str.9@PAGEOFF
Lloh73:
	adrp	x1, l_.str.5@PAGE
Lloh74:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #980                        ; =0x3d4
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	b	LBB7_10
LBB7_27:
	ldr	w8, [x25, #8]
	ldr	x9, [x25]
	str	w8, [x24, #56]
	str	x9, [x24, #48]
	b	LBB7_12
LBB7_28:
	mov	w0, w20
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	ldrh	w8, [x24, #2]
	mov	x25, x0
Lloh75:
	adrp	x9, l_.str.11@PAGE
Lloh76:
	add	x9, x9, l_.str.11@PAGEOFF
Lloh77:
	adrp	x10, l_.str.12@PAGE
Lloh78:
	add	x10, x10, l_.str.12@PAGEOFF
	ldr	w0, [sp, #24]                   ; 4-byte Reload
	tst	w8, #0x40
	csel	x8, x10, x9, eq
	str	x8, [sp, #16]                   ; 8-byte Spill
	bl	_tag_get_name
	bl	_tag_name_strip_path
	mov	x27, x0
	cbz	w25, LBB7_31
; %bb.29:
	ldr	w0, [x25]
	bl	_tag_get_name
	bl	_tag_name_strip_path
	mov	x8, x0
LBB7_30:
	stp	w27, w8, [sp, #4]
Lloh79:
	adrp	x1, l_.str.10@PAGE
Lloh80:
	add	x1, x1, l_.str.10@PAGEOFF
	ldr	x8, [sp, #16]                   ; 8-byte Reload
	mov	w0, #2                          ; =0x2
	str	w8, [sp]
	bl	_error
	ldr	x27, [sp, #32]                  ; 8-byte Reload
	b	LBB7_18
LBB7_31:
Lloh81:
	adrp	x8, l_.str.13@PAGE
Lloh82:
	add	x8, x8, l_.str.13@PAGEOFF
	b	LBB7_30
LBB7_32:
	ldrh	w8, [x24, #2]
	orr	w8, w8, #0x40
	strh	w8, [x24, #2]
	b	LBB7_17
	.loh AdrpLdrGotLdr	Lloh42, Lloh43, Lloh44
	.loh AdrpLdrGotLdr	Lloh39, Lloh40, Lloh41
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh81, Lloh82
                                        ; -- End function
	.p2align	4                               ; -- Begin function effect_allocate
_effect_allocate:                       ; @effect_allocate
; %bb.0:
	stp	x26, x25, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	mov	w24, w2
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	mov	w19, w1
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	mov	w20, w0
	bl	_game_in_editor
	mov	w23, #-1                        ; =0xffffffff
	cmn	w20, #1
	b.eq	LBB8_7
; %bb.1:
	cbnz	w0, LBB8_7
; %bb.2:
	mov	w0, #26213                      ; =0x6665
	mov	w1, w20
	movk	w0, #25958, lsl #16
	bl	_tag_get
	mov	x25, x0
	cbz	w24, LBB8_8
LBB8_3:
	ldr	w8, [x25, #52]
	cmp	w8, #1
	b.lt	LBB8_7
; %bb.4:
Lloh83:
	adrp	x24, _effect_data@GOTPAGE
Lloh84:
	ldr	w24, [x24, _effect_data@GOTPAGEOFF]
	ldr	w0, [x24]
	bl	_datum_new
	cmn	w0, #1
	b.eq	LBB8_10
; %bb.5:
	mov	w23, w0
LBB8_6:
	ldr	w0, [x24]
	mov	w1, w23
	bl	_datum_get
	mov	w8, #65535                      ; =0xffff
	str	w20, [x0, #4]
	str	w19, [x0, #64]
	mov	w1, wzr
	strh	wzr, [x0, #2]
	strh	w8, [x0, #76]
	mov	w0, w23
	bl	_effect_set_event
LBB8_7:
	mov	w0, w23
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
	ret
LBB8_8:
	ldrb	w8, [x25]
	tbz	w8, #1, LBB8_3
; %bb.9:
Lloh85:
	adrp	x1, l_.str.21@PAGE
Lloh86:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w0, #2                          ; =0x2
	bl	_error
	b	LBB8_7
LBB8_10:
	ldrb	w8, [x25]
	tbz	w8, #1, LBB8_7
; %bb.11:
	ldr	w0, [x24]
	mov	w1, #-1                         ; =0xffffffff
	mov	x25, x24
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB8_7
; %bb.12:
	mov	w24, w0
LBB8_13:                                ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x25]
	mov	w1, w24
	bl	_datum_get
	ldr	w1, [x0, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldrb	w8, [x0]
	mov	w1, w24
	ldr	w0, [x25]
	tbz	w8, #1, LBB8_16
; %bb.14:                               ;   in Loop: Header=BB8_13 Depth=1
	bl	_data_next_index
	mov	w24, w0
	cmn	w0, #1
	b.ne	LBB8_13
; %bb.15:
	mov	w23, #-1                        ; =0xffffffff
	b	LBB8_7
LBB8_16:
	bl	_datum_delete
	ldr	w0, [x25]
	bl	_datum_new
	mov	w23, w0
	cmn	w0, #1
	b.eq	LBB8_18
; %bb.17:
	mov	x24, x25
	b	LBB8_6
LBB8_18:
Lloh87:
	adrp	x0, l_.str.22@PAGE
Lloh88:
	add	x0, x0, l_.str.22@PAGEOFF
Lloh89:
	adrp	x1, l_.str.5@PAGE
Lloh90:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #941                        ; =0x3ad
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	b	LBB8_7
	.loh AdrpLdrGot	Lloh83, Lloh84
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
                                        ; -- End function
	.p2align	4                               ; -- Begin function effect_build_locations
_effect_build_locations:                ; @effect_build_locations
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #1792
	ldr	w8, [x0, #4]
	mov	x24, x0
	mov	w0, #26213                      ; =0x6665
	mov	x20, x1
	movk	w0, #25958, lsl #16
	mov	w1, w8
	bl	_tag_get
	str	x0, [sp, #48]                   ; 8-byte Spill
	ldr	w8, [x0, #40]!
	cmp	w8, #33
	b.lt	LBB9_2
; %bb.1:
	mov	x23, x0
	ldr	w0, [x24, #4]
	bl	_tag_get_name
	ldr	w9, [x23]
	mov	x8, x0
	mov	w19, #32                        ; =0x20
Lloh91:
	adrp	x1, l_.str.25@PAGE
Lloh92:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w0, #2                          ; =0x2
	str	w8, [sp]
	stp	w9, w19, [sp, #4]
	bl	_error
	mov	x0, x23
	str	w19, [x23]
	b	LBB9_3
LBB9_2:
	cmp	w8, #1
	b.lt	LBB9_19
LBB9_3:
Lloh93:
	adrp	x28, _effect_location_data@GOTPAGE
	add	x8, sp, #56
	mov	w26, wzr
	mov	w27, wzr
	add	x23, x24, #92
	add	w8, w8, #4
Lloh94:
	ldr	w28, [x28, _effect_location_data@GOTPAGEOFF]
	str	x24, [sp, #40]                  ; 8-byte Spill
	stp	x8, x0, [sp, #24]               ; 16-byte Folded Spill
	b	LBB9_5
	.p2align	4, , 8
LBB9_4:                                 ;   in Loop: Header=BB9_5 Depth=1
	ldp	x0, x24, [sp, #32]              ; 16-byte Folded Reload
	add	w27, w27, #1
	sxth	w26, w27
	ldr	w8, [x0]
	cmp	w8, w26
	b.le	LBB9_19
LBB9_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB9_15 Depth 2
	tbnz	w27, #15, LBB9_10
; %bb.6:                                ;   in Loop: Header=BB9_5 Depth=1
	ldr	x8, [sp, #48]                   ; 8-byte Reload
	ldr	w8, [x8, #44]
	cbz	w8, LBB9_10
; %bb.7:                                ;   in Loop: Header=BB9_5 Depth=1
	ldr	x9, [sp, #48]                   ; 8-byte Reload
	ldr	w9, [x9, #48]
	cbz	w9, LBB9_9
; %bb.8:                                ;   in Loop: Header=BB9_5 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #32
	b.ne	LBB9_10
LBB9_9:                                 ;   in Loop: Header=BB9_5 Depth=1
	lsl	w9, w26, #5
	add	x1, x8, x9
	b	LBB9_11
	.p2align	4, , 8
LBB9_10:                                ;   in Loop: Header=BB9_5 Depth=1
	mov	w1, w26
	mov	w2, #32                         ; =0x20
	bl	_tag_block_get_element_with_size
	mov	x1, x0
LBB9_11:                                ;   in Loop: Header=BB9_5 Depth=1
	ldr	w0, [x24, #60]
	add	x2, sp, #56
	mov	w3, #16                         ; =0x10
	blr	x20
	cmp	w0, #1
	b.lt	LBB9_4
; %bb.12:                               ;   in Loop: Header=BB9_5 Depth=1
	ldr	x24, [sp, #24]                  ; 8-byte Reload
	mov	w25, w0
	lsl	w19, w26, #2
	b	LBB9_15
	.p2align	4, , 8
LBB9_13:                                ;   in Loop: Header=BB9_15 Depth=2
	and	w8, w9, #0x7fff
LBB9_14:                                ;   in Loop: Header=BB9_15 Depth=2
	strh	w8, [x0, #2]
	subs	w25, w25, #1
	ldr	w8, [x24, #48]
	ldp	q1, q0, [x24, #16]
	ldr	q2, [x24]
	add	w24, w24, #108
	str	w8, [x0, #56]
	stur	q0, [x0, #40]
	stur	q1, [x0, #24]
	stur	q2, [x0, #8]
	ldr	w8, [x23, w19, sxtw]
	str	w8, [x0, #4]
	str	w26, [x23, w19, sxtw]
	b.eq	LBB9_4
LBB9_15:                                ;   Parent Loop BB9_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x28]
	bl	_datum_new
	cmn	w0, #1
	b.eq	LBB9_4
; %bb.16:                               ;   in Loop: Header=BB9_15 Depth=2
	mov	w26, w0
	ldr	w0, [x28]
	mov	w1, w26
	bl	_datum_get
	sub	w8, w24, #4
	ldrh	w9, [x8]
	mov	w8, #65535                      ; =0xffff
	cmp	w9, w8
	b.eq	LBB9_14
; %bb.17:                               ;   in Loop: Header=BB9_15 Depth=2
Lloh95:
	adrp	x8, _first_person_weapon_get_marker_by_name@GOTPAGE
Lloh96:
	ldr	w8, [x8, _first_person_weapon_get_marker_by_name@GOTPAGEOFF]
	cmp	w20, w8
	b.ne	LBB9_13
; %bb.18:                               ;   in Loop: Header=BB9_15 Depth=2
	orr	w8, w9, #0x8000
	b	LBB9_14
LBB9_19:
	add	sp, sp, #1792
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpLdrGot	Lloh93, Lloh94
	.loh AdrpLdrGot	Lloh95, Lloh96
                                        ; -- End function
	.p2align	4                               ; -- Begin function effect_marker_list_get_markers_by_name
_effect_marker_list_get_markers_by_name: ; @effect_marker_list_get_markers_by_name
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	adrp	x25, _global_effect_marker_list@PAGE
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	x19, x2
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	ldr	w8, [x25, _global_effect_marker_list@PAGEOFF]
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	ldr	w8, [x8, #12]
	cbz	w8, LBB10_9
; %bb.1:
	mov	x0, x1
	mov	w20, w3
	mov	x23, x1
	bl	_csstrlen
	cbz	w0, LBB10_9
; %bb.2:
	cmp	w20, #1
	b.lt	LBB10_9
; %bb.3:
	mov	w24, wzr
	mov	w28, wzr
	mov	w26, wzr
	mov	w27, #108                       ; =0x6c
	b	LBB10_5
	.p2align	4, , 8
LBB10_4:                                ;   in Loop: Header=BB10_5 Depth=1
	add	w24, w24, #1
	sxth	w28, w26
	cmp	w28, w20
	b.ge	LBB10_8
LBB10_5:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x25, _global_effect_marker_list@PAGEOFF]
	ldrsh	w9, [x8, #8]
	cmp	w24, w9
	b.ge	LBB10_8
; %bb.6:                                ;   in Loop: Header=BB10_5 Depth=1
	ldr	w8, [x8, #12]
	mov	x0, x23
	add	w8, w8, w24, lsl #2
	ldr	w1, [x8]
	bl	_csstrcmp
	cbnz	w0, LBB10_4
; %bb.7:                                ;   in Loop: Header=BB10_5 Depth=1
	smaddl	x0, w28, w27, x19
	ldr	w1, [x25, _global_effect_marker_list@PAGEOFF]
	mov	w2, w24
	add	w26, w26, #1
	bl	_effect_marker_list_get_marker
	b	LBB10_4
LBB10_8:
	tst	w26, #0xffff
	b.ne	LBB10_10
LBB10_9:
	ldr	w1, [x25, _global_effect_marker_list@PAGEOFF]
	mov	x0, x19
	mov	w2, wzr
	bl	_effect_marker_list_get_marker
	mov	w26, #1                         ; =0x1
LBB10_10:
	sxth	w0, w26
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.p2align	4                               ; -- Begin function effect_update
_effect_update:                         ; @effect_update
; %bb.0:
	sub	sp, sp, #496
Lloh97:
	adrp	x8, _effect_data@GOTPAGE
	stp	d15, d14, [sp, #352]            ; 16-byte Folded Spill
	stp	d13, d12, [sp, #368]            ; 16-byte Folded Spill
	fmov	s15, s0
	stp	d11, d10, [sp, #384]            ; 16-byte Folded Spill
	stp	d9, d8, [sp, #400]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #416]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #432]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #448]            ; 16-byte Folded Spill
	mov	w23, w0
	stp	x20, x19, [sp, #464]            ; 16-byte Folded Spill
	mov	w1, w23
	stp	x29, x30, [sp, #480]            ; 16-byte Folded Spill
	add	x29, sp, #480
Lloh98:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
Lloh99:
	ldr	w8, [x8]
	mov	x0, x8
	bl	_datum_get
	mov	x20, x0
	ldr	w1, [x0, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldr	w8, [x20, #60]
	mov	x24, x0
	cmn	w8, #1
	b.eq	LBB11_20
; %bb.1:
	mov	w0, w8
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	mov	x19, x0
	cbz	w19, LBB11_28
; %bb.2:
	ldr	w0, [x20, #60]
	bl	_object_get_ultimate_parent
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_get_and_verify_type
	ldrb	w8, [x0, #5]
	tbnz	w8, #3, LBB11_4
; %bb.3:
	mov	w8, #65535                      ; =0xffff
	strh	w8, [x20, #20]
	ldrh	w8, [x20, #2]
	tbnz	w8, #1, LBB11_5
	b	LBB11_20
LBB11_4:
	ldr	x8, [x0, #72]
	str	x8, [x20, #16]
	ldr	w8, [x0, #32]
	ldr	x9, [x0, #24]
	str	w8, [x20, #44]
	stur	x9, [x20, #36]
	ldrh	w8, [x20, #2]
	tbz	w8, #1, LBB11_20
LBB11_5:
	ldr	w0, [x20, #60]
	add	x2, x20, #68
	ldrsh	w1, [x20, #8]
	bl	_object_get_function_value
	cbz	w0, LBB11_9
; %bb.6:
	ldrh	w8, [x20, #2]
	tbz	w8, #3, LBB11_17
; %bb.7:
	tbnz	w8, #5, LBB11_16
; %bb.8:
	mov	w9, #65495                      ; =0xffd7
	mov	w0, w23
	and	w8, w8, w9
	mov	w1, wzr
	strh	w8, [x20, #2]
	bl	_effect_set_event
	b	LBB11_17
LBB11_9:
	ldrb	w8, [x24]
	tbnz	w8, #0, LBB11_12
; %bb.10:
	ldrh	w8, [x20, #2]
	tst	w8, #0xc
	b.ne	LBB11_17
; %bb.11:
	mov	w0, w23
	mov	w1, wzr
	bl	_effect_stop
	b	LBB11_17
LBB11_12:
	ldr	w1, [x19]
	mov	w0, #27237                      ; =0x6a65
	movk	w0, #28514, lsl #16
	bl	_tag_get
	ldr	w9, [x0, #320]
	mov	w8, #8                          ; =0x8
	cmp	w9, #8
	sxth	w9, w9
	csel	w8, w8, w9, gt
	cmp	w8, #1
	b.lt	LBB11_28
; %bb.13:
	mov	w10, wzr
	mov	w11, wzr
	add	x9, x19, #252
	.p2align	4, , 8
LBB11_14:                               ; =>This Inner Loop Header: Depth=1
	ldr	w12, [x9, w10, sxtw #2]
	cmp	w12, w23
	b.eq	LBB11_296
; %bb.15:                               ;   in Loop: Header=BB11_14 Depth=1
	add	w11, w11, #1
	sxth	w10, w11
	cmp	w8, w10
	b.gt	LBB11_14
	b	LBB11_28
LBB11_16:
	mov	w0, w23
	bl	_effect_delete
LBB11_17:
	ldr	w0, [x20, #60]
	add	x2, x20, #72
	ldrsh	w1, [x20, #10]
	bl	_object_get_function_value
	ldrsh	w8, [x20, #12]
	cmn	w8, #1
	b.eq	LBB11_20
; %bb.18:
	mov	w9, #12                         ; =0xc
	mov	x0, x20
	smaddl	x8, w8, w9, x19
	ldr	x9, [x8, #360]
	ldr	w8, [x8, #368]
	str	x9, [x0, #24]!
	str	w8, [x0, #8]
	bl	_valid_real_rgb_color
	cbnz	w0, LBB11_20
; %bb.19:
Lloh100:
	adrp	x0, l_.str.9@PAGE
Lloh101:
	add	x0, x0, l_.str.9@PAGEOFF
Lloh102:
	adrp	x1, l_.str.5@PAGE
Lloh103:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1227                       ; =0x4cb
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB11_20:
	ldrsh	w8, [x20, #20]
	cmn	w8, #1
	b.eq	LBB11_26
; %bb.21:
	ldrb	w8, [x24]
	tbnz	w8, #1, LBB11_25
; %bb.22:
	add	x0, x20, #16
	bl	_scenario_location_potentially_visible_local
	cbz	w0, LBB11_26
LBB11_23:
	ldrh	w8, [x20, #2]
	tbz	w8, #4, LBB11_31
; %bb.24:
	and	w8, w8, #0xffffffef
	b	LBB11_30
LBB11_25:
	add	x0, x20, #16
	bl	_scenario_location_potentially_visible
	cbnz	w0, LBB11_23
LBB11_26:
	ldrh	w8, [x20, #2]
	tbnz	w8, #4, LBB11_31
; %bb.27:
	tbnz	w8, #1, LBB11_29
LBB11_28:
	mov	w0, w23
	ldp	x29, x30, [sp, #480]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #464]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #448]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #432]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #416]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #400]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #384]            ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #368]            ; 16-byte Folded Reload
	ldp	d15, d14, [sp, #352]            ; 16-byte Folded Reload
	add	sp, sp, #496
	b	_effect_delete
LBB11_29:
	orr	w8, w8, #0x10
LBB11_30:
	strh	w8, [x20, #2]
LBB11_31:
	fcmp	s15, #0.0
	str	x24, [sp, #48]                  ; 8-byte Spill
	str	w23, [sp, #36]                  ; 4-byte Spill
	b.ge	LBB11_33
LBB11_32:
	ldp	x29, x30, [sp, #480]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #464]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #448]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #432]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #416]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #400]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #384]            ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #368]            ; 16-byte Folded Reload
	ldp	d15, d14, [sp, #352]            ; 16-byte Folded Reload
	add	sp, sp, #496
	ret
LBB11_33:
	fmov	s10, #-6.00000000
	mov	w9, wzr
	fmov	s11, #6.00000000
	add	x28, x20, #220
	fmov	s12, #1.00000000
	b	LBB11_37
	.p2align	4, , 8
LBB11_34:                               ;   in Loop: Header=BB11_37 Depth=1
	cmp	w8, w19
	b.le	LBB11_293
; %bb.35:                               ;   in Loop: Header=BB11_37 Depth=1
	mov	w0, w24
	sxth	w1, w23
	bl	_effect_set_event
LBB11_36:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	w9, [sp, #60]                   ; 4-byte Reload
	fcmp	s15, #0.0
	add	w9, w9, #1
	b.lt	LBB11_32
LBB11_37:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB11_62 Depth 2
                                        ;       Child Loop BB11_85 Depth 3
                                        ;       Child Loop BB11_94 Depth 3
                                        ;         Child Loop BB11_98 Depth 4
                                        ;         Child Loop BB11_153 Depth 4
                                        ;     Child Loop BB11_178 Depth 2
                                        ;     Child Loop BB11_197 Depth 2
                                        ;     Child Loop BB11_225 Depth 2
                                        ;       Child Loop BB11_235 Depth 3
	ldrh	w8, [x20, #2]
	tbnz	w8, #3, LBB11_32
; %bb.38:                               ;   in Loop: Header=BB11_37 Depth=1
	cmp	w9, #7
	b.hi	LBB11_32
; %bb.39:                               ;   in Loop: Header=BB11_37 Depth=1
	ldp	s1, s0, [x20, #80]
	fmov	s8, s15
	str	w9, [sp, #60]                   ; 4-byte Spill
	fsub	s14, s0, s1
	fadd	s1, s15, s1
	fcmp	s14, s15
	fsub	s2, s15, s14
	fcsel	s0, s1, s0, hi
	fmov	s1, #-1.00000000
	str	s0, [x20, #80]
	fcsel	s15, s1, s2, hi
	tbnz	w8, #0, LBB11_47
; %bb.40:                               ;   in Loop: Header=BB11_37 Depth=1
	fcmp	s14, s8
	b.hi	LBB11_36
; %bb.41:                               ;   in Loop: Header=BB11_37 Depth=1
	ldrsh	w1, [x20, #78]
	ldr	x11, [sp, #48]                  ; 8-byte Reload
	tbnz	w1, #31, LBB11_54
; %bb.42:                               ;   in Loop: Header=BB11_37 Depth=1
	ldur	w9, [x11, #52]
	cmp	w9, w1
	b.le	LBB11_54
; %bb.43:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	w9, [x11, #56]
	cbz	w9, LBB11_54
; %bb.44:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	w10, [x11, #60]
	cbz	w10, LBB11_46
; %bb.45:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	w10, [x10, #12]
	cmp	w10, #68
	b.ne	LBB11_54
LBB11_46:                               ;   in Loop: Header=BB11_37 Depth=1
	add	w10, w1, w1, lsl #4
	lsl	w10, w10, #2
	add	x19, x9, w10, sxtw
	b	LBB11_55
	.p2align	4, , 8
LBB11_47:                               ;   in Loop: Header=BB11_37 Depth=1
	tbnz	w8, #4, LBB11_172
; %bb.48:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	w1, [x20, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldrsh	w1, [x20, #78]
	mov	x24, x0
	tbnz	w1, #31, LBB11_57
; %bb.49:                               ;   in Loop: Header=BB11_37 Depth=1
	ldur	w8, [x24, #52]
	cmp	w8, w1
	b.le	LBB11_57
; %bb.50:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	w8, [x24, #56]
	cbz	w8, LBB11_57
; %bb.51:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	w9, [x24, #60]
	cbz	w9, LBB11_53
; %bb.52:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #68
	b.ne	LBB11_57
LBB11_53:                               ;   in Loop: Header=BB11_37 Depth=1
	add	w9, w1, w1, lsl #4
	lsl	w9, w9, #2
	add	x8, x8, w9, sxtw
	str	x8, [sp, #120]                  ; 8-byte Spill
	b	LBB11_58
	.p2align	4, , 8
LBB11_54:                               ;   in Loop: Header=BB11_37 Depth=1
	add	x0, x11, #52
	mov	w2, #68                         ; =0x44
	bl	_tag_block_get_element_with_size
	ldrh	w8, [x20, #2]
	mov	x19, x0
LBB11_55:                               ;   in Loop: Header=BB11_37 Depth=1
	orr	w8, w8, #0x1
	ldr	w1, [x20, #4]
	mov	w0, #26213                      ; =0x6665
	str	wzr, [x20, #80]
	movk	w0, #25958, lsl #16
	strh	w8, [x20, #2]
	mov	w8, #-1082130432                ; =0xbf800000
	str	w8, [x20, #88]
	bl	_tag_get
	ldrb	w8, [x0]
	tbnz	w8, #1, LBB11_190
; %bb.56:                               ;   in Loop: Header=BB11_37 Depth=1
	bl	_get_global_local_random_seed_address
	b	LBB11_191
	.p2align	4, , 8
LBB11_57:                               ;   in Loop: Header=BB11_37 Depth=1
	add	x0, x24, #52
	mov	w2, #68                         ; =0x44
	bl	_tag_block_get_element_with_size
	str	x0, [sp, #120]                  ; 8-byte Spill
LBB11_58:                               ;   in Loop: Header=BB11_37 Depth=1
	ldp	s0, s10, [x20, #84]
	fmov	s13, #1.00000000
	fcmp	s0, #0.0
	b.le	LBB11_60
; %bb.59:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	s1, [x20, #80]
	fdiv	s13, s1, s0
LBB11_60:                               ;   in Loop: Header=BB11_37 Depth=1
	ldr	x9, [sp, #120]                  ; 8-byte Reload
	ldr	w8, [x9, #56]!
	str	x9, [sp, #96]                   ; 8-byte Spill
	cmp	w8, #1
	b.lt	LBB11_171
; %bb.61:                               ;   in Loop: Header=BB11_37 Depth=1
	fadd	s0, s10, s10
	fmul	s5, s10, s10
	fadd	s1, s13, s13
	mov	w19, wzr
	fmov	s2, #3.00000000
	str	x24, [sp, #64]                  ; 8-byte Spill
	fmov	s3, #2.00000000
	fcmp	s10, s12
	movi	d4, #0000000000000000
	fsub	s0, s2, s0
	fsub	s1, s2, s1
	fsub	s2, s3, s10
	fsub	s3, s3, s13
	fcsel	s6, s4, s12, mi
	fcmp	s13, s12
	fmul	s0, s10, s0
	fmul	s1, s13, s1
	fmul	s7, s10, s2
	fmul	s2, s13, s3
	fmul	s3, s10, s0
	fmul	s0, s13, s1
	fmul	s1, s13, s13
	stp	s2, s7, [sp, #12]               ; 8-byte Folded Spill
	str	s3, [sp, #32]                   ; 4-byte Spill
	stp	s6, s0, [sp, #24]               ; 8-byte Folded Spill
	fcsel	s0, s4, s12, mi
	stp	s1, s5, [sp, #40]               ; 8-byte Folded Spill
	str	s0, [sp, #20]                   ; 4-byte Spill
	.p2align	4, , 8
LBB11_62:                               ;   Parent Loop BB11_37 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB11_85 Depth 3
                                        ;       Child Loop BB11_94 Depth 3
                                        ;         Child Loop BB11_98 Depth 4
                                        ;         Child Loop BB11_153 Depth 4
	ldr	x8, [sp, #120]                  ; 8-byte Reload
	ldr	w8, [x8, #60]
	cbz	w8, LBB11_66
; %bb.63:                               ;   in Loop: Header=BB11_62 Depth=2
	ldr	x9, [sp, #120]                  ; 8-byte Reload
	ldr	w9, [x9, #64]
	cbz	w9, LBB11_65
; %bb.64:                               ;   in Loop: Header=BB11_62 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #232
	b.ne	LBB11_66
LBB11_65:                               ;   in Loop: Header=BB11_62 Depth=2
	mov	w9, #232                        ; =0xe8
	mul	w9, w19, w9
	add	x25, x8, w9, sxtw
	ldrsh	w8, [x25, #8]
	tbz	w8, #31, LBB11_67
	b	LBB11_163
	.p2align	4, , 8
LBB11_66:                               ;   in Loop: Header=BB11_62 Depth=2
	ldr	x0, [sp, #96]                   ; 8-byte Reload
	mov	w1, w19
	mov	w2, #232                        ; =0xe8
	bl	_tag_block_get_element_with_size
	mov	x25, x0
	ldrsh	w8, [x25, #8]
	tbnz	w8, #31, LBB11_163
LBB11_67:                               ;   in Loop: Header=BB11_62 Depth=2
	ldr	w9, [x24, #40]
	cmp	w8, #31
	ccmp	w9, w8, #4, ls
	b.le	LBB11_163
; %bb.68:                               ;   in Loop: Header=BB11_62 Depth=2
	ldrh	w8, [x20, #2]
	ldrh	w9, [x25, #2]
	tst	w8, #0x40
	mov	w8, #1                          ; =0x1
	cinc	w8, w8, eq
	cmp	w9, w8
	b.eq	LBB11_163
; %bb.69:                               ;   in Loop: Header=BB11_62 Depth=2
	fmov	s0, #-1.00000000
	movi	d12, #0000000000000000
	movi	d9, #0000000000000000
	fcmp	s10, s0
	b.eq	LBB11_75
; %bb.70:                               ;   in Loop: Header=BB11_62 Depth=2
	ldrh	w8, [x25, #104]
	cmp	w8, #2
	b.gt	LBB11_74
; %bb.71:                               ;   in Loop: Header=BB11_62 Depth=2
	fmov	s9, #1.00000000
	cbz	w8, LBB11_75
; %bb.72:                               ;   in Loop: Header=BB11_62 Depth=2
	fmov	s9, s10
	cmp	w8, #2
	b.eq	LBB11_75
; %bb.73:                               ;   in Loop: Header=BB11_62 Depth=2
	ldr	s9, [sp, #24]                   ; 4-byte Reload
	cmp	w8, #1
	b.eq	LBB11_75
	b	LBB11_167
LBB11_74:                               ;   in Loop: Header=BB11_62 Depth=2
	ldr	s9, [sp, #44]                   ; 4-byte Reload
	cmp	w8, #3
	b.ne	LBB11_165
LBB11_75:                               ;   in Loop: Header=BB11_62 Depth=2
	ldr	b0, [x28, w19, sxtw]
	ucvtf	s11, s0
	fmov	s0, #-1.00000000
	fcmp	s13, s0
	fmov	s0, s11
	b.eq	LBB11_81
; %bb.76:                               ;   in Loop: Header=BB11_62 Depth=2
	ldrh	w8, [x25, #104]
	cmp	w8, #2
	b.gt	LBB11_80
; %bb.77:                               ;   in Loop: Header=BB11_62 Depth=2
	fmov	s12, #1.00000000
	fmov	s0, s11
	cbz	w8, LBB11_81
; %bb.78:                               ;   in Loop: Header=BB11_62 Depth=2
	fmov	s0, s11
	cmp	w8, #2
	fmov	s12, s13
	b.eq	LBB11_81
; %bb.79:                               ;   in Loop: Header=BB11_62 Depth=2
	fmov	s0, s11
	ldr	s12, [sp, #20]                  ; 4-byte Reload
	cmp	w8, #1
	b.eq	LBB11_81
	b	LBB11_170
LBB11_80:                               ;   in Loop: Header=BB11_62 Depth=2
	fmov	s0, s11
	ldr	s12, [sp, #40]                  ; 4-byte Reload
	cmp	w8, #3
	b.ne	LBB11_168
LBB11_81:                               ;   in Loop: Header=BB11_62 Depth=2
	fmul	s1, s9, s11
	fmul	s0, s12, s0
	fcvtzs	w8, s1
	fcvtzs	w9, s0
	sub	w8, w9, w8
	tbnz	w8, #15, LBB11_162
; %bb.82:                               ;   in Loop: Header=BB11_62 Depth=2
	fmov	s12, #1.00000000
	lsl	w9, w8, #16
	cbz	w9, LBB11_163
; %bb.83:                               ;   in Loop: Header=BB11_62 Depth=2
	ldr	w0, [x25, #96]
	sxth	w8, w8
	ucvtf	s9, w8
	bl	_skulls_particle_count_scale
	fmul	s0, s0, s9
	ldrsh	x8, [x25, #8]
	ldrh	w23, [x25, #4]
	fcvtzs	w9, s0
	str	w9, [sp, #76]                   ; 4-byte Spill
	add	x9, x20, #92
	ldr	w26, [x9, x8, lsl #2]
	b	LBB11_85
	.p2align	4, , 8
LBB11_84:                               ;   in Loop: Header=BB11_85 Depth=3
	ldrsh	w8, [x27, #2]
	cmn	w8, #1
	b.ge	LBB11_93
LBB11_85:                               ;   Parent Loop BB11_37 Depth=1
                                        ;     Parent Loop BB11_62 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cbnz	w20, LBB11_87
; %bb.86:                               ;   in Loop: Header=BB11_85 Depth=3
Lloh104:
	adrp	x0, l_.str@PAGE
Lloh105:
	add	x0, x0, l_.str@PAGEOFF
Lloh106:
	adrp	x1, l_.str.5@PAGE
Lloh107:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1766                       ; =0x6e6
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB11_87:                               ;   in Loop: Header=BB11_85 Depth=3
	cmn	w26, #1
	b.eq	LBB11_163
; %bb.88:                               ;   in Loop: Header=BB11_85 Depth=3
Lloh108:
	adrp	x8, _effect_location_data@GOTPAGE
	mov	w1, w26
Lloh109:
	ldr	w8, [x8, _effect_location_data@GOTPAGEOFF]
Lloh110:
	ldr	w0, [x8]
	bl	_datum_get
	ldr	w26, [x0, #4]
	mov	x27, x0
	cmp	w23, #1
	b.eq	LBB11_92
; %bb.89:                               ;   in Loop: Header=BB11_85 Depth=3
	cmp	w23, #3
	b.ne	LBB11_84
; %bb.90:                               ;   in Loop: Header=BB11_85 Depth=3
	ldrsh	w8, [x20, #76]
	cmn	w8, #1
	b.eq	LBB11_84
; %bb.91:                               ;   in Loop: Header=BB11_85 Depth=3
	bl	_local_player_count
	cmp	w0, #1
	b.ne	LBB11_84
LBB11_92:                               ;   in Loop: Header=BB11_85 Depth=3
	ldrsh	w8, [x27, #2]
	cmn	w8, #2
	b.gt	LBB11_85
LBB11_93:                               ;   in Loop: Header=BB11_62 Depth=2
	cbz	w27, LBB11_163
LBB11_94:                               ;   Parent Loop BB11_37 Depth=1
                                        ;     Parent Loop BB11_62 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB11_98 Depth 4
                                        ;         Child Loop BB11_153 Depth 4
	ldr	w8, [sp, #76]                   ; 4-byte Reload
	cmp	w8, #1
	b.lt	LBB11_151
; %bb.95:                               ;   in Loop: Header=BB11_94 Depth=3
	mov	w28, wzr
	b	LBB11_98
	.p2align	4, , 8
LBB11_96:                               ;   in Loop: Header=BB11_98 Depth=4
	ldrh	w8, [x20, #76]
	add	x0, sp, #176
	strh	w8, [sp, #186]
	ldrsh	w8, [x27, #2]
	cmn	w8, #1
	cset	w8, lt
	strb	w8, [sp, #188]
	ldrh	w8, [x25, #4]
	cmp	w8, #2
	cset	w8, eq
	strb	w8, [sp, #189]
	ldrh	w8, [x25, #4]
	cmp	w8, #1
	cset	w8, eq
	strb	w8, [sp, #190]
	bl	_particle_new
LBB11_97:                               ;   in Loop: Header=BB11_98 Depth=4
	add	w8, w28, #1
	sxth	w28, w8
	ldr	w8, [sp, #76]                   ; 4-byte Reload
	cmp	w28, w8
	b.ge	LBB11_151
LBB11_98:                               ;   Parent Loop BB11_37 Depth=1
                                        ;     Parent Loop BB11_62 Depth=2
                                        ;       Parent Loop BB11_94 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	bl	_get_global_local_random_seed_address
	ldr	s0, [x25, #112]
	ldr	w8, [x25, #224]
	fmov	s9, s0
	tbnz	w8, #7, LBB11_138
LBB11_99:                               ;   in Loop: Header=BB11_98 Depth=4
	ldr	w9, [x25, #228]
	ldr	s1, [x25, #116]
	tbnz	w9, #7, LBB11_147
; %bb.100:                              ;   in Loop: Header=BB11_98 Depth=4
	fsub	s1, s1, s0
	tbnz	w8, #8, LBB11_148
LBB11_101:                              ;   in Loop: Header=BB11_98 Depth=4
	tbnz	w9, #8, LBB11_149
LBB11_102:                              ;   in Loop: Header=BB11_98 Depth=4
	movi	d0, #0000000000000000
	bl	_real_seed_random_range
Lloh111:
	adrp	x8, _skulls_effect_size@GOTPAGE
	fadd	s0, s9, s0
Lloh112:
	ldr	w8, [x8, _skulls_effect_size@GOTPAGEOFF]
Lloh113:
	ldr	s1, [x8]
	fmul	s0, s0, s1
	str	q0, [sp, #80]                   ; 16-byte Spill
	bl	_get_global_local_random_seed_address
	sub	x1, x29, #152
	bl	_seed_random_direction3d
	add	x0, x27, #8
	add	x1, x25, #20
	sub	x2, x29, #168
	bl	_matrix4x3_transform_vector
	ldur	d0, [x29, #-152]
	ldur	s1, [x29, #-144]
	ldr	q2, [sp, #80]                   ; 16-byte Reload
	ldr	s3, [x27, #56]
	fmul	v0.2s, v0.2s, v2.s[0]
	fmul	s1, s2, s1
	ldr	d2, [x27, #48]
	fadd	v0.2s, v2.2s, v0.2s
	ldur	d2, [x29, #-168]
	fadd	s1, s3, s1
	ldur	s3, [x29, #-160]
	fadd	v0.2s, v2.2s, v0.2s
	fadd	s1, s3, s1
	str	d0, [sp, #192]
	str	s1, [sp, #200]
	bl	_get_global_local_random_seed_address
	ldp	s0, s1, [x25, #132]
	add	x23, sp, #176
	add	x2, x25, #32
	ldr	s2, [x25, #140]
	add	x3, x23, #28
	ldp	w5, w6, [x25, #224]
	add	x4, x23, #40
	mov	x1, x20
	bl	_effect_random_translational_velocity
	add	x0, x27, #8
	add	x1, x23, #28
	add	x2, x23, #28
	bl	_matrix4x3_transform_normal
	add	x0, x27, #8
	add	x1, x23, #40
	add	x2, x23, #40
	bl	_matrix4x3_transform_vector
	ldrsh	w1, [x27, #2]
	cmn	w1, #1
	b.eq	LBB11_106
; %bb.103:                              ;   in Loop: Header=BB11_98 Depth=4
	cmn	w1, #2
	b.le	LBB11_150
; %bb.104:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	w0, [x20, #60]
	bl	_object_get_node_matrix
LBB11_105:                              ;   in Loop: Header=BB11_98 Depth=4
	add	x24, sp, #176
	add	x2, sp, #160
	add	x1, x24, #16
	mov	x23, x0
	bl	_matrix4x3_transform_point
	add	x1, x24, #28
	add	x2, sp, #144
	mov	x0, x23
	bl	_matrix4x3_transform_normal
	add	x1, x24, #40
	add	x2, sp, #128
	mov	x0, x23
	bl	_matrix4x3_transform_vector
	ldr	s0, [x23]
	ldr	x24, [sp, #64]                  ; 8-byte Reload
	fcmp	s0, #0.0
	fcsel	s9, s0, s12, gt
	b	LBB11_107
	.p2align	4, , 8
LBB11_106:                              ;   in Loop: Header=BB11_98 Depth=4
	ldur	x8, [x23, #16]
	fmov	s9, #1.00000000
	ldur	w9, [x23, #24]
	ldur	x10, [x23, #28]
	ldur	w11, [x23, #48]
	str	x8, [sp, #160]
	str	w9, [sp, #168]
	ldur	w8, [x23, #36]
	ldur	x9, [x23, #40]
	str	x10, [sp, #144]
	str	w11, [sp, #136]
	str	w8, [sp, #152]
	str	x9, [sp, #128]
LBB11_107:                              ;   in Loop: Header=BB11_98 Depth=4
	ldrh	w8, [x25]
	cmp	w8, #1
	b.gt	LBB11_111
; %bb.108:                              ;   in Loop: Header=BB11_98 Depth=4
	cbz	w8, LBB11_114
; %bb.109:                              ;   in Loop: Header=BB11_98 Depth=4
	cmp	w8, #1
	b.ne	LBB11_117
; %bb.110:                              ;   in Loop: Header=BB11_98 Depth=4
	add	x0, x20, #16
	add	x1, sp, #160
	mov	x2, xzr
	bl	_scenario_location_underwater
	cbnz	w0, LBB11_97
	b	LBB11_114
	.p2align	4, , 8
LBB11_111:                              ;   in Loop: Header=BB11_98 Depth=4
	cmp	w8, #3
	b.eq	LBB11_97
; %bb.112:                              ;   in Loop: Header=BB11_98 Depth=4
	cmp	w8, #2
	b.ne	LBB11_117
; %bb.113:                              ;   in Loop: Header=BB11_98 Depth=4
	add	x0, x20, #16
	add	x1, sp, #160
	mov	x2, xzr
	bl	_scenario_location_underwater
	cbz	w0, LBB11_97
LBB11_114:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	w8, [x25, #96]
	ldrb	w9, [x25, #100]
	str	w8, [sp, #176]
	tbnz	w9, #0, LBB11_118
; %bb.115:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	w8, [x20, #52]
	cbz	w8, LBB11_119
; %bb.116:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	w2, [x20, #48]
	add	x24, sp, #176
	add	x0, x24, #52
	add	x1, sp, #160
	blr	x8
	b	LBB11_120
LBB11_117:                              ;   in Loop: Header=BB11_98 Depth=4
	mov	x0, xzr
Lloh114:
	adrp	x1, l_.str.5@PAGE
Lloh115:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #888                        ; =0x378
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	b	LBB11_97
LBB11_118:                              ;   in Loop: Header=BB11_98 Depth=4
	ldrh	w8, [x27, #2]
	mov	w11, #65535                     ; =0xffff
	ldr	w9, [x20, #60]
	add	x23, sp, #176
	cmp	w8, w11
Lloh116:
	adrp	x11, _global_zero_vector3d@GOTPAGE
	and	w10, w8, #0x7fff
	csel	w8, w8, w10, eq
	add	x10, sp, #176
Lloh117:
	ldr	w11, [x11, _global_zero_vector3d@GOTPAGEOFF]
	str	w9, [sp, #180]
	strh	w8, [sp, #184]
Lloh118:
	ldr	w11, [x11]
	ldr	x8, [x11]
	ldr	w9, [x11, #8]
	stur	x8, [x10, #52]
	stur	w9, [x10, #60]
	b	LBB11_121
LBB11_119:                              ;   in Loop: Header=BB11_98 Depth=4
Lloh119:
	adrp	x8, _global_zero_vector3d@GOTPAGE
	add	x24, sp, #176
Lloh120:
	ldr	w8, [x8, _global_zero_vector3d@GOTPAGEOFF]
Lloh121:
	ldr	w8, [x8]
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
	stur	x9, [x24, #52]
	stur	w8, [x24, #60]
LBB11_120:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	w8, [sp, #152]
	fmov	s3, #30.00000000
	ldp	s1, s2, [sp, #128]
	add	x23, sp, #176
	ldr	w9, [sp, #168]
	stur	w8, [x24, #36]
	ldr	s0, [x20, #36]
	ldr	x8, [sp, #160]
	ldr	x10, [sp, #144]
	stur	w9, [x24, #24]
	fmul	s0, s0, s3
	stur	x8, [x24, #16]
	mov	w8, #-1                         ; =0xffffffff
	stur	x10, [x24, #28]
	ldr	x24, [sp, #64]                  ; 8-byte Reload
	str	w8, [sp, #180]
	fadd	s0, s1, s0
	str	s0, [sp, #216]
	ldr	s0, [x20, #40]
	fmul	s1, s0, s3
	fadd	s0, s2, s1
	ldr	s1, [sp, #136]
	str	s0, [sp, #220]
	ldr	s0, [x20, #44]
	fmul	s0, s0, s3
	fadd	s0, s1, s0
	str	s0, [sp, #224]
LBB11_121:                              ;   in Loop: Header=BB11_98 Depth=4
	bl	_get_global_local_random_seed_address
	ldp	s0, s1, [x25, #160]
	ldp	w9, w8, [x25, #224]
	fmov	s11, s0
	tbnz	w9, #9, LBB11_139
; %bb.122:                              ;   in Loop: Header=BB11_98 Depth=4
	tbnz	w8, #9, LBB11_140
LBB11_123:                              ;   in Loop: Header=BB11_98 Depth=4
	fsub	s1, s1, s0
	tbnz	w9, #10, LBB11_141
LBB11_124:                              ;   in Loop: Header=BB11_98 Depth=4
	tbnz	w8, #10, LBB11_142
LBB11_125:                              ;   in Loop: Header=BB11_98 Depth=4
	movi	d0, #0000000000000000
	bl	_real_seed_random_range
Lloh122:
	adrp	x8, _skulls_effect_size@GOTPAGE
	fadd	s0, s11, s0
Lloh123:
	ldr	w8, [x8, _skulls_effect_size@GOTPAGEOFF]
Lloh124:
	ldr	s1, [x8]
	fmul	s0, s0, s1
	fmul	s1, s9, s0
	str	s1, [sp, #248]
	bl	_get_global_local_random_seed_address
	ldp	s0, s1, [x25, #144]
	ldp	w9, w8, [x25, #224]
	fmov	s11, s0
	tbnz	w9, #3, LBB11_143
; %bb.126:                              ;   in Loop: Header=BB11_98 Depth=4
	tbnz	w8, #3, LBB11_144
LBB11_127:                              ;   in Loop: Header=BB11_98 Depth=4
	fsub	s1, s1, s0
	tbnz	w9, #4, LBB11_145
LBB11_128:                              ;   in Loop: Header=BB11_98 Depth=4
	tbnz	w8, #4, LBB11_146
LBB11_129:                              ;   in Loop: Header=BB11_98 Depth=4
	movi	d0, #0000000000000000
	movi	d9, #0000000000000000
	bl	_real_seed_random_range
	fadd	s0, s11, s0
	ldrb	w8, [x25, #100]
	str	s0, [sp, #244]
	tbz	w8, #1, LBB11_131
; %bb.130:                              ;   in Loop: Header=BB11_98 Depth=4
	bl	_get_global_local_random_seed_address
	mov	w8, #4059                       ; =0xfdb
	movi	d0, #0000000000000000
	movk	w8, #16585, lsl #16
	fmov	s1, w8
	bl	_real_seed_random_range
	fmov	s9, s0
LBB11_131:                              ;   in Loop: Header=BB11_98 Depth=4
	ldrb	w8, [x25, #225]
	str	s9, [sp, #240]
	tbnz	w8, #3, LBB11_134
; %bb.132:                              ;   in Loop: Header=BB11_98 Depth=4
	fmov	s0, #1.00000000
	ldrb	w8, [x25, #229]
	tbnz	w8, #3, LBB11_135
; %bb.133:                              ;   in Loop: Header=BB11_98 Depth=4
	bl	_get_global_local_random_seed_address
	bl	_real_seed_random
	b	LBB11_136
LBB11_134:                              ;   in Loop: Header=BB11_98 Depth=4
	ldrb	w8, [x25, #229]
	ldr	s0, [x20, #68]
	tbz	w8, #3, LBB11_136
LBB11_135:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s1, [x20, #72]
	fmul	s0, s0, s1
LBB11_136:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	w8, [x25, #100]
	add	x0, x23, #80
	add	x2, x25, #180
	add	x3, x25, #196
	str	s0, [sp, #252]
	ubfx	w1, w8, #3, #2
	bl	_rgb_colors_interpolate
	ldr	s0, [sp, #252]
	ldr	s2, [x25, #176]
	ldr	s3, [x25, #192]
	ldrb	w8, [x25, #100]
	fsub	s1, s12, s0
	fmul	s0, s0, s3
	fmul	s1, s1, s2
	fadd	s0, s1, s0
	str	s0, [sp, #252]
	tbz	w8, #2, LBB11_96
; %bb.137:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s0, [x20, #24]
	ldr	s1, [sp, #256]
	ldr	s2, [sp, #260]
	fmul	s0, s0, s1
	str	s0, [sp, #256]
	ldr	s0, [x20, #28]
	fmul	s1, s0, s2
	str	s1, [sp, #260]
	ldr	s0, [x20, #32]
	ldr	s1, [sp, #264]
	fmul	s0, s0, s1
	str	s0, [sp, #264]
	b	LBB11_96
LBB11_138:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s1, [x20, #68]
	fmul	s9, s0, s1
	b	LBB11_99
LBB11_139:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s2, [x20, #68]
	fmul	s11, s0, s2
	tbz	w8, #9, LBB11_123
LBB11_140:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s2, [x20, #72]
	fmul	s11, s11, s2
	fsub	s1, s1, s0
	tbz	w9, #10, LBB11_124
LBB11_141:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s0, [x20, #68]
	fmul	s1, s1, s0
	tbz	w8, #10, LBB11_125
LBB11_142:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s0, [x20, #72]
	fmul	s1, s1, s0
	b	LBB11_125
LBB11_143:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s2, [x20, #68]
	fmul	s11, s0, s2
	tbz	w8, #3, LBB11_127
LBB11_144:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s2, [x20, #72]
	fmul	s11, s11, s2
	fsub	s1, s1, s0
	tbz	w9, #4, LBB11_128
LBB11_145:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s0, [x20, #68]
	fmul	s1, s1, s0
	tbz	w8, #4, LBB11_129
LBB11_146:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s0, [x20, #72]
	fmul	s1, s1, s0
	b	LBB11_129
LBB11_147:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s2, [x20, #72]
	fmul	s9, s9, s2
	fsub	s1, s1, s0
	tbz	w8, #8, LBB11_101
LBB11_148:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s0, [x20, #68]
	fmul	s1, s1, s0
	tbz	w9, #8, LBB11_102
LBB11_149:                              ;   in Loop: Header=BB11_98 Depth=4
	ldr	s0, [x20, #72]
	fmul	s1, s1, s0
	b	LBB11_102
LBB11_150:                              ;   in Loop: Header=BB11_98 Depth=4
	ldrsh	w0, [x20, #76]
	and	w1, w1, #0x7fff
	bl	_first_person_weapon_get_node_matrix
	b	LBB11_105
	.p2align	4, , 8
LBB11_151:                              ;   in Loop: Header=BB11_94 Depth=3
	ldrh	w23, [x25, #4]
	add	x28, x20, #220
	b	LBB11_153
	.p2align	4, , 8
LBB11_152:                              ;   in Loop: Header=BB11_153 Depth=4
	ldrsh	w8, [x27, #2]
	cmn	w8, #1
	b.ge	LBB11_161
LBB11_153:                              ;   Parent Loop BB11_37 Depth=1
                                        ;     Parent Loop BB11_62 Depth=2
                                        ;       Parent Loop BB11_94 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	cbnz	w20, LBB11_155
; %bb.154:                              ;   in Loop: Header=BB11_153 Depth=4
Lloh125:
	adrp	x0, l_.str@PAGE
Lloh126:
	add	x0, x0, l_.str@PAGEOFF
Lloh127:
	adrp	x1, l_.str.5@PAGE
Lloh128:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1766                       ; =0x6e6
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB11_155:                              ;   in Loop: Header=BB11_153 Depth=4
	cmn	w26, #1
	b.eq	LBB11_163
; %bb.156:                              ;   in Loop: Header=BB11_153 Depth=4
Lloh129:
	adrp	x8, _effect_location_data@GOTPAGE
	mov	w1, w26
Lloh130:
	ldr	w8, [x8, _effect_location_data@GOTPAGEOFF]
Lloh131:
	ldr	w0, [x8]
	bl	_datum_get
	ldr	w26, [x0, #4]
	mov	x27, x0
	cmp	w23, #1
	b.eq	LBB11_160
; %bb.157:                              ;   in Loop: Header=BB11_153 Depth=4
	cmp	w23, #3
	b.ne	LBB11_152
; %bb.158:                              ;   in Loop: Header=BB11_153 Depth=4
	ldrsh	w8, [x20, #76]
	cmn	w8, #1
	b.eq	LBB11_152
; %bb.159:                              ;   in Loop: Header=BB11_153 Depth=4
	bl	_local_player_count
	cmp	w0, #1
	b.ne	LBB11_152
LBB11_160:                              ;   in Loop: Header=BB11_153 Depth=4
	ldrsh	w8, [x27, #2]
	cmn	w8, #2
	b.gt	LBB11_153
LBB11_161:                              ;   in Loop: Header=BB11_94 Depth=3
	cbnz	w27, LBB11_94
	b	LBB11_163
LBB11_162:                              ;   in Loop: Header=BB11_62 Depth=2
Lloh132:
	adrp	x0, l_.str.24@PAGE
Lloh133:
	add	x0, x0, l_.str.24@PAGEOFF
Lloh134:
	adrp	x1, l_.str.5@PAGE
Lloh135:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1411                       ; =0x583
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	fmov	s12, #1.00000000
	.p2align	4, , 8
LBB11_163:                              ;   in Loop: Header=BB11_62 Depth=2
	cmp	w19, #30
	b.hi	LBB11_171
; %bb.164:                              ;   in Loop: Header=BB11_62 Depth=2
	ldr	x8, [sp, #96]                   ; 8-byte Reload
	add	w19, w19, #1
	ldr	w8, [x8]
	cmp	w8, w19
	b.gt	LBB11_62
	b	LBB11_171
LBB11_165:                              ;   in Loop: Header=BB11_62 Depth=2
	ldr	s9, [sp, #32]                   ; 4-byte Reload
	cmp	w8, #5
	b.eq	LBB11_75
; %bb.166:                              ;   in Loop: Header=BB11_62 Depth=2
	ldr	s9, [sp, #16]                   ; 4-byte Reload
	cmp	w8, #4
	b.eq	LBB11_75
LBB11_167:                              ;   in Loop: Header=BB11_62 Depth=2
	mov	x0, xzr
Lloh136:
	adrp	x1, l_.str.5@PAGE
Lloh137:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1886                       ; =0x75e
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	fmov	s9, s10
	b	LBB11_75
LBB11_168:                              ;   in Loop: Header=BB11_62 Depth=2
	fmov	s0, s11
	ldr	s12, [sp, #28]                  ; 4-byte Reload
	cmp	w8, #5
	b.eq	LBB11_81
; %bb.169:                              ;   in Loop: Header=BB11_62 Depth=2
	fmov	s0, s11
	ldr	s12, [sp, #12]                  ; 4-byte Reload
	cmp	w8, #4
	b.eq	LBB11_81
LBB11_170:                              ;   in Loop: Header=BB11_62 Depth=2
	mov	x0, xzr
Lloh138:
	adrp	x1, l_.str.5@PAGE
Lloh139:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1886                       ; =0x75e
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	ldr	b0, [x28, w19, sxtw]
	fmov	s12, s13
	ucvtf	s0, s0
	b	LBB11_81
	.p2align	4, , 8
LBB11_171:                              ;   in Loop: Header=BB11_37 Depth=1
	fmov	s10, #-6.00000000
	str	s13, [x20, #88]
	fmov	s11, #6.00000000
LBB11_172:                              ;   in Loop: Header=BB11_37 Depth=1
	fcmp	s14, s8
	b.hi	LBB11_36
; %bb.173:                              ;   in Loop: Header=BB11_37 Depth=1
	ldrh	w9, [x20, #2]
	ldrh	w8, [x20, #78]
	ldr	x25, [sp, #48]                  ; 8-byte Reload
	tbz	w9, #1, LBB11_176
; %bb.174:                              ;   in Loop: Header=BB11_37 Depth=1
	ldrh	w9, [x25, #6]
	cmp	w8, w9
	b.ne	LBB11_176
; %bb.175:                              ;   in Loop: Header=BB11_37 Depth=1
	ldrh	w23, [x25, #4]
	mov	w9, #65535                      ; =0xffff
	cmp	w23, w9
	b.ne	LBB11_177
	.p2align	4, , 8
LBB11_176:                              ;   in Loop: Header=BB11_37 Depth=1
	add	w23, w8, #1
LBB11_177:                              ;   in Loop: Header=BB11_37 Depth=1
	ldur	w8, [x25, #52]
	sxth	w19, w23
	ldr	w24, [sp, #36]                  ; 4-byte Reload
	cmp	w8, w19
	b.le	LBB11_293
	.p2align	4, , 8
LBB11_178:                              ;   Parent Loop BB11_37 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w1, [x20, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldrb	w8, [x0]
	tbnz	w8, #1, LBB11_180
; %bb.179:                              ;   in Loop: Header=BB11_178 Depth=2
	bl	_get_global_local_random_seed_address
	b	LBB11_181
	.p2align	4, , 8
LBB11_180:                              ;   in Loop: Header=BB11_178 Depth=2
	bl	_get_global_random_seed_address
LBB11_181:                              ;   in Loop: Header=BB11_178 Depth=2
	bl	_real_seed_random
	fmov	s9, s0
	tbnz	w23, #15, LBB11_187
; %bb.182:                              ;   in Loop: Header=BB11_178 Depth=2
	ldur	w8, [x25, #52]
	cmp	w8, w19
	b.le	LBB11_187
; %bb.183:                              ;   in Loop: Header=BB11_178 Depth=2
	ldr	w9, [x25, #56]
	cbz	w9, LBB11_187
; %bb.184:                              ;   in Loop: Header=BB11_178 Depth=2
	ldr	w10, [x25, #60]
	cbz	w10, LBB11_186
; %bb.185:                              ;   in Loop: Header=BB11_178 Depth=2
	ldr	w10, [x10, #12]
	cmp	w10, #68
	b.ne	LBB11_187
LBB11_186:                              ;   in Loop: Header=BB11_178 Depth=2
	add	w10, w19, w19, lsl #4
	lsl	w10, w10, #2
	add	x0, x9, w10, sxtw
	b	LBB11_188
	.p2align	4, , 8
LBB11_187:                              ;   in Loop: Header=BB11_178 Depth=2
	add	x0, x25, #52
	mov	w1, w19
	mov	w2, #68                         ; =0x44
	bl	_tag_block_get_element_with_size
	ldur	w8, [x25, #52]
LBB11_188:                              ;   in Loop: Header=BB11_178 Depth=2
	ldr	s0, [x0, #4]
	fcmp	s9, s0
	b.pl	LBB11_34
; %bb.189:                              ;   in Loop: Header=BB11_178 Depth=2
	add	w23, w23, #1
	sxth	w19, w23
	cmp	w8, w19
	b.gt	LBB11_178
	b	LBB11_34
LBB11_190:                              ;   in Loop: Header=BB11_37 Depth=1
	bl	_get_global_random_seed_address
LBB11_191:                              ;   in Loop: Header=BB11_37 Depth=1
	ldp	s0, s1, [x19, #16]
	bl	_real_seed_random_range
	mov	x24, x19
	str	s0, [x20, #84]
	ldr	w8, [x24, #56]!
	cmp	w8, #33
	b.lt	LBB11_193
; %bb.192:                              ;   in Loop: Header=BB11_37 Depth=1
	ldr	w0, [x20, #4]
	bl	_tag_get_name
	ldr	w9, [x24]
	mov	x8, x0
	mov	w0, #2                          ; =0x2
Lloh140:
	adrp	x1, l_.str.23@PAGE
Lloh141:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w23, #32                        ; =0x20
	str	w8, [sp]
	stp	w9, w23, [sp, #4]
	bl	_error
	str	w23, [x24]
	b	LBB11_194
LBB11_193:                              ;   in Loop: Header=BB11_37 Depth=1
	cmp	w8, #1
	b.lt	LBB11_214
LBB11_194:                              ;   in Loop: Header=BB11_37 Depth=1
	mov	w25, wzr
	mov	w26, wzr
	b	LBB11_197
	.p2align	4, , 8
LBB11_195:                              ;   in Loop: Header=BB11_197 Depth=2
	ucvtf	s1, w23
	fadd	s1, s1, s10
	fdiv	s0, s1, s0
	fadd	s0, s0, s11
	fcvtzs	s0, s0
	str	b0, [x28, w25, sxtw]
LBB11_196:                              ;   in Loop: Header=BB11_197 Depth=2
	ldr	w8, [x24]
	add	w26, w26, #1
	sxth	w25, w26
	cmp	w8, w25
	b.le	LBB11_214
LBB11_197:                              ;   Parent Loop BB11_37 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	tbnz	w26, #15, LBB11_202
; %bb.198:                              ;   in Loop: Header=BB11_197 Depth=2
	ldr	w8, [x19, #60]
	cbz	w8, LBB11_202
; %bb.199:                              ;   in Loop: Header=BB11_197 Depth=2
	ldr	w9, [x19, #64]
	cbz	w9, LBB11_201
; %bb.200:                              ;   in Loop: Header=BB11_197 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #232
	b.ne	LBB11_202
LBB11_201:                              ;   in Loop: Header=BB11_197 Depth=2
	mov	w9, #232                        ; =0xe8
	mul	w9, w25, w9
	add	x23, x8, w9, sxtw
	b	LBB11_203
	.p2align	4, , 8
LBB11_202:                              ;   in Loop: Header=BB11_197 Depth=2
	mov	x0, x24
	mov	w1, w25
	mov	w2, #232                        ; =0xe8
	bl	_tag_block_get_element_with_size
	mov	x23, x0
LBB11_203:                              ;   in Loop: Header=BB11_197 Depth=2
	bl	_get_global_local_random_seed_address
	ldrsh	w8, [x23, #108]
	ldrsh	w10, [x23, #110]
	scvtf	s0, w8
	ldp	w9, w8, [x23, #224]
	fmov	s8, s0
	tbnz	w9, #5, LBB11_212
; %bb.204:                              ;   in Loop: Header=BB11_197 Depth=2
	tbnz	w8, #5, LBB11_213
LBB11_205:                              ;   in Loop: Header=BB11_197 Depth=2
	scvtf	s1, w10
	fsub	s1, s1, s0
	tbnz	w9, #6, LBB11_210
; %bb.206:                              ;   in Loop: Header=BB11_197 Depth=2
	tbnz	w8, #6, LBB11_211
LBB11_207:                              ;   in Loop: Header=BB11_197 Depth=2
	movi	d0, #0000000000000000
	bl	_real_seed_random_range
	fadd	s0, s8, s0
	fcvtzs	w8, s0
	and	w23, w8, #0xff
	strb	w8, [x28, w25, sxtw]
	cmp	w23, #7
	b.lo	LBB11_196
; %bb.208:                              ;   in Loop: Header=BB11_197 Depth=2
	bl	_local_player_count
	fmov	s0, #1.00000000
	cmp	w0, #2
	b.lt	LBB11_195
; %bb.209:                              ;   in Loop: Header=BB11_197 Depth=2
	bl	_local_player_count
	scvtf	s0, w0
	b	LBB11_195
LBB11_210:                              ;   in Loop: Header=BB11_197 Depth=2
	ldr	s0, [x20, #68]
	fmul	s1, s1, s0
	tbz	w8, #6, LBB11_207
LBB11_211:                              ;   in Loop: Header=BB11_197 Depth=2
	ldr	s0, [x20, #72]
	fmul	s1, s1, s0
	b	LBB11_207
LBB11_212:                              ;   in Loop: Header=BB11_197 Depth=2
	ldr	s1, [x20, #68]
	fmul	s8, s1, s0
	tbz	w8, #5, LBB11_205
LBB11_213:                              ;   in Loop: Header=BB11_197 Depth=2
	ldr	s1, [x20, #72]
	fmul	s8, s8, s1
	b	LBB11_205
	.p2align	4, , 8
LBB11_214:                              ;   in Loop: Header=BB11_37 Depth=1
	ldrh	w8, [x20, #2]
	tbnz	w8, #4, LBB11_36
; %bb.215:                              ;   in Loop: Header=BB11_37 Depth=1
	ldr	w1, [x20, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldrsh	w1, [x20, #78]
	str	x0, [sp, #120]                  ; 8-byte Spill
	tbnz	w1, #31, LBB11_221
; %bb.216:                              ;   in Loop: Header=BB11_37 Depth=1
	ldur	w8, [x0, #52]
	cmp	w8, w1
	b.le	LBB11_221
; %bb.217:                              ;   in Loop: Header=BB11_37 Depth=1
	ldr	w8, [x0, #56]
	cbz	w8, LBB11_221
; %bb.218:                              ;   in Loop: Header=BB11_37 Depth=1
	ldr	w9, [x0, #60]
	cbz	w9, LBB11_220
; %bb.219:                              ;   in Loop: Header=BB11_37 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #68
	b.ne	LBB11_221
LBB11_220:                              ;   in Loop: Header=BB11_37 Depth=1
	add	w9, w1, w1, lsl #4
	lsl	w9, w9, #2
	add	x24, x8, w9, sxtw
	b	LBB11_222
LBB11_221:                              ;   in Loop: Header=BB11_37 Depth=1
	add	x0, x0, #52
	mov	w2, #68                         ; =0x44
	bl	_tag_block_get_element_with_size
	mov	x24, x0
LBB11_222:                              ;   in Loop: Header=BB11_37 Depth=1
	mov	x25, x24
	ldr	w8, [x25, #44]!
	cmp	w8, #1
	b.lt	LBB11_36
; %bb.223:                              ;   in Loop: Header=BB11_37 Depth=1
	mov	w1, wzr
	mov	w19, wzr
	b	LBB11_225
	.p2align	4, , 8
LBB11_224:                              ;   in Loop: Header=BB11_225 Depth=2
	ldr	w8, [x25]
	add	w19, w19, #1
	add	x28, x20, #220
	sxth	w1, w19
	cmp	w8, w1
	b.le	LBB11_36
LBB11_225:                              ;   Parent Loop BB11_37 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB11_235 Depth 3
	tbnz	w19, #15, LBB11_230
; %bb.226:                              ;   in Loop: Header=BB11_225 Depth=2
	ldr	w8, [x24, #48]
	cbz	w8, LBB11_230
; %bb.227:                              ;   in Loop: Header=BB11_225 Depth=2
	ldr	w9, [x24, #52]
	cbz	w9, LBB11_229
; %bb.228:                              ;   in Loop: Header=BB11_225 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #104
	b.ne	LBB11_230
LBB11_229:                              ;   in Loop: Header=BB11_225 Depth=2
	mov	w9, #104                        ; =0x68
	mul	w9, w1, w9
	add	x26, x8, w9, sxtw
	ldrsh	w8, [x26, #4]
	tbz	w8, #31, LBB11_231
	b	LBB11_224
	.p2align	4, , 8
LBB11_230:                              ;   in Loop: Header=BB11_225 Depth=2
	mov	x0, x25
	mov	w2, #104                        ; =0x68
	bl	_tag_block_get_element_with_size
	mov	x26, x0
	ldrsh	w8, [x26, #4]
	tbnz	w8, #31, LBB11_224
LBB11_231:                              ;   in Loop: Header=BB11_225 Depth=2
	ldr	x9, [sp, #120]                  ; 8-byte Reload
	cmp	w8, #31
	ldr	w9, [x9, #40]
	ccmp	w9, w8, #4, ls
	b.le	LBB11_224
; %bb.232:                              ;   in Loop: Header=BB11_225 Depth=2
	ldr	w9, [x26, #36]
	cmn	w9, #1
	b.eq	LBB11_224
; %bb.233:                              ;   in Loop: Header=BB11_225 Depth=2
	ldrh	w9, [x20, #2]
	ldrh	w10, [x26, #2]
	tst	w9, #0x40
	mov	w9, #1                          ; =0x1
	cinc	w9, w9, eq
	cmp	w10, w9
	b.eq	LBB11_224
; %bb.234:                              ;   in Loop: Header=BB11_225 Depth=2
	add	x9, x20, #92
	ldr	w27, [x9, w8, sxtw #2]
	.p2align	4, , 8
LBB11_235:                              ;   Parent Loop BB11_37 Depth=1
                                        ;     Parent Loop BB11_225 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cbnz	w20, LBB11_237
; %bb.236:                              ;   in Loop: Header=BB11_235 Depth=3
Lloh142:
	adrp	x0, l_.str@PAGE
Lloh143:
	add	x0, x0, l_.str@PAGEOFF
Lloh144:
	adrp	x1, l_.str.5@PAGE
Lloh145:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1766                       ; =0x6e6
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB11_237:                              ;   in Loop: Header=BB11_235 Depth=3
	cmn	w27, #1
	b.eq	LBB11_224
; %bb.238:                              ;   in Loop: Header=BB11_235 Depth=3
Lloh146:
	adrp	x8, _effect_location_data@GOTPAGE
	mov	w1, w27
Lloh147:
	ldr	w8, [x8, _effect_location_data@GOTPAGEOFF]
Lloh148:
	ldr	w0, [x8]
	bl	_datum_get
	ldrsh	w1, [x0, #2]
	ldr	w27, [x0, #4]
	cmn	w1, #1
	b.lt	LBB11_235
; %bb.239:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	x28, x0
	cbz	w28, LBB11_224
; %bb.240:                              ;   in Loop: Header=BB11_235 Depth=3
	cmn	w1, #1
	b.eq	LBB11_261
; %bb.241:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	w0, [x20, #60]
	bl	_object_get_node_matrix
	add	x1, x28, #48
	add	x2, sp, #160
	mov	x23, x0
	bl	_matrix4x3_transform_point
	add	x1, x28, #12
	add	x2, sp, #144
	mov	x0, x23
	bl	_matrix4x3_transform_normal
	add	x1, x28, #36
	add	x2, sp, #128
	mov	x0, x23
	bl	_matrix4x3_transform_normal
	ldrh	w8, [x26, #6]
	tbz	w8, #0, LBB11_243
LBB11_242:                              ;   in Loop: Header=BB11_235 Depth=3
Lloh149:
	adrp	x8, _global_down3d@GOTPAGE
Lloh150:
	adrp	x10, _global_forward3d@GOTPAGE
Lloh151:
	ldr	w8, [x8, _global_down3d@GOTPAGEOFF]
Lloh152:
	ldr	w8, [x8]
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
Lloh153:
	ldr	w10, [x10, _global_forward3d@GOTPAGEOFF]
	str	x9, [sp, #144]
	str	w8, [sp, #152]
Lloh154:
	ldr	w10, [x10]
	ldr	x8, [x10]
	ldr	w9, [x10, #8]
	str	x8, [sp, #128]
	str	w9, [sp, #136]
LBB11_243:                              ;   in Loop: Header=BB11_235 Depth=3
	ldrh	w8, [x26]
	cmp	w8, #1
	b.gt	LBB11_247
; %bb.244:                              ;   in Loop: Header=BB11_235 Depth=3
	cbz	w8, LBB11_250
; %bb.245:                              ;   in Loop: Header=BB11_235 Depth=3
	cmp	w8, #1
	b.ne	LBB11_262
; %bb.246:                              ;   in Loop: Header=BB11_235 Depth=3
	add	x0, x20, #16
	add	x1, sp, #160
	mov	x2, xzr
	bl	_scenario_location_underwater
	cbnz	w0, LBB11_235
	b	LBB11_250
	.p2align	4, , 8
LBB11_247:                              ;   in Loop: Header=BB11_235 Depth=3
	cmp	w8, #3
	b.eq	LBB11_235
; %bb.248:                              ;   in Loop: Header=BB11_235 Depth=3
	cmp	w8, #2
	b.ne	LBB11_262
; %bb.249:                              ;   in Loop: Header=BB11_235 Depth=3
	add	x0, x20, #16
	add	x1, sp, #160
	mov	x2, xzr
	bl	_scenario_location_underwater
	cbz	w0, LBB11_235
LBB11_250:                              ;   in Loop: Header=BB11_235 Depth=3
	fmov	s0, #1.00000000
	ldrb	w8, [x26, #96]
	tbz	w8, #5, LBB11_252
; %bb.251:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	s0, [x20, #68]
LBB11_252:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	w8, [x26, #100]
	tbz	w8, #5, LBB11_254
; %bb.253:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	s1, [x20, #72]
	fmul	s0, s0, s1
LBB11_254:                              ;   in Loop: Header=BB11_235 Depth=3
Lloh155:
	adrp	x8, _skulls_effect_quiet@GOTPAGE
Lloh156:
	ldr	w8, [x8, _skulls_effect_quiet@GOTPAGEOFF]
Lloh157:
	ldr	w9, [x8]
	ldr	w8, [x26, #20]
	cbz	w9, LBB11_256
; %bb.255:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w9, #25633                      ; =0x6421
	movk	w9, #29550, lsl #16
	cmp	w8, w9
	b.eq	LBB11_235
LBB11_256:                              ;   in Loop: Header=BB11_235 Depth=3
Lloh158:
	adrp	x9, _skulls_effect_harmless@GOTPAGE
Lloh159:
	ldr	w9, [x9, _skulls_effect_harmless@GOTPAGEOFF]
Lloh160:
	ldr	w9, [x9]
	cbz	w9, LBB11_258
; %bb.257:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w9, #29729                      ; =0x7421
	movk	w9, #27248, lsl #16
	cmp	w8, w9
	b.eq	LBB11_235
LBB11_258:                              ;   in Loop: Header=BB11_235 Depth=3
Lloh161:
	adrp	x9, _skulls_effect_no_objects@GOTPAGE
Lloh162:
	ldr	w9, [x9, _skulls_effect_no_objects@GOTPAGEOFF]
Lloh163:
	ldr	w9, [x9]
	cbz	w9, LBB11_264
; %bb.259:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w9, #27237                      ; =0x6a65
	movk	w9, #28514, lsl #16
	cmp	w8, w9
	b.ne	LBB11_264
; %bb.260:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	w8, [x26, #24]
	mov	w9, #29282                      ; =0x7262
	movk	w9, #26465, lsl #16
	cmp	w8, w9
	b.ne	LBB11_235
	b	LBB11_273
LBB11_261:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	x8, [x28, #48]
	ldr	w9, [x28, #56]
	ldur	x10, [x28, #12]
	ldr	w11, [x28, #44]
	str	x8, [sp, #160]
	str	w9, [sp, #168]
	ldr	w8, [x28, #20]
	ldur	x9, [x28, #36]
	str	x10, [sp, #144]
	str	w11, [sp, #136]
	str	w8, [sp, #152]
	str	x9, [sp, #128]
	ldrh	w8, [x26, #6]
	tbnz	w8, #0, LBB11_242
	b	LBB11_243
LBB11_262:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	x0, xzr
Lloh164:
	adrp	x1, l_.str.5@PAGE
Lloh165:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #888                        ; =0x378
LBB11_263:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	b	LBB11_235
LBB11_264:                              ;   in Loop: Header=BB11_235 Depth=3
Lloh166:
	adrp	x9, _skulls_effect_size@GOTPAGE
Lloh167:
	ldr	w9, [x9, _skulls_effect_size@GOTPAGEOFF]
Lloh168:
	ldr	s1, [x9]
	mov	w9, #27236                      ; =0x6a64
	movk	w9, #28514, lsl #16
	cmp	w8, w9
	fmul	s9, s0, s1
	b.gt	LBB11_269
; %bb.265:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w9, #25441                      ; =0x6361
	movk	w9, #25701, lsl #16
	cmp	w8, w9
	b.eq	LBB11_281
; %bb.266:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w9, #29729                      ; =0x7421
	movk	w9, #27248, lsl #16
	cmp	w8, w9
	b.eq	LBB11_283
; %bb.267:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w9, #26472                      ; =0x6768
	movk	w9, #27753, lsl #16
	cmp	w8, w9
	b.ne	LBB11_282
; %bb.268:                              ;   in Loop: Header=BB11_235 Depth=3
	ldrh	w8, [x28, #2]
	fmov	s0, s9
	mov	w10, #65535                     ; =0xffff
	ldr	w0, [x26, #36]
	ldr	w1, [x20, #60]
	add	x3, x28, #48
	add	x4, x28, #12
	and	w9, w8, #0x7fff
	bics	wzr, w10, w8
	csinv	w2, w9, wzr, ne
	bl	_light_new_unattached
	b	LBB11_235
LBB11_269:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w9, #27237                      ; =0x6a65
	movk	w9, #28514, lsl #16
	cmp	w8, w9
	b.eq	LBB11_273
; %bb.270:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w9, #25633                      ; =0x6421
	movk	w9, #29550, lsl #16
	cmp	w8, w9
	b.eq	LBB11_286
; %bb.271:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w9, #29804                      ; =0x746c
	movk	w9, #28771, lsl #16
	cmp	w8, w9
	b.ne	LBB11_282
; %bb.272:                              ;   in Loop: Header=BB11_235 Depth=3
	mov	w10, #1065353216                ; =0x3f800000
	ldur	x8, [x20, #24]
	ldur	w9, [x20, #32]
	str	w10, [sp, #176]
	add	x10, sp, #176
	stur	x8, [x10, #4]
	stur	w9, [x10, #12]
	bl	_get_global_local_random_seed_address
	ldp	s0, s1, [x26, #64]
	add	x2, sp, #144
	sub	x3, x29, #152
	ldr	s2, [x26, #72]
	sub	x4, x29, #168
	ldp	w5, w6, [x26, #96]
	mov	x1, x20
	bl	_effect_random_translational_velocity
	ldur	d0, [x20, #36]
	add	x1, sp, #160
	ldur	d1, [x29, #-168]
	sub	x2, x29, #168
	ldr	s2, [x20, #44]
	add	x3, sp, #176
	ldur	s3, [x29, #-160]
	ldr	w0, [x26, #36]
	fadd	v0.2s, v0.2s, v1.2s
	fadd	s1, s2, s3
	stur	d0, [x29, #-168]
	fmov	s0, s9
	stur	s1, [x29, #-160]
	bl	_particle_system_new_unattached
	b	LBB11_235
LBB11_273:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	w1, [x26, #36]
	add	x0, sp, #176
	ldr	w2, [x20, #64]
	bl	_object_placement_data_new
	ldr	x8, [sp, #160]
	add	x28, sp, #176
	ldr	w9, [sp, #168]
	ldr	x10, [sp, #144]
	ldr	w11, [sp, #136]
	stur	x8, [x28, #24]
	stur	w9, [x28, #32]
	ldr	w8, [sp, #152]
	ldr	x9, [sp, #128]
	stur	x10, [x28, #52]
	stur	w11, [x28, #72]
	stur	w8, [x28, #60]
	stur	x9, [x28, #64]
	bl	_get_global_random_seed_address
	ldp	s0, s1, [x26, #64]
	add	x2, sp, #144
	sub	x3, x29, #152
	ldr	s2, [x26, #72]
	add	x4, x28, #40
	ldp	w5, w6, [x26, #96]
	mov	x1, x20
	add	x23, sp, #176
	bl	_effect_random_translational_velocity
	ldr	s0, [x20, #36]
	ldp	s1, s2, [sp, #216]
	fadd	s0, s0, s1
	ldr	s1, [sp, #224]
	str	s0, [sp, #216]
	ldr	s0, [x20, #40]
	fadd	s0, s0, s2
	str	s0, [sp, #220]
	ldr	s0, [x20, #44]
	fadd	s0, s0, s1
	str	s0, [sp, #224]
	bl	_get_global_random_seed_address
	ldr	s0, [x26, #76]
	mov	x28, x0
	ldr	w8, [x26, #96]
	fmov	s8, s0
	tbnz	w8, #3, LBB11_289
LBB11_274:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	w9, [x26, #100]
	ldr	s1, [x26, #80]
	tbnz	w9, #3, LBB11_290
; %bb.275:                              ;   in Loop: Header=BB11_235 Depth=3
	fsub	s1, s1, s0
	tbnz	w8, #4, LBB11_291
LBB11_276:                              ;   in Loop: Header=BB11_235 Depth=3
	tbnz	w9, #4, LBB11_292
LBB11_277:                              ;   in Loop: Header=BB11_235 Depth=3
	movi	d0, #0000000000000000
	mov	x0, x28
	bl	_real_seed_random_range
	fadd	s0, s8, s0
	fcmp	s0, #0.0
	b.eq	LBB11_279
; %bb.278:                              ;   in Loop: Header=BB11_235 Depth=3
	add	x1, x23, #76
	mov	x0, x28
	str	q0, [sp, #96]                   ; 16-byte Spill
	bl	_seed_random_direction3d
	ldur	d0, [sp, #252]
	ldr	s1, [sp, #260]
	ldr	q2, [sp, #96]                   ; 16-byte Reload
	fmul	v0.2s, v0.2s, v2.s[0]
	fmul	s1, s2, s1
	stur	d0, [sp, #252]
	str	s1, [sp, #260]
	b	LBB11_280
LBB11_279:                              ;   in Loop: Header=BB11_235 Depth=3
Lloh169:
	adrp	x8, _global_zero_vector3d@GOTPAGE
	add	x10, sp, #176
Lloh170:
	ldr	w8, [x8, _global_zero_vector3d@GOTPAGEOFF]
Lloh171:
	ldr	w8, [x8]
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
	stur	x9, [x10, #76]
	stur	w8, [x10, #84]
LBB11_280:                              ;   in Loop: Header=BB11_235 Depth=3
	add	x0, sp, #176
	bl	_object_new
	b	LBB11_235
LBB11_281:                              ;   in Loop: Header=BB11_235 Depth=3
	bl	_get_global_local_random_seed_address
	ldp	s0, s1, [x26, #64]
	add	x2, sp, #144
	sub	x3, x29, #152
	ldr	s2, [x26, #72]
	sub	x4, x29, #168
	ldp	w5, w6, [x26, #96]
	mov	x1, x20
	bl	_effect_random_translational_velocity
	bl	_get_global_local_random_seed_address
	ldp	s0, s1, [x26, #84]
	bl	_real_seed_random_range
	ldr	w0, [x26, #36]
	add	x1, sp, #160
	sub	x2, x29, #168
	mov	w3, wzr
	mov	w4, #-1                         ; =0xffffffff
	mov	x5, xzr
	bl	_decal_new
	b	LBB11_235
LBB11_282:                              ;   in Loop: Header=BB11_235 Depth=3
Lloh172:
	adrp	x0, l_.str.9@PAGE
Lloh173:
	add	x0, x0, l_.str.9@PAGEOFF
Lloh174:
	adrp	x1, l_.str.5@PAGE
Lloh175:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1753                       ; =0x6d9
	b	LBB11_263
LBB11_283:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	w0, [x20, #64]
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	ldr	w1, [x26, #36]
	mov	x23, x0
	add	x0, sp, #176
	bl	_damage_data_new
	cbz	w23, LBB11_285
; %bb.284:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	w8, [x23, #112]
	ldr	w9, [x20, #64]
	ldrh	w10, [x23, #104]
	stp	w8, w9, [sp, #184]
	strh	w10, [sp, #192]
LBB11_285:                              ;   in Loop: Header=BB11_235 Depth=3
	str	s9, [sp, #240]
	add	x12, sp, #176
	ldur	x9, [x20, #16]
	add	x0, sp, #176
	ldr	x8, [sp, #160]
	mov	w1, #-1                         ; =0xffffffff
	ldr	w10, [sp, #168]
	ldr	w11, [sp, #152]
	stur	x9, [sp, #196]
	ldr	x9, [sp, #144]
	stur	x8, [x12, #28]
	stur	w10, [x12, #36]
	stur	x8, [x12, #40]
	stur	w10, [x12, #48]
	stur	x9, [x12, #52]
	stur	w11, [x12, #60]
	bl	_area_of_effect_cause_damage
	b	LBB11_235
LBB11_286:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	w0, [x20, #60]
	cmn	w0, #1
	b.eq	LBB11_288
; %bb.287:                              ;   in Loop: Header=BB11_235 Depth=3
	ldrh	w8, [x28, #2]
	fmov	s0, s9
	mov	w10, #65535                     ; =0xffff
	ldr	w1, [x26, #36]
	add	x3, x28, #48
	add	x4, x28, #12
	and	w9, w8, #0x7fff
	bics	wzr, w10, w8
	csinv	w2, w9, wzr, ne
	bl	_object_impulse_sound_new
	b	LBB11_235
LBB11_288:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	x8, [sp, #160]
	add	x12, sp, #176
	ldr	w9, [sp, #168]
	fmov	s0, s9
	ldr	x10, [sp, #144]
	add	x1, sp, #176
	ldr	w11, [sp, #152]
	str	x8, [sp, #176]
Lloh176:
	adrp	x8, _global_zero_vector3d@GOTPAGE
Lloh177:
	ldr	w8, [x8, _global_zero_vector3d@GOTPAGEOFF]
	str	w9, [sp, #184]
	stur	x10, [x12, #12]
	stur	w11, [x12, #20]
Lloh178:
	ldr	w8, [x8]
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
	stur	x9, [x12, #24]
	stur	w8, [x12, #32]
	ldur	x8, [x20, #16]
	stur	x8, [sp, #212]
	ldr	w0, [x26, #36]
	bl	_unattached_impulse_sound_new
	b	LBB11_235
LBB11_289:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	s1, [x20, #68]
	fmul	s8, s0, s1
	b	LBB11_274
LBB11_290:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	s2, [x20, #72]
	fmul	s8, s8, s2
	fsub	s1, s1, s0
	tbz	w8, #4, LBB11_276
LBB11_291:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	s0, [x20, #68]
	fmul	s1, s1, s0
	tbz	w9, #4, LBB11_277
LBB11_292:                              ;   in Loop: Header=BB11_235 Depth=3
	ldr	s0, [x20, #72]
	fmul	s1, s1, s0
	b	LBB11_277
LBB11_293:
	ldrh	w8, [x20, #2]
	tbnz	w8, #1, LBB11_295
; %bb.294:
	mov	w0, w24
	bl	_effect_delete
	b	LBB11_32
LBB11_295:
	orr	w8, w8, #0x8
	strh	w8, [x20, #2]
	b	LBB11_32
LBB11_296:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x9, w10, sxtw #2]
	b	LBB11_28
	.loh AdrpLdrGotLdr	Lloh97, Lloh98, Lloh99
	.loh AdrpAdd	Lloh102, Lloh103
	.loh AdrpAdd	Lloh100, Lloh101
	.loh AdrpAdd	Lloh106, Lloh107
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpLdrGotLdr	Lloh108, Lloh109, Lloh110
	.loh AdrpLdrGotLdr	Lloh111, Lloh112, Lloh113
	.loh AdrpAdd	Lloh114, Lloh115
	.loh AdrpLdrGotLdr	Lloh116, Lloh117, Lloh118
	.loh AdrpLdrGotLdr	Lloh119, Lloh120, Lloh121
	.loh AdrpLdrGotLdr	Lloh122, Lloh123, Lloh124
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpLdrGotLdr	Lloh129, Lloh130, Lloh131
	.loh AdrpAdd	Lloh134, Lloh135
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpAdd	Lloh136, Lloh137
	.loh AdrpAdd	Lloh138, Lloh139
	.loh AdrpAdd	Lloh140, Lloh141
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpAdd	Lloh142, Lloh143
	.loh AdrpLdrGotLdr	Lloh146, Lloh147, Lloh148
	.loh AdrpLdrGotLdr	Lloh150, Lloh153, Lloh154
	.loh AdrpLdrGotLdr	Lloh149, Lloh151, Lloh152
	.loh AdrpLdrGotLdr	Lloh155, Lloh156, Lloh157
	.loh AdrpLdrGotLdr	Lloh158, Lloh159, Lloh160
	.loh AdrpLdrGotLdr	Lloh161, Lloh162, Lloh163
	.loh AdrpAdd	Lloh164, Lloh165
	.loh AdrpLdrGotLdr	Lloh166, Lloh167, Lloh168
	.loh AdrpLdrGotLdr	Lloh169, Lloh170, Lloh171
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpAdd	Lloh172, Lloh173
	.loh AdrpLdrGotLdr	Lloh176, Lloh177, Lloh178
                                        ; -- End function
	.globl	_effect_new_unattached_from_markers ; -- Begin function effect_new_unattached_from_markers
	.p2align	4
_effect_new_unattached_from_markers:    ; @effect_new_unattached_from_markers
; %bb.0:
	sub	sp, sp, #128
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	fmov	s8, s1
	fmov	s9, s0
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	mov	x26, x7
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	mov	x23, x6
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	mov	x19, x2
	mov	x20, x5
	mov	x28, x4
	mov	w25, w3
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	cbnz	w19, LBB12_14
LBB12_1:
	cmp	w25, #0
	b.le	LBB12_20
LBB12_2:
	cbz	w20, LBB12_21
LBB12_3:
	cbz	w23, LBB12_22
LBB12_4:
	fcmp	s9, #0.0
	ldrb	w2, [x29, #20]
	b.lt	LBB12_18
; %bb.5:
	fmov	s0, #1.00000000
	fcmp	s9, s0
	b.hi	LBB12_18
LBB12_6:
	fcmp	s8, #0.0
	b.lt	LBB12_19
; %bb.7:
	fmov	s0, #1.00000000
	fcmp	s8, s0
	b.hi	LBB12_19
LBB12_8:
	bl	_effect_allocate
	mov	w27, w0
	cmn	w0, #1
	b.eq	LBB12_13
; %bb.9:
Lloh179:
	adrp	x8, _effect_data@GOTPAGE
	str	x19, [sp]                       ; 8-byte Spill
	ldr	w24, [x29, #16]
	mov	w1, w27
	mov	x19, x23
	mov	x23, x28
Lloh180:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
Lloh181:
	ldr	w0, [x8]
	bl	_datum_get
Lloh182:
	adrp	x8, _global_real_rgb_white@GOTPAGE
	cmp	w26, #0
	mov	x28, x0
Lloh183:
	ldr	w8, [x8, _global_real_rgb_white@GOTPAGEOFF]
	stp	s9, s8, [x0, #68]
Lloh184:
	ldr	w8, [x8]
	csel	x8, x8, x26, eq
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
	str	x9, [x0, #24]!
	str	w8, [x28, #32]
	bl	_valid_real_rgb_color
	cbz	w0, LBB12_23
LBB12_10:
	cbnz	w24, LBB12_24
; %bb.11:
	stp	wzr, wzr, [x28, #52]
LBB12_12:
	mov	w8, #-1                         ; =0xffffffff
	mov	w9, #65535                      ; =0xffff
	add	x0, x28, #16
	mov	x1, x20
	strh	w25, [sp, #16]
	stp	w23, w20, [sp, #20]
	str	w8, [x28, #60]
	str	w19, [sp, #28]
	strh	w9, [sp, #8]
	str	wzr, [sp, #12]
	bl	_scenario_location_from_point
Lloh185:
	adrp	x8, _global_zero_vector3d@GOTPAGE
	add	x10, sp, #8
	adrp	x11, _global_effect_marker_list@PAGE
	add	x0, x28, #92
	mov	w1, #-1                         ; =0xffffffff
	mov	w2, #128                        ; =0x80
Lloh186:
	ldr	w8, [x8, _global_zero_vector3d@GOTPAGEOFF]
	ldr	x9, [sp]                        ; 8-byte Reload
	str	w10, [x11, _global_effect_marker_list@PAGEOFF]
Lloh187:
	ldr	w8, [x8]
	cmp	w9, #0
	csel	x8, x8, x9, eq
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
	stur	x9, [x28, #36]
	str	w8, [x28, #44]
	bl	_csmemset
Lloh188:
	adrp	x1, _effect_marker_list_get_markers_by_name@PAGE
Lloh189:
	add	x1, x1, _effect_marker_list_get_markers_by_name@PAGEOFF
	mov	x0, x28
	bl	_effect_build_locations
	movi	d0, #0000000000000000
	mov	w0, w27
	bl	_effect_update
LBB12_13:
	mov	w0, w27
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB12_14:
	ldr	w8, [x19]
	ubfx	w8, w8, #23, #8
	cmp	w8, #254
	b.hi	LBB12_17
; %bb.15:
	ldr	w8, [x19, #4]
	ubfx	w8, w8, #23, #8
	cmp	w8, #254
	b.hi	LBB12_17
; %bb.16:
	ldr	w8, [x19, #8]
	ubfx	w8, w8, #23, #8
	cmp	w8, #255
	b.lo	LBB12_1
LBB12_17:
Lloh190:
	adrp	x8, l_.str.14@PAGE
Lloh191:
	add	x8, x8, l_.str.14@PAGEOFF
Lloh192:
	adrp	x9, l_.str.5@PAGE
Lloh193:
	add	x9, x9, l_.str.5@PAGEOFF
	mov	w24, w0
	mov	x0, x8
	mov	w27, w1
	mov	x1, x9
	mov	w2, #448                        ; =0x1c0
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w0, w24
	mov	w1, w27
	b	LBB12_1
LBB12_18:
Lloh194:
	adrp	x8, l_.str.9@PAGE
Lloh195:
	add	x8, x8, l_.str.9@PAGEOFF
Lloh196:
	adrp	x9, l_.str.5@PAGE
Lloh197:
	add	x9, x9, l_.str.5@PAGEOFF
	mov	w24, w0
	mov	x0, x8
	mov	w27, w1
	mov	x1, x9
	str	x26, [sp]                       ; 8-byte Spill
	mov	w26, w25
	mov	x25, x23
	mov	x23, x28
	mov	w28, w2
	mov	w2, #453                        ; =0x1c5
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w2, w28
	mov	x28, x23
	mov	x23, x25
	mov	w25, w26
	ldr	x26, [sp]                       ; 8-byte Reload
	mov	w0, w24
	mov	w1, w27
	b	LBB12_6
LBB12_19:
Lloh198:
	adrp	x8, l_.str.9@PAGE
Lloh199:
	add	x8, x8, l_.str.9@PAGEOFF
Lloh200:
	adrp	x9, l_.str.5@PAGE
Lloh201:
	add	x9, x9, l_.str.5@PAGEOFF
	mov	w24, w0
	mov	x0, x8
	mov	w27, w1
	mov	x1, x9
	str	x26, [sp]                       ; 8-byte Spill
	mov	w26, w25
	mov	x25, x23
	mov	x23, x28
	mov	w28, w2
	mov	w2, #454                        ; =0x1c6
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w2, w28
	mov	x28, x23
	mov	x23, x25
	mov	w25, w26
	ldr	x26, [sp]                       ; 8-byte Reload
	mov	w0, w24
	mov	w1, w27
	b	LBB12_8
LBB12_20:
Lloh202:
	adrp	x8, l_.str.6@PAGE
Lloh203:
	add	x8, x8, l_.str.6@PAGEOFF
Lloh204:
	adrp	x9, l_.str.5@PAGE
Lloh205:
	add	x9, x9, l_.str.5@PAGEOFF
	mov	w24, w0
	mov	x0, x8
	mov	w27, w1
	mov	x1, x9
	mov	w2, #449                        ; =0x1c1
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w0, w24
	mov	w1, w27
	b	LBB12_2
LBB12_21:
Lloh206:
	adrp	x8, l_.str.7@PAGE
Lloh207:
	add	x8, x8, l_.str.7@PAGEOFF
Lloh208:
	adrp	x9, l_.str.5@PAGE
Lloh209:
	add	x9, x9, l_.str.5@PAGEOFF
	mov	w24, w0
	mov	x0, x8
	mov	w27, w1
	mov	x1, x9
	mov	w2, #451                        ; =0x1c3
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w0, w24
	mov	w1, w27
	b	LBB12_3
LBB12_22:
Lloh210:
	adrp	x8, l_.str.8@PAGE
Lloh211:
	add	x8, x8, l_.str.8@PAGEOFF
Lloh212:
	adrp	x9, l_.str.5@PAGE
Lloh213:
	add	x9, x9, l_.str.5@PAGEOFF
	mov	w24, w0
	mov	x0, x8
	mov	w27, w1
	mov	x1, x9
	mov	w2, #452                        ; =0x1c4
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	mov	w0, w24
	mov	w1, w27
	b	LBB12_4
LBB12_23:
Lloh214:
	adrp	x0, l_.str.9@PAGE
Lloh215:
	add	x0, x0, l_.str.9@PAGEOFF
Lloh216:
	adrp	x1, l_.str.5@PAGE
Lloh217:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #980                        ; =0x3d4
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	b	LBB12_10
LBB12_24:
	ldr	w8, [x24, #8]
	ldr	x9, [x24]
	str	w8, [x28, #56]
	str	x9, [x28, #48]
	b	LBB12_12
	.loh AdrpLdrGotLdr	Lloh182, Lloh183, Lloh184
	.loh AdrpLdrGotLdr	Lloh179, Lloh180, Lloh181
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpLdrGotLdr	Lloh185, Lloh186, Lloh187
	.loh AdrpAdd	Lloh192, Lloh193
	.loh AdrpAdd	Lloh190, Lloh191
	.loh AdrpAdd	Lloh196, Lloh197
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpAdd	Lloh200, Lloh201
	.loh AdrpAdd	Lloh198, Lloh199
	.loh AdrpAdd	Lloh204, Lloh205
	.loh AdrpAdd	Lloh202, Lloh203
	.loh AdrpAdd	Lloh208, Lloh209
	.loh AdrpAdd	Lloh206, Lloh207
	.loh AdrpAdd	Lloh212, Lloh213
	.loh AdrpAdd	Lloh210, Lloh211
	.loh AdrpAdd	Lloh216, Lloh217
	.loh AdrpAdd	Lloh214, Lloh215
                                        ; -- End function
	.globl	_effect_new_from_object         ; -- Begin function effect_new_from_object
	.p2align	4
_effect_new_from_object:                ; @effect_new_from_object
; %bb.0:
	stp	d9, d8, [sp, #-96]!             ; 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #1792
	fmov	s8, s1
	mov	x26, x5
	fmov	s9, s0
	mov	x27, x4
	mov	w19, w3
	mov	w25, w2
	mov	w20, w1
	mov	w24, w0
	cmn	w2, #1
	b.ne	LBB13_2
; %bb.1:
Lloh218:
	adrp	x0, l_.str.4@PAGE
Lloh219:
	add	x0, x0, l_.str.4@PAGEOFF
Lloh220:
	adrp	x1, l_.str.5@PAGE
Lloh221:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #305                        ; =0x131
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB13_2:
	fcmp	s9, #0.0
	fmov	s0, #1.00000000
	fccmp	s9, s0, #2, ge
	b.ls	LBB13_4
; %bb.3:
Lloh222:
	adrp	x0, l_.str.9@PAGE
Lloh223:
	add	x0, x0, l_.str.9@PAGEOFF
Lloh224:
	adrp	x1, l_.str.5@PAGE
Lloh225:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #306                        ; =0x132
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB13_4:
	fcmp	s8, #0.0
	b.lt	LBB13_6
; %bb.5:
	fmov	s0, #1.00000000
	fcmp	s8, s0
	b.ls	LBB13_7
LBB13_6:
Lloh226:
	adrp	x0, l_.str.9@PAGE
Lloh227:
	add	x0, x0, l_.str.9@PAGEOFF
Lloh228:
	adrp	x1, l_.str.5@PAGE
Lloh229:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #307                        ; =0x133
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB13_7:
	mov	w0, w24
	mov	w1, w20
	mov	w2, #1                          ; =0x1
	bl	_effect_allocate
	mov	w20, w0
	cmn	w0, #1
	b.eq	LBB13_56
; %bb.8:
Lloh230:
	adrp	x8, _effect_data@GOTPAGE
	mov	w1, w20
Lloh231:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
Lloh232:
	ldr	w0, [x8]
	bl	_datum_get
Lloh233:
	adrp	x8, _global_real_rgb_white@GOTPAGE
	cmp	w27, #0
	mov	x23, x0
Lloh234:
	ldr	w8, [x8, _global_real_rgb_white@GOTPAGEOFF]
	stp	s9, s8, [x0, #68]
Lloh235:
	ldr	w8, [x8]
	csel	x8, x8, x27, eq
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
	str	x9, [x0, #24]!
	str	w8, [x23, #32]
	bl	_valid_real_rgb_color
	cbz	w0, LBB13_57
; %bb.9:
	str	w19, [sp, #20]                  ; 4-byte Spill
	cbnz	w26, LBB13_58
LBB13_10:
	stp	wzr, wzr, [x23, #52]
LBB13_11:
	mov	w0, w25
	str	w25, [x23, #60]
	bl	_first_person_weapon_get_local_index
	adrp	x8, _effects_corpse_nonviolent@PAGE
	strh	w0, [x23, #76]
	ldrb	w8, [x8, _effects_corpse_nonviolent@PAGEOFF]
	cbz	w8, LBB13_17
; %bb.12:
	ldr	w0, [x23, #60]
	mov	w1, #1                          ; =0x1
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB13_17
; %bb.13:
	ldrh	w8, [x0, #182]
	tbz	w8, #2, LBB13_17
; %bb.14:
	ldr	w8, [x0, #972]
	cmn	w8, #1
	b.eq	LBB13_17
; %bb.15:
	add	w19, w8, #30
	bl	_game_time_get
	cmp	w19, w0
	b.ge	LBB13_17
; %bb.16:
	ldrh	w8, [x23, #2]
	orr	w8, w8, #0x40
	strh	w8, [x23, #2]
LBB13_17:
	adrp	x8, _debug_effects_nonviolent@PAGE
	ldrb	w8, [x8, _debug_effects_nonviolent@PAGEOFF]
	cbz	w8, LBB13_22
; %bb.18:
	mov	w0, w25
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	ldrh	w8, [x23, #2]
	mov	x25, x0
	mov	w0, w24
Lloh236:
	adrp	x9, l_.str.11@PAGE
Lloh237:
	add	x9, x9, l_.str.11@PAGEOFF
Lloh238:
	adrp	x10, l_.str.12@PAGE
Lloh239:
	add	x10, x10, l_.str.12@PAGEOFF
	tst	w8, #0x40
	csel	x19, x10, x9, eq
	bl	_tag_get_name
	bl	_tag_name_strip_path
	mov	x24, x0
	cbz	w25, LBB13_20
; %bb.19:
	ldr	w0, [x25]
	bl	_tag_get_name
	bl	_tag_name_strip_path
	mov	x8, x0
	b	LBB13_21
LBB13_20:
Lloh240:
	adrp	x8, l_.str.13@PAGE
Lloh241:
	add	x8, x8, l_.str.13@PAGEOFF
LBB13_21:
Lloh242:
	adrp	x1, l_.str.10@PAGE
Lloh243:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w0, #2                          ; =0x2
	stp	w24, w8, [sp, #4]
	str	w19, [sp]
	bl	_error
LBB13_22:
	add	x0, x23, #92
	mov	w1, #-1                         ; =0xffffffff
	mov	w2, #128                        ; =0x80
	str	w20, [sp, #16]                  ; 4-byte Spill
	add	x28, x23, #92
	bl	_csmemset
	ldr	w1, [x23, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
Lloh244:
	adrp	x19, _effect_location_data@GOTPAGE
	str	x0, [sp, #40]                   ; 8-byte Spill
	ldr	w8, [x0, #40]!
Lloh245:
	ldr	w19, [x19, _effect_location_data@GOTPAGEOFF]
	str	x23, [sp, #48]                  ; 8-byte Spill
	cmp	w8, #33
	b.lt	LBB13_24
; %bb.23:
	mov	x24, x0
	ldr	w0, [x23, #4]
	bl	_tag_get_name
	ldr	w9, [x24]
	mov	x8, x0
	mov	w20, #32                        ; =0x20
Lloh246:
	adrp	x1, l_.str.25@PAGE
Lloh247:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w0, #2                          ; =0x2
	str	w8, [sp]
	stp	w9, w20, [sp, #4]
	bl	_error
	mov	x0, x24
	str	w20, [x24]
	b	LBB13_25
LBB13_24:
	cmp	w8, #1
	b.lt	LBB13_37
LBB13_25:
	add	x8, sp, #56
	mov	w26, wzr
	mov	w20, wzr
	add	w8, w8, #4
	stp	x8, x0, [sp, #24]               ; 16-byte Folded Spill
	b	LBB13_27
	.p2align	4, , 8
LBB13_26:                               ;   in Loop: Header=BB13_27 Depth=1
	ldr	x0, [sp, #32]                   ; 8-byte Reload
	add	w20, w20, #1
	ldr	x23, [sp, #48]                  ; 8-byte Reload
	sxth	w26, w20
	ldr	w8, [x0]
	cmp	w8, w26
	b.le	LBB13_37
LBB13_27:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB13_35 Depth 2
	tbnz	w20, #15, LBB13_32
; %bb.28:                               ;   in Loop: Header=BB13_27 Depth=1
	ldr	x8, [sp, #40]                   ; 8-byte Reload
	ldr	w8, [x8, #44]
	cbz	w8, LBB13_32
; %bb.29:                               ;   in Loop: Header=BB13_27 Depth=1
	ldr	x9, [sp, #40]                   ; 8-byte Reload
	ldr	w9, [x9, #48]
	cbz	w9, LBB13_31
; %bb.30:                               ;   in Loop: Header=BB13_27 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #32
	b.ne	LBB13_32
LBB13_31:                               ;   in Loop: Header=BB13_27 Depth=1
	lsl	w9, w26, #5
	add	x1, x8, x9
	b	LBB13_33
	.p2align	4, , 8
LBB13_32:                               ;   in Loop: Header=BB13_27 Depth=1
	mov	w1, w26
	mov	w2, #32                         ; =0x20
	bl	_tag_block_get_element_with_size
	mov	x1, x0
LBB13_33:                               ;   in Loop: Header=BB13_27 Depth=1
	ldr	w0, [x23, #60]
	add	x2, sp, #56
	mov	w3, #16                         ; =0x10
	bl	_object_get_marker_by_name
	cmp	w0, #1
	b.lt	LBB13_26
; %bb.34:                               ;   in Loop: Header=BB13_27 Depth=1
	ldr	x24, [sp, #24]                  ; 8-byte Reload
	mov	w27, w0
	lsl	w25, w26, #2
	.p2align	4, , 8
LBB13_35:                               ;   Parent Loop BB13_27 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x19]
	bl	_datum_new
	cmn	w0, #1
	b.eq	LBB13_26
; %bb.36:                               ;   in Loop: Header=BB13_35 Depth=2
	mov	w26, w0
	ldr	w0, [x19]
	mov	w1, w26
	sub	w23, w24, #4
	bl	_datum_get
	ldrh	w8, [x23]
	mov	w10, #65535                     ; =0xffff
	and	w9, w8, #0x7fff
	cmp	w8, w10
	csel	w8, w8, w9, eq
	subs	w27, w27, #1
	strh	w8, [x0, #2]
	ldp	q0, q2, [x24]
	ldr	w8, [x24, #48]
	ldr	q1, [x24, #32]
	add	w24, w24, #108
	stur	q0, [x0, #8]
	stur	q2, [x0, #24]
	str	w8, [x0, #56]
	stur	q1, [x0, #40]
	ldr	w8, [x28, w25, sxtw]
	str	w8, [x0, #4]
	str	w26, [x28, w25, sxtw]
	b.ne	LBB13_35
	b	LBB13_26
LBB13_37:
	ldrsh	w8, [x23, #76]
	cmn	w8, #1
	b.eq	LBB13_53
; %bb.38:
	ldr	w1, [x23, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	str	x0, [sp, #40]                   ; 8-byte Spill
	ldr	w8, [x0, #40]!
	cmp	w8, #33
	b.lt	LBB13_40
; %bb.39:
	mov	x24, x0
	ldr	w0, [x23, #4]
	bl	_tag_get_name
	ldr	w9, [x24]
	mov	x8, x0
	mov	w20, #32                        ; =0x20
Lloh248:
	adrp	x1, l_.str.25@PAGE
Lloh249:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w0, #2                          ; =0x2
	str	w8, [sp]
	stp	w9, w20, [sp, #4]
	bl	_error
	mov	x0, x24
	str	w20, [x24]
	b	LBB13_41
LBB13_40:
	cmp	w8, #1
	b.lt	LBB13_53
LBB13_41:
	add	x8, sp, #56
	mov	w26, wzr
	mov	w20, wzr
	add	w8, w8, #4
	stp	x8, x0, [sp, #24]               ; 16-byte Folded Spill
	b	LBB13_43
	.p2align	4, , 8
LBB13_42:                               ;   in Loop: Header=BB13_43 Depth=1
	ldr	x0, [sp, #32]                   ; 8-byte Reload
	add	w20, w20, #1
	ldr	x23, [sp, #48]                  ; 8-byte Reload
	sxth	w26, w20
	ldr	w8, [x0]
	cmp	w8, w26
	b.le	LBB13_53
LBB13_43:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB13_51 Depth 2
	tbnz	w20, #15, LBB13_48
; %bb.44:                               ;   in Loop: Header=BB13_43 Depth=1
	ldr	x8, [sp, #40]                   ; 8-byte Reload
	ldr	w8, [x8, #44]
	cbz	w8, LBB13_48
; %bb.45:                               ;   in Loop: Header=BB13_43 Depth=1
	ldr	x9, [sp, #40]                   ; 8-byte Reload
	ldr	w9, [x9, #48]
	cbz	w9, LBB13_47
; %bb.46:                               ;   in Loop: Header=BB13_43 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #32
	b.ne	LBB13_48
LBB13_47:                               ;   in Loop: Header=BB13_43 Depth=1
	lsl	w9, w26, #5
	add	x1, x8, x9
	b	LBB13_49
	.p2align	4, , 8
LBB13_48:                               ;   in Loop: Header=BB13_43 Depth=1
	mov	w1, w26
	mov	w2, #32                         ; =0x20
	bl	_tag_block_get_element_with_size
	mov	x1, x0
LBB13_49:                               ;   in Loop: Header=BB13_43 Depth=1
	ldr	w0, [x23, #60]
	add	x2, sp, #56
	mov	w3, #16                         ; =0x10
	bl	_first_person_weapon_get_marker_by_name
	cmp	w0, #1
	b.lt	LBB13_42
; %bb.50:                               ;   in Loop: Header=BB13_43 Depth=1
	ldr	x23, [sp, #24]                  ; 8-byte Reload
	mov	w27, w0
	lsl	w24, w26, #2
	.p2align	4, , 8
LBB13_51:                               ;   Parent Loop BB13_43 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x19]
	bl	_datum_new
	cmn	w0, #1
	b.eq	LBB13_42
; %bb.52:                               ;   in Loop: Header=BB13_51 Depth=2
	mov	w26, w0
	ldr	w0, [x19]
	mov	w1, w26
	sub	w25, w23, #4
	bl	_datum_get
	ldrh	w8, [x25]
	subs	w27, w27, #1
	orr	w8, w8, #0x8000
	strh	w8, [x0, #2]
	ldr	w8, [x23, #48]
	ldp	q1, q0, [x23, #16]
	ldr	q2, [x23]
	add	w23, w23, #108
	str	w8, [x0, #56]
	stur	q0, [x0, #40]
	stur	q1, [x0, #24]
	stur	q2, [x0, #8]
	ldr	w8, [x28, w24, sxtw]
	str	w8, [x0, #4]
	str	w26, [x28, w24, sxtw]
	b.ne	LBB13_51
	b	LBB13_42
LBB13_53:
	ldp	w20, w8, [sp, #16]              ; 8-byte Folded Reload
	cmn	w8, #1
	b.eq	LBB13_55
; %bb.54:
	strh	w8, [x23, #76]
LBB13_55:
	movi	d0, #0000000000000000
	mov	w0, w20
	bl	_effect_update
LBB13_56:
	mov	w0, w20
	add	sp, sp, #1792
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #96               ; 16-byte Folded Reload
	ret
LBB13_57:
Lloh250:
	adrp	x0, l_.str.9@PAGE
Lloh251:
	add	x0, x0, l_.str.9@PAGEOFF
Lloh252:
	adrp	x1, l_.str.5@PAGE
Lloh253:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #980                        ; =0x3d4
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	str	w19, [sp, #20]                  ; 4-byte Spill
	cbz	w26, LBB13_10
LBB13_58:
	ldr	w8, [x26, #8]
	ldr	x9, [x26]
	str	w8, [x23, #56]
	str	x9, [x23, #48]
	b	LBB13_11
	.loh AdrpAdd	Lloh220, Lloh221
	.loh AdrpAdd	Lloh218, Lloh219
	.loh AdrpAdd	Lloh224, Lloh225
	.loh AdrpAdd	Lloh222, Lloh223
	.loh AdrpAdd	Lloh228, Lloh229
	.loh AdrpAdd	Lloh226, Lloh227
	.loh AdrpLdrGotLdr	Lloh233, Lloh234, Lloh235
	.loh AdrpLdrGotLdr	Lloh230, Lloh231, Lloh232
	.loh AdrpAdd	Lloh238, Lloh239
	.loh AdrpAdd	Lloh236, Lloh237
	.loh AdrpAdd	Lloh240, Lloh241
	.loh AdrpAdd	Lloh242, Lloh243
	.loh AdrpLdrGot	Lloh244, Lloh245
	.loh AdrpAdd	Lloh246, Lloh247
	.loh AdrpAdd	Lloh248, Lloh249
	.loh AdrpAdd	Lloh252, Lloh253
	.loh AdrpAdd	Lloh250, Lloh251
                                        ; -- End function
	.globl	_effect_new_looping             ; -- Begin function effect_new_looping
	.p2align	4
_effect_new_looping:                    ; @effect_new_looping
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #1792
	mov	w23, w4
	mov	w25, w3
	mov	w26, w2
	mov	w27, w1
	mov	w24, w0
	cmn	w1, #1
	b.ne	LBB14_2
; %bb.1:
Lloh254:
	adrp	x0, l_.str.4@PAGE
Lloh255:
	add	x0, x0, l_.str.4@PAGEOFF
Lloh256:
	adrp	x1, l_.str.5@PAGE
Lloh257:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #249                        ; =0xf9
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB14_2:
	mov	w0, w24
	mov	w1, w27
	mov	w2, #1                          ; =0x1
	bl	_effect_allocate
	mov	w19, w0
	cmn	w0, #1
	b.eq	LBB14_41
; %bb.3:
Lloh258:
	adrp	x8, _effect_data@GOTPAGE
	mov	w1, w19
Lloh259:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
Lloh260:
	ldr	w0, [x8]
	bl	_datum_get
	mov	x20, x0
	str	w27, [x0, #60]
	mov	w0, w27
	bl	_first_person_weapon_get_local_index
	sub	w8, w23, #4
	mov	w9, #65530                      ; =0xfffa
	strh	w26, [x20, #8]
	cmp	w9, w8, uxth
	strh	w0, [x20, #76]
	strh	w25, [x20, #10]
	b.lo	LBB14_7
; %bb.4:
	adrp	x8, _effect_new_looping.bad_change_color_reported@PAGE
	ldrb	w9, [x8, _effect_new_looping.bad_change_color_reported@PAGEOFF]
	tbnz	w9, #0, LBB14_6
; %bb.5:
	mov	w9, #1                          ; =0x1
	mov	w0, w24
	strb	w9, [x8, _effect_new_looping.bad_change_color_reported@PAGEOFF]
	bl	_tag_get_name
	mov	x8, x0
	mov	w9, #4                          ; =0x4
Lloh261:
	adrp	x1, l_.str.15@PAGE
Lloh262:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w0, #2                          ; =0x2
	stp	w23, w9, [sp, #4]
	str	w8, [sp]
	bl	_error
LBB14_6:
	mov	w8, #65535                      ; =0xffff
	stp	wzr, wzr, [x20, #52]
	strh	w8, [x20, #12]
	b	LBB14_8
LBB14_7:
	cmn	w23, #1
	strh	w23, [x20, #12]
	stp	wzr, wzr, [x20, #52]
	b.ne	LBB14_9
LBB14_8:
Lloh263:
	adrp	x8, _global_real_rgb_white@GOTPAGE
Lloh264:
	ldr	w8, [x8, _global_real_rgb_white@GOTPAGEOFF]
Lloh265:
	ldr	w8, [x8]
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
	str	x9, [x20, #24]
	str	w8, [x20, #32]
LBB14_9:
	ldrh	w8, [x20, #2]
	add	x23, x20, #92
	mov	x0, x23
	mov	w1, #-1                         ; =0xffffffff
	mov	w2, #128                        ; =0x80
	str	w19, [sp, #20]                  ; 4-byte Spill
	orr	w8, w8, #0x2
	strh	w8, [x20, #2]
	bl	_csmemset
	ldr	w1, [x20, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
Lloh266:
	adrp	x28, _effect_location_data@GOTPAGE
	str	x0, [sp, #40]                   ; 8-byte Spill
	ldr	w8, [x0, #40]!
Lloh267:
	ldr	w28, [x28, _effect_location_data@GOTPAGEOFF]
	str	x20, [sp, #48]                  ; 8-byte Spill
	cmp	w8, #33
	b.lt	LBB14_11
; %bb.10:
	mov	x24, x0
	ldr	w0, [x20, #4]
	bl	_tag_get_name
	ldr	w9, [x24]
	mov	x8, x0
	mov	w19, #32                        ; =0x20
Lloh268:
	adrp	x1, l_.str.25@PAGE
Lloh269:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w0, #2                          ; =0x2
	str	w8, [sp]
	stp	w9, w19, [sp, #4]
	bl	_error
	mov	x0, x24
	str	w19, [x24]
	b	LBB14_12
LBB14_11:
	cmp	w8, #1
	b.lt	LBB14_24
LBB14_12:
	add	x8, sp, #56
	mov	w26, wzr
	mov	w19, wzr
	add	w8, w8, #4
	stp	x8, x0, [sp, #24]               ; 16-byte Folded Spill
	b	LBB14_14
	.p2align	4, , 8
LBB14_13:                               ;   in Loop: Header=BB14_14 Depth=1
	ldr	x0, [sp, #32]                   ; 8-byte Reload
	add	w19, w19, #1
	ldr	x20, [sp, #48]                  ; 8-byte Reload
	sxth	w26, w19
	ldr	w8, [x0]
	cmp	w8, w26
	b.le	LBB14_24
LBB14_14:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB14_22 Depth 2
	tbnz	w19, #15, LBB14_19
; %bb.15:                               ;   in Loop: Header=BB14_14 Depth=1
	ldr	x8, [sp, #40]                   ; 8-byte Reload
	ldr	w8, [x8, #44]
	cbz	w8, LBB14_19
; %bb.16:                               ;   in Loop: Header=BB14_14 Depth=1
	ldr	x9, [sp, #40]                   ; 8-byte Reload
	ldr	w9, [x9, #48]
	cbz	w9, LBB14_18
; %bb.17:                               ;   in Loop: Header=BB14_14 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #32
	b.ne	LBB14_19
LBB14_18:                               ;   in Loop: Header=BB14_14 Depth=1
	lsl	w9, w26, #5
	add	x1, x8, x9
	b	LBB14_20
	.p2align	4, , 8
LBB14_19:                               ;   in Loop: Header=BB14_14 Depth=1
	mov	w1, w26
	mov	w2, #32                         ; =0x20
	bl	_tag_block_get_element_with_size
	mov	x1, x0
LBB14_20:                               ;   in Loop: Header=BB14_14 Depth=1
	ldr	w0, [x20, #60]
	add	x2, sp, #56
	mov	w3, #16                         ; =0x10
	bl	_object_get_marker_by_name
	cmp	w0, #1
	b.lt	LBB14_13
; %bb.21:                               ;   in Loop: Header=BB14_14 Depth=1
	ldr	x24, [sp, #24]                  ; 8-byte Reload
	mov	w27, w0
	lsl	w25, w26, #2
	.p2align	4, , 8
LBB14_22:                               ;   Parent Loop BB14_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x28]
	bl	_datum_new
	cmn	w0, #1
	b.eq	LBB14_13
; %bb.23:                               ;   in Loop: Header=BB14_22 Depth=2
	mov	w26, w0
	ldr	w0, [x28]
	mov	w1, w26
	sub	w20, w24, #4
	bl	_datum_get
	ldrh	w8, [x20]
	mov	w10, #65535                     ; =0xffff
	and	w9, w8, #0x7fff
	cmp	w8, w10
	csel	w8, w8, w9, eq
	subs	w27, w27, #1
	strh	w8, [x0, #2]
	ldp	q0, q2, [x24]
	ldr	w8, [x24, #48]
	ldr	q1, [x24, #32]
	add	w24, w24, #108
	stur	q0, [x0, #8]
	stur	q2, [x0, #24]
	str	w8, [x0, #56]
	stur	q1, [x0, #40]
	ldr	w8, [x23, w25, sxtw]
	str	w8, [x0, #4]
	str	w26, [x23, w25, sxtw]
	b.ne	LBB14_22
	b	LBB14_13
LBB14_24:
	ldrsh	w8, [x20, #76]
	cmn	w8, #1
	b.eq	LBB14_40
; %bb.25:
	ldr	w1, [x20, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	str	x0, [sp, #40]                   ; 8-byte Spill
	ldr	w8, [x0, #40]!
	cmp	w8, #33
	b.lt	LBB14_27
; %bb.26:
	mov	x24, x0
	ldr	w0, [x20, #4]
	bl	_tag_get_name
	ldr	w9, [x24]
	mov	x8, x0
	mov	w19, #32                        ; =0x20
Lloh270:
	adrp	x1, l_.str.25@PAGE
Lloh271:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w0, #2                          ; =0x2
	str	w8, [sp]
	stp	w9, w19, [sp, #4]
	bl	_error
	mov	x0, x24
	str	w19, [x24]
	b	LBB14_28
LBB14_27:
	cmp	w8, #1
	b.lt	LBB14_40
LBB14_28:
	add	x8, sp, #56
	mov	w26, wzr
	mov	w19, wzr
	add	w8, w8, #4
	stp	x8, x0, [sp, #24]               ; 16-byte Folded Spill
	b	LBB14_30
	.p2align	4, , 8
LBB14_29:                               ;   in Loop: Header=BB14_30 Depth=1
	ldr	x0, [sp, #32]                   ; 8-byte Reload
	add	w19, w19, #1
	ldr	x20, [sp, #48]                  ; 8-byte Reload
	sxth	w26, w19
	ldr	w8, [x0]
	cmp	w8, w26
	b.le	LBB14_40
LBB14_30:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB14_38 Depth 2
	tbnz	w19, #15, LBB14_35
; %bb.31:                               ;   in Loop: Header=BB14_30 Depth=1
	ldr	x8, [sp, #40]                   ; 8-byte Reload
	ldr	w8, [x8, #44]
	cbz	w8, LBB14_35
; %bb.32:                               ;   in Loop: Header=BB14_30 Depth=1
	ldr	x9, [sp, #40]                   ; 8-byte Reload
	ldr	w9, [x9, #48]
	cbz	w9, LBB14_34
; %bb.33:                               ;   in Loop: Header=BB14_30 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #32
	b.ne	LBB14_35
LBB14_34:                               ;   in Loop: Header=BB14_30 Depth=1
	lsl	w9, w26, #5
	add	x1, x8, x9
	b	LBB14_36
	.p2align	4, , 8
LBB14_35:                               ;   in Loop: Header=BB14_30 Depth=1
	mov	w1, w26
	mov	w2, #32                         ; =0x20
	bl	_tag_block_get_element_with_size
	mov	x1, x0
LBB14_36:                               ;   in Loop: Header=BB14_30 Depth=1
	ldr	w0, [x20, #60]
	add	x2, sp, #56
	mov	w3, #16                         ; =0x10
	bl	_first_person_weapon_get_marker_by_name
	cmp	w0, #1
	b.lt	LBB14_29
; %bb.37:                               ;   in Loop: Header=BB14_30 Depth=1
	ldr	x20, [sp, #24]                  ; 8-byte Reload
	mov	w27, w0
	lsl	w24, w26, #2
	.p2align	4, , 8
LBB14_38:                               ;   Parent Loop BB14_30 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x28]
	bl	_datum_new
	cmn	w0, #1
	b.eq	LBB14_29
; %bb.39:                               ;   in Loop: Header=BB14_38 Depth=2
	mov	w26, w0
	ldr	w0, [x28]
	mov	w1, w26
	sub	w25, w20, #4
	bl	_datum_get
	ldrh	w8, [x25]
	subs	w27, w27, #1
	orr	w8, w8, #0x8000
	strh	w8, [x0, #2]
	ldr	w8, [x20, #48]
	ldp	q1, q0, [x20, #16]
	ldr	q2, [x20]
	add	w20, w20, #108
	str	w8, [x0, #56]
	stur	q0, [x0, #40]
	stur	q1, [x0, #24]
	stur	q2, [x0, #8]
	ldr	w8, [x23, w24, sxtw]
	str	w8, [x0, #4]
	str	w26, [x23, w24, sxtw]
	b.ne	LBB14_38
	b	LBB14_29
LBB14_40:
	ldr	w19, [sp, #20]                  ; 4-byte Reload
	movi	d0, #0000000000000000
	mov	w0, w19
	bl	_effect_update
LBB14_41:
	mov	w0, w19
	add	sp, sp, #1792
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh256, Lloh257
	.loh AdrpAdd	Lloh254, Lloh255
	.loh AdrpLdrGotLdr	Lloh258, Lloh259, Lloh260
	.loh AdrpAdd	Lloh261, Lloh262
	.loh AdrpLdrGotLdr	Lloh263, Lloh264, Lloh265
	.loh AdrpLdrGot	Lloh266, Lloh267
	.loh AdrpAdd	Lloh268, Lloh269
	.loh AdrpAdd	Lloh270, Lloh271
                                        ; -- End function
	.globl	_effects_update                 ; -- Begin function effects_update
	.p2align	4
_effects_update:                        ; @effects_update
; %bb.0:
	stp	d9, d8, [sp, #-64]!             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
Lloh272:
	adrp	x23, _profile_global_enable@GOTPAGE
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	adrp	x20, _effects_update_section@PAGE+8
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	fmov	s8, s0
Lloh273:
	ldr	w23, [x23, _profile_global_enable@GOTPAGEOFF]
	add	x29, sp, #48
	ldrb	w9, [x20, _effects_update_section@PAGEOFF+8]
	ldrb	w8, [x23]
	cmp	w8, #0
	ccmp	w9, #0, #4, ne
	b.ne	LBB15_7
LBB15_1:
Lloh274:
	adrp	x24, _effect_data@GOTPAGE
	mov	w1, #-1                         ; =0xffffffff
Lloh275:
	ldr	w24, [x24, _effect_data@GOTPAGEOFF]
	ldr	w0, [x24]
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB15_4
; %bb.2:
	mov	w19, w0
	.p2align	4, , 8
LBB15_3:                                ; =>This Inner Loop Header: Depth=1
	fmov	s0, s8
	mov	w0, w19
	bl	_effect_update
	ldr	w0, [x24]
	mov	w1, w19
	bl	_data_next_index
	mov	w19, w0
	cmn	w0, #1
	b.ne	LBB15_3
LBB15_4:
	ldrb	w8, [x23]
	cbz	w8, LBB15_6
; %bb.5:
	ldrb	w8, [x20, _effects_update_section@PAGEOFF+8]
	cbnz	w8, LBB15_8
LBB15_6:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #64               ; 16-byte Folded Reload
	ret
LBB15_7:
Lloh276:
	adrp	x0, _effects_update_section@PAGE
Lloh277:
	add	x0, x0, _effects_update_section@PAGEOFF
	bl	_profile_enter_private
	b	LBB15_1
LBB15_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
Lloh278:
	adrp	x0, _effects_update_section@PAGE
Lloh279:
	add	x0, x0, _effects_update_section@PAGEOFF
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #64               ; 16-byte Folded Reload
	b	_profile_exit_private
	.loh AdrpLdrGot	Lloh272, Lloh273
	.loh AdrpLdrGot	Lloh274, Lloh275
	.loh AdrpAdd	Lloh276, Lloh277
	.loh AdrpAdd	Lloh278, Lloh279
                                        ; -- End function
	.globl	_effects_start_on_first_person_weapon ; -- Begin function effects_start_on_first_person_weapon
	.p2align	4
_effects_start_on_first_person_weapon:  ; @effects_start_on_first_person_weapon
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #1792
Lloh280:
	adrp	x20, _effect_data@GOTPAGE
	mov	w19, w1
	mov	w1, #-1                         ; =0xffffffff
Lloh281:
	ldr	w20, [x20, _effect_data@GOTPAGEOFF]
	str	w0, [sp, #16]                   ; 4-byte Spill
	ldr	w8, [x20]
	mov	x0, x8
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB16_22
; %bb.1:
	add	x8, sp, #56
Lloh282:
	adrp	x23, _effect_location_data@GOTPAGE
	add	w8, w8, #4
	mov	w24, w0
	str	x8, [sp, #24]                   ; 8-byte Spill
Lloh283:
	ldr	w23, [x23, _effect_location_data@GOTPAGEOFF]
	str	w19, [sp, #12]                  ; 4-byte Spill
	b	LBB16_4
	.p2align	4, , 8
LBB16_2:                                ;   in Loop: Header=BB16_4 Depth=1
Lloh284:
	adrp	x20, _effect_data@GOTPAGE
	ldr	w19, [sp, #12]                  ; 4-byte Reload
Lloh285:
	ldr	w20, [x20, _effect_data@GOTPAGEOFF]
	ldr	w24, [sp, #20]                  ; 4-byte Reload
LBB16_3:                                ;   in Loop: Header=BB16_4 Depth=1
	ldr	w0, [x20]
	mov	w1, w24
	bl	_data_next_index
	mov	w24, w0
	cmn	w0, #1
	b.eq	LBB16_22
LBB16_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB16_12 Depth 2
                                        ;       Child Loop BB16_20 Depth 3
	ldr	w0, [x20]
	mov	w1, w24
	bl	_datum_get
	mov	x26, x0
	ldr	w1, [x0, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldr	w8, [x26, #60]
	cmp	w8, w19
	b.ne	LBB16_3
; %bb.5:                                ;   in Loop: Header=BB16_4 Depth=1
	ldrsh	w8, [x26, #76]
	cmn	w8, #1
	b.eq	LBB16_7
; %bb.6:                                ;   in Loop: Header=BB16_4 Depth=1
Lloh286:
	adrp	x0, l_.str.16@PAGE
Lloh287:
	add	x0, x0, l_.str.16@PAGEOFF
Lloh288:
	adrp	x1, l_.str.5@PAGE
Lloh289:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #585                        ; =0x249
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB16_7:                                ;   in Loop: Header=BB16_4 Depth=1
	ldr	w1, [x26, #4]
	mov	w0, #26213                      ; =0x6665
	ldr	w8, [sp, #16]                   ; 4-byte Reload
	movk	w0, #25958, lsl #16
	str	w24, [sp, #20]                  ; 4-byte Spill
	strh	w8, [x26, #76]
	bl	_tag_get
	str	x0, [sp, #48]                   ; 8-byte Spill
	ldr	w8, [x0, #40]!
	cmp	w8, #33
	b.lt	LBB16_9
; %bb.8:                                ;   in Loop: Header=BB16_4 Depth=1
	mov	x20, x0
	ldr	w0, [x26, #4]
	bl	_tag_get_name
	ldr	w9, [x20]
	mov	x8, x0
	mov	w0, #2                          ; =0x2
Lloh290:
	adrp	x1, l_.str.25@PAGE
Lloh291:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w19, #32                        ; =0x20
	str	w8, [sp]
	stp	w9, w19, [sp, #4]
	bl	_error
	mov	x0, x20
	str	w19, [x20]
	b	LBB16_10
	.p2align	4, , 8
LBB16_9:                                ;   in Loop: Header=BB16_4 Depth=1
	cmp	w8, #1
	b.lt	LBB16_2
LBB16_10:                               ;   in Loop: Header=BB16_4 Depth=1
	mov	w25, wzr
	mov	w19, wzr
	add	x24, x26, #92
	stp	x0, x26, [sp, #32]              ; 16-byte Folded Spill
	b	LBB16_12
	.p2align	4, , 8
LBB16_11:                               ;   in Loop: Header=BB16_12 Depth=2
	ldp	x0, x26, [sp, #32]              ; 16-byte Folded Reload
	add	w19, w19, #1
	sxth	w25, w19
	ldr	w8, [x0]
	cmp	w8, w25
	b.le	LBB16_2
LBB16_12:                               ;   Parent Loop BB16_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB16_20 Depth 3
	tbnz	w19, #15, LBB16_17
; %bb.13:                               ;   in Loop: Header=BB16_12 Depth=2
	ldr	x8, [sp, #48]                   ; 8-byte Reload
	ldr	w8, [x8, #44]
	cbz	w8, LBB16_17
; %bb.14:                               ;   in Loop: Header=BB16_12 Depth=2
	ldr	x9, [sp, #48]                   ; 8-byte Reload
	ldr	w9, [x9, #48]
	cbz	w9, LBB16_16
; %bb.15:                               ;   in Loop: Header=BB16_12 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #32
	b.ne	LBB16_17
LBB16_16:                               ;   in Loop: Header=BB16_12 Depth=2
	lsl	w9, w25, #5
	add	x1, x8, x9
	b	LBB16_18
	.p2align	4, , 8
LBB16_17:                               ;   in Loop: Header=BB16_12 Depth=2
	mov	w1, w25
	mov	w2, #32                         ; =0x20
	bl	_tag_block_get_element_with_size
	mov	x1, x0
LBB16_18:                               ;   in Loop: Header=BB16_12 Depth=2
	ldr	w0, [x26, #60]
	add	x2, sp, #56
	mov	w3, #16                         ; =0x10
	bl	_first_person_weapon_get_marker_by_name
	cmp	w0, #1
	b.lt	LBB16_11
; %bb.19:                               ;   in Loop: Header=BB16_12 Depth=2
	ldr	x27, [sp, #24]                  ; 8-byte Reload
	mov	w26, w0
	.p2align	4, , 8
LBB16_20:                               ;   Parent Loop BB16_4 Depth=1
                                        ;     Parent Loop BB16_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w0, [x23]
	bl	_datum_new
	cmn	w0, #1
	b.eq	LBB16_11
; %bb.21:                               ;   in Loop: Header=BB16_20 Depth=3
	mov	w20, w0
	ldr	w0, [x23]
	mov	w1, w20
	sub	w28, w27, #4
	bl	_datum_get
	ldrh	w8, [x28]
	subs	w26, w26, #1
	orr	w8, w8, #0x8000
	strh	w8, [x0, #2]
	ldr	w8, [x27, #48]
	ldp	q1, q0, [x27, #16]
	ldr	q2, [x27]
	add	w27, w27, #108
	str	w8, [x0, #56]
	lsl	w8, w25, #2
	stur	q0, [x0, #40]
	stur	q1, [x0, #24]
	stur	q2, [x0, #8]
	ldr	w9, [x24, w8, sxtw]
	str	w9, [x0, #4]
	str	w20, [x24, w8, sxtw]
	b.ne	LBB16_20
	b	LBB16_11
LBB16_22:
	add	sp, sp, #1792
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh280, Lloh281
	.loh AdrpLdrGot	Lloh282, Lloh283
	.loh AdrpLdrGot	Lloh284, Lloh285
	.loh AdrpAdd	Lloh288, Lloh289
	.loh AdrpAdd	Lloh286, Lloh287
	.loh AdrpAdd	Lloh290, Lloh291
                                        ; -- End function
	.globl	_effects_stop_on_first_person_weapon ; -- Begin function effects_stop_on_first_person_weapon
	.p2align	4
_effects_stop_on_first_person_weapon:   ; @effects_stop_on_first_person_weapon
; %bb.0:
	sub	sp, sp, #96
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
Lloh292:
	adrp	x23, _effect_data@GOTPAGE
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	mov	w1, #-1                         ; =0xffffffff
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	mov	w20, w0
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
Lloh293:
	ldr	w23, [x23, _effect_data@GOTPAGEOFF]
	ldr	w8, [x23]
	mov	x0, x8
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB17_12
; %bb.1:
Lloh294:
	adrp	x26, _effect_location_data@GOTPAGE
	mov	w19, w0
	and	w24, w20, #0xffff
Lloh295:
	ldr	w26, [x26, _effect_location_data@GOTPAGEOFF]
	str	w24, [sp, #12]                  ; 4-byte Spill
	b	LBB17_4
	.p2align	4, , 8
LBB17_2:                                ;   in Loop: Header=BB17_4 Depth=1
	mov	w8, #65535                      ; =0xffff
Lloh296:
	adrp	x23, _effect_data@GOTPAGE
	strh	w8, [x20, #76]
Lloh297:
	ldr	w23, [x23, _effect_data@GOTPAGEOFF]
	ldr	w24, [sp, #12]                  ; 4-byte Reload
LBB17_3:                                ;   in Loop: Header=BB17_4 Depth=1
	ldr	w0, [x23]
	mov	w1, w19
	bl	_data_next_index
	mov	w19, w0
	cmn	w0, #1
	b.eq	LBB17_12
LBB17_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB17_8 Depth 2
                                        ;       Child Loop BB17_10 Depth 3
	ldr	w0, [x23]
	mov	w1, w19
	bl	_datum_get
	mov	x20, x0
	ldr	w1, [x0, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldrh	w8, [x20, #76]
	cmp	w8, w24
	b.ne	LBB17_3
; %bb.5:                                ;   in Loop: Header=BB17_4 Depth=1
	ldr	w8, [x0, #40]
	mov	w9, #32                         ; =0x20
	cmp	w8, #32
	sxth	w8, w8
	csel	w27, w9, w8, gt
	cmp	w27, #1
	b.lt	LBB17_2
; %bb.6:                                ;   in Loop: Header=BB17_4 Depth=1
	mov	w8, wzr
	mov	w28, wzr
	add	x24, x20, #92
	b	LBB17_8
	.p2align	4, , 8
LBB17_7:                                ;   in Loop: Header=BB17_8 Depth=2
	add	w28, w28, #1
	sxth	w8, w28
	cmp	w27, w8
	b.le	LBB17_2
LBB17_8:                                ;   Parent Loop BB17_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB17_10 Depth 3
	add	x25, x24, w8, sxtw #2
	ldr	w1, [x25]
	cmn	w1, #1
	b.ne	LBB17_10
	b	LBB17_7
	.p2align	4, , 8
LBB17_9:                                ;   in Loop: Header=BB17_10 Depth=3
	ldr	w0, [x26]
	ldr	w1, [x25]
	bl	_datum_delete
	ldr	w1, [x23, #4]
	str	w1, [x25]
	cmn	w1, #1
	b.eq	LBB17_7
LBB17_10:                               ;   Parent Loop BB17_4 Depth=1
                                        ;     Parent Loop BB17_8 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w0, [x26]
	bl	_datum_get
	ldrsh	w8, [x0, #2]
	mov	x23, x0
	cmn	w8, #1
	b.lt	LBB17_9
; %bb.11:                               ;   in Loop: Header=BB17_10 Depth=3
	ldr	w1, [x23, #4]!
	mov	x25, x23
	cmn	w1, #1
	b.ne	LBB17_10
	b	LBB17_7
LBB17_12:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpLdrGot	Lloh292, Lloh293
	.loh AdrpLdrGot	Lloh294, Lloh295
	.loh AdrpLdrGot	Lloh296, Lloh297
                                        ; -- End function
	.globl	_effects_information_get        ; -- Begin function effects_information_get
	.p2align	4
_effects_information_get:               ; @effects_information_get
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
Lloh298:
	adrp	x23, _effect_data@GOTPAGE
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
Lloh299:
	adrp	x9, _effect_location_data@GOTPAGE
	mov	x19, x0
	mov	w1, #-1                         ; =0xffffffff
Lloh300:
	ldr	w23, [x23, _effect_data@GOTPAGEOFF]
	add	x29, sp, #32
	ldr	w8, [x23]
	ldrh	w8, [x8, #48]
Lloh301:
	ldr	w9, [x9, _effect_location_data@GOTPAGEOFF]
	strh	w8, [x0]
Lloh302:
	ldr	w8, [x9]
	ldrh	w8, [x8, #48]
	strh	wzr, [x19, #4]
	strh	w8, [x0, #2]
	ldr	w0, [x23]
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB18_5
; %bb.1:
	mov	w20, w0
LBB18_2:                                ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x23]
	mov	w1, w20
	bl	_datum_get
	ldrh	w8, [x0, #2]
	tst	w8, #0x18
	b.ne	LBB18_4
; %bb.3:                                ;   in Loop: Header=BB18_2 Depth=1
	ldrh	w8, [x19, #4]
	add	w8, w8, #1
	strh	w8, [x19, #4]
LBB18_4:                                ;   in Loop: Header=BB18_2 Depth=1
	ldr	w0, [x23]
	mov	w1, w20
	bl	_data_next_index
	mov	w20, w0
	cmn	w0, #1
	b.ne	LBB18_2
LBB18_5:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh299, Lloh301, Lloh302
	.loh AdrpLdrGot	Lloh298, Lloh300
                                        ; -- End function
	.globl	_effects_disconnect_from_structure_bsp ; -- Begin function effects_disconnect_from_structure_bsp
	.p2align	4
_effects_disconnect_from_structure_bsp: ; @effects_disconnect_from_structure_bsp
; %bb.0:
	ret
                                        ; -- End function
	.globl	_effects_reconnect_to_structure_bsp ; -- Begin function effects_reconnect_to_structure_bsp
	.p2align	4
_effects_reconnect_to_structure_bsp:    ; @effects_reconnect_to_structure_bsp
; %bb.0:
	sub	sp, sp, #64
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
Lloh303:
	adrp	x23, _effect_data@GOTPAGE
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	mov	w1, #-1                         ; =0xffffffff
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
Lloh304:
	ldr	w23, [x23, _effect_data@GOTPAGEOFF]
	ldr	w0, [x23]
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB20_8
; %bb.1:
Lloh305:
	adrp	x24, _effect_location_data@GOTPAGE
	mov	w19, w0
Lloh306:
	ldr	w24, [x24, _effect_location_data@GOTPAGEOFF]
	b	LBB20_3
	.p2align	4, , 8
LBB20_2:                                ;   in Loop: Header=BB20_3 Depth=1
	ldr	w0, [x23]
	mov	w1, w19
	bl	_data_next_index
	mov	w19, w0
	cmn	w0, #1
	b.eq	LBB20_8
LBB20_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x23]
	mov	w1, w19
	bl	_datum_get
	ldr	w8, [x0, #60]
	cmn	w8, #1
	b.ne	LBB20_2
; %bb.4:                                ;   in Loop: Header=BB20_3 Depth=1
	ldr	w1, [x0, #92]
	cmn	w1, #1
	b.eq	LBB20_9
; %bb.5:                                ;   in Loop: Header=BB20_3 Depth=1
	mov	x20, x0
	ldr	w0, [x24]
	bl	_datum_get
	ldrsh	w9, [x0, #2]
	mov	x8, x0
	ldr	w10, [x0, #4]
	cmn	w9, #2
	str	w10, [sp, #12]
	b.le	LBB20_10
LBB20_6:                                ;   in Loop: Header=BB20_3 Depth=1
	cbz	w8, LBB20_9
; %bb.7:                                ;   in Loop: Header=BB20_3 Depth=1
	add	x0, x20, #16
	add	x1, x8, #48
	bl	_scenario_location_from_point
	b	LBB20_2
LBB20_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB20_9:                                ;   in Loop: Header=BB20_3 Depth=1
	mov	w0, w19
	bl	_effect_delete
	b	LBB20_2
LBB20_10:                               ;   in Loop: Header=BB20_3 Depth=1
	add	x1, sp, #12
	mov	x0, x20
	mov	w2, wzr
	bl	_effect_location_get_next_instance
	mov	x8, x0
	b	LBB20_6
	.loh AdrpLdrGot	Lloh303, Lloh304
	.loh AdrpLdrGot	Lloh305, Lloh306
                                        ; -- End function
	.p2align	4                               ; -- Begin function effect_location_get_next_instance
_effect_location_get_next_instance:     ; @effect_location_get_next_instance
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
Lloh307:
	adrp	x27, _effect_location_data@GOTPAGE
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	mov	x23, x0
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	w19, w2
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	mov	x20, x1
Lloh308:
	ldr	w27, [x27, _effect_location_data@GOTPAGEOFF]
Lloh309:
	adrp	x24, l_.str@PAGE
Lloh310:
	add	x24, x24, l_.str@PAGEOFF
Lloh311:
	adrp	x25, l_.str.5@PAGE
Lloh312:
	add	x25, x25, l_.str.5@PAGEOFF
Lloh313:
	adrp	x26, l_.str.19@PAGE
Lloh314:
	add	x26, x26, l_.str.19@PAGEOFF
	add	x29, sp, #64
	b	LBB21_2
	.p2align	4, , 8
LBB21_1:                                ;   in Loop: Header=BB21_2 Depth=1
	ldrsh	w8, [x0, #2]
	cmn	w8, #1
	b.ge	LBB21_13
LBB21_2:                                ; =>This Inner Loop Header: Depth=1
	cbz	w23, LBB21_10
; %bb.3:                                ;   in Loop: Header=BB21_2 Depth=1
	cbz	w20, LBB21_11
LBB21_4:                                ;   in Loop: Header=BB21_2 Depth=1
	ldr	w1, [x20]
	cmn	w1, #1
	b.eq	LBB21_12
; %bb.5:                                ;   in Loop: Header=BB21_2 Depth=1
	ldr	w0, [x27]
	bl	_datum_get
	ldr	w8, [x0, #4]
	cmp	w19, #1
	str	w8, [x20]
	b.eq	LBB21_9
; %bb.6:                                ;   in Loop: Header=BB21_2 Depth=1
	cmp	w19, #3
	b.ne	LBB21_1
; %bb.7:                                ;   in Loop: Header=BB21_2 Depth=1
	ldrsh	w8, [x23, #76]
	cmn	w8, #1
	b.eq	LBB21_1
; %bb.8:                                ;   in Loop: Header=BB21_2 Depth=1
	mov	x28, x0
	bl	_local_player_count
	mov	w8, w0
	mov	x0, x28
	cmp	w8, #1
	b.ne	LBB21_1
LBB21_9:                                ;   in Loop: Header=BB21_2 Depth=1
	ldrsh	w8, [x0, #2]
	cmn	w8, #2
	b.gt	LBB21_2
	b	LBB21_13
	.p2align	4, , 8
LBB21_10:                               ;   in Loop: Header=BB21_2 Depth=1
	mov	x0, x24
	mov	x1, x25
	mov	w2, #1766                       ; =0x6e6
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	cbnz	w20, LBB21_4
LBB21_11:                               ;   in Loop: Header=BB21_2 Depth=1
	mov	x0, x26
	mov	x1, x25
	mov	w2, #1767                       ; =0x6e7
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	b	LBB21_4
LBB21_12:
	mov	x0, xzr
LBB21_13:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh313, Lloh314
	.loh AdrpAdd	Lloh311, Lloh312
	.loh AdrpAdd	Lloh309, Lloh310
	.loh AdrpLdrGot	Lloh307, Lloh308
                                        ; -- End function
	.globl	_effect_stop                    ; -- Begin function effect_stop
	.p2align	4
_effect_stop:                           ; @effect_stop
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
Lloh315:
	adrp	x8, _effect_data@GOTPAGE
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	mov	w20, w0
	mov	w23, w1
	mov	w1, w20
Lloh316:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
	add	x29, sp, #32
Lloh317:
	ldr	w8, [x8]
	mov	x0, x8
	bl	_datum_try_and_get
	mov	x19, x0
	cbz	w19, LBB22_5
; %bb.1:
	ldr	w1, [x19, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldrh	w8, [x19, #2]
	tbz	w8, #1, LBB22_8
; %bb.2:
	cmp	w23, #0
	mov	w9, #32                         ; =0x20
	and	w8, w8, #0xffffffdf
	csel	w9, wzr, w9, eq
	orr	w8, w8, w9
	strh	w8, [x19, #2]
	ldrsh	w9, [x0, #6]
	tbz	w9, #31, LBB22_6
LBB22_3:
	orr	w8, w8, #0x8
LBB22_4:
	strh	w8, [x19, #2]
LBB22_5:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
LBB22_6:
	ldr	w10, [x0, #52]
	and	w9, w9, #0xffff
	add	w9, w9, #1
	cmp	w10, w9
	b.le	LBB22_3
; %bb.7:
	mov	w0, w20
	sxth	w1, w9
	bl	_effect_set_event
	ldrh	w8, [x19, #2]
	orr	w8, w8, #0x4
	b	LBB22_4
LBB22_8:
	mov	w0, w20
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	b	_effect_delete
	.loh AdrpLdrGotLdr	Lloh315, Lloh316, Lloh317
                                        ; -- End function
	.p2align	4                               ; -- Begin function effect_set_event
_effect_set_event:                      ; @effect_set_event
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
Lloh318:
	adrp	x8, _effect_data@GOTPAGE
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	mov	w20, w1
	mov	w1, w0
	add	x29, sp, #32
Lloh319:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
Lloh320:
	ldr	w8, [x8]
	mov	x0, x8
	bl	_datum_try_and_get
	mov	x19, x0
	cbz	w19, LBB23_12
; %bb.1:
	ldr	w1, [x19, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	tbnz	w20, #31, LBB23_12
; %bb.2:
	mov	x8, x0
	ldr	w9, [x0, #52]!
	cmp	w9, w20
	b.le	LBB23_12
; %bb.3:
	ldr	w9, [x8, #56]
	cbz	w9, LBB23_7
; %bb.4:
	ldr	w8, [x8, #60]
	cbz	w8, LBB23_6
; %bb.5:
	ldr	w8, [x8, #12]
	cmp	w8, #68
	b.ne	LBB23_7
LBB23_6:
	add	w8, w20, w20, lsl #4
	lsl	w8, w8, #2
	add	x23, x9, w8, sxtw
	b	LBB23_8
LBB23_7:
	mov	w1, w20
	mov	w2, #68                         ; =0x44
	bl	_tag_block_get_element_with_size
	mov	x23, x0
LBB23_8:
	ldrh	w8, [x19, #2]
	mov	w0, #26213                      ; =0x6665
	ldr	w1, [x19, #4]
	movk	w0, #25958, lsl #16
	strh	w20, [x19, #78]
	str	wzr, [x19, #80]
	and	w8, w8, #0xfffe
	strh	w8, [x19, #2]
	bl	_tag_get
	ldrb	w8, [x0]
	tbnz	w8, #1, LBB23_10
; %bb.9:
	bl	_get_global_local_random_seed_address
	b	LBB23_11
LBB23_10:
	bl	_get_global_random_seed_address
LBB23_11:
	ldp	s0, s1, [x23, #8]
	bl	_real_seed_random_range
	str	s0, [x19, #84]
LBB23_12:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh318, Lloh319, Lloh320
                                        ; -- End function
	.globl	_dangerous_effects_near_player  ; -- Begin function dangerous_effects_near_player
	.p2align	4
_dangerous_effects_near_player:         ; @dangerous_effects_near_player
; %bb.0:
	sub	sp, sp, #112
Lloh321:
	adrp	x8, _effect_data@GOTPAGE
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	mov	w1, #-1                         ; =0xffffffff
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
Lloh322:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
Lloh323:
	ldr	w0, [x8]
	bl	_data_next_index
	cmn	w0, #1
	b.ne	LBB24_3
LBB24_1:
	mov	w0, wzr
LBB24_2:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB24_3:
Lloh324:
	adrp	x25, _player_data@GOTPAGE
	str	w0, [sp, #12]                   ; 4-byte Spill
Lloh325:
	ldr	w25, [x25, _player_data@GOTPAGEOFF]
LBB24_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB24_7 Depth 2
                                        ;       Child Loop BB24_10 Depth 3
Lloh326:
	adrp	x8, _effect_data@GOTPAGE
Lloh327:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
	ldr	w1, [sp, #12]                   ; 4-byte Reload
Lloh328:
	ldr	w0, [x8]
	bl	_datum_get
	mov	x19, x0
	ldr	w1, [x0, #4]
	mov	w0, #26213                      ; =0x6665
	movk	w0, #25958, lsl #16
	bl	_tag_get
	ldrh	w8, [x19, #2]
	tbnz	w8, #3, LBB24_18
; %bb.5:                                ;   in Loop: Header=BB24_4 Depth=1
	ldr	s0, [x0, #8]
	mov	x20, x0
	fcmp	s0, #0.0
	b.eq	LBB24_18
; %bb.6:                                ;   in Loop: Header=BB24_4 Depth=1
	ldr	w1, [x25]
	add	x0, sp, #32
	bl	_data_iterator_new
LBB24_7:                                ;   Parent Loop BB24_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB24_10 Depth 3
	add	x0, sp, #32
	bl	_data_iterator_next
	cbz	w0, LBB24_18
; %bb.8:                                ;   in Loop: Header=BB24_7 Depth=2
	ldr	w0, [x0, #52]
	cmn	w0, #1
	b.eq	LBB24_7
; %bb.9:                                ;   in Loop: Header=BB24_7 Depth=2
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_get_and_verify_type
	ldr	w8, [x19, #92]
	mov	x23, x0
	str	w8, [sp, #28]
LBB24_10:                               ;   Parent Loop BB24_4 Depth=1
                                        ;     Parent Loop BB24_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x1, sp, #28
	mov	x0, x19
	mov	w2, wzr
	bl	_effect_location_get_next_instance
	mov	x24, x0
	cbz	w24, LBB24_7
; %bb.11:                               ;   in Loop: Header=BB24_10 Depth=3
	ldrsh	w1, [x24, #2]
	cmn	w1, #1
	b.eq	LBB24_16
; %bb.12:                               ;   in Loop: Header=BB24_10 Depth=3
	tbnz	w1, #31, LBB24_17
; %bb.13:                               ;   in Loop: Header=BB24_10 Depth=3
	ldr	w0, [x19, #60]
	bl	_object_get_node_matrix
LBB24_14:                               ;   in Loop: Header=BB24_10 Depth=3
	add	x1, x24, #48
	add	x2, sp, #16
	bl	_matrix4x3_transform_point
LBB24_15:                               ;   in Loop: Header=BB24_10 Depth=3
	ldr	d0, [sp, #16]
	ldr	d1, [x23, #80]
	ldr	s2, [sp, #24]
	ldr	s3, [x20, #8]
	fsub	v0.2s, v0.2s, v1.2s
	ldr	s1, [x23, #88]
	fsub	s1, s2, s1
	ldr	s2, [x23, #92]
	fmul	v0.2s, v0.2s, v0.2s
	fadd	s2, s2, s3
	fmul	s1, s1, s1
	faddp	s0, v0.2s
	fmul	s4, s2, s2
	fadd	s0, s0, s1
	fcmp	s0, s4
	b.hi	LBB24_10
	b	LBB24_19
LBB24_16:                               ;   in Loop: Header=BB24_10 Depth=3
	ldr	x8, [x24, #48]
	ldr	w9, [x24, #56]
	str	x8, [sp, #16]
	str	w9, [sp, #24]
	b	LBB24_15
LBB24_17:                               ;   in Loop: Header=BB24_10 Depth=3
	ldrsh	w0, [x19, #76]
	and	w1, w1, #0x7fff
	bl	_first_person_weapon_get_node_matrix
	b	LBB24_14
LBB24_18:                               ;   in Loop: Header=BB24_4 Depth=1
Lloh329:
	adrp	x8, _effect_data@GOTPAGE
Lloh330:
	ldr	w8, [x8, _effect_data@GOTPAGEOFF]
	ldr	w1, [sp, #12]                   ; 4-byte Reload
Lloh331:
	ldr	w0, [x8]
	bl	_data_next_index
	cmn	w0, #1
	str	w0, [sp, #12]                   ; 4-byte Spill
	b.ne	LBB24_4
	b	LBB24_1
LBB24_19:
	mov	w0, #1                          ; =0x1
	b	LBB24_2
	.loh AdrpLdrGotLdr	Lloh321, Lloh322, Lloh323
	.loh AdrpLdrGot	Lloh324, Lloh325
	.loh AdrpLdrGotLdr	Lloh326, Lloh327, Lloh328
	.loh AdrpLdrGotLdr	Lloh329, Lloh330, Lloh331
                                        ; -- End function
	.globl	_real_local_random              ; -- Begin function real_local_random
	.weak_definition	_real_local_random
	.p2align	4
_real_local_random:                     ; @real_local_random
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	bl	_get_global_local_random_seed_address
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	_real_seed_random
                                        ; -- End function
	.p2align	4                               ; -- Begin function effect_marker_list_get_marker
_effect_marker_list_get_marker:         ; @effect_marker_list_get_marker
; %bb.0:
	sub	sp, sp, #112
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	mov	x19, x0
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	tbnz	w2, #31, LBB26_12
; %bb.1:
	ldrsh	w8, [x1, #8]
	cmp	w2, w8
	b.ge	LBB26_12
LBB26_2:
	ldr	w8, [x1, #20]
	mov	w9, #12                         ; =0xc
	smaddl	x8, w2, w9, x8
	ldr	s0, [x8]
	ldur	d1, [x8, #4]
	fmul	s0, s0, s0
	fmul	v1.2s, v1.2s, v1.2s
	fadd	s0, s0, s1
	mov	s1, v1.s[1]
	fadd	s0, s0, s1
	fmov	s1, #-1.00000000
	fadd	s0, s0, s1
	fmov	w8, s0
	ubfx	w8, w8, #23, #8
	cmp	w8, #254
	b.hi	LBB26_13
; %bb.3:
	mov	w8, #4719                       ; =0x126f
	fabs	s0, s0
	movk	w8, #14979, lsl #16
	fmov	s1, w8
	fcmp	s0, s1
	b.pl	LBB26_13
LBB26_4:
	ldrh	w8, [x1]
	mov	w20, #12                        ; =0xc
	strh	w8, [x19]
	ldr	w8, [x1, #16]
	ldr	w0, [x1, #4]
	smaddl	x8, w2, w20, x8
	cbnz	w0, LBB26_11
; %bb.5:
	ldr	w9, [x1, #20]
	ldr	w10, [x8, #8]
	ldr	x8, [x8]
	smaddl	x9, w2, w20, x9
	str	w10, [sp, #56]
	str	x8, [sp, #48]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	x8, [sp, #32]
	str	w9, [sp, #40]
LBB26_6:
	ldr	s0, [sp, #32]
	ldur	d1, [sp, #36]
	fmul	s0, s0, s0
	fmul	v1.2s, v1.2s, v1.2s
	fadd	s0, s0, s1
	mov	s1, v1.s[1]
	fadd	s0, s0, s1
	fmov	s1, #-1.00000000
	fadd	s0, s0, s1
	fmov	w8, s0
	ubfx	w8, w8, #23, #8
	cmp	w8, #254
	b.hi	LBB26_14
; %bb.7:
	mov	w8, #4719                       ; =0x126f
	fabs	s0, s0
	movk	w8, #14979, lsl #16
	fmov	s1, w8
	fcmp	s0, s1
	b.pl	LBB26_14
LBB26_8:
	add	x0, sp, #32
	add	x1, sp, #20
	bl	_perpendicular3d
	ldp	s0, s1, [sp, #20]
	mov	w8, #46871                      ; =0xb717
	ldr	s2, [sp, #28]
	movk	w8, #14545, lsl #16
	fmul	s3, s0, s0
	fmul	s4, s1, s1
	fmov	s5, w8
	fadd	s3, s3, s4
	fmul	s4, s2, s2
	fadd	s3, s3, s4
	fsqrt	s3, s3
	fabs	s4, s3
	fcmp	s4, s5
	b.mi	LBB26_10
; %bb.9:
	fmov	s4, #1.00000000
	fdiv	s3, s4, s3
	fmul	s0, s0, s3
	fmul	s1, s1, s3
	fmul	s2, s2, s3
	stp	s0, s1, [sp, #20]
	str	s2, [sp, #28]
LBB26_10:
	add	x0, x19, #4
	add	x1, sp, #48
	add	x2, sp, #32
	add	x3, sp, #20
	bl	_matrix4x3_from_point_and_vectors
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB26_11:
	mov	w23, w2
	add	x2, sp, #48
	mov	x24, x1
	mov	x1, x8
	bl	_matrix4x3_inverse_transform_point
	ldr	w8, [x24, #20]
	add	x2, sp, #32
	ldr	w0, [x24, #4]
	smaddl	x1, w23, w20, x8
	bl	_matrix4x3_inverse_transform_normal
	b	LBB26_6
LBB26_12:
Lloh332:
	adrp	x8, l_.str.5@PAGE
Lloh333:
	add	x8, x8, l_.str.5@PAGEOFF
Lloh334:
	adrp	x0, l_.str.20@PAGE
Lloh335:
	add	x0, x0, l_.str.20@PAGEOFF
	str	x1, [sp, #8]                    ; 8-byte Spill
	mov	x1, x8
	mov	w20, w2
	mov	w2, #1120                       ; =0x460
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	ldr	x1, [sp, #8]                    ; 8-byte Reload
	mov	w2, w20
	b	LBB26_2
LBB26_13:
Lloh336:
	adrp	x8, l_.str.5@PAGE
Lloh337:
	add	x8, x8, l_.str.5@PAGEOFF
Lloh338:
	adrp	x0, l_.str.9@PAGE
Lloh339:
	add	x0, x0, l_.str.9@PAGEOFF
	str	x1, [sp, #8]                    ; 8-byte Spill
	mov	x1, x8
	mov	w20, w2
	mov	w2, #1121                       ; =0x461
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	ldr	x1, [sp, #8]                    ; 8-byte Reload
	mov	w2, w20
	b	LBB26_4
LBB26_14:
Lloh340:
	adrp	x0, l_.str.9@PAGE
Lloh341:
	add	x0, x0, l_.str.9@PAGEOFF
Lloh342:
	adrp	x1, l_.str.5@PAGE
Lloh343:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #1136                       ; =0x470
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	b	LBB26_8
	.loh AdrpAdd	Lloh334, Lloh335
	.loh AdrpAdd	Lloh332, Lloh333
	.loh AdrpAdd	Lloh338, Lloh339
	.loh AdrpAdd	Lloh336, Lloh337
	.loh AdrpAdd	Lloh342, Lloh343
	.loh AdrpAdd	Lloh340, Lloh341
                                        ; -- End function
	.p2align	4                               ; -- Begin function effect_random_translational_velocity
_effect_random_translational_velocity:  ; @effect_random_translational_velocity
; %bb.0:
	sub	sp, sp, #128
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	fmov	s11, s0
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	fmov	s8, s2
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	mov	w27, w5
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	mov	w25, w6
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	mov	x24, x2
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	mov	x19, x4
	mov	x20, x3
	mov	x26, x1
	mov	x23, x0
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	tbnz	w5, #0, LBB27_10
LBB27_1:
	tbnz	w25, #0, LBB27_12
LBB27_2:
	fsub	s1, s1, s0
	tbnz	w27, #1, LBB27_9
LBB27_3:
	tbnz	w25, #1, LBB27_13
LBB27_4:
	movi	d0, #0000000000000000
	mov	x0, x23
	bl	_real_seed_random_range
	fmov	s9, s0
	tbnz	w27, #2, LBB27_11
LBB27_5:
	tbnz	w25, #2, LBB27_14
LBB27_6:
	mov	x0, x23
	bl	_real_seed_random
	fmul	s8, s8, s0
	ldr	x8, [x24]
	ldr	w9, [x24, #8]
	str	x8, [x20]
	str	w9, [x20, #8]
	fcmp	s8, #0.0
	b.eq	LBB27_8
; %bb.7:
	add	x1, sp, #4
	mov	x0, x23
	bl	_seed_random_direction3d
	fcvt	d8, s8
	mov	x23, x0
	fmov	d0, d8
	bl	_halo_sin
	fcvt	s10, d0
	fmov	d0, d8
	bl	_halo_cos
	fcvt	s1, d0
	mov	x0, x20
	fmov	s0, s10
	mov	x1, x23
	bl	_rotate_vector_about_axis
LBB27_8:
	fadd	s0, s11, s9
	ldr	s1, [x20]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	fmul	s1, s0, s1
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	str	s1, [x19]
	ldr	s1, [x20, #4]
	fmul	s2, s0, s1
	str	s2, [x19, #4]
	ldr	s1, [x20, #8]
	fmul	s0, s0, s1
	str	s0, [x19, #8]
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB27_9:
	ldr	s0, [x26, #68]
	fmul	s1, s1, s0
	b	LBB27_3
LBB27_10:
	ldr	s2, [x26, #68]
	fmul	s11, s0, s2
	b	LBB27_1
LBB27_11:
	ldr	s0, [x26, #68]
	fmul	s8, s8, s0
	b	LBB27_5
LBB27_12:
	ldr	s2, [x26, #72]
	fmul	s11, s11, s2
	b	LBB27_2
LBB27_13:
	ldr	s0, [x26, #72]
	fmul	s1, s1, s0
	b	LBB27_4
LBB27_14:
	ldr	s0, [x26, #72]
	fmul	s8, s8, s0
	b	LBB27_6
                                        ; -- End function
	.section	__DATA,__data
	.globl	_effects_corpse_nonviolent      ; @effects_corpse_nonviolent
_effects_corpse_nonviolent:
	.byte	1                               ; 0x1

	.globl	_debug_effects_nonviolent       ; @debug_effects_nonviolent
.zerofill __DATA,__common,_debug_effects_nonviolent,1,0
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"effect"

l_.str.1:                               ; @.str.1
	.asciz	"effect location"

	.comm	_effect_location_data,4,2       ; @effect_location_data
l_.str.2:                               ; @.str.2
	.asciz	"couldn't allocate effect globals"

l_.str.3:                               ; @.str.3
	.asciz	"the saved game is not taken: effect %ld has an impulse field"

l_.str.4:                               ; @.str.4
	.asciz	"object_index!=NONE"

l_.str.5:                               ; @.str.5
	.asciz	"c:\\halo\\SOURCE\\effects\\effects.c"

l_.str.6:                               ; @.str.6
	.asciz	"marker_count>0"

l_.str.7:                               ; @.str.7
	.asciz	"marker_points"

l_.str.8:                               ; @.str.8
	.asciz	"marker_forwards"

l_.str.9:                               ; @.str.9
	.asciz	"<message not formatted in release builds>"

l_.str.10:                              ; @.str.10
	.asciz	"created %sviolent %s on %s"

l_.str.11:                              ; @.str.11
	.asciz	"non"

l_.str.12:                              ; @.str.12
	.space	1

l_.str.13:                              ; @.str.13
	.asciz	"<none>"

.zerofill __DATA,__bss,_global_effect_marker_list,4,2 ; @global_effect_marker_list
l_.str.14:                              ; @.str.14
	.asciz	"!translational_velocity || valid_real_vector3d(translational_velocity)"

.zerofill __DATA,__bss,_effect_new_looping.bad_change_color_reported,1,0 ; @effect_new_looping.bad_change_color_reported
l_.str.15:                              ; @.str.15
	.asciz	"effect %s is attached with change color %d (of %d)"

l_.str.16:                              ; @.str.16
	.asciz	"effect->local_player_index==NONE"

l_.str.17:                              ; @.str.17
	.asciz	"effects_update"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @effects_update_section
_effects_update_section:
	.long	l_.str.17
	.long	4294967295                      ; 0xffffffff
	.byte	1                               ; 0x1
	.byte	0                               ; 0x0
	.short	0                               ; 0x0
	.long	0                               ; 0x0
	.quad	0                               ; 0x0
	.long	0                               ; 0x0
	.space	4
	.quad	0                               ; 0x0
	.space	480
	.space	960
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.quad	0                               ; 0x0
	.long	0                               ; 0x0
	.space	4
	.quad	0                               ; 0x0
	.long	0                               ; 0x0
	.space	4
	.quad	0                               ; 0x0

	.section	__TEXT,__cstring,cstring_literals
l_.str.19:                              ; @.str.19
	.asciz	"location_datum_index"

l_.str.20:                              ; @.str.20
	.asciz	"effect_marker_index>=0 && effect_marker_index<marker_list->count"

l_.str.21:                              ; @.str.21
	.asciz	"cannot create objects, lights, or damage from an effect created by particles."

l_.str.22:                              ; @.str.22
	.asciz	"effect_index!=NONE"

l_.str.23:                              ; @.str.23
	.asciz	"effect %s has an event with %d particles (only %d are made)"

l_.str.24:                              ; @.str.24
	.asciz	"count_delta>=0"

l_.str.25:                              ; @.str.25
	.asciz	"effect %s has %d locations (only %d are used)"

	.cg_profile _effects_initialize, _game_state_data_new, 22
	.cg_profile _effects_initialize_for_new_map, _data_make_valid, 22
	.cg_profile _effects_dispose_from_old_map, _data_make_invalid, 22
	.cg_profile _effect_new_attached_from_markers, _effect_allocate, 474
	.cg_profile _effect_new_attached_from_markers, _datum_get, 289
	.cg_profile _effect_new_attached_from_markers, _valid_real_rgb_color, 289
	.cg_profile _effect_new_attached_from_markers, _object_try_and_get_and_verify_type, 289
	.cg_profile _effect_new_attached_from_markers, _game_time_get, 56
	.cg_profile _effect_new_attached_from_markers, _object_get_node_matrix, 289
	.cg_profile _effect_new_attached_from_markers, _csmemset, 289
	.cg_profile _effect_new_attached_from_markers, _effect_build_locations, 289
	.cg_profile _effect_new_attached_from_markers, _effect_update, 289
	.cg_profile _effect_allocate, _game_in_editor, 28325
	.cg_profile _effect_allocate, _tag_get, 27312
	.cg_profile _effect_allocate, _datum_new, 27312
	.cg_profile _effect_allocate, _datum_get, 26838
	.cg_profile _effect_allocate, _effect_set_event, 26838
	.cg_profile _effect_marker_list_get_markers_by_name, _csstrlen, 74432
	.cg_profile _effect_marker_list_get_markers_by_name, _csstrcmp, 212779
	.cg_profile _effect_marker_list_get_markers_by_name, _effect_marker_list_get_marker, 74718
	.cg_profile _effect_new_unattached_from_markers, _effect_allocate, 26661
	.cg_profile _effect_new_unattached_from_markers, _datum_get, 25516
	.cg_profile _effect_new_unattached_from_markers, _valid_real_rgb_color, 25516
	.cg_profile _effect_new_unattached_from_markers, _scenario_location_from_point, 25516
	.cg_profile _effect_new_unattached_from_markers, _csmemset, 25516
	.cg_profile _effect_new_unattached_from_markers, _effect_build_locations, 25516
	.cg_profile _effect_new_unattached_from_markers, _effect_update, 25516
	.cg_profile _effects_update, _data_next_index, 572310
	.cg_profile _effects_update, _effect_update, 556274
	.cg_profile _effects_reconnect_to_structure_bsp, _data_next_index, 356
	.cg_profile _effects_reconnect_to_structure_bsp, _datum_get, 360
	.cg_profile _effects_reconnect_to_structure_bsp, _scenario_location_from_point, 12
	.cg_profile _effect_stop, _datum_try_and_get, 80
	.cg_profile _effect_stop, _tag_get, 80
	.cg_profile _dangerous_effects_near_player, _data_next_index, 4
	.cg_profile _real_local_random, _get_global_local_random_seed_address, 62
	.cg_profile _real_local_random, _real_seed_random, 62
	.cg_profile _effect_marker_list_get_marker, _matrix4x3_inverse_transform_point, 719
	.cg_profile _effect_marker_list_get_marker, _matrix4x3_inverse_transform_normal, 719
	.cg_profile _effect_marker_list_get_marker, _perpendicular3d, 74718
	.cg_profile _effect_marker_list_get_marker, _matrix4x3_from_point_and_vectors, 74718
	.cg_profile _effect_random_translational_velocity, _real_seed_random_range, 126504
	.cg_profile _effect_random_translational_velocity, _real_seed_random, 126504
	.cg_profile _effect_random_translational_velocity, _seed_random_direction3d, 93391
	.cg_profile _effect_random_translational_velocity, _halo_sin, 93391
	.cg_profile _effect_random_translational_velocity, _halo_cos, 93391
	.cg_profile _effect_random_translational_velocity, _rotate_vector_about_axis, 93391
.subsections_via_symbols
