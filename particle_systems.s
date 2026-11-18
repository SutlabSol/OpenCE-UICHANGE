	.watchos_version_min 2, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_particle_systems_initialize    ; -- Begin function particle_systems_initialize
	.p2align	4
_particle_systems_initialize:           ; @particle_systems_initialize
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #256                        ; =0x100
	mov	w2, #344                        ; =0x158
	mov	x29, sp
	bl	_game_state_data_new
Lloh2:
	adrp	x8, _particle_systems@GOTPAGE
	mov	w1, #4096                       ; =0x1000
	mov	w2, #128                        ; =0x80
Lloh3:
	ldr	w8, [x8, _particle_systems@GOTPAGEOFF]
Lloh4:
	str	w0, [x8]
Lloh5:
	adrp	x0, l_.str.1@PAGE
Lloh6:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_game_state_data_new
Lloh7:
	adrp	x8, _system_particles@GOTPAGE
Lloh8:
	ldr	w8, [x8, _system_particles@GOTPAGEOFF]
Lloh9:
	str	w0, [x8]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotStr	Lloh7, Lloh8, Lloh9
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotStr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh0, Lloh1
                                        ; -- End function
	.globl	_particle_systems_initialize_for_new_map ; -- Begin function particle_systems_initialize_for_new_map
	.p2align	4
_particle_systems_initialize_for_new_map: ; @particle_systems_initialize_for_new_map
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
Lloh10:
	adrp	x8, _particle_systems@GOTPAGE
	mov	x29, sp
Lloh11:
	ldr	w8, [x8, _particle_systems@GOTPAGEOFF]
Lloh12:
	ldr	w0, [x8]
	bl	_data_make_valid
Lloh13:
	adrp	x8, _system_particles@GOTPAGE
Lloh14:
	ldr	w8, [x8, _system_particles@GOTPAGEOFF]
Lloh15:
	ldr	w0, [x8]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	_data_make_valid
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.loh AdrpLdrGotLdr	Lloh10, Lloh11, Lloh12
                                        ; -- End function
	.globl	_particle_system_orphan         ; -- Begin function particle_system_orphan
	.p2align	4
_particle_system_orphan:                ; @particle_system_orphan
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
Lloh16:
	adrp	x8, _particle_systems@GOTPAGE
	mov	w1, w0
	mov	x29, sp
Lloh17:
	ldr	w8, [x8, _particle_systems@GOTPAGEOFF]
Lloh18:
	ldr	w8, [x8]
	mov	x0, x8
	bl	_datum_get
	ldr	w9, [x0, #4]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0, #12]
	and	w9, w9, #0xfffffffe
	str	w9, [x0, #4]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotLdr	Lloh16, Lloh17, Lloh18
                                        ; -- End function
	.globl	_particle_systems_dispose_from_old_map ; -- Begin function particle_systems_dispose_from_old_map
	.p2align	4
_particle_systems_dispose_from_old_map: ; @particle_systems_dispose_from_old_map
; %bb.0:
Lloh19:
	adrp	x8, _particle_systems@GOTPAGE
Lloh20:
	ldr	w8, [x8, _particle_systems@GOTPAGEOFF]
Lloh21:
	ldr	w0, [x8]
	cbz	w0, LBB3_2
; %bb.1:
	ldrb	w8, [x0, #36]
	cbnz	w8, LBB3_3
LBB3_2:
	ret
LBB3_3:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	mov	w1, #-1                         ; =0xffffffff
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB3_6
; %bb.4:
	mov	w19, w0
LBB3_5:                                 ; =>This Inner Loop Header: Depth=1
	mov	w0, w19
	bl	_particle_system_delete
Lloh22:
	adrp	x8, _particle_systems@GOTPAGE
	mov	w1, w19
Lloh23:
	ldr	w8, [x8, _particle_systems@GOTPAGEOFF]
Lloh24:
	ldr	w0, [x8]
	bl	_data_next_index
	mov	w19, w0
	cmn	w0, #1
	b.ne	LBB3_5
LBB3_6:
Lloh25:
	adrp	x8, _particle_systems@GOTPAGE
Lloh26:
	ldr	w8, [x8, _particle_systems@GOTPAGEOFF]
Lloh27:
	ldr	w0, [x8]
	bl	_data_make_invalid
Lloh28:
	adrp	x8, _system_particles@GOTPAGE
Lloh29:
	ldr	w8, [x8, _system_particles@GOTPAGEOFF]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
Lloh30:
	ldr	w0, [x8]
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_data_make_invalid
	.loh AdrpLdrGotLdr	Lloh19, Lloh20, Lloh21
	.loh AdrpLdrGotLdr	Lloh22, Lloh23, Lloh24
	.loh AdrpLdrGotLdr	Lloh28, Lloh29, Lloh30
	.loh AdrpLdrGotLdr	Lloh25, Lloh26, Lloh27
                                        ; -- End function
	.p2align	4                               ; -- Begin function particle_system_delete
_particle_system_delete:                ; @particle_system_delete
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
Lloh31:
	adrp	x25, _particle_systems@GOTPAGE
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	w19, w0
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	mov	w1, w19
Lloh32:
	ldr	w25, [x25, _particle_systems@GOTPAGEOFF]
	add	x29, sp, #64
	ldr	w8, [x25]
	mov	x0, x8
	bl	_datum_get
	mov	x20, x0
	ldr	w1, [x0, #8]
	mov	w0, #29804                      ; =0x746c
	movk	w0, #28771, lsl #16
	bl	_tag_get
	ldr	w8, [x0, #92]
	cmp	w8, #1
	b.lt	LBB4_7
; %bb.1:
Lloh33:
	adrp	x26, _system_particles@GOTPAGE
	mov	x23, x0
	mov	w27, wzr
Lloh34:
	ldr	w26, [x26, _system_particles@GOTPAGEOFF]
LBB4_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_3 Depth 2
	add	w9, w20, w27, lsl #6
	add	w9, w9, #148
	ldr	w24, [x9]
	cmn	w24, #1
	b.eq	LBB4_5
LBB4_3:                                 ;   Parent Loop BB4_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w0, [x26]
	mov	w1, w24
	bl	_datum_get
	ldr	w8, [x26]
	mov	w1, w24
	ldr	w28, [x0, #4]
	mov	x0, x8
	bl	_datum_delete
	mov	w24, w28
	cmn	w28, #1
	b.ne	LBB4_3
; %bb.4:                                ;   in Loop: Header=BB4_2 Depth=1
	ldr	w8, [x23, #92]
LBB4_5:                                 ;   in Loop: Header=BB4_2 Depth=1
	cmp	w27, #2
	b.hi	LBB4_7
; %bb.6:                                ;   in Loop: Header=BB4_2 Depth=1
	add	w27, w27, #1
	cmp	w8, w27
	b.gt	LBB4_2
LBB4_7:
	ldr	w0, [x25]
	mov	w1, w19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	b	_datum_delete
	.loh AdrpLdrGot	Lloh31, Lloh32
	.loh AdrpLdrGot	Lloh33, Lloh34
                                        ; -- End function
	.globl	_particle_systems_dispose       ; -- Begin function particle_systems_dispose
	.p2align	4
_particle_systems_dispose:              ; @particle_systems_dispose
; %bb.0:
	ret
                                        ; -- End function
	.globl	_particle_systems_disconnect_from_structure_bsp ; -- Begin function particle_systems_disconnect_from_structure_bsp
	.p2align	4
_particle_systems_disconnect_from_structure_bsp: ; @particle_systems_disconnect_from_structure_bsp
; %bb.0:
	ret
                                        ; -- End function
	.globl	_particle_systems_reconnect_to_structure_bsp ; -- Begin function particle_systems_reconnect_to_structure_bsp
	.p2align	4
_particle_systems_reconnect_to_structure_bsp: ; @particle_systems_reconnect_to_structure_bsp
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
Lloh35:
	adrp	x25, _particle_systems@GOTPAGE
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	mov	w1, #-1                         ; =0xffffffff
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
Lloh36:
	ldr	w25, [x25, _particle_systems@GOTPAGEOFF]
	ldr	w0, [x25]
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB7_14
; %bb.1:
Lloh37:
	adrp	x26, _system_particles@GOTPAGE
	mov	w19, w0
Lloh38:
	ldr	w26, [x26, _system_particles@GOTPAGEOFF]
LBB7_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_6 Depth 2
                                        ;       Child Loop BB7_7 Depth 3
	ldr	w0, [x25]
	mov	w1, w19
	bl	_datum_get
	mov	x20, x0
	ldr	w1, [x0, #8]
	mov	w0, #29804                      ; =0x746c
	movk	w0, #28771, lsl #16
	bl	_tag_get
	ldr	w8, [x20, #12]
	mov	x23, x0
	cmn	w8, #1
	b.eq	LBB7_16
; %bb.3:                                ;   in Loop: Header=BB7_2 Depth=1
	add	x1, x20, #24
	mov	w0, w8
	bl	_object_get_location
LBB7_4:                                 ;   in Loop: Header=BB7_2 Depth=1
	ldr	w8, [x23, #92]
	cmp	w8, #1
	b.lt	LBB7_13
; %bb.5:                                ;   in Loop: Header=BB7_2 Depth=1
	mov	w27, wzr
LBB7_6:                                 ;   Parent Loop BB7_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB7_7 Depth 3
	add	w9, w20, w27, lsl #6
	add	w28, w9, #148
	ldr	w1, [x28]
	cmn	w1, #1
	b.eq	LBB7_11
LBB7_7:                                 ;   Parent Loop BB7_2 Depth=1
                                        ;     Parent Loop BB7_6 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w0, [x26]
	bl	_datum_get
	mov	x24, x0
	add	x0, x0, #20
	add	x1, x24, #28
	bl	_scenario_location_from_point
	ldrsh	w8, [x24, #24]
	cmn	w8, #1
	b.ne	LBB7_15
; %bb.8:                                ;   in Loop: Header=BB7_7 Depth=3
	ldr	w0, [x26]
	ldr	w1, [x28]
	bl	_datum_delete
	ldr	w1, [x24, #4]
	str	w1, [x28]
LBB7_9:                                 ;   in Loop: Header=BB7_7 Depth=3
	cmn	w1, #1
	b.ne	LBB7_7
; %bb.10:                               ;   in Loop: Header=BB7_6 Depth=2
	ldr	w8, [x23, #92]
LBB7_11:                                ;   in Loop: Header=BB7_6 Depth=2
	cmp	w27, #2
	b.hi	LBB7_13
; %bb.12:                               ;   in Loop: Header=BB7_6 Depth=2
	add	w27, w27, #1
	cmp	w8, w27
	b.gt	LBB7_6
LBB7_13:                                ;   in Loop: Header=BB7_2 Depth=1
	ldr	w0, [x25]
	mov	w1, w19
	bl	_data_next_index
	mov	w19, w0
	cmn	w0, #1
	b.ne	LBB7_2
LBB7_14:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB7_15:                                ;   in Loop: Header=BB7_7 Depth=3
	ldr	w1, [x24, #4]!
	mov	x28, x24
	b	LBB7_9
LBB7_16:                                ;   in Loop: Header=BB7_2 Depth=1
	add	x0, x20, #24
	add	x1, x20, #32
	bl	_scenario_location_from_point
	ldrsh	w8, [x20, #28]
	cmn	w8, #1
	b.ne	LBB7_4
; %bb.17:                               ;   in Loop: Header=BB7_2 Depth=1
	mov	w0, w19
	bl	_particle_system_delete
	b	LBB7_13
	.loh AdrpLdrGot	Lloh35, Lloh36
	.loh AdrpLdrGot	Lloh37, Lloh38
                                        ; -- End function
	.globl	_particle_system_new_unattached ; -- Begin function particle_system_new_unattached
	.p2align	4
_particle_system_new_unattached:        ; @particle_system_new_unattached
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
Lloh39:
	adrp	x26, _particle_systems@GOTPAGE
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	mov	w25, w0
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	fmov	s8, s0
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	mov	x23, x2
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	mov	x20, x3
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
Lloh40:
	ldr	w26, [x26, _particle_systems@GOTPAGEOFF]
	mov	x24, x1
	ldr	w8, [x26]
	mov	x0, x8
	bl	_datum_new
	mov	w19, w0
	mov	w27, #-1                        ; =0xffffffff
	cmn	w0, #1
	b.eq	LBB8_2
; %bb.1:
	ldr	w0, [x26]
	mov	w1, w19
	bl	_datum_get
	stp	w25, w27, [x0, #8]
	add	x2, sp, #4
	ldr	x8, [x24]
	mov	w3, wzr
	ldr	w9, [x24, #8]
	str	x8, [x0, #32]!
	str	w9, [x0, #8]
	add	x1, x0, #40
	ldr	w8, [x23, #8]
	ldr	x9, [x23]
	ldur	w10, [x0, #-28]
	str	w8, [x0, #20]
	stur	x9, [x0, #12]
	ldr	q0, [x20]
	orr	w8, w10, #0x1
	stur	s8, [x0, #-12]
	stur	w8, [x0, #-28]
	stur	q0, [x0, #24]
	bl	_light_particle
	mov	w0, w19
	bl	_particle_system_initialize
	tbz	w0, #0, LBB8_3
LBB8_2:
	mov	w0, w19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB8_3:
	ldr	w0, [x26]
	mov	w1, w19
	bl	_datum_delete
	mov	w19, #-1                        ; =0xffffffff
	b	LBB8_2
	.loh AdrpLdrGot	Lloh39, Lloh40
                                        ; -- End function
	.p2align	4                               ; -- Begin function particle_system_initialize
_particle_system_initialize:            ; @particle_system_initialize
; %bb.0:
	sub	sp, sp, #112
Lloh41:
	adrp	x8, _particle_systems@GOTPAGE
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	mov	w24, w0
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	mov	w1, w24
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
Lloh42:
	ldr	w8, [x8, _particle_systems@GOTPAGEOFF]
Lloh43:
	ldr	w8, [x8]
	mov	x0, x8
	bl	_datum_get
	mov	x25, x0
	ldr	w1, [x0, #8]
	mov	w0, #29804                      ; =0x746c
	movk	w0, #28771, lsl #16
	bl	_tag_get
	mov	x20, x0
	add	x0, x25, #24
	add	x1, x25, #32
	bl	_scenario_location_from_point
	ldr	w8, [x25, #4]
	mov	x23, x20
	orr	w8, w8, #0x2
	str	w8, [x25, #4]
	ldr	w8, [x23, #92]!
	cmp	w8, #5
	b.lt	LBB9_2
; %bb.1:
	ldr	w0, [x25, #8]
	bl	_tag_get_name
	ldr	w9, [x23]
	mov	x8, x0
	mov	w19, #4                         ; =0x4
Lloh44:
	adrp	x1, l_.str.5@PAGE
Lloh45:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w0, #2                          ; =0x2
	str	w8, [sp]
	stp	w9, w19, [sp, #4]
	bl	_error
	str	w19, [x23]
	b	LBB9_3
LBB9_2:
	cmp	w8, #1
	b.lt	LBB9_20
LBB9_3:
	str	w24, [sp, #12]                  ; 4-byte Spill
	mov	w24, wzr
	mov	w26, wzr
	add	x27, x25, #88
	mov	w19, #-65536                    ; =0xffff0000
	mov	w28, #-1                        ; =0xffffffff
	mov	w25, #1                         ; =0x1
	b	LBB9_6
	.p2align	4, , 8
LBB9_4:                                 ;   in Loop: Header=BB9_6 Depth=1
	mov	w25, wzr
LBB9_5:                                 ;   in Loop: Header=BB9_6 Depth=1
	ldr	w8, [x23]
	add	w26, w26, #1
	sxth	w24, w26
	cmp	w8, w24
	b.le	LBB9_19
LBB9_6:                                 ; =>This Inner Loop Header: Depth=1
	tbnz	w26, #15, LBB9_11
; %bb.7:                                ;   in Loop: Header=BB9_6 Depth=1
	ldr	w8, [x20, #96]
	cbz	w8, LBB9_11
; %bb.8:                                ;   in Loop: Header=BB9_6 Depth=1
	ldr	w9, [x20, #100]
	cbz	w9, LBB9_10
; %bb.9:                                ;   in Loop: Header=BB9_6 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #128
	b.ne	LBB9_11
LBB9_10:                                ;   in Loop: Header=BB9_6 Depth=1
	lsl	w9, w24, #7
	add	x8, x8, x9
	b	LBB9_12
	.p2align	4, , 8
LBB9_11:                                ;   in Loop: Header=BB9_6 Depth=1
	mov	x0, x23
	mov	w1, w24
	mov	w2, #128                        ; =0x80
	bl	_tag_block_get_element_with_size
	mov	x8, x0
LBB9_12:                                ;   in Loop: Header=BB9_6 Depth=1
	mov	x0, x8
	ldr	w9, [x0, #104]!
	cbz	w9, LBB9_4
; %bb.13:                               ;   in Loop: Header=BB9_6 Depth=1
	sxtw	x9, w24
	add	x24, x27, x9, lsl #6
	mov	w9, #1                          ; =0x1
	str	w19, [x24]
	strb	w9, [x24, #56]
	strh	wzr, [x24, #58]
	str	w28, [x24, #60]
	ldr	w9, [x0]
	cmp	w9, #1
	b.lt	LBB9_5
; %bb.14:                               ;   in Loop: Header=BB9_6 Depth=1
	ldr	w9, [x8, #108]
	cbz	w9, LBB9_17
; %bb.15:                               ;   in Loop: Header=BB9_6 Depth=1
	ldr	w8, [x8, #112]
	cbz	w8, LBB9_18
; %bb.16:                               ;   in Loop: Header=BB9_6 Depth=1
	ldr	w8, [x8, #12]
	cmp	w8, #192
	b.eq	LBB9_18
LBB9_17:                                ;   in Loop: Header=BB9_6 Depth=1
	mov	w1, wzr
	mov	w2, #192                        ; =0xc0
	bl	_tag_block_get_element_with_size
	mov	x9, x0
LBB9_18:                                ;   in Loop: Header=BB9_6 Depth=1
	ldp	s8, s9, [x9, #32]
	bl	_get_global_local_random_seed_address
	fmov	s0, s8
	fmov	s1, s9
	bl	_real_seed_random_range
	stp	s0, s0, [x24, #4]
	b	LBB9_5
LBB9_19:
	ldr	w24, [sp, #12]                  ; 4-byte Reload
	cbnz	w25, LBB9_21
	b	LBB9_22
LBB9_20:
	mov	w25, #1                         ; =0x1
LBB9_21:
	mov	w8, #4719                       ; =0x126f
	mov	w0, w24
	movk	w8, #14979, lsl #16
	fmov	s0, w8
	bl	_particle_system_update
LBB9_22:
	and	w0, w25, #0xff
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpLdrGotLdr	Lloh41, Lloh42, Lloh43
	.loh AdrpAdd	Lloh44, Lloh45
                                        ; -- End function
	.globl	_particle_system_new_attached   ; -- Begin function particle_system_new_attached
	.p2align	4
_particle_system_new_attached:          ; @particle_system_new_attached
; %bb.0:
	sub	sp, sp, #208
	stp	x28, x27, [sp, #128]            ; 16-byte Folded Spill
Lloh46:
	adrp	x28, _particle_systems@GOTPAGE
	stp	x26, x25, [sp, #144]            ; 16-byte Folded Spill
	mov	w25, w0
	stp	x24, x23, [sp, #160]            ; 16-byte Folded Spill
	mov	w27, w2
	stp	x20, x19, [sp, #176]            ; 16-byte Folded Spill
	mov	w20, w1
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
Lloh47:
	ldr	w28, [x28, _particle_systems@GOTPAGEOFF]
	ldr	w8, [x28]
	mov	x0, x8
	bl	_datum_new
	mov	w19, w0
	cmn	w0, #1
	b.eq	LBB10_17
; %bb.1:
	ldr	w0, [x28]
	mov	w1, w19
	bl	_datum_get
	mov	x23, x0
	mov	w0, w20
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_get_and_verify_type
	mov	x24, x0
	ldr	w1, [x0]
	mov	w0, #27237                      ; =0x6a65
	movk	w0, #28514, lsl #16
	bl	_tag_get
	mov	x8, x0
	add	x0, x0, #320
	tbnz	w27, #31, LBB10_7
; %bb.2:
	ldr	w9, [x0]
	cmp	w9, w27
	b.le	LBB10_7
; %bb.3:
	ldr	w9, [x8, #324]
	cbz	w9, LBB10_7
; %bb.4:
	ldr	w8, [x8, #328]
	cbz	w8, LBB10_6
; %bb.5:
	ldr	w8, [x8, #12]
	cmp	w8, #72
	b.ne	LBB10_7
LBB10_6:
	add	w8, w27, w27, lsl #3
	lsl	w8, w8, #3
	add	x26, x9, w8, sxtw
	b	LBB10_8
LBB10_7:
	mov	w1, w27
	mov	w2, #72                         ; =0x48
	bl	_tag_block_get_element_with_size
	mov	x26, x0
LBB10_8:
	stp	w25, w20, [x23, #8]
	strh	w27, [x23, #16]
	ldrh	w8, [x26, #48]
	sub	w8, w8, #1
	strh	w8, [x23, #18]
	ldrh	w8, [x26, #52]
	cbz	w8, LBB10_14
; %bb.9:
	adrp	x9, _particle_system_new_attached.bad_change_color_reported@PAGE
	tbnz	w8, #15, LBB10_18
; %bb.10:
	ldrb	w9, [x9, _particle_system_new_attached.bad_change_color_reported@PAGEOFF]
	cmp	w8, #4
	cset	w10, lo
	orr	w9, w10, w9
	tbnz	w9, #0, LBB10_12
LBB10_11:
	adrp	x8, _particle_system_new_attached.bad_change_color_reported@PAGE
	mov	w9, #1                          ; =0x1
	mov	w0, w25
	strb	w9, [x8, _particle_system_new_attached.bad_change_color_reported@PAGEOFF]
	bl	_tag_get_name
	ldrsh	w9, [x26, #52]
	mov	x8, x0
	mov	w10, #4                         ; =0x4
Lloh48:
	adrp	x1, l_.str.2@PAGE
Lloh49:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w0, #2                          ; =0x2
	str	w8, [sp]
	stp	w9, w10, [sp, #4]
	bl	_error
	ldrh	w8, [x26, #52]
LBB10_12:
	sub	w9, w8, #1
	cmp	w9, #2
	b.hi	LBB10_14
; %bb.13:
	mov	w9, #12                         ; =0xc
	mov	w10, #1065353216                ; =0x3f800000
	umaddl	x8, w8, w9, x24
	ldr	w9, [x8, #368]
	ldr	x8, [x8, #360]
	str	w10, [x23, #56]
	str	w9, [x23, #68]
	stur	x8, [x23, #60]
	b	LBB10_15
LBB10_14:
Lloh50:
	adrp	x8, _global_real_argb_white@GOTPAGE
Lloh51:
	ldr	w8, [x8, _global_real_argb_white@GOTPAGEOFF]
Lloh52:
	ldr	w8, [x8]
	ldr	q0, [x8]
	stur	q0, [x23, #56]
LBB10_15:
	add	x1, x26, #16
	add	x2, sp, #20
	mov	w0, w20
	mov	w3, #1                          ; =0x1
	bl	_object_get_marker_by_name
	ldur	x8, [sp, #116]
	add	x1, x23, #44
	ldr	w9, [sp, #124]
	mov	w0, w20
	mov	x2, xzr
	str	x8, [x23, #32]
	str	w9, [x23, #40]
	bl	_object_get_velocities
	fmov	v0.2s, #30.00000000
	ldur	d1, [x23, #44]
	fmov	s2, #30.00000000
	ldr	s3, [x23, #52]
Lloh53:
	adrp	x8, _global_real_rgb_white@GOTPAGE
	add	x2, x23, #20
	mov	w0, w20
Lloh54:
	ldr	w8, [x8, _global_real_rgb_white@GOTPAGEOFF]
	fmul	v0.2s, v1.2s, v0.2s
	ldrsh	w1, [x23, #18]
	fmul	s1, s3, s2
Lloh55:
	ldr	w8, [x8]
	stur	d0, [x23, #44]
	str	s1, [x23, #52]
	ldr	x9, [x8]
	ldr	w8, [x8, #8]
	str	x9, [x23, #72]
	str	w8, [x23, #80]
	bl	_object_get_function_value
	ldr	w8, [x23, #4]
	cmp	w0, #0
	mov	w0, w19
	and	w8, w8, #0xfffffffe
	cinc	w8, w8, ne
	str	w8, [x23, #4]
	bl	_particle_system_initialize
	tbnz	w0, #0, LBB10_17
; %bb.16:
	ldr	w0, [x28]
	mov	w1, w19
	bl	_datum_delete
	mov	w19, #-1                        ; =0xffffffff
LBB10_17:
	mov	w0, w19
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB10_18:
	ldrb	w9, [x9, _particle_system_new_attached.bad_change_color_reported@PAGEOFF]
	tbz	w9, #0, LBB10_11
	b	LBB10_12
	.loh AdrpLdrGot	Lloh46, Lloh47
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpLdrGotLdr	Lloh50, Lloh51, Lloh52
	.loh AdrpLdrGotLdr	Lloh53, Lloh54, Lloh55
                                        ; -- End function
	.globl	_particle_systems_update        ; -- Begin function particle_systems_update
	.p2align	4
_particle_systems_update:               ; @particle_systems_update
; %bb.0:
	stp	d9, d8, [sp, #-48]!             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
Lloh56:
	adrp	x20, _particle_systems@GOTPAGE
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	fmov	s8, s0
	add	x29, sp, #32
Lloh57:
	ldr	w20, [x20, _particle_systems@GOTPAGEOFF]
	ldr	w0, [x20]
	cbz	w0, LBB11_6
; %bb.1:
	ldrb	w8, [x0, #36]
	cbz	w8, LBB11_6
LBB11_2:
	mov	w1, #-1                         ; =0xffffffff
LBB11_3:                                ; =>This Inner Loop Header: Depth=1
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB11_5
; %bb.4:                                ;   in Loop: Header=BB11_3 Depth=1
	fmov	s0, s8
	mov	w19, w0
	bl	_particle_system_update
	ldr	w0, [x20]
	mov	w1, w19
	b	LBB11_3
LBB11_5:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #48               ; 16-byte Folded Reload
	ret
LBB11_6:
Lloh58:
	adrp	x0, l_.str.3@PAGE
Lloh59:
	add	x0, x0, l_.str.3@PAGEOFF
Lloh60:
	adrp	x1, l_.str.4@PAGE
Lloh61:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #562                        ; =0x232
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	ldr	w0, [x20]
	b	LBB11_2
	.loh AdrpLdrGot	Lloh56, Lloh57
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh58, Lloh59
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function particle_system_update
lCPI12_0:
	.quad	0x3fd3333340000000              ; double 0.30000001192092896
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4
_particle_system_update:                ; @particle_system_update
; %bb.0:
	stp	d15, d14, [sp, #-144]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	sub	sp, sp, #960
Lloh62:
	adrp	x8, _particle_systems@GOTPAGE
	mov	w1, w0
	fmov	s8, s0
Lloh63:
	ldr	w8, [x8, _particle_systems@GOTPAGEOFF]
	str	w1, [sp, #12]                   ; 4-byte Spill
Lloh64:
	ldr	w0, [x8]
	bl	_datum_get
	mov	x27, x0
	ldr	w1, [x0, #8]
	mov	w0, #29804                      ; =0x746c
	movk	w0, #28771, lsl #16
	bl	_tag_get
	ldr	w8, [x27, #12]
	mov	x23, x0
	cmn	w8, #1
	b.eq	LBB12_6
; %bb.1:
	mov	w0, w8
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_get_and_verify_type
	ldrb	w8, [x0, #5]
	tbz	w8, #3, LBB12_4
; %bb.2:
	ldr	w0, [x27, #12]
	add	x2, x27, #20
	ldrsh	w1, [x27, #18]
	bl	_object_get_function_value
	cbz	w0, LBB12_4
; %bb.3:
	ldr	w8, [x27, #4]
	orr	w8, w8, #0x1
	b	LBB12_5
LBB12_4:
	ldr	w8, [x27, #4]
	and	w8, w8, #0xfffffffe
LBB12_5:
	ldr	w0, [x27, #12]
	add	x1, x27, #32
	str	w8, [x27, #4]
	bl	_object_get_origin
	ldr	w0, [x27, #12]
	add	x1, x27, #44
	mov	x2, xzr
	bl	_object_get_velocities
	fmov	v0.2s, #30.00000000
	ldur	d2, [x27, #44]
	fmov	s1, #30.00000000
	ldr	s3, [x27, #52]
	fmul	v0.2s, v2.2s, v0.2s
	fmul	s1, s3, s1
	stur	d0, [x27, #44]
	str	s1, [x27, #52]
LBB12_6:
	ldrh	w8, [x23, #72]
	cmp	w8, #2
	b.lo	LBB12_8
; %bb.7:
Lloh65:
	adrp	x0, l_.str.6@PAGE
Lloh66:
	add	x0, x0, l_.str.6@PAGEOFF
Lloh67:
	adrp	x1, l_.str.4@PAGE
Lloh68:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #737                        ; =0x2e1
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	ldrh	w8, [x23, #72]
	cmp	w8, #2
	b.hs	LBB12_10
LBB12_8:
	cbz	w8, LBB12_11
; %bb.9:
	ldr	w1, [x27, #8]
	mov	w0, #29804                      ; =0x746c
	movk	w0, #28771, lsl #16
	bl	_tag_get
	b	LBB12_11
LBB12_10:
	ldr	w0, [x27, #8]
	bl	_tag_get_name
	ldrsh	w9, [x23, #72]
	mov	x8, x0
Lloh69:
	adrp	x1, l_.str.7@PAGE
Lloh70:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w0, #2                          ; =0x2
	stp	w8, w9, [sp]
	bl	_error
	strh	wzr, [x23, #72]
LBB12_11:
	ldr	w1, [x27, #8]
	mov	w0, #29804                      ; =0x746c
	movk	w0, #28771, lsl #16
	bl	_tag_get
	ldr	w8, [x27, #12]
	cmn	w8, #1
	b.ne	LBB12_14
; %bb.12:
	ldr	w1, [x0, #68]
	cmn	w1, #1
	b.eq	LBB12_14
; %bb.13:
	mov	w0, #26745                      ; =0x6879
	movk	w0, #28784, lsl #16
	bl	_tag_get
	fmov	s0, #1.00000000
	mov	x1, x0
	fmov	s1, s8
	add	x2, x27, #24
	add	x4, x27, #32
	add	x5, x27, #44
	mov	w0, wzr
	mov	w3, #-1                         ; =0xffffffff
	mov	x6, xzr
	mov	x7, xzr
	str	wzr, [sp]
	bl	_point_physics_update
LBB12_14:
	mov	x26, x23
	ldr	w8, [x26, #92]!
	cmp	w8, #0
	b.le	LBB12_239
; %bb.15:
	fmov	s0, #30.00000000
	add	x8, x27, #88
	fmov	s13, #1.00000000
	mov	w25, wzr
	fmov	s14, #-1.00000000
	mov	w24, #65535                     ; =0xffff
	stp	x8, x27, [sp, #72]              ; 16-byte Folded Spill
	mov	w8, #4059                       ; =0xfdb
	movk	w8, #16585, lsl #16
	fmov	s15, #0.50000000
	str	wzr, [sp, #60]                  ; 4-byte Spill
	fmul	s0, s8, s0
	str	x23, [sp, #40]                  ; 8-byte Spill
	fmov	s10, w8
	str	x26, [sp, #24]                  ; 8-byte Spill
	fcvt	d9, s0
	.p2align	4, , 8
LBB12_16:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB12_26 Depth 2
                                        ;     Child Loop BB12_113 Depth 2
                                        ;     Child Loop BB12_140 Depth 2
                                        ;       Child Loop BB12_153 Depth 3
	ldr	w8, [x23, #96]
	cbz	w8, LBB12_20
; %bb.17:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w9, [x23, #100]
	cbz	w9, LBB12_19
; %bb.18:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #128
	b.ne	LBB12_20
LBB12_19:                               ;   in Loop: Header=BB12_16 Depth=1
	lsl	w9, w25, #7
	add	x28, x8, x9
	ldrb	w8, [x28, #33]
	tbz	w8, #0, LBB12_21
	b	LBB12_134
	.p2align	4, , 8
LBB12_20:                               ;   in Loop: Header=BB12_16 Depth=1
	mov	x0, x26
	mov	w1, w25
	mov	w2, #128                        ; =0x80
	bl	_tag_block_get_element_with_size
	mov	x28, x0
	ldrb	w8, [x28, #33]
	tbnz	w8, #0, LBB12_134
LBB12_21:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	x9, [sp, #72]                   ; 8-byte Reload
	sxtw	x8, w25
	add	x20, x9, x8, lsl #6
	ldr	s0, [x20, #4]
	ldrh	w8, [x20]
	fsub	s1, s0, s8
	cmp	w8, w24
	str	s1, [x20, #4]
	b.eq	LBB12_134
; %bb.22:                               ;   in Loop: Header=BB12_16 Depth=1
	add	x19, x20, #12
	b	LBB12_26
	.p2align	4, , 8
LBB12_23:                               ;   in Loop: Header=BB12_26 Depth=2
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x20]
LBB12_24:                               ;   in Loop: Header=BB12_26 Depth=2
	ldp	s11, s12, [x0, #40]
LBB12_25:                               ;   in Loop: Header=BB12_26 Depth=2
	bl	_get_global_local_random_seed_address
	fmov	s0, s11
	fmov	s1, s12
	bl	_real_seed_random_range
	ldr	s1, [x20, #4]
	ldrh	w8, [x20]
	fadd	s1, s0, s1
	cmp	w8, w24
	stp	s1, s0, [x20, #4]
	b.eq	LBB12_134
LBB12_26:                               ;   Parent Loop BB12_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sxth	w1, w8
	tbnz	w8, #15, LBB12_32
; %bb.27:                               ;   in Loop: Header=BB12_26 Depth=2
	ldur	w8, [x28, #104]
	cmp	w8, w1
	b.le	LBB12_32
; %bb.28:                               ;   in Loop: Header=BB12_26 Depth=2
	ldr	w8, [x28, #108]
	cbz	w8, LBB12_32
; %bb.29:                               ;   in Loop: Header=BB12_26 Depth=2
	ldr	w9, [x28, #112]
	cbz	w9, LBB12_31
; %bb.30:                               ;   in Loop: Header=BB12_26 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #192
	b.ne	LBB12_32
LBB12_31:                               ;   in Loop: Header=BB12_26 Depth=2
	add	w9, w1, w1, lsl #1
	lsl	w9, w9, #6
	add	x0, x8, w9, sxtw
	fcmp	s1, #0.0
	b.mi	LBB12_33
	b	LBB12_50
	.p2align	4, , 8
LBB12_32:                               ;   in Loop: Header=BB12_26 Depth=2
	add	x0, x28, #104
	mov	w2, #192                        ; =0xc0
	bl	_tag_block_get_element_with_size
	ldr	s1, [x20, #4]
	fcmp	s1, #0.0
	b.pl	LBB12_50
LBB12_33:                               ;   in Loop: Header=BB12_26 Depth=2
	ldrsh	w1, [x20, #2]
	cmn	w1, #1
	b.eq	LBB12_42
; %bb.34:                               ;   in Loop: Header=BB12_26 Depth=2
	strh	w1, [x20]
	strh	w24, [x20, #2]
	tbnz	w1, #31, LBB12_40
; %bb.35:                               ;   in Loop: Header=BB12_26 Depth=2
	ldur	w8, [x28, #104]
	cmp	w8, w1
	b.le	LBB12_40
; %bb.36:                               ;   in Loop: Header=BB12_26 Depth=2
	ldr	w8, [x28, #108]
	cbz	w8, LBB12_40
; %bb.37:                               ;   in Loop: Header=BB12_26 Depth=2
	ldr	w9, [x28, #112]
	cbz	w9, LBB12_39
; %bb.38:                               ;   in Loop: Header=BB12_26 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #192
	b.ne	LBB12_40
LBB12_39:                               ;   in Loop: Header=BB12_26 Depth=2
	add	w9, w1, w1, lsl #1
	lsl	w9, w9, #6
	add	x0, x8, w9, sxtw
	b	LBB12_41
	.p2align	4, , 8
LBB12_40:                               ;   in Loop: Header=BB12_26 Depth=2
	add	x0, x28, #104
	mov	w2, #192                        ; =0xc0
	bl	_tag_block_get_element_with_size
LBB12_41:                               ;   in Loop: Header=BB12_26 Depth=2
	ldp	s11, s12, [x0, #32]
	b	LBB12_25
	.p2align	4, , 8
LBB12_42:                               ;   in Loop: Header=BB12_26 Depth=2
	ldrb	w9, [x20, #56]
	mov	w10, #-1                        ; =0xffffffff
	ldrsh	w8, [x20]
	cmp	w9, #0
	cneg	w10, w10, ne
	add	w11, w8, w10
	strh	w11, [x20, #2]
	tbnz	w11, #15, LBB12_44
; %bb.43:                               ;   in Loop: Header=BB12_26 Depth=2
	ldur	w12, [x28, #104]
	sxth	w11, w11
	cmp	w12, w11
	b.gt	LBB12_24
LBB12_44:                               ;   in Loop: Header=BB12_26 Depth=2
	ldr	w11, [x28, #32]
	tbz	w11, #0, LBB12_23
; %bb.45:                               ;   in Loop: Header=BB12_26 Depth=2
	ldr	w12, [x27, #12]
	cmn	w12, #1
	b.eq	LBB12_23
; %bb.46:                               ;   in Loop: Header=BB12_26 Depth=2
	ldur	w12, [x28, #104]
	cmp	w12, #0
	b.le	LBB12_23
; %bb.47:                               ;   in Loop: Header=BB12_26 Depth=2
	tbnz	w11, #1, LBB12_49
; %bb.48:                               ;   in Loop: Header=BB12_26 Depth=2
	strh	wzr, [x20, #2]
	b	LBB12_24
LBB12_49:                               ;   in Loop: Header=BB12_26 Depth=2
	cmp	w9, #0
	sub	w8, w8, w10
	sub	w9, w12, #1
	cset	w10, eq
	cmp	w8, w9
	csel	w9, w8, w9, lt
	cmp	w8, #0
	csel	w8, wzr, w9, mi
	strb	w10, [x20, #56]
	strh	w8, [x20, #2]
	b	LBB12_24
LBB12_50:                               ;   in Loop: Header=BB12_16 Depth=1
	ldrsh	w1, [x20, #2]
	cmn	w1, #1
	b.eq	LBB12_87
; %bb.51:                               ;   in Loop: Header=BB12_16 Depth=1
	tbnz	w1, #31, LBB12_57
; %bb.52:                               ;   in Loop: Header=BB12_16 Depth=1
	ldur	w8, [x28, #104]
	cmp	w8, w1
	b.le	LBB12_57
; %bb.53:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w8, [x28, #108]
	cbz	w8, LBB12_57
; %bb.54:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w9, [x28, #112]
	cbz	w9, LBB12_56
; %bb.55:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #192
	b.ne	LBB12_57
LBB12_56:                               ;   in Loop: Header=BB12_16 Depth=1
	add	w9, w1, w1, lsl #1
	lsl	w9, w9, #6
	add	x8, x8, w9, sxtw
	b	LBB12_58
LBB12_57:                               ;   in Loop: Header=BB12_16 Depth=1
	mov	x23, x0
	add	x0, x28, #104
	mov	w2, #192                        ; =0xc0
	bl	_tag_block_get_element_with_size
	ldr	s1, [x20, #4]
	mov	x8, x0
	mov	x0, x23
LBB12_58:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	s0, [x20, #8]
	fdiv	s1, s1, s0
	movi	d0, #0000000000000000
	fcmp	s1, #0.0
	b.mi	LBB12_61
; %bb.59:                               ;   in Loop: Header=BB12_16 Depth=1
	fcmp	s1, s13
	fmov	s0, s1
	b.le	LBB12_61
; %bb.60:                               ;   in Loop: Header=BB12_16 Depth=1
	fmov	s0, #1.00000000
LBB12_61:                               ;   in Loop: Header=BB12_16 Depth=1
	fsub	s1, s13, s0
	ldr	s2, [x0, #52]
	ldr	s3, [x8, #52]
	ldr	x23, [sp, #40]                  ; 8-byte Reload
	fmul	s2, s0, s2
	fmul	s3, s1, s3
	fadd	s2, s2, s3
	str	s2, [x20, #12]
	ldr	s2, [x0, #56]
	ldr	s3, [x8, #56]
	fmul	s2, s0, s2
	fmul	s3, s1, s3
	fadd	s2, s2, s3
	str	s2, [x20, #16]
	ldr	s2, [x0, #60]
	ldr	s3, [x8, #60]
	fmul	s2, s0, s2
	fmul	s3, s1, s3
	fadd	s2, s2, s3
	str	s2, [x20, #20]
	ldr	s2, [x0, #64]
	ldr	s3, [x8, #64]
	fmul	s2, s0, s2
	fmul	s3, s1, s3
	fadd	s2, s2, s3
	str	s2, [x20, #24]
	ldr	s2, [x0, #68]
	ldr	s3, [x8, #68]
	fmul	s2, s0, s2
	fmul	s3, s1, s3
	fadd	s2, s2, s3
	str	s2, [x20, #28]
	ldr	s2, [x0, #72]
	ldr	s3, [x8, #72]
	fmul	s2, s0, s2
	fmul	s3, s1, s3
	fadd	s2, s2, s3
	str	s2, [x20, #32]
	ldr	s2, [x0, #76]
	ldr	s3, [x8, #76]
	fmul	s2, s0, s2
	fmul	s3, s1, s3
	fadd	s2, s2, s3
	str	s2, [x20, #36]
	ldr	s2, [x0, #80]
	ldr	s3, [x8, #80]
	fmul	s2, s0, s2
	fmul	s3, s1, s3
	fadd	s2, s2, s3
	str	s2, [x20, #40]
	ldr	s2, [x0, #84]
	ldr	s3, [x8, #84]
	fmul	s2, s0, s2
	fmul	s3, s1, s3
	fadd	s2, s2, s3
	str	s2, [x20, #44]
	ldr	s2, [x0, #88]
	ldr	s3, [x8, #88]
	fmul	s0, s0, s2
	fmul	s1, s1, s3
	fadd	s0, s0, s1
	str	s0, [x20, #48]
	ldr	w8, [x28, #32]
	tbz	w8, #9, LBB12_63
LBB12_62:                               ;   in Loop: Header=BB12_16 Depth=1
	ldur	q0, [x27, #56]
	ldur	q1, [x20, #24]
	fmul	v0.4s, v0.4s, v1.4s
	stur	q0, [x20, #24]
	ldr	w8, [x28, #32]
LBB12_63:                               ;   in Loop: Header=BB12_16 Depth=1
	tbnz	w8, #11, LBB12_83
; %bb.64:                               ;   in Loop: Header=BB12_16 Depth=1
	tbnz	w8, #12, LBB12_84
LBB12_65:                               ;   in Loop: Header=BB12_16 Depth=1
	tbnz	w8, #13, LBB12_85
LBB12_66:                               ;   in Loop: Header=BB12_16 Depth=1
	tbnz	w8, #14, LBB12_86
LBB12_67:                               ;   in Loop: Header=BB12_16 Depth=1
	tbz	w8, #15, LBB12_69
LBB12_68:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	s0, [x27, #20]
	ldr	s1, [x20, #20]
	fmul	s0, s0, s1
	str	s0, [x20, #20]
LBB12_69:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w0, [x27, #12]
	cmn	w0, #1
	b.eq	LBB12_74
; %bb.70:                               ;   in Loop: Header=BB12_16 Depth=1
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB12_74
; %bb.71:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	s0, [x0, #96]
	fcmp	s0, #0.0
	b.le	LBB12_74
; %bb.72:                               ;   in Loop: Header=BB12_16 Depth=1
	fcmp	s0, s13
	b.eq	LBB12_74
; %bb.73:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	s1, [x20, #12]
	fmul	s0, s0, s1
	ldr	s1, [x20, #40]
	str	s0, [x20, #12]
	ldr	s0, [x0, #96]
	fmul	s3, s0, s1
	str	s3, [x20, #40]
LBB12_74:                               ;   in Loop: Header=BB12_16 Depth=1
	ldrsh	w8, [x20]
	cmn	w8, #1
	b.eq	LBB12_134
; %bb.75:                               ;   in Loop: Header=BB12_16 Depth=1
	ldrb	w8, [x27, #4]
	tbz	w8, #0, LBB12_132
; %bb.76:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w1, [x27, #8]
	mov	w0, #29804                      ; =0x746c
	movk	w0, #28771, lsl #16
	bl	_tag_get
	mov	x8, x0
	ldr	w9, [x0, #92]!
	cmp	w9, w25
	b.le	LBB12_88
; %bb.77:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w9, [x8, #96]
	cbz	w9, LBB12_88
; %bb.78:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w8, [x8, #100]
	cbz	w8, LBB12_80
; %bb.79:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w8, [x8, #12]
	cmp	w8, #128
	b.ne	LBB12_88
LBB12_80:                               ;   in Loop: Header=BB12_16 Depth=1
	lsl	w8, w25, #7
	add	x19, x9, x8
	ldr	w23, [x27, #4]
	tbz	w23, #1, LBB12_89
LBB12_81:                               ;   in Loop: Header=BB12_16 Depth=1
	ldrb	w8, [x19, #33]
	ldrh	w13, [x19, #36]
	tbnz	w8, #2, LBB12_97
; %bb.82:                               ;   in Loop: Header=BB12_16 Depth=1
	mov	x14, xzr
	b	LBB12_98
LBB12_83:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	s0, [x27, #20]
	ldr	s1, [x20, #44]
	fmul	s0, s0, s1
	str	s0, [x20, #44]
	ldr	w8, [x28, #32]
	tbz	w8, #12, LBB12_65
LBB12_84:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	s0, [x27, #20]
	ldr	s1, [x20, #48]
	fmul	s0, s0, s1
	str	s0, [x20, #48]
	ldr	w8, [x28, #32]
	tbz	w8, #13, LBB12_66
LBB12_85:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	s0, [x27, #20]
	ldr	s1, [x19]
	fmul	s0, s0, s1
	str	s0, [x19]
	ldr	w8, [x28, #32]
	tbz	w8, #14, LBB12_67
LBB12_86:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	s0, [x27, #20]
	ldr	s1, [x20, #16]
	fmul	s0, s0, s1
	str	s0, [x20, #16]
	ldr	w8, [x28, #32]
	tbnz	w8, #15, LBB12_68
	b	LBB12_69
LBB12_87:                               ;   in Loop: Header=BB12_16 Depth=1
	mov	x8, x0
	add	x0, x20, #12
	add	x1, x8, #52
	mov	w2, #40                         ; =0x28
	bl	_csmemcpy
	ldr	w8, [x28, #32]
	tbnz	w8, #9, LBB12_62
	b	LBB12_63
LBB12_88:                               ;   in Loop: Header=BB12_16 Depth=1
	mov	w1, w25
	mov	w2, #128                        ; =0x80
	bl	_tag_block_get_element_with_size
	mov	x19, x0
	ldr	w23, [x27, #4]
	tbnz	w23, #1, LBB12_81
LBB12_89:                               ;   in Loop: Header=BB12_16 Depth=1
	ldrsh	w1, [x20]
	tbnz	w1, #31, LBB12_95
; %bb.90:                               ;   in Loop: Header=BB12_16 Depth=1
	ldur	w8, [x19, #104]
	cmp	w8, w1
	b.le	LBB12_95
; %bb.91:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w8, [x19, #108]
	cbz	w8, LBB12_95
; %bb.92:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w9, [x19, #112]
	cbz	w9, LBB12_94
; %bb.93:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w9, [x9, #12]
	cmp	w9, #192
	b.ne	LBB12_95
LBB12_94:                               ;   in Loop: Header=BB12_16 Depth=1
	add	w9, w1, w1, lsl #1
	lsl	w9, w9, #6
	add	x14, x8, w9, sxtw
	b	LBB12_96
LBB12_95:                               ;   in Loop: Header=BB12_16 Depth=1
	add	x0, x19, #104
	mov	w2, #192                        ; =0xc0
	bl	_tag_block_get_element_with_size
	mov	x14, x0
LBB12_96:                               ;   in Loop: Header=BB12_16 Depth=1
	ldp	s0, s1, [x20, #48]
	fmul	s0, s8, s0
	fcvtzs	w8, s0
	sxth	w9, w8
	scvtf	s2, w9
	ldrh	w9, [x20, #58]
	add	w8, w9, w8
	fsub	s0, s0, s2
	fadd	s0, s1, s0
	fadd	s1, s0, s14
	fcmp	s0, s13
	fcsel	s0, s1, s0, gt
	cinc	w13, w8, gt
	str	s0, [x20, #52]
	b	LBB12_98
LBB12_97:                               ;   in Loop: Header=BB12_16 Depth=1
	sxth	w8, w13
	ldr	s1, [x27, #20]
	mov	x14, xzr
	scvtf	s0, w8
	fmul	s0, s1, s0
	fadd	s0, s0, s15
	fcvtzs	w13, s0
LBB12_98:                               ;   in Loop: Header=BB12_16 Depth=1
	ldrsh	w8, [x20, #58]
	cmp	w8, w13, sxth
	b.ge	LBB12_129
; %bb.99:                               ;   in Loop: Header=BB12_16 Depth=1
	ldr	w0, [x27, #12]
	str	w13, [sp, #56]                  ; 4-byte Spill
	cmn	w0, #1
	b.eq	LBB12_110
; %bb.100:                              ;   in Loop: Header=BB12_16 Depth=1
	mov	w1, #-1                         ; =0xffffffff
	str	x14, [sp, #64]                  ; 8-byte Spill
	bl	_object_get_and_verify_type
	ldr	w1, [x0]
	mov	w0, #27237                      ; =0x6a65
	mov	x26, x27
	ldr	w27, [x27, #12]
	movk	w0, #28514, lsl #16
	bl	_tag_get
	ldrsh	w1, [x26, #16]
	mov	x8, x0
	add	x0, x0, #320
	tbnz	w1, #31, LBB12_106
; %bb.101:                              ;   in Loop: Header=BB12_16 Depth=1
	ldr	w9, [x0]
	cmp	w9, w1
	b.le	LBB12_106
; %bb.102:                              ;   in Loop: Header=BB12_16 Depth=1
	ldr	w9, [x8, #324]
	cbz	w9, LBB12_106
; %bb.103:                              ;   in Loop: Header=BB12_16 Depth=1
	ldr	w8, [x8, #328]
	cbz	w8, LBB12_105
; %bb.104:                              ;   in Loop: Header=BB12_16 Depth=1
	ldr	w8, [x8, #12]
	cmp	w8, #72
	b.ne	LBB12_106
LBB12_105:                              ;   in Loop: Header=BB12_16 Depth=1
	add	w8, w1, w1, lsl #3
	lsl	w8, w8, #3
	add	x0, x9, w8, sxtw
	b	LBB12_107
LBB12_106:                              ;   in Loop: Header=BB12_16 Depth=1
	mov	w2, #72                         ; =0x48
	bl	_tag_block_get_element_with_size
LBB12_107:                              ;   in Loop: Header=BB12_16 Depth=1
	add	x1, x0, #16
	add	x2, sp, #88
	mov	w0, w27
	mov	w3, #8                          ; =0x8
	bl	_object_get_marker_by_name
	ldr	x26, [sp, #80]                  ; 8-byte Reload
	mov	w5, w0
	ldr	w2, [x19, #32]
	add	x3, sp, #88
	mov	w4, #8                          ; =0x8
	ldr	w8, [x26, #12]
	ldrsh	w1, [x26, #16]
	mov	w0, w8
	bl	_mcc_particle_system_markers
	mov	w27, w0
	ldr	w0, [x26, #12]
	add	x1, x26, #24
	bl	_object_get_location
	ldr	x10, [sp, #64]                  ; 8-byte Reload
	add	x9, x19, #84
	tst	w23, #0x2
	ldrsh	w8, [x20, #58]
	add	x10, x10, #176
	csel	x11, x10, x9, eq
	str	x11, [sp, #48]                  ; 8-byte Spill
	and	w11, w27, #0xffff
	cbz	w11, LBB12_129
; %bb.108:                              ;   in Loop: Header=BB12_16 Depth=1
	ldrh	w11, [x26, #28]
	cmp	w11, w24
	b.eq	LBB12_129
; %bb.109:                              ;   in Loop: Header=BB12_16 Depth=1
	ldr	w13, [sp, #56]                  ; 4-byte Reload
	cmp	w8, w13, sxth
	b.lt	LBB12_112
	b	LBB12_129
LBB12_110:                              ;   in Loop: Header=BB12_16 Depth=1
Lloh71:
	adrp	x11, _global_zero_vector3d@GOTPAGE
	ldur	w9, [x27, #40]
	ldur	x10, [x27, #32]
	add	x12, sp, #88
Lloh72:
	ldr	w11, [x11, _global_zero_vector3d@GOTPAGEOFF]
	stur	w9, [x12, #104]
	stur	x10, [x12, #96]
Lloh73:
	ldr	w11, [x11]
	ldr	x9, [x11]
	ldr	w10, [x11, #8]
	stur	x9, [x12, #60]
	stur	w10, [x12, #68]
	ldrsh	w9, [x27, #28]
	cmn	w9, #1
	b.eq	LBB12_129
; %bb.111:                              ;   in Loop: Header=BB12_16 Depth=1
	add	x9, x19, #84
	add	x10, x14, #176
	tst	w23, #0x2
	mov	w27, #1                         ; =0x1
	csel	x8, x10, x9, eq
	str	x8, [sp, #48]                   ; 8-byte Spill
LBB12_112:                              ;   in Loop: Header=BB12_16 Depth=1
	tst	w23, #0x2
	str	wzr, [sp, #64]                  ; 4-byte Spill
	csel	x8, x10, x9, eq
	str	x8, [sp, #16]                   ; 8-byte Spill
	sxth	w8, w27
	str	w8, [sp, #36]                   ; 4-byte Spill
	.p2align	4, , 8
LBB12_113:                              ;   Parent Loop BB12_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
Lloh74:
	adrp	x19, _system_particles@GOTPAGE
Lloh75:
	ldr	w19, [x19, _system_particles@GOTPAGEOFF]
	ldr	w0, [x19]
	bl	_datum_new
	cmn	w0, #1
	b.eq	LBB12_128
; %bb.114:                              ;   in Loop: Header=BB12_113 Depth=2
	mov	w26, w0
	ldr	w0, [x19]
	mov	w1, w26
	bl	_datum_get
	ldr	x8, [sp, #48]                   ; 8-byte Reload
	mov	x27, x0
	ldrsh	w23, [x8]
	cbnz	w27, LBB12_116
; %bb.115:                              ;   in Loop: Header=BB12_113 Depth=2
Lloh76:
	adrp	x0, l_.str.10@PAGE
Lloh77:
	add	x0, x0, l_.str.10@PAGEOFF
Lloh78:
	adrp	x1, l_.str.4@PAGE
Lloh79:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #476                        ; =0x1dc
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
LBB12_116:                              ;   in Loop: Header=BB12_113 Depth=2
	mov	w8, #-1                         ; =0xffffffff
	and	w19, w23, #0xffff
	str	w8, [x27, #8]
	mov	w8, #257                        ; =0x101
	strh	w8, [x27, #2]
	mov	w8, #-1082130432                ; =0xbf800000
	str	w8, [x27, #68]
	bl	_get_global_local_random_seed_address
	movi	d0, #0000000000000000
	fmov	s1, s10
	bl	_real_seed_random_range
	cmp	w19, #3
	str	s0, [x27, #64]
	b.lo	LBB12_118
; %bb.117:                              ;   in Loop: Header=BB12_113 Depth=2
Lloh80:
	adrp	x0, l_.str.11@PAGE
Lloh81:
	add	x0, x0, l_.str.11@PAGEOFF
Lloh82:
	adrp	x1, l_.str.4@PAGE
Lloh83:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #488                        ; =0x1e8
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	ldr	x8, [sp, #80]                   ; 8-byte Reload
	ldr	w0, [x8, #8]
	bl	_tag_get_name
	mov	x8, x0
	mov	w0, #2                          ; =0x2
Lloh84:
	adrp	x1, l_.str.12@PAGE
Lloh85:
	add	x1, x1, l_.str.12@PAGEOFF
	stp	w8, w23, [sp]
	bl	_error
	ldr	x8, [sp, #16]                   ; 8-byte Reload
	mov	w19, wzr
	strh	wzr, [x8]
LBB12_118:                              ;   in Loop: Header=BB12_113 Depth=2
	bl	_get_global_local_random_seed_address
	ldr	w2, [sp, #36]                   ; 4-byte Reload
	mov	w1, wzr
	bl	_seed_random_range
Lloh86:
	adrp	x8, _particle_creation_functions@PAGE
Lloh87:
	add	x8, x8, _particle_creation_functions@PAGEOFF
	mov	w10, #108                       ; =0x6c
	add	x9, sp, #88
	mov	w1, w25
	mov	x2, x27
	ldr	w8, [x8, w19, uxtw #2]
	smaddl	x23, w0, w10, x9
	ldr	x19, [sp, #80]                  ; 8-byte Reload
	mov	x3, x23
	mov	x0, x19
	blr	x8
	ldr	w0, [x19, #12]
	cmn	w0, #1
	b.eq	LBB12_123
; %bb.119:                              ;   in Loop: Header=BB12_113 Depth=2
	mov	w1, #-1                         ; =0xffffffff
	bl	_object_try_and_get_and_verify_type
	cbz	w0, LBB12_123
; %bb.120:                              ;   in Loop: Header=BB12_113 Depth=2
	ldr	s0, [x0, #96]
	fcmp	s0, #0.0
	b.le	LBB12_123
; %bb.121:                              ;   in Loop: Header=BB12_113 Depth=2
	fcmp	s0, s13
	b.eq	LBB12_123
; %bb.122:                              ;   in Loop: Header=BB12_113 Depth=2
	ldr	s1, [x23, #96]
	ldp	s2, s3, [x27, #28]
	ldr	x8, [sp, #80]                   ; 8-byte Reload
	fsub	s2, s2, s1
	fmul	s2, s0, s2
	fadd	s1, s1, s2
	str	s1, [x27, #28]
	ldr	s1, [x23, #100]
	fsub	s2, s3, s1
	fmul	s3, s0, s2
	fadd	s1, s1, s3
	ldp	s2, s3, [x27, #36]
	str	s1, [x27, #32]
	ldr	s1, [x23, #104]
	fsub	s2, s2, s1
	fmul	s2, s0, s2
	fadd	s1, s1, s2
	str	s1, [x27, #36]
	ldr	s1, [x8, #44]
	fsub	s2, s3, s1
	fmul	s3, s0, s2
	fadd	s1, s1, s3
	ldp	s2, s3, [x27, #44]
	str	s1, [x27, #40]
	ldr	s1, [x8, #48]
	fsub	s2, s2, s1
	fmul	s2, s0, s2
	fadd	s1, s1, s2
	str	s1, [x27, #44]
	ldr	s1, [x8, #52]
	fsub	s2, s3, s1
	fmul	s3, s0, s2
	fadd	s0, s1, s3
	str	s0, [x27, #48]
	.p2align	4, , 8
LBB12_123:                              ;   in Loop: Header=BB12_113 Depth=2
	add	x0, x27, #20
	add	x1, x27, #28
	bl	_scenario_location_from_point
	ldrsh	w8, [x27, #24]
	cmn	w8, #1
	b.eq	LBB12_125
; %bb.124:                              ;   in Loop: Header=BB12_113 Depth=2
	ldrh	w8, [x20, #58]
	ldr	w9, [x20, #60]
	add	w8, w8, #1
	strh	w8, [x20, #58]
	str	w9, [x27, #4]
	str	w26, [x20, #60]
	b	LBB12_126
	.p2align	4, , 8
LBB12_125:                              ;   in Loop: Header=BB12_113 Depth=2
Lloh88:
	adrp	x8, _system_particles@GOTPAGE
	mov	w1, w26
Lloh89:
	ldr	w8, [x8, _system_particles@GOTPAGEOFF]
Lloh90:
	ldr	w0, [x8]
	bl	_datum_delete
LBB12_126:                              ;   in Loop: Header=BB12_113 Depth=2
	ldrsh	w8, [x20, #58]
	ldr	w13, [sp, #56]                  ; 4-byte Reload
	cmp	w8, w13, sxth
	b.ge	LBB12_129
; %bb.127:                              ;   in Loop: Header=BB12_113 Depth=2
	ldr	w10, [sp, #64]                  ; 4-byte Reload
	add	w9, w10, #1
	cmp	w10, #127
	str	w9, [sp, #64]                   ; 4-byte Spill
	b.lo	LBB12_113
	b	LBB12_129
LBB12_128:                              ;   in Loop: Header=BB12_16 Depth=1
	ldrh	w8, [x20, #58]
LBB12_129:                              ;   in Loop: Header=BB12_16 Depth=1
	sxth	w8, w8
	ldr	s1, [x20, #44]
	scvtf	s0, w8
	fcmp	s1, s0
	b.le	LBB12_131
; %bb.130:                              ;   in Loop: Header=BB12_16 Depth=1
Lloh91:
	adrp	x8, lCPI12_0@PAGE
	fmov	d1, d9
Lloh92:
	ldr	d0, [x8, lCPI12_0@PAGEOFF]
	bl	_halo_pow
	fcvt	s0, d0
	ldr	s1, [x20, #4]
	fmul	s0, s1, s0
	str	s0, [x20, #4]
LBB12_131:                              ;   in Loop: Header=BB12_16 Depth=1
	ldr	x27, [sp, #80]                  ; 8-byte Reload
LBB12_132:                              ;   in Loop: Header=BB12_16 Depth=1
	ldr	w8, [x20, #60]
	lsl	w8, w8, #16
	cmn	w8, #16, lsl #12                ; =65536
	b.ne	LBB12_136
LBB12_133:                              ;   in Loop: Header=BB12_16 Depth=1
	ldr	w8, [sp, #60]                   ; 4-byte Reload
	ldr	x23, [sp, #40]                  ; 8-byte Reload
	ldr	x26, [sp, #24]                  ; 8-byte Reload
	add	w8, w8, #1
	str	w8, [sp, #60]                   ; 4-byte Spill
	.p2align	4, , 8
LBB12_134:                              ;   in Loop: Header=BB12_16 Depth=1
	cmp	w25, #2
	b.hi	LBB12_238
; %bb.135:                              ;   in Loop: Header=BB12_16 Depth=1
	ldr	w8, [x26]
	add	w25, w25, #1
	cmp	w8, w25
	b.gt	LBB12_16
	b	LBB12_238
LBB12_136:                              ;   in Loop: Header=BB12_16 Depth=1
	mov	x23, xzr
	lsl	w9, w25, #7
	str	w9, [sp, #64]                   ; 4-byte Spill
	b	LBB12_140
	.p2align	4, , 8
LBB12_137:                              ;   in Loop: Header=BB12_140 Depth=2
	str	w8, [x20, #60]
LBB12_138:                              ;   in Loop: Header=BB12_140 Depth=2
Lloh93:
	adrp	x8, _system_particles@GOTPAGE
	mov	w1, w19
Lloh94:
	ldr	w8, [x8, _system_particles@GOTPAGEOFF]
Lloh95:
	ldr	w0, [x8]
	bl	_datum_delete
	ldrh	w9, [x20, #58]
	ldr	w8, [x26, #4]
	sub	w9, w9, #1
	strh	w9, [x20, #58]
LBB12_139:                              ;   in Loop: Header=BB12_140 Depth=2
	lsl	w8, w8, #16
	cmn	w8, #16, lsl #12                ; =65536
	b.eq	LBB12_133
LBB12_140:                              ;   Parent Loop BB12_16 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB12_153 Depth 3
Lloh96:
	adrp	x9, _system_particles@GOTPAGE
	asr	w19, w8, #16
	mov	w1, w19
Lloh97:
	ldr	w9, [x9, _system_particles@GOTPAGEOFF]
Lloh98:
	ldr	w0, [x9]
	bl	_datum_get
	ldr	s0, [x0, #12]
	mov	x26, x0
	ldrsh	w8, [x0, #8]
	fsub	s0, s0, s8
	cmn	w8, #1
	str	s0, [x0, #12]
	b.ne	LBB12_148
; %bb.141:                              ;   in Loop: Header=BB12_140 Depth=2
	ldur	w8, [x28, #116]
	cmp	w8, #1
	b.lt	LBB12_148
; %bb.142:                              ;   in Loop: Header=BB12_140 Depth=2
	strh	wzr, [x26, #8]
	ldur	w8, [x28, #116]
	cmp	w8, #1
	b.lt	LBB12_146
; %bb.143:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w0, [x28, #120]
	cbz	w0, LBB12_146
; %bb.144:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x28, #124]
	cbz	w8, LBB12_147
; %bb.145:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x8, #12]
	cmp	w8, #376
	b.eq	LBB12_147
LBB12_146:                              ;   in Loop: Header=BB12_140 Depth=2
	add	x0, x28, #116
	mov	w1, wzr
	mov	w2, #376                        ; =0x178
	bl	_tag_block_get_element_with_size
LBB12_147:                              ;   in Loop: Header=BB12_140 Depth=2
	ldp	s11, s12, [x0, #32]
	bl	_get_global_local_random_seed_address
	fmov	s0, s11
	fmov	s1, s12
	bl	_real_seed_random_range
	ldrsh	w2, [x26, #8]
	add	x1, x26, #72
	mov	x0, x28
	stp	s0, s0, [x26, #12]
	bl	_randomize_particle_variables
LBB12_148:                              ;   in Loop: Header=BB12_140 Depth=2
	ldrb	w8, [x26, #3]
	cbnz	w8, LBB12_153
; %bb.149:                              ;   in Loop: Header=BB12_140 Depth=2
	strh	w24, [x26, #8]
LBB12_150:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x26, #4]
	cbz	w23, LBB12_137
; %bb.151:                              ;   in Loop: Header=BB12_140 Depth=2
	str	w8, [x23, #4]
	b	LBB12_138
	.p2align	4, , 8
LBB12_152:                              ;   in Loop: Header=BB12_153 Depth=3
	ldur	q0, [x26, #100]
	ldur	q1, [x26, #112]
	stur	q0, [x26, #72]
	stur	q1, [x26, #84]
LBB12_153:                              ;   Parent Loop BB12_16 Depth=1
                                        ;     Parent Loop BB12_140 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrh	w8, [x26, #8]
	cmp	w8, w24
	b.eq	LBB12_150
; %bb.154:                              ;   in Loop: Header=BB12_153 Depth=3
	sxth	w1, w8
	tbnz	w8, #15, LBB12_160
; %bb.155:                              ;   in Loop: Header=BB12_153 Depth=3
	ldur	w8, [x28, #116]
	cmp	w8, w1
	b.le	LBB12_160
; %bb.156:                              ;   in Loop: Header=BB12_153 Depth=3
	ldr	w8, [x28, #120]
	cbz	w8, LBB12_160
; %bb.157:                              ;   in Loop: Header=BB12_153 Depth=3
	ldr	w9, [x28, #124]
	cbz	w9, LBB12_159
; %bb.158:                              ;   in Loop: Header=BB12_153 Depth=3
	ldr	w9, [x9, #12]
	cmp	w9, #376
	b.ne	LBB12_160
LBB12_159:                              ;   in Loop: Header=BB12_153 Depth=3
	mov	w9, #376                        ; =0x178
	mul	w9, w1, w9
	add	x0, x8, w9, sxtw
	b	LBB12_161
	.p2align	4, , 8
LBB12_160:                              ;   in Loop: Header=BB12_153 Depth=3
	add	x0, x28, #116
	mov	w2, #376                        ; =0x178
	bl	_tag_block_get_element_with_size
LBB12_161:                              ;   in Loop: Header=BB12_153 Depth=3
	ldr	s0, [x26, #12]
	fcmp	s0, #0.0
	b.pl	LBB12_182
; %bb.162:                              ;   in Loop: Header=BB12_153 Depth=3
	ldrsh	w1, [x26, #10]
	cmn	w1, #1
	b.eq	LBB12_171
; %bb.163:                              ;   in Loop: Header=BB12_153 Depth=3
	strh	w1, [x26, #8]
	strh	w24, [x26, #10]
	tbnz	w1, #31, LBB12_169
; %bb.164:                              ;   in Loop: Header=BB12_153 Depth=3
	ldur	w8, [x28, #116]
	cmp	w8, w1
	b.le	LBB12_169
; %bb.165:                              ;   in Loop: Header=BB12_153 Depth=3
	ldr	w8, [x28, #120]
	cbz	w8, LBB12_169
; %bb.166:                              ;   in Loop: Header=BB12_153 Depth=3
	ldr	w9, [x28, #124]
	cbz	w9, LBB12_168
; %bb.167:                              ;   in Loop: Header=BB12_153 Depth=3
	ldr	w9, [x9, #12]
	cmp	w9, #376
	b.ne	LBB12_169
LBB12_168:                              ;   in Loop: Header=BB12_153 Depth=3
	mov	w9, #376                        ; =0x178
	mul	w9, w1, w9
	add	x0, x8, w9, sxtw
	b	LBB12_170
	.p2align	4, , 8
LBB12_169:                              ;   in Loop: Header=BB12_153 Depth=3
	add	x0, x28, #116
	mov	w2, #376                        ; =0x178
	bl	_tag_block_get_element_with_size
LBB12_170:                              ;   in Loop: Header=BB12_153 Depth=3
	ldp	s11, s12, [x0, #32]
	b	LBB12_179
	.p2align	4, , 8
LBB12_171:                              ;   in Loop: Header=BB12_153 Depth=3
	ldrb	w9, [x26, #2]
	mov	w10, #-1                        ; =0xffffffff
	ldrsh	w8, [x26, #8]
	cmp	w9, #0
	cneg	w10, w10, ne
	add	w11, w8, w10
	strh	w11, [x26, #10]
	tbnz	w11, #15, LBB12_173
; %bb.172:                              ;   in Loop: Header=BB12_153 Depth=3
	ldur	w12, [x28, #116]
	sxth	w11, w11
	cmp	w12, w11
	b.gt	LBB12_178
LBB12_173:                              ;   in Loop: Header=BB12_153 Depth=3
	ldr	w12, [x28, #32]
	tbz	w12, #2, LBB12_177
; %bb.174:                              ;   in Loop: Header=BB12_153 Depth=3
	ldur	w11, [x28, #116]
	subs	w11, w11, #1
	b.lt	LBB12_177
; %bb.175:                              ;   in Loop: Header=BB12_153 Depth=3
	tbnz	w12, #3, LBB12_181
; %bb.176:                              ;   in Loop: Header=BB12_153 Depth=3
	strh	wzr, [x26, #10]
	b	LBB12_178
LBB12_177:                              ;   in Loop: Header=BB12_153 Depth=3
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x26, #8]
LBB12_178:                              ;   in Loop: Header=BB12_153 Depth=3
	ldp	s11, s12, [x0, #40]
LBB12_179:                              ;   in Loop: Header=BB12_153 Depth=3
	bl	_get_global_local_random_seed_address
	fmov	s0, s11
	fmov	s1, s12
	bl	_real_seed_random_range
	ldr	s1, [x26, #12]
	ldrsh	w2, [x26, #10]
	fadd	s1, s0, s1
	cmn	w2, #1
	stp	s1, s0, [x26, #12]
	b.eq	LBB12_152
; %bb.180:                              ;   in Loop: Header=BB12_153 Depth=3
	add	x1, x26, #100
	mov	x0, x28
	bl	_randomize_particle_variables
	b	LBB12_153
LBB12_181:                              ;   in Loop: Header=BB12_153 Depth=3
	cmp	w9, #0
	sub	w8, w8, w10
	cset	w9, eq
	cmp	w8, w11
	csel	w10, w8, w11, lt
	cmp	w8, #0
	csel	w8, wzr, w10, mi
	strb	w9, [x26, #2]
	strh	w8, [x26, #10]
	b	LBB12_178
LBB12_182:                              ;   in Loop: Header=BB12_140 Depth=2
	ldrsh	w8, [x26, #8]
	cmn	w8, #1
	b.eq	LBB12_150
; %bb.183:                              ;   in Loop: Header=BB12_140 Depth=2
	ldrsh	w1, [x20]
	tbnz	w1, #31, LBB12_189
; %bb.184:                              ;   in Loop: Header=BB12_140 Depth=2
	ldur	w8, [x28, #104]
	cmp	w8, w1
	b.le	LBB12_189
; %bb.185:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x28, #108]
	cbz	w8, LBB12_189
; %bb.186:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w9, [x28, #112]
	cbz	w9, LBB12_188
; %bb.187:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #192
	b.ne	LBB12_189
LBB12_188:                              ;   in Loop: Header=BB12_140 Depth=2
	add	w9, w1, w1, lsl #1
	lsl	w9, w9, #6
	add	x19, x8, w9, sxtw
	b	LBB12_190
LBB12_189:                              ;   in Loop: Header=BB12_140 Depth=2
	add	x0, x28, #104
	mov	w2, #192                        ; =0xc0
	bl	_tag_block_get_element_with_size
	mov	x19, x0
LBB12_190:                              ;   in Loop: Header=BB12_140 Depth=2
	ldrsh	w8, [x26, #10]
	cmn	w8, #1
	b.eq	LBB12_201
; %bb.191:                              ;   in Loop: Header=BB12_140 Depth=2
	ldrsh	w1, [x26, #8]
	tbnz	w1, #31, LBB12_196
; %bb.192:                              ;   in Loop: Header=BB12_140 Depth=2
	ldur	w8, [x28, #116]
	cmp	w8, w1
	b.le	LBB12_196
; %bb.193:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x28, #120]
	cbz	w8, LBB12_196
; %bb.194:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x28, #124]
	cbz	w8, LBB12_197
; %bb.195:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x8, #12]
	cmp	w8, #376
	b.eq	LBB12_197
LBB12_196:                              ;   in Loop: Header=BB12_140 Depth=2
	add	x0, x28, #116
	mov	w2, #376                        ; =0x178
	bl	_tag_block_get_element_with_size
LBB12_197:                              ;   in Loop: Header=BB12_140 Depth=2
	ldp	s0, s1, [x26, #12]
	fdiv	s1, s0, s1
	movi	d0, #0000000000000000
	fcmp	s1, #0.0
	b.mi	LBB12_200
; %bb.198:                              ;   in Loop: Header=BB12_140 Depth=2
	fcmp	s1, s13
	fmov	s0, s1
	b.le	LBB12_200
; %bb.199:                              ;   in Loop: Header=BB12_140 Depth=2
	fmov	s0, #1.00000000
LBB12_200:                              ;   in Loop: Header=BB12_140 Depth=2
	fsub	s1, s13, s0
	ldp	s4, s2, [x26, #104]
	ldp	s5, s3, [x26, #76]
	fmul	s2, s2, s1
	fmul	s3, s0, s3
	fmul	s1, s1, s4
	fmul	s7, s0, s5
	fadd	s2, s2, s3
	ldr	s3, [x20, #20]
	fadd	s0, s1, s7
	fmul	s2, s3, s2
	ldr	s3, [x26, #64]
	fmul	s2, s8, s2
	fadd	s2, s3, s2
	str	s2, [x26, #64]
	ldr	s1, [x20, #16]
	fmul	s0, s1, s0
	b	LBB12_202
LBB12_201:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	s0, [x20, #20]
	ldp	s2, s1, [x26, #76]
	fmul	s0, s1, s0
	ldr	s1, [x26, #64]
	fmul	s3, s8, s0
	fadd	s0, s1, s3
	str	s0, [x26, #64]
	ldr	s0, [x20, #16]
	fmul	s0, s2, s0
LBB12_202:                              ;   in Loop: Header=BB12_140 Depth=2
	fmul	s0, s8, s0
	ldr	s1, [x26, #68]
	fadd	s0, s1, s0
	str	s0, [x26, #68]
	ldrh	w8, [x19, #178]
	cbz	w8, LBB12_205
; %bb.203:                              ;   in Loop: Header=BB12_140 Depth=2
Lloh99:
	adrp	x0, l_.str.8@PAGE
Lloh100:
	add	x0, x0, l_.str.8@PAGEOFF
Lloh101:
	adrp	x1, l_.str.4@PAGE
Lloh102:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #943                        ; =0x3af
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	ldrh	w8, [x19, #178]
	cbz	w8, LBB12_205
; %bb.204:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w0, [x27, #8]
	bl	_tag_get_name
	ldrsh	w9, [x19, #178]
	mov	x8, x0
	mov	w0, #2                          ; =0x2
Lloh103:
	adrp	x1, l_.str.9@PAGE
Lloh104:
	add	x1, x1, l_.str.9@PAGEOFF
	stp	w8, w9, [sp]
	bl	_error
	strh	wzr, [x19, #178]
LBB12_205:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w1, [x27, #8]
	mov	w0, #29804                      ; =0x746c
	movk	w0, #28771, lsl #16
	bl	_tag_get
	mov	x8, x0
	ldr	w9, [x0, #92]!
	cmp	w9, w25
	b.le	LBB12_210
; %bb.206:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w9, [x8, #96]
	cbz	w9, LBB12_210
; %bb.207:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x8, #100]
	cbz	w8, LBB12_209
; %bb.208:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x8, #12]
	cmp	w8, #128
	b.ne	LBB12_210
LBB12_209:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [sp, #64]                   ; 4-byte Reload
	add	x19, x9, w8, uxtw
	ldrsh	w1, [x26, #8]
	tbz	w1, #31, LBB12_211
	b	LBB12_216
LBB12_210:                              ;   in Loop: Header=BB12_140 Depth=2
	mov	w1, w25
	mov	w2, #128                        ; =0x80
	bl	_tag_block_get_element_with_size
	mov	x19, x0
	ldrsh	w1, [x26, #8]
	tbnz	w1, #31, LBB12_216
LBB12_211:                              ;   in Loop: Header=BB12_140 Depth=2
	ldur	w8, [x19, #116]
	cmp	w8, w1
	b.le	LBB12_216
; %bb.212:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x19, #120]
	cbz	w8, LBB12_216
; %bb.213:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w9, [x19, #124]
	cbz	w9, LBB12_215
; %bb.214:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #376
	b.ne	LBB12_216
LBB12_215:                              ;   in Loop: Header=BB12_140 Depth=2
	mov	w9, #376                        ; =0x178
	mul	w9, w1, w9
	add	x27, x8, w9, sxtw
	b	LBB12_217
LBB12_216:                              ;   in Loop: Header=BB12_140 Depth=2
	add	x0, x19, #116
	mov	w2, #376                        ; =0x178
	bl	_tag_block_get_element_with_size
	mov	x27, x0
LBB12_217:                              ;   in Loop: Header=BB12_140 Depth=2
	ldrsh	w1, [x26, #10]
	cmn	w1, #1
	b.eq	LBB12_229
; %bb.218:                              ;   in Loop: Header=BB12_140 Depth=2
	tbnz	w1, #31, LBB12_224
; %bb.219:                              ;   in Loop: Header=BB12_140 Depth=2
	ldur	w8, [x19, #116]
	cmp	w8, w1
	b.le	LBB12_224
; %bb.220:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x19, #120]
	cbz	w8, LBB12_224
; %bb.221:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w9, [x19, #124]
	cbz	w9, LBB12_223
; %bb.222:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #376
	b.ne	LBB12_224
LBB12_223:                              ;   in Loop: Header=BB12_140 Depth=2
	mov	w9, #376                        ; =0x178
	mul	w9, w1, w9
	add	x23, x8, w9, sxtw
	b	LBB12_225
LBB12_224:                              ;   in Loop: Header=BB12_140 Depth=2
	add	x0, x19, #116
	mov	w2, #376                        ; =0x178
	bl	_tag_block_get_element_with_size
	mov	x23, x0
LBB12_225:                              ;   in Loop: Header=BB12_140 Depth=2
	ldp	s0, s1, [x26, #12]
	movi	d12, #0000000000000000
	fdiv	s0, s0, s1
	fcmp	s0, #0.0
	b.mi	LBB12_228
; %bb.226:                              ;   in Loop: Header=BB12_140 Depth=2
	fcmp	s0, s13
	fmov	s12, s0
	b.le	LBB12_228
; %bb.227:                              ;   in Loop: Header=BB12_140 Depth=2
	fmov	s12, #1.00000000
LBB12_228:                              ;   in Loop: Header=BB12_140 Depth=2
	fsub	s0, s13, s12
	ldr	s1, [x27, #128]
	ldr	s2, [x23, #128]
	mov	w0, #26745                      ; =0x6879
	ldr	s3, [x20, #40]
	movk	w0, #28784, lsl #16
	ldr	w1, [x27, #144]
	fmul	s1, s12, s1
	fmul	s0, s0, s2
	ldr	s2, [x19, #44]
	fmul	s2, s2, s3
	fadd	s0, s1, s0
	fmul	s11, s2, s0
	bl	_tag_get
	ldr	w1, [x23, #144]
	mov	x23, x0
	mov	w0, #26745                      ; =0x6879
	movk	w0, #28784, lsl #16
	bl	_tag_get
	fmov	s0, s12
	mov	x1, x0
	add	x2, sp, #88
	mov	x0, x23
	bl	_point_physics_definition_interpolate
	b	LBB12_230
LBB12_229:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	s0, [x19, #44]
	mov	w0, #26745                      ; =0x6879
	ldr	s1, [x20, #40]
	movk	w0, #28784, lsl #16
	ldr	w1, [x27, #144]
	fmul	s0, s0, s1
	ldr	s1, [x27, #128]
	fmul	s11, s0, s1
	bl	_tag_get
LBB12_230:                              ;   in Loop: Header=BB12_140 Depth=2
	fmov	s0, s11
	mov	x1, x0
	fmov	s1, s8
	add	x2, x26, #20
	add	x4, x26, #28
	add	x5, x26, #40
	mov	w0, wzr
	mov	w3, #-1                         ; =0xffffffff
	mov	x6, xzr
	mov	x7, xzr
	str	wzr, [sp]
	bl	_point_physics_update
	ldr	x27, [sp, #80]                  ; 8-byte Reload
	tbz	w0, #0, LBB12_232
; %bb.231:                              ;   in Loop: Header=BB12_140 Depth=2
	ldrb	w8, [x19, #32]
	tbnz	w8, #5, LBB12_236
LBB12_232:                              ;   in Loop: Header=BB12_140 Depth=2
	tbz	w0, #1, LBB12_234
; %bb.233:                              ;   in Loop: Header=BB12_140 Depth=2
	ldrb	w8, [x19, #32]
	tbnz	w8, #4, LBB12_236
LBB12_234:                              ;   in Loop: Header=BB12_140 Depth=2
	tbz	w0, #2, LBB12_237
; %bb.235:                              ;   in Loop: Header=BB12_140 Depth=2
	ldrb	w8, [x19, #32]
	tbz	w8, #6, LBB12_237
LBB12_236:                              ;   in Loop: Header=BB12_140 Depth=2
	strb	wzr, [x26, #3]
LBB12_237:                              ;   in Loop: Header=BB12_140 Depth=2
	ldr	w8, [x26, #4]
	mov	x23, x26
	b	LBB12_139
LBB12_238:
	ldr	w8, [x27, #4]
	ldr	w9, [sp, #60]                   ; 4-byte Reload
	and	w8, w8, #0xfffffffd
	tst	w9, #0xffff
	str	w8, [x27, #4]
	b.ne	LBB12_241
	b	LBB12_240
LBB12_239:
	ldr	w8, [x27, #4]
	and	w8, w8, #0xfffffffd
	str	w8, [x27, #4]
LBB12_240:
	ldr	w8, [x27, #12]
	cmn	w8, #1
	b.eq	LBB12_242
LBB12_241:
	add	sp, sp, #960
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #144            ; 16-byte Folded Reload
	ret
LBB12_242:
	ldr	w0, [sp, #12]                   ; 4-byte Reload
	bl	_particle_system_delete
	b	LBB12_241
	.loh AdrpLdrGotLdr	Lloh62, Lloh63, Lloh64
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpLdrGotLdr	Lloh71, Lloh72, Lloh73
	.loh AdrpLdrGot	Lloh74, Lloh75
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpAdd	Lloh76, Lloh77
	.loh AdrpAdd	Lloh84, Lloh85
	.loh AdrpAdd	Lloh82, Lloh83
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh86, Lloh87
	.loh AdrpLdrGotLdr	Lloh88, Lloh89, Lloh90
	.loh AdrpLdr	Lloh91, Lloh92
	.loh AdrpLdrGotLdr	Lloh93, Lloh94, Lloh95
	.loh AdrpLdrGotLdr	Lloh96, Lloh97, Lloh98
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh103, Lloh104
                                        ; -- End function
	.globl	_particle_systems_render        ; -- Begin function particle_systems_render
	.p2align	4
_particle_systems_render:               ; @particle_systems_render
; %bb.0:
Lloh105:
	adrp	x8, _render_particle_systems_enabled@GOTPAGE
Lloh106:
	ldr	w8, [x8, _render_particle_systems_enabled@GOTPAGEOFF]
	ldrb	w8, [x8]
	cbz	w8, LBB13_86
; %bb.1:
	sub	sp, sp, #464
	stp	x20, x19, [sp, #432]            ; 16-byte Folded Spill
Lloh107:
	adrp	x19, _particle_systems@GOTPAGE
	stp	d15, d14, [sp, #320]            ; 16-byte Folded Spill
	stp	d13, d12, [sp, #336]            ; 16-byte Folded Spill
	stp	d11, d10, [sp, #352]            ; 16-byte Folded Spill
	stp	d9, d8, [sp, #368]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #384]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #400]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #416]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #448]            ; 16-byte Folded Spill
	add	x29, sp, #448
Lloh108:
	ldr	w19, [x19, _particle_systems@GOTPAGEOFF]
	ldr	w0, [x19]
	cbz	w0, LBB13_3
; %bb.2:
	ldrb	w8, [x0, #36]
	cbnz	w8, LBB13_4
LBB13_3:
Lloh109:
	adrp	x0, l_.str.3@PAGE
Lloh110:
	add	x0, x0, l_.str.3@PAGEOFF
Lloh111:
	adrp	x1, l_.str.4@PAGE
Lloh112:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #976                        ; =0x3d0
	mov	w3, #1                          ; =0x1
	bl	_release_assert_failed
	ldr	w0, [x19]
LBB13_4:
	mov	w1, #-1                         ; =0xffffffff
	bl	_data_next_index
	cmn	w0, #1
	b.eq	LBB13_85
; %bb.5:
	mov	w8, #55050                      ; =0xd70a
	mov	w9, #4719                       ; =0x126f
	movk	w8, #15395, lsl #16
	movk	w9, #14979, lsl #16
Lloh113:
	adrp	x24, _system_particles@GOTPAGE
	fmov	s9, #-1.00000000
	fmov	s10, #1.00000000
	mov	w10, w0
	fmov	s12, w8
	mov	w23, #65535                     ; =0xffff
	fmov	s13, w9
Lloh114:
	ldr	w24, [x24, _system_particles@GOTPAGEOFF]
	b	LBB13_7
	.p2align	4, , 8
LBB13_6:                                ;   in Loop: Header=BB13_7 Depth=1
Lloh115:
	adrp	x19, _particle_systems@GOTPAGE
Lloh116:
	ldr	w19, [x19, _particle_systems@GOTPAGEOFF]
	ldr	w1, [sp, #12]                   ; 4-byte Reload
	ldr	w0, [x19]
	bl	_data_next_index
	mov	w10, w0
	cmn	w0, #1
	b.eq	LBB13_85
LBB13_7:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB13_11 Depth 2
                                        ;       Child Loop BB13_27 Depth 3
	ldr	w0, [x19]
	mov	w1, w10
	str	w10, [sp, #12]                  ; 4-byte Spill
	bl	_datum_get
Lloh117:
	adrp	x19, _render@GOTPAGE
	ldrsh	w8, [x0, #28]
Lloh118:
	ldr	w19, [x19, _render@GOTPAGEOFF]
	cmn	w8, #1
	b.eq	LBB13_6
; %bb.8:                                ;   in Loop: Header=BB13_7 Depth=1
	add	x0, x0, #24
	bl	_scenario_location_potentially_visible_local
	cbz	w0, LBB13_6
; %bb.9:                                ;   in Loop: Header=BB13_7 Depth=1
Lloh119:
	adrp	x8, _particle_systems@GOTPAGE
Lloh120:
	ldr	w8, [x8, _particle_systems@GOTPAGEOFF]
	ldr	w1, [sp, #12]                   ; 4-byte Reload
Lloh121:
	ldr	w0, [x8]
	bl	_datum_get
	mov	x27, x0
	ldr	w1, [x0, #8]
	mov	w0, #29804                      ; =0x746c
	movk	w0, #28771, lsl #16
	bl	_tag_get
	str	x0, [sp, #72]                   ; 8-byte Spill
	ldr	w8, [x0, #92]!
	str	x0, [sp, #64]                   ; 8-byte Spill
	cmp	w8, #1
	b.lt	LBB13_6
; %bb.10:                               ;   in Loop: Header=BB13_7 Depth=1
	mov	w25, wzr
	add	x8, x27, #88
	stp	x27, x8, [sp, #16]              ; 16-byte Folded Spill
	.p2align	4, , 8
LBB13_11:                               ;   Parent Loop BB13_7 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB13_27 Depth 3
	ldr	x8, [sp, #72]                   ; 8-byte Reload
	ldr	w8, [x8, #96]
	cbz	w8, LBB13_15
; %bb.12:                               ;   in Loop: Header=BB13_11 Depth=2
	ldr	x9, [sp, #72]                   ; 8-byte Reload
	ldr	w9, [x9, #100]
	cbz	w9, LBB13_14
; %bb.13:                               ;   in Loop: Header=BB13_11 Depth=2
	ldr	w9, [x9, #12]
	cmp	w9, #128
	b.ne	LBB13_15
LBB13_14:                               ;   in Loop: Header=BB13_11 Depth=2
	lsl	w9, w25, #7
	add	x26, x8, x9
	b	LBB13_16
	.p2align	4, , 8
LBB13_15:                               ;   in Loop: Header=BB13_11 Depth=2
	ldr	x0, [sp, #64]                   ; 8-byte Reload
	mov	w1, w25
	mov	w2, #128                        ; =0x80
	bl	_tag_block_get_element_with_size
	mov	x26, x0
LBB13_16:                               ;   in Loop: Header=BB13_11 Depth=2
	ldr	w0, [x27, #12]
	ldr	w1, [x26, #32]
	ldrsh	w2, [x19, #8]
	bl	_mcc_particle_system_visible
	cbz	w0, LBB13_21
; %bb.17:                               ;   in Loop: Header=BB13_11 Depth=2
	ldr	x9, [sp, #24]                   ; 8-byte Reload
	sxtw	x8, w25
	add	x20, x9, x8, lsl #6
	ldrsh	w8, [x20]
	cmn	w8, #1
	b.eq	LBB13_21
; %bb.18:                               ;   in Loop: Header=BB13_11 Depth=2
	ldrb	w8, [x26, #33]
	tbnz	w8, #0, LBB13_21
; %bb.19:                               ;   in Loop: Header=BB13_11 Depth=2
	ldrh	w8, [x20, #60]
	cmp	w8, w23
	b.ne	LBB13_27
LBB13_20:                               ;   in Loop: Header=BB13_11 Depth=2
	ldr	x27, [sp, #16]                  ; 8-byte Reload
	.p2align	4, , 8
LBB13_21:                               ;   in Loop: Header=BB13_11 Depth=2
	cmp	w25, #2
	b.hi	LBB13_6
; %bb.22:                               ;   in Loop: Header=BB13_11 Depth=2
	ldr	x8, [sp, #64]                   ; 8-byte Reload
	add	w25, w25, #1
	ldr	w8, [x8]
	cmp	w8, w25
	b.gt	LBB13_11
	b	LBB13_6
LBB13_23:                               ;   in Loop: Header=BB13_27 Depth=3
	fmov	s1, s8
	ldrsh	w1, [x26, #42]
	ldrsh	w2, [x24, #64]
	add	x0, sp, #148
	ldr	s0, [x27, #64]
	add	x4, sp, #136
	add	x5, sp, #124
	add	x6, sp, #108
	mov	w7, #1                          ; =0x1
	ldr	q2, [sp, #80]                   ; 16-byte Reload
                                        ; kill: def $s2 killed $s2 killed $q2
	bl	_build_sprite
LBB13_24:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	s0, [x28, #128]
	add	x0, sp, #148
	ldr	w8, [sp, #156]
	str	s0, [x8, #152]
	bl	_build_sprites_end
LBB13_25:                               ;   in Loop: Header=BB13_27 Depth=3
Lloh122:
	adrp	x24, _system_particles@GOTPAGE
Lloh123:
	ldr	w24, [x24, _system_particles@GOTPAGEOFF]
	.p2align	4, , 8
LBB13_26:                               ;   in Loop: Header=BB13_27 Depth=3
	ldrh	w8, [x27, #4]
	cmp	w8, w23
	b.eq	LBB13_20
LBB13_27:                               ;   Parent Loop BB13_7 Depth=1
                                        ;     Parent Loop BB13_11 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w0, [x24]
	sxth	w1, w8
	bl	_datum_get
	ldrb	w8, [x0, #3]
	mov	x27, x0
	cbz	w8, LBB13_26
; %bb.28:                               ;   in Loop: Header=BB13_27 Depth=3
	add	x0, x27, #20
	bl	_render_location_visible
	cbz	w0, LBB13_26
; %bb.29:                               ;   in Loop: Header=BB13_27 Depth=3
	ldrsh	w1, [x27, #8]
	tbnz	w1, #31, LBB13_35
; %bb.30:                               ;   in Loop: Header=BB13_27 Depth=3
	ldur	w8, [x26, #116]
	cmp	w8, w1
	b.le	LBB13_35
; %bb.31:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w8, [x26, #120]
	cbz	w8, LBB13_35
; %bb.32:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w9, [x26, #124]
	cbz	w9, LBB13_34
; %bb.33:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w9, [x9, #12]
	cmp	w9, #376
	b.ne	LBB13_35
LBB13_34:                               ;   in Loop: Header=BB13_27 Depth=3
	mov	w9, #376                        ; =0x178
	mul	w9, w1, w9
	add	x28, x8, w9, sxtw
	b	LBB13_36
	.p2align	4, , 8
LBB13_35:                               ;   in Loop: Header=BB13_27 Depth=3
	add	x0, x26, #116
	mov	w2, #376                        ; =0x178
	bl	_tag_block_get_element_with_size
	mov	x28, x0
LBB13_36:                               ;   in Loop: Header=BB13_27 Depth=3
	add	x0, x19, #116
	add	x1, x27, #28
	add	x2, sp, #136
	bl	_matrix4x3_transform_point
	add	x0, x19, #116
	add	x1, x27, #52
	add	x2, sp, #124
	bl	_matrix4x3_transform_normal
	ldrsh	w1, [x27, #10]
	cmn	w1, #1
	b.eq	LBB13_51
; %bb.37:                               ;   in Loop: Header=BB13_27 Depth=3
	tbnz	w1, #31, LBB13_43
; %bb.38:                               ;   in Loop: Header=BB13_27 Depth=3
	ldur	w8, [x26, #116]
	cmp	w8, w1
	b.le	LBB13_43
; %bb.39:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w8, [x26, #120]
	cbz	w8, LBB13_43
; %bb.40:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w9, [x26, #124]
	cbz	w9, LBB13_42
; %bb.41:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w9, [x9, #12]
	cmp	w9, #376
	b.ne	LBB13_43
LBB13_42:                               ;   in Loop: Header=BB13_27 Depth=3
	mov	w9, #376                        ; =0x178
	mul	w9, w1, w9
	add	x0, x8, w9, sxtw
	b	LBB13_44
	.p2align	4, , 8
LBB13_43:                               ;   in Loop: Header=BB13_27 Depth=3
	add	x0, x26, #116
	mov	w2, #376                        ; =0x178
	bl	_tag_block_get_element_with_size
LBB13_44:                               ;   in Loop: Header=BB13_27 Depth=3
	ldp	s0, s1, [x27, #12]
	movi	d17, #0000000000000000
	fdiv	s0, s0, s1
	fcmp	s0, #0.0
	b.mi	LBB13_47
; %bb.45:                               ;   in Loop: Header=BB13_27 Depth=3
	fcmp	s0, s10
	fmov	s17, s0
	b.le	LBB13_47
; %bb.46:                               ;   in Loop: Header=BB13_27 Depth=3
	fmov	s17, #1.00000000
LBB13_47:                               ;   in Loop: Header=BB13_27 Depth=3
	fsub	s16, s10, s17
	ldr	s1, [x27, #72]
	ldp	s6, s0, [x27, #96]
	ldr	s2, [x27, #112]
	ldr	s3, [x27, #84]
	fmul	s1, s17, s1
	ldur	d4, [x27, #116]
	fmul	s6, s17, s6
	ldr	d5, [x27, #88]
	fmul	s0, s0, s16
	ldr	s7, [x27, #124]
	fmul	s2, s16, s2
	fmul	s3, s17, s3
	ldrh	w8, [x28, #226]
	fmul	v4.2s, v4.2s, v16.s[0]
	ldrh	w9, [x0, #226]
	fmul	v5.2s, v5.2s, v17.s[0]
	fmul	s7, s16, s7
	fadd	s0, s0, s1
	cmp	w8, w9
	fadd	s1, s2, s3
	ldr	s2, [x20, #12]
	fadd	v3.2s, v4.2s, v5.2s
	ldr	s4, [x20, #24]
	fadd	s5, s7, s6
	ldur	d6, [x20, #28]
	ldr	s7, [x20, #36]
	fmul	s8, s2, s0
	fmul	s11, s4, s1
	fmul	v14.2s, v6.2s, v3.2s
	fmul	s15, s7, s5
	b.ne	LBB13_50
; %bb.48:                               ;   in Loop: Header=BB13_27 Depth=3
	ldrh	w8, [x28, #230]
	ldrh	w9, [x0, #230]
	cmp	w8, w9
	b.ne	LBB13_50
; %bb.49:                               ;   in Loop: Header=BB13_27 Depth=3
	add	x8, x0, #184
	movi	d0, #0000000000000000
	ldrh	w9, [x0, #64]
	str	x8, [sp, #32]                   ; 8-byte Spill
	ldrh	w8, [x28, #64]
	cmp	w8, w9
	fcsel	s16, s0, s16, eq
	fcsel	s17, s10, s17, eq
	str	q16, [sp, #80]                  ; 16-byte Spill
	str	q17, [sp, #48]                  ; 16-byte Spill
	b	LBB13_52
LBB13_50:                               ;   in Loop: Header=BB13_27 Depth=3
	add	x8, x0, #184
	str	q17, [sp, #48]                  ; 16-byte Spill
	str	q16, [sp, #80]                  ; 16-byte Spill
	str	x8, [sp, #32]                   ; 8-byte Spill
	b	LBB13_52
LBB13_51:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	s0, [x27, #72]
	mov	x0, xzr
	ldr	s1, [x20, #12]
	ldr	s2, [x27, #84]
	ldr	s3, [x20, #24]
	ldr	d4, [x27, #88]
	fmul	s8, s0, s1
	fmov	s0, #1.00000000
	ldur	d5, [x20, #28]
	ldr	s6, [x27, #96]
	fmul	s11, s2, s3
	ldr	s7, [x20, #36]
	str	xzr, [sp, #32]                  ; 8-byte Spill
	fmul	v14.2s, v4.2s, v5.2s
	str	q0, [sp, #48]                   ; 16-byte Spill
	movi	d0, #0000000000000000
	fmul	s15, s6, s7
	str	q0, [sp, #80]                   ; 16-byte Spill
LBB13_52:                               ;   in Loop: Header=BB13_27 Depth=3
	str	x0, [sp, #40]                   ; 8-byte Spill
	mov	w0, #29805                      ; =0x746d
	ldr	w1, [x28, #60]
	movk	w0, #25193, lsl #16
	bl	_tag_get
	ldrsh	w9, [x28, #64]
	ldrh	w10, [x26, #40]
	and	w8, w9, #0xffff
	cmp	w10, #1
	b.ne	LBB13_54
; %bb.53:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w10, [x0, #84]
	add	w11, w9, #1
	cmp	w11, w10
	csinc	w8, w8, w9, ge
LBB13_54:                               ;   in Loop: Header=BB13_27 Depth=3
	tbnz	w8, #15, LBB13_67
; %bb.55:                               ;   in Loop: Header=BB13_27 Depth=3
	mov	x23, x0
	sxth	w24, w8
	ldr	w9, [x23, #84]!
	cmp	w9, w24
	b.le	LBB13_67
; %bb.56:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w8, [x0, #88]
	cbz	w8, LBB13_60
; %bb.57:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w9, [x0, #92]
	cbz	w9, LBB13_59
; %bb.58:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w9, [x9, #12]
	cmp	w9, #64
	b.ne	LBB13_60
LBB13_59:                               ;   in Loop: Header=BB13_27 Depth=3
	lsl	w9, w24, #6
	add	x8, x8, x9
	b	LBB13_61
LBB13_60:                               ;   in Loop: Header=BB13_27 Depth=3
	mov	x19, x0
	mov	x0, x23
	mov	w1, w24
	mov	w2, #64                         ; =0x40
	bl	_tag_block_get_element_with_size
	mov	x8, x0
	mov	x0, x19
Lloh124:
	adrp	x19, _render@GOTPAGE
Lloh125:
	ldr	w19, [x19, _render@GOTPAGEOFF]
LBB13_61:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w8, [x8, #52]
	cmp	w8, #1
	b.lt	LBB13_67
; %bb.62:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w8, [x23]
	cmp	w8, w24
	b.le	LBB13_68
; %bb.63:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w8, [x0, #88]
	cbz	w8, LBB13_68
; %bb.64:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w9, [x0, #92]
	cbz	w9, LBB13_66
; %bb.65:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w9, [x9, #12]
	cmp	w9, #64
	b.ne	LBB13_68
LBB13_66:                               ;   in Loop: Header=BB13_27 Depth=3
	lsl	w9, w24, #6
	add	x0, x8, x9
	b	LBB13_69
	.p2align	4, , 8
LBB13_67:                               ;   in Loop: Header=BB13_27 Depth=3
Lloh126:
	adrp	x24, _system_particles@GOTPAGE
	ldrh	w8, [x27, #4]
	mov	w23, #65535                     ; =0xffff
Lloh127:
	ldr	w24, [x24, _system_particles@GOTPAGEOFF]
	cmp	w8, w23
	b.ne	LBB13_27
	b	LBB13_20
LBB13_68:                               ;   in Loop: Header=BB13_27 Depth=3
	mov	x0, x23
	mov	w1, w24
	mov	w2, #64                         ; =0x40
	bl	_tag_block_get_element_with_size
LBB13_69:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	s0, [x27, #68]
	fcmp	s0, s9
	b.ne	LBB13_71
; %bb.70:                               ;   in Loop: Header=BB13_27 Depth=3
	ldrsh	w23, [x0, #52]
	bl	_get_global_local_random_seed_address
	mov	w1, wzr
	mov	w2, w23
	bl	_seed_random_range
	scvtf	s0, w0
	mov	w24, w0
	mov	w23, #65535                     ; =0xffff
	str	s0, [x27, #68]
	ldr	q0, [sp, #80]                   ; 16-byte Reload
	b	LBB13_73
LBB13_71:                               ;   in Loop: Header=BB13_27 Depth=3
	fcvtzs	w9, s0
	ldr	w8, [x0, #52]
	ldr	q0, [sp, #80]                   ; 16-byte Reload
	mov	w23, #65535                     ; =0xffff
	sdiv	w10, w9, w8
	msub	w24, w10, w8, w9
	tbz	w24, #31, LBB13_73
; %bb.72:                               ;   in Loop: Header=BB13_27 Depth=3
	add	w24, w24, w8
LBB13_73:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	q1, [sp, #48]                   ; 16-byte Reload
	fcmp	s1, s12
	b.le	LBB13_80
; %bb.74:                               ;   in Loop: Header=BB13_27 Depth=3
	ldrh	w8, [x28, #226]
	str	s11, [sp, #108]
	stur	d14, [sp, #112]
	str	s15, [sp, #120]
	cbnz	w8, LBB13_76
; %bb.75:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	x8, [sp, #16]                   ; 8-byte Reload
	ldr	d0, [x8, #72]
	ldr	s1, [x8, #80]
	fmul	v0.2s, v14.2s, v0.2s
	fmul	s1, s15, s1
	stur	d0, [sp, #112]
	str	s1, [sp, #120]
LBB13_76:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w2, [x28, #60]
	add	x0, sp, #148
	add	x3, x28, #184
	mov	w1, #2                          ; =0x2
	mov	w4, wzr
	bl	_build_sprites_begin
	ldrh	w8, [x26, #40]
	cmp	w8, #1
	b.ne	LBB13_78
; %bb.77:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w8, [x26, #32]
	fmov	s1, s8
	ldrsh	w2, [x28, #64]
	add	x0, sp, #148
	ldr	s0, [x27, #64]
	add	x4, sp, #136
	add	x5, sp, #124
	add	x6, sp, #108
	tst	w8, #0x80
	mov	w8, #3                          ; =0x3
	csinc	w1, w8, wzr, ne
	sxth	w3, w24
	ldr	q2, [sp, #48]                   ; 16-byte Reload
                                        ; kill: def $s2 killed $s2 killed $q2
	bl	_build_sprite_rotational
	b	LBB13_79
LBB13_78:                               ;   in Loop: Header=BB13_27 Depth=3
	fmov	s1, s8
	ldrsh	w1, [x26, #42]
	ldrsh	w2, [x28, #64]
	add	x0, sp, #148
	ldr	s0, [x27, #64]
	add	x4, sp, #136
	add	x5, sp, #124
	add	x6, sp, #108
	mov	w7, #1                          ; =0x1
	sxth	w3, w24
	ldr	q2, [sp, #48]                   ; 16-byte Reload
                                        ; kill: def $s2 killed $s2 killed $q2
	bl	_build_sprite
LBB13_79:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	s0, [x28, #128]
	add	x0, sp, #148
	ldr	w8, [sp, #156]
	str	s0, [x8, #152]
	bl	_build_sprites_end
	ldr	q0, [sp, #80]                   ; 16-byte Reload
LBB13_80:                               ;   in Loop: Header=BB13_27 Depth=3
	fcmp	s0, s12
	b.le	LBB13_25
; %bb.81:                               ;   in Loop: Header=BB13_27 Depth=3
	ldrh	w8, [x28, #226]
	str	w24, [sp, #48]                  ; 4-byte Spill
	str	s11, [sp, #108]
	stur	d14, [sp, #112]
	str	s15, [sp, #120]
	cbnz	w8, LBB13_83
; %bb.82:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	x8, [sp, #16]                   ; 8-byte Reload
	ldr	d0, [x8, #72]
	ldr	s1, [x8, #80]
	fmul	v0.2s, v14.2s, v0.2s
	fmul	s1, s15, s1
	stur	d0, [sp, #112]
	str	s1, [sp, #120]
LBB13_83:                               ;   in Loop: Header=BB13_27 Depth=3
	ldp	x3, x24, [sp, #32]              ; 16-byte Folded Reload
	add	x0, sp, #148
	mov	w1, #2                          ; =0x2
	mov	w4, wzr
	ldr	w2, [x24, #60]
	bl	_build_sprites_begin
	ldr	s0, [sp, #144]
	ldrh	w8, [x26, #40]
	fadd	s0, s0, s13
	cmp	w8, #1
	ldr	w8, [sp, #48]                   ; 4-byte Reload
	sxth	w3, w8
	str	s0, [sp, #144]
	b.ne	LBB13_23
; %bb.84:                               ;   in Loop: Header=BB13_27 Depth=3
	ldr	w8, [x26, #32]
	fmov	s1, s8
	ldrsh	w2, [x24, #64]
	add	x0, sp, #148
	ldr	s0, [x27, #64]
	add	x4, sp, #136
	add	x5, sp, #124
	add	x6, sp, #108
	tst	w8, #0x80
	mov	w8, #3                          ; =0x3
	csinc	w1, w8, wzr, ne
	ldr	q2, [sp, #80]                   ; 16-byte Reload
                                        ; kill: def $s2 killed $s2 killed $q2
	bl	_build_sprite_rotational
	b	LBB13_24
LBB13_85:
	ldp	x29, x30, [sp, #448]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #432]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #416]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #400]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #384]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #368]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #352]            ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #336]            ; 16-byte Folded Reload
	ldp	d15, d14, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #464
LBB13_86:
	ret
	.loh AdrpLdrGot	Lloh105, Lloh106
	.loh AdrpLdrGot	Lloh107, Lloh108
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpLdrGot	Lloh113, Lloh114
	.loh AdrpLdrGot	Lloh115, Lloh116
	.loh AdrpLdrGot	Lloh117, Lloh118
	.loh AdrpLdrGotLdr	Lloh119, Lloh120, Lloh121
	.loh AdrpLdrGot	Lloh122, Lloh123
	.loh AdrpLdrGot	Lloh124, Lloh125
	.loh AdrpLdrGot	Lloh126, Lloh127
                                        ; -- End function
	.p2align	4                               ; -- Begin function randomize_particle_variables
_randomize_particle_variables:          ; @randomize_particle_variables
; %bb.0:
	stp	d11, d10, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	mov	x19, x1
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	tbnz	w2, #31, LBB14_6
; %bb.1:
	ldur	w8, [x0, #116]
	cmp	w8, w2
	b.le	LBB14_6
; %bb.2:
	ldr	w8, [x0, #120]
	cbz	w8, LBB14_6
; %bb.3:
	ldr	w9, [x0, #124]
	cbz	w9, LBB14_5
; %bb.4:
	ldr	w9, [x9, #12]
	cmp	w9, #376
	b.ne	LBB14_6
LBB14_5:
	mov	w9, #376                        ; =0x178
	mul	w9, w2, w9
	add	x20, x8, w9, sxtw
	b	LBB14_7
LBB14_6:
	add	x0, x0, #116
	mov	w1, w2
	mov	w2, #376                        ; =0x178
	bl	_tag_block_get_element_with_size
	mov	x20, x0
LBB14_7:
	bl	_get_global_local_random_seed_address
	movi	d0, #0000000000000000
	fmov	s1, #1.00000000
	bl	_real_seed_random_range
	ldp	s9, s10, [x20, #80]
	fmov	s8, s0
	bl	_get_global_local_random_seed_address
	fmov	s0, s9
	fmov	s1, s10
	bl	_real_seed_random_range
	str	s0, [x19, #4]
	ldp	s9, s10, [x20, #88]
	bl	_get_global_local_random_seed_address
	fmov	s0, s9
	fmov	s1, s10
	bl	_real_seed_random_range
	str	s0, [x19, #8]
	ldp	s9, s10, [x20, #72]
	bl	_get_global_local_random_seed_address
	fmov	s0, s9
	fmov	s1, s10
	bl	_real_seed_random_range
	str	s0, [x19]
	ldr	s9, [x20, #96]
	ldr	s10, [x20, #112]
	bl	_get_global_local_random_seed_address
	fmov	s0, s9
	fmov	s1, s10
	bl	_real_seed_random_range
	str	s0, [x19, #12]
	ldr	s0, [x20, #116]
	ldr	s1, [x20, #100]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	fsub	s0, s0, s1
	fmul	s0, s8, s0
	fadd	s0, s1, s0
	str	s0, [x19, #16]
	ldr	s0, [x20, #120]
	ldr	s1, [x20, #104]
	fsub	s0, s0, s1
	fmul	s3, s8, s0
	fadd	s0, s1, s3
	str	s0, [x19, #20]
	ldr	s0, [x20, #124]
	ldr	s1, [x20, #108]
	fsub	s0, s0, s1
	fmul	s0, s8, s0
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	fadd	s0, s1, s0
	str	s0, [x19, #24]
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #64             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.p2align	4                               ; -- Begin function particle_system_new_particle_default
_particle_system_new_particle_default:  ; @particle_system_new_particle_default
; %bb.0:
	ldr	w8, [x3, #104]
	ldr	x9, [x3, #96]
	str	w8, [x2, #36]
	stur	x9, [x2, #28]
	ldr	w8, [x0, #52]
	ldur	x9, [x0, #44]
	str	w8, [x2, #48]
	str	x9, [x2, #40]
	ret
                                        ; -- End function
	.p2align	4                               ; -- Begin function particle_system_new_particle_explosion
_particle_system_new_particle_explosion: ; @particle_system_new_particle_explosion
; %bb.0:
	stp	d11, d10, [sp, #-96]!           ; 16-byte Folded Spill
	ldr	w8, [x0, #8]
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	mov	x20, x0
	mov	w0, #29804                      ; =0x746c
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	mov	w24, w1
	movk	w0, #28771, lsl #16
	mov	w1, w8
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	mov	x23, x3
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	mov	x19, x2
	bl	_tag_get
	tbnz	w24, #31, LBB16_6
; %bb.1:
	ldur	w8, [x0, #92]
	cmp	w8, w24
	b.le	LBB16_6
; %bb.2:
	ldr	w8, [x0, #96]
	cbz	w8, LBB16_6
; %bb.3:
	ldr	w9, [x0, #100]
	cbz	w9, LBB16_5
; %bb.4:
	ldr	w9, [x9, #12]
	cmp	w9, #128
	b.ne	LBB16_6
LBB16_5:
	lsl	w9, w24, #7
	add	x25, x8, x9
	b	LBB16_7
LBB16_6:
	add	x0, x0, #92
	mov	w1, w24
	mov	w2, #128                        ; =0x80
	bl	_tag_block_get_element_with_size
	mov	x25, x0
LBB16_7:
	mov	x24, x25
	ldr	w8, [x24, #92]!
	cmp	w8, #1
	b.lt	LBB16_11
; %bb.8:
	ldr	w0, [x25, #96]
	cbz	w0, LBB16_11
; %bb.9:
	ldr	w9, [x25, #100]
	cbz	w9, LBB16_12
; %bb.10:
	ldr	w9, [x9, #12]
	cmp	w9, #4
	b.eq	LBB16_12
LBB16_11:
	mov	x0, x24
	mov	w1, wzr
	mov	w2, #4                          ; =0x4
	bl	_tag_block_get_element_with_size
	ldr	w8, [x24]
LBB16_12:
	ldr	s8, [x0]
	cmp	w8, #2
	b.lt	LBB16_17
; %bb.13:
	ldr	w9, [x25, #96]
	cbz	w9, LBB16_17
; %bb.14:
	ldr	w10, [x25, #100]
	cbz	w10, LBB16_16
; %bb.15:
	ldr	w10, [x10, #12]
	cmp	w10, #4
	b.ne	LBB16_17
LBB16_16:
	add	x0, x9, #4
	b	LBB16_18
LBB16_17:
	mov	x0, x24
	mov	w1, #1                          ; =0x1
	mov	w2, #4                          ; =0x4
	bl	_tag_block_get_element_with_size
	ldr	w8, [x24]
LBB16_18:
	ldr	s10, [x0]
	cmp	w8, #3
	b.lt	LBB16_23
; %bb.19:
	ldr	w8, [x25, #96]
	cbz	w8, LBB16_23
; %bb.20:
	ldr	w9, [x25, #100]
	cbz	w9, LBB16_22
; %bb.21:
	ldr	w9, [x9, #12]
	cmp	w9, #4
	b.ne	LBB16_23
LBB16_22:
	add	x0, x8, #8
	b	LBB16_24
LBB16_23:
	mov	x0, x24
	mov	w1, #2                          ; =0x2
	mov	w2, #4                          ; =0x4
	bl	_tag_block_get_element_with_size
LBB16_24:
	ldr	s9, [x0]
	bl	_get_global_local_random_seed_address
	add	x1, x19, #40
	bl	_seed_random_direction3d
	ldp	s0, s1, [x19, #40]
	ldr	s3, [x19, #48]
	fmul	s2, s8, s0
	fmul	s1, s8, s1
	fmul	s0, s10, s3
	stp	s2, s1, [x19, #40]
	str	s0, [x19, #48]
	ldrb	w8, [x20, #84]
	cbz	w8, LBB16_26
; %bb.25:
	fabs	s0, s0
	str	s0, [x19, #48]
LBB16_26:
	ldr	s3, [x23, #96]
Lloh128:
	adrp	x8, _global_up3d@GOTPAGE
	fadd	s3, s2, s3
	str	s3, [x19, #28]
	ldr	s3, [x23, #100]
	fadd	s3, s1, s3
	str	s3, [x19, #32]
	ldr	s3, [x23, #104]
	stp	s2, s1, [x19, #52]!
	fmul	s2, s9, s2
	str	wzr, [x19, #8]
	fmul	s1, s9, s1
	mov	x0, x19
	fadd	s3, s3, s0
	stur	s3, [x19, #-16]
	ldr	s3, [x20, #44]
	fadd	s2, s2, s3
	stur	s2, [x19, #-12]
	ldr	s2, [x20, #48]
Lloh129:
	ldr	w8, [x8, _global_up3d@GOTPAGEOFF]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	fadd	s1, s1, s2
	fmul	s2, s9, s0
Lloh130:
	ldr	w1, [x8]
	fmov	s0, #1.00000000
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	stur	s1, [x19, #-8]
	ldr	s1, [x20, #52]
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	fadd	s2, s2, s1
	movi	d1, #0000000000000000
	stur	s2, [x19, #-4]
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #96             ; 16-byte Folded Reload
	b	_rotate_vector_about_axis
	.loh AdrpLdrGotLdr	Lloh128, Lloh129, Lloh130
                                        ; -- End function
	.p2align	4                               ; -- Begin function particle_system_new_particle_jet
_particle_system_new_particle_jet:      ; @particle_system_new_particle_jet
; %bb.0:
	sub	sp, sp, #112
	ldr	w8, [x0, #8]
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	mov	x23, x0
	mov	w0, #29804                      ; =0x746c
	mov	w24, w1
	movk	w0, #28771, lsl #16
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	mov	w1, w8
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	mov	x20, x3
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	mov	x19, x2
	bl	_tag_get
	tbnz	w24, #31, LBB17_6
; %bb.1:
	ldur	w8, [x0, #92]
	cmp	w8, w24
	b.le	LBB17_6
; %bb.2:
	ldr	w8, [x0, #96]
	cbz	w8, LBB17_6
; %bb.3:
	ldr	w9, [x0, #100]
	cbz	w9, LBB17_5
; %bb.4:
	ldr	w9, [x9, #12]
	cmp	w9, #128
	b.ne	LBB17_6
LBB17_5:
	lsl	w9, w24, #7
	add	x25, x8, x9
	b	LBB17_7
LBB17_6:
	add	x0, x0, #92
	mov	w1, w24
	mov	w2, #128                        ; =0x80
	bl	_tag_block_get_element_with_size
	mov	x25, x0
LBB17_7:
	mov	x24, x25
	ldr	w8, [x24, #92]!
	cmp	w8, #1
	b.lt	LBB17_11
; %bb.8:
	ldr	w0, [x25, #96]
	cbz	w0, LBB17_11
; %bb.9:
	ldr	w9, [x25, #100]
	cbz	w9, LBB17_12
; %bb.10:
	ldr	w9, [x9, #12]
	cmp	w9, #4
	b.eq	LBB17_12
LBB17_11:
	mov	x0, x24
	mov	w1, wzr
	mov	w2, #4                          ; =0x4
	bl	_tag_block_get_element_with_size
	ldr	w8, [x24]
LBB17_12:
	ldr	s8, [x0]
	cmp	w8, #2
	b.lt	LBB17_17
; %bb.13:
	ldr	w9, [x25, #96]
	cbz	w9, LBB17_17
; %bb.14:
	ldr	w10, [x25, #100]
	cbz	w10, LBB17_16
; %bb.15:
	ldr	w10, [x10, #12]
	cmp	w10, #4
	b.ne	LBB17_17
LBB17_16:
	add	x0, x9, #4
	b	LBB17_18
LBB17_17:
	mov	x0, x24
	mov	w1, #1                          ; =0x1
	mov	w2, #4                          ; =0x4
	bl	_tag_block_get_element_with_size
	ldr	w8, [x24]
LBB17_18:
	ldr	s9, [x0]
	cmp	w8, #3
	b.lt	LBB17_23
; %bb.19:
	ldr	w8, [x25, #96]
	cbz	w8, LBB17_23
; %bb.20:
	ldr	w9, [x25, #100]
	cbz	w9, LBB17_22
; %bb.21:
	ldr	w9, [x9, #12]
	cmp	w9, #4
	b.ne	LBB17_23
LBB17_22:
	add	x0, x8, #8
	b	LBB17_24
LBB17_23:
	mov	x0, x24
	mov	w1, #2                          ; =0x2
	mov	w2, #4                          ; =0x4
	bl	_tag_block_get_element_with_size
LBB17_24:
	mov	w8, #34953                      ; =0x8889
	fmov	s0, #1.00000000
	movk	w8, #15624, lsl #16
	ldr	s10, [x0]
	fmov	s1, w8
	fsub	s0, s0, s9
	fmul	s1, s8, s1
	fmul	s8, s1, s9
	fmul	s9, s1, s0
	bl	_get_global_local_random_seed_address
	add	x1, sp, #4
	bl	_seed_random_direction3d
	ldr	s0, [x20, #60]
	fcmp	s10, #0.0
	ldp	s1, s2, [sp, #4]
	fmul	s0, s9, s0
	fmul	s1, s8, s1
	fmul	s2, s8, s2
	fadd	s0, s0, s1
	ldr	s1, [x23, #44]
	fadd	s0, s1, s0
	str	s0, [x19, #40]
	ldr	s1, [x20, #64]
	fmul	s1, s9, s1
	fadd	s1, s1, s2
	ldr	s2, [x23, #48]
	fadd	s1, s2, s1
	ldr	s2, [sp, #12]
	fmul	s2, s8, s2
	str	s1, [x19, #44]
	ldr	s3, [x20, #68]
	fmul	s3, s9, s3
	fadd	s2, s3, s2
	ldr	s3, [x23, #52]
	fadd	s2, s3, s2
	str	s2, [x19, #48]
	ldr	x8, [x20, #96]
	ldr	w9, [x20, #104]
	stur	x8, [x19, #28]
	str	w9, [x19, #36]
	b.eq	LBB17_26
; %bb.25:
Lloh131:
	adrp	x8, _global_up3d@GOTPAGE
Lloh132:
	ldr	w8, [x8, _global_up3d@GOTPAGEOFF]
Lloh133:
	ldr	w8, [x8]
	ldp	s3, s4, [x8, #4]
	ldr	s5, [x8]
	fmul	s6, s0, s3
	fmul	s7, s0, s4
	fmul	s4, s1, s4
	fmul	s0, s1, s5
	fmul	s1, s2, s5
	fmul	s5, s2, s3
	fsub	s0, s6, s0
	fsub	s1, s1, s7
	fsub	s2, s4, s5
	b	LBB17_27
LBB17_26:
	ldp	s3, s4, [x20, #60]
	ldr	s5, [x20, #68]
	fmul	s6, s1, s3
	fmul	s7, s0, s4
	fmul	s16, s0, s5
	fmul	s3, s2, s3
	fmul	s2, s2, s4
	fmul	s17, s1, s5
	fsub	s0, s6, s7
	fsub	s1, s16, s3
	fsub	s2, s2, s17
LBB17_27:
	stp	s2, s1, [x19, #52]
	str	s0, [x19, #60]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpLdrGotLdr	Lloh131, Lloh132, Lloh133
                                        ; -- End function
	.section	__TEXT,__const
	.globl	_ground_error                   ; @ground_error
	.p2align	2, 0x0
_ground_error:
	.long	0x3d4ccccd                      ; float 0.0500000007

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"particle systems"

	.comm	_particle_systems,4,2           ; @particle_systems
l_.str.1:                               ; @.str.1
	.asciz	"particle system particles"

	.comm	_system_particles,4,2           ; @system_particles
.zerofill __DATA,__bss,_particle_system_new_attached.bad_change_color_reported,1,0 ; @particle_system_new_attached.bad_change_color_reported
l_.str.2:                               ; @.str.2
	.asciz	"particle system %s is attached with change color %d (of %d)"

l_.str.3:                               ; @.str.3
	.asciz	"particle_systems && particle_systems->valid"

l_.str.4:                               ; @.str.4
	.asciz	"c:\\halo\\SOURCE\\effects\\particle_systems.c"

l_.str.5:                               ; @.str.5
	.asciz	"particle system %s has %d types (only %d are used)"

l_.str.6:                               ; @.str.6
	.asciz	"system_definition->system_update_physics>=0 && system_definition->system_update_physics<NUMBER_OF_PARTICLE_SYSTEM_UPDATE_PHYSICS"

l_.str.7:                               ; @.str.7
	.asciz	"particle system %s has system physics %d (default used)"

l_.str.8:                               ; @.str.8
	.asciz	"type_state_definition->particle_update_physics>=0 && type_state_definition->particle_update_physics<NUMBER_OF_PARTICLE_SYSTEM_TYPE_UPDATE_PHYSICS"

l_.str.9:                               ; @.str.9
	.asciz	"particle system %s has particle physics %d (default used)"

l_.str.10:                              ; @.str.10
	.asciz	"particle"

l_.str.11:                              ; @.str.11
	.asciz	"creation_function_index>=0 && creation_function_index<NUMBER_OF_PARTICLE_SYSTEM_TYPE_CREATION_PHYSICS"

l_.str.12:                              ; @.str.12
	.asciz	"particle system %s has particle creation physics %d (default used)"

	.section	__DATA,__const
	.p2align	2, 0x0                          ; @particle_creation_functions
_particle_creation_functions:
	.long	_particle_system_new_particle_default
	.long	_particle_system_new_particle_explosion
	.long	_particle_system_new_particle_jet

	.cg_profile _particle_systems_initialize, _game_state_data_new, 22
	.cg_profile _particle_systems_initialize_for_new_map, _data_make_valid, 22
	.cg_profile _particle_system_orphan, _datum_get, 5
	.cg_profile _particle_system_delete, _datum_get, 73
	.cg_profile _particle_system_delete, _tag_get, 7
	.cg_profile _particle_system_delete, _datum_delete, 73
	.cg_profile _particle_systems_reconnect_to_structure_bsp, _data_next_index, 15
	.cg_profile _particle_systems_reconnect_to_structure_bsp, _datum_get, 16
	.cg_profile _particle_systems_reconnect_to_structure_bsp, _tag_get, 7
	.cg_profile _particle_systems_reconnect_to_structure_bsp, _object_get_location, 7
	.cg_profile _particle_systems_reconnect_to_structure_bsp, _scenario_location_from_point, 9
	.cg_profile _particle_systems_reconnect_to_structure_bsp, _datum_delete, 9
	.cg_profile _particle_system_new_unattached, _datum_new, 2
	.cg_profile _particle_system_new_unattached, _datum_get, 2
	.cg_profile _particle_system_new_unattached, _light_particle, 2
	.cg_profile _particle_system_new_unattached, _particle_system_initialize, 2
	.cg_profile _particle_systems_update, _data_next_index, 232544
	.cg_profile _particle_systems_update, _particle_system_update, 54394
.subsections_via_symbols
