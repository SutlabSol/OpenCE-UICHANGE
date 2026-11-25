	.watchos_version_min 2, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_D3DDevice_SetRenderState       ; -- Begin function D3DDevice_SetRenderState
	.weak_definition	_D3DDevice_SetRenderState
	.p2align	4
_D3DDevice_SetRenderState:              ; @D3DDevice_SetRenderState
; %bb.0:
	cmp	w0, #81
	b.ls	LBB0_2
; %bb.1:
	cmp	w0, #115
	b.hi	LBB0_3
LBB0_2:
Lloh0:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh1:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
	str	w1, [x8, w0, sxtw #2]
	ret
LBB0_3:
	sub	w8, w0, #116
	cmp	w8, #27
	b.hi	LBB0_7
; %bb.4:
Lloh2:
	adrp	x9, LJTI0_0@PAGE
Lloh3:
	add	x9, x9, LJTI0_0@PAGEOFF
Ltmp0:
	adr	x10, Ltmp0
	ldrsw	x11, [x9, x8, lsl #2]
	add	x10, x10, x11
	br	x10
LBB0_5:
Lloh4:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh5:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh6:
	str	w1, [x8, #464]
	ret
LBB0_6:
Lloh7:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh8:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh9:
	str	w1, [x8, #572]
LBB0_7:
	ret
LBB0_8:
Lloh10:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh11:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh12:
	str	w1, [x8, #528]
	ret
LBB0_9:
Lloh13:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh14:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh15:
	str	w1, [x8, #520]
	ret
LBB0_10:
Lloh16:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh17:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh18:
	str	w1, [x8, #508]
	ret
LBB0_11:
Lloh19:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh20:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh21:
	str	w1, [x8, #480]
	ret
LBB0_12:
Lloh22:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh23:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh24:
	str	w1, [x8, #512]
	ret
LBB0_13:
Lloh25:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh26:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh27:
	str	w1, [x8, #500]
	ret
LBB0_14:
Lloh28:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh29:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh30:
	str	w1, [x8, #564]
	ret
LBB0_15:
Lloh31:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh32:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh33:
	str	w1, [x8, #560]
	ret
LBB0_16:
Lloh34:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh35:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh36:
	str	w1, [x8, #472]
	ret
LBB0_17:
Lloh37:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh38:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh39:
	str	w1, [x8, #524]
	ret
LBB0_18:
Lloh40:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh41:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh42:
	str	w1, [x8, #476]
	ret
LBB0_19:
Lloh43:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh44:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh45:
	str	w1, [x8, #492]
	ret
LBB0_20:
Lloh46:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh47:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh48:
	str	w1, [x8, #468]
	ret
LBB0_21:
Lloh49:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh50:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh51:
	str	w1, [x8, #532]
	ret
LBB0_22:
Lloh52:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh53:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh54:
	str	w1, [x8, #544]
	ret
LBB0_23:
Lloh55:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh56:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh57:
	str	w1, [x8, #484]
	ret
LBB0_24:
Lloh58:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh59:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh60:
	str	w1, [x8, #548]
	ret
LBB0_25:
	ucvtf	s0, w1
Lloh61:
	adrp	x8, _D3D__RenderState@GOTPAGE
	fmov	s1, #-0.25000000
	cmp	w1, #0
	cset	w9, ne
Lloh62:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
	fmul	s1, s0, s1
	fneg	s0, s0
	str	w9, [x8, #316]
	str	w9, [x8, #320]
	str	w9, [x8, #324]
	str	w1, [x8, #516]
	str	s1, [x8, #308]
	str	s0, [x8, #312]
	ret
LBB0_26:
Lloh63:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh64:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh65:
	str	w1, [x8, #488]
	ret
LBB0_27:
Lloh66:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh67:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh68:
	str	w1, [x8, #536]
	ret
LBB0_28:
Lloh69:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh70:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh71:
	str	w1, [x8, #504]
	ret
LBB0_29:
Lloh72:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh73:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh74:
	str	w1, [x8, #496]
	ret
LBB0_30:
Lloh75:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh76:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh77:
	str	w1, [x8, #552]
	ret
LBB0_31:
Lloh78:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh79:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh80:
	str	w1, [x8, #540]
	ret
LBB0_32:
Lloh81:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh82:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh83:
	str	w1, [x8, #556]
	ret
LBB0_33:
Lloh84:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh85:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh86:
	str	w1, [x8, #568]
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGotStr	Lloh4, Lloh5, Lloh6
	.loh AdrpLdrGotStr	Lloh7, Lloh8, Lloh9
	.loh AdrpLdrGotStr	Lloh10, Lloh11, Lloh12
	.loh AdrpLdrGotStr	Lloh13, Lloh14, Lloh15
	.loh AdrpLdrGotStr	Lloh16, Lloh17, Lloh18
	.loh AdrpLdrGotStr	Lloh19, Lloh20, Lloh21
	.loh AdrpLdrGotStr	Lloh22, Lloh23, Lloh24
	.loh AdrpLdrGotStr	Lloh25, Lloh26, Lloh27
	.loh AdrpLdrGotStr	Lloh28, Lloh29, Lloh30
	.loh AdrpLdrGotStr	Lloh31, Lloh32, Lloh33
	.loh AdrpLdrGotStr	Lloh34, Lloh35, Lloh36
	.loh AdrpLdrGotStr	Lloh37, Lloh38, Lloh39
	.loh AdrpLdrGotStr	Lloh40, Lloh41, Lloh42
	.loh AdrpLdrGotStr	Lloh43, Lloh44, Lloh45
	.loh AdrpLdrGotStr	Lloh46, Lloh47, Lloh48
	.loh AdrpLdrGotStr	Lloh49, Lloh50, Lloh51
	.loh AdrpLdrGotStr	Lloh52, Lloh53, Lloh54
	.loh AdrpLdrGotStr	Lloh55, Lloh56, Lloh57
	.loh AdrpLdrGotStr	Lloh58, Lloh59, Lloh60
	.loh AdrpLdrGot	Lloh61, Lloh62
	.loh AdrpLdrGotStr	Lloh63, Lloh64, Lloh65
	.loh AdrpLdrGotStr	Lloh66, Lloh67, Lloh68
	.loh AdrpLdrGotStr	Lloh69, Lloh70, Lloh71
	.loh AdrpLdrGotStr	Lloh72, Lloh73, Lloh74
	.loh AdrpLdrGotStr	Lloh75, Lloh76, Lloh77
	.loh AdrpLdrGotStr	Lloh78, Lloh79, Lloh80
	.loh AdrpLdrGotStr	Lloh81, Lloh82, Lloh83
	.loh AdrpLdrGotStr	Lloh84, Lloh85, Lloh86
	.section	__TEXT,__const
	.p2align	2, 0x0
LJTI0_0:
	.long	LBB0_5-Ltmp0
	.long	LBB0_20-Ltmp0
	.long	LBB0_16-Ltmp0
	.long	LBB0_18-Ltmp0
	.long	LBB0_11-Ltmp0
	.long	LBB0_23-Ltmp0
	.long	LBB0_26-Ltmp0
	.long	LBB0_19-Ltmp0
	.long	LBB0_29-Ltmp0
	.long	LBB0_13-Ltmp0
	.long	LBB0_28-Ltmp0
	.long	LBB0_10-Ltmp0
	.long	LBB0_12-Ltmp0
	.long	LBB0_25-Ltmp0
	.long	LBB0_9-Ltmp0
	.long	LBB0_17-Ltmp0
	.long	LBB0_8-Ltmp0
	.long	LBB0_21-Ltmp0
	.long	LBB0_27-Ltmp0
	.long	LBB0_31-Ltmp0
	.long	LBB0_22-Ltmp0
	.long	LBB0_24-Ltmp0
	.long	LBB0_30-Ltmp0
	.long	LBB0_32-Ltmp0
	.long	LBB0_15-Ltmp0
	.long	LBB0_14-Ltmp0
	.long	LBB0_33-Ltmp0
	.long	LBB0_6-Ltmp0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_D3DDevice_SetRenderState_Simple ; -- Begin function D3DDevice_SetRenderState_Simple
	.p2align	4
_D3DDevice_SetRenderState_Simple:       ; @D3DDevice_SetRenderState_Simple
; %bb.0:
	ret
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_Deferred ; -- Begin function D3DDevice_SetRenderState_Deferred
	.p2align	4
_D3DDevice_SetRenderState_Deferred:     ; @D3DDevice_SetRenderState_Deferred
; %bb.0:
	cmp	w0, #143
	b.hi	LBB2_2
; %bb.1:
Lloh87:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh88:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
	str	w1, [x8, w0, sxtw #2]
LBB2_2:
	ret
	.loh AdrpLdrGot	Lloh87, Lloh88
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_PSTextureModes ; -- Begin function D3DDevice_SetRenderState_PSTextureModes
	.p2align	4
_D3DDevice_SetRenderState_PSTextureModes: ; @D3DDevice_SetRenderState_PSTextureModes
; %bb.0:
Lloh89:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh90:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh91:
	str	w0, [x8, #464]
	ret
	.loh AdrpLdrGotStr	Lloh89, Lloh90, Lloh91
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_VertexBlend ; -- Begin function D3DDevice_SetRenderState_VertexBlend
	.p2align	4
_D3DDevice_SetRenderState_VertexBlend:  ; @D3DDevice_SetRenderState_VertexBlend
; %bb.0:
Lloh92:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh93:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh94:
	str	w0, [x8, #468]
	ret
	.loh AdrpLdrGotStr	Lloh92, Lloh93, Lloh94
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_FogColor ; -- Begin function D3DDevice_SetRenderState_FogColor
	.p2align	4
_D3DDevice_SetRenderState_FogColor:     ; @D3DDevice_SetRenderState_FogColor
; %bb.0:
Lloh95:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh96:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh97:
	str	w0, [x8, #472]
	ret
	.loh AdrpLdrGotStr	Lloh95, Lloh96, Lloh97
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_FillMode ; -- Begin function D3DDevice_SetRenderState_FillMode
	.p2align	4
_D3DDevice_SetRenderState_FillMode:     ; @D3DDevice_SetRenderState_FillMode
; %bb.0:
Lloh98:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh99:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh100:
	str	w0, [x8, #476]
	ret
	.loh AdrpLdrGotStr	Lloh98, Lloh99, Lloh100
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_BackFillMode ; -- Begin function D3DDevice_SetRenderState_BackFillMode
	.p2align	4
_D3DDevice_SetRenderState_BackFillMode: ; @D3DDevice_SetRenderState_BackFillMode
; %bb.0:
Lloh101:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh102:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh103:
	str	w0, [x8, #480]
	ret
	.loh AdrpLdrGotStr	Lloh101, Lloh102, Lloh103
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_TwoSidedLighting ; -- Begin function D3DDevice_SetRenderState_TwoSidedLighting
	.p2align	4
_D3DDevice_SetRenderState_TwoSidedLighting: ; @D3DDevice_SetRenderState_TwoSidedLighting
; %bb.0:
Lloh104:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh105:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh106:
	str	w0, [x8, #484]
	ret
	.loh AdrpLdrGotStr	Lloh104, Lloh105, Lloh106
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_NormalizeNormals ; -- Begin function D3DDevice_SetRenderState_NormalizeNormals
	.p2align	4
_D3DDevice_SetRenderState_NormalizeNormals: ; @D3DDevice_SetRenderState_NormalizeNormals
; %bb.0:
Lloh107:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh108:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh109:
	str	w0, [x8, #488]
	ret
	.loh AdrpLdrGotStr	Lloh107, Lloh108, Lloh109
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_ZEnable ; -- Begin function D3DDevice_SetRenderState_ZEnable
	.p2align	4
_D3DDevice_SetRenderState_ZEnable:      ; @D3DDevice_SetRenderState_ZEnable
; %bb.0:
Lloh110:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh111:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh112:
	str	w0, [x8, #492]
	ret
	.loh AdrpLdrGotStr	Lloh110, Lloh111, Lloh112
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_StencilEnable ; -- Begin function D3DDevice_SetRenderState_StencilEnable
	.p2align	4
_D3DDevice_SetRenderState_StencilEnable: ; @D3DDevice_SetRenderState_StencilEnable
; %bb.0:
Lloh113:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh114:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh115:
	str	w0, [x8, #496]
	ret
	.loh AdrpLdrGotStr	Lloh113, Lloh114, Lloh115
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_StencilFail ; -- Begin function D3DDevice_SetRenderState_StencilFail
	.p2align	4
_D3DDevice_SetRenderState_StencilFail:  ; @D3DDevice_SetRenderState_StencilFail
; %bb.0:
Lloh116:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh117:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh118:
	str	w0, [x8, #500]
	ret
	.loh AdrpLdrGotStr	Lloh116, Lloh117, Lloh118
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_FrontFace ; -- Begin function D3DDevice_SetRenderState_FrontFace
	.p2align	4
_D3DDevice_SetRenderState_FrontFace:    ; @D3DDevice_SetRenderState_FrontFace
; %bb.0:
Lloh119:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh120:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh121:
	str	w0, [x8, #504]
	ret
	.loh AdrpLdrGotStr	Lloh119, Lloh120, Lloh121
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_CullMode ; -- Begin function D3DDevice_SetRenderState_CullMode
	.p2align	4
_D3DDevice_SetRenderState_CullMode:     ; @D3DDevice_SetRenderState_CullMode
; %bb.0:
Lloh122:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh123:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh124:
	str	w0, [x8, #508]
	ret
	.loh AdrpLdrGotStr	Lloh122, Lloh123, Lloh124
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_TextureFactor ; -- Begin function D3DDevice_SetRenderState_TextureFactor
	.p2align	4
_D3DDevice_SetRenderState_TextureFactor: ; @D3DDevice_SetRenderState_TextureFactor
; %bb.0:
Lloh125:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh126:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh127:
	str	w0, [x8, #512]
	ret
	.loh AdrpLdrGotStr	Lloh125, Lloh126, Lloh127
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_ZBias ; -- Begin function D3DDevice_SetRenderState_ZBias
	.p2align	4
_D3DDevice_SetRenderState_ZBias:        ; @D3DDevice_SetRenderState_ZBias
; %bb.0:
	fmov	s0, #-0.25000000
Lloh128:
	adrp	x8, _D3D__RenderState@GOTPAGE
	ucvtf	s1, w0
	cmp	w0, #0
	cset	w9, ne
Lloh129:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
	fmul	s0, s1, s0
	fneg	s1, s1
	str	w9, [x8, #316]
	str	w9, [x8, #320]
	str	w9, [x8, #324]
	str	w0, [x8, #516]
	str	s0, [x8, #308]
	str	s1, [x8, #312]
	ret
	.loh AdrpLdrGot	Lloh128, Lloh129
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_LogicOp ; -- Begin function D3DDevice_SetRenderState_LogicOp
	.p2align	4
_D3DDevice_SetRenderState_LogicOp:      ; @D3DDevice_SetRenderState_LogicOp
; %bb.0:
Lloh130:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh131:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh132:
	str	w0, [x8, #520]
	ret
	.loh AdrpLdrGotStr	Lloh130, Lloh131, Lloh132
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_EdgeAntiAlias ; -- Begin function D3DDevice_SetRenderState_EdgeAntiAlias
	.p2align	4
_D3DDevice_SetRenderState_EdgeAntiAlias: ; @D3DDevice_SetRenderState_EdgeAntiAlias
; %bb.0:
Lloh133:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh134:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh135:
	str	w0, [x8, #524]
	ret
	.loh AdrpLdrGotStr	Lloh133, Lloh134, Lloh135
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_MultiSampleAntiAlias ; -- Begin function D3DDevice_SetRenderState_MultiSampleAntiAlias
	.p2align	4
_D3DDevice_SetRenderState_MultiSampleAntiAlias: ; @D3DDevice_SetRenderState_MultiSampleAntiAlias
; %bb.0:
Lloh136:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh137:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh138:
	str	w0, [x8, #528]
	ret
	.loh AdrpLdrGotStr	Lloh136, Lloh137, Lloh138
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_MultiSampleMask ; -- Begin function D3DDevice_SetRenderState_MultiSampleMask
	.p2align	4
_D3DDevice_SetRenderState_MultiSampleMask: ; @D3DDevice_SetRenderState_MultiSampleMask
; %bb.0:
Lloh139:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh140:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh141:
	str	w0, [x8, #532]
	ret
	.loh AdrpLdrGotStr	Lloh139, Lloh140, Lloh141
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_MultiSampleType ; -- Begin function D3DDevice_SetRenderState_MultiSampleType
	.p2align	4
_D3DDevice_SetRenderState_MultiSampleType: ; @D3DDevice_SetRenderState_MultiSampleType
; %bb.0:
Lloh142:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh143:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh144:
	str	w0, [x8, #536]
	ret
	.loh AdrpLdrGotStr	Lloh142, Lloh143, Lloh144
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_ShadowFunc ; -- Begin function D3DDevice_SetRenderState_ShadowFunc
	.p2align	4
_D3DDevice_SetRenderState_ShadowFunc:   ; @D3DDevice_SetRenderState_ShadowFunc
; %bb.0:
Lloh145:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh146:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh147:
	str	w0, [x8, #540]
	ret
	.loh AdrpLdrGotStr	Lloh145, Lloh146, Lloh147
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_LineWidth ; -- Begin function D3DDevice_SetRenderState_LineWidth
	.p2align	4
_D3DDevice_SetRenderState_LineWidth:    ; @D3DDevice_SetRenderState_LineWidth
; %bb.0:
Lloh148:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh149:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh150:
	str	w0, [x8, #544]
	ret
	.loh AdrpLdrGotStr	Lloh148, Lloh149, Lloh150
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_Dxt1NoiseEnable ; -- Begin function D3DDevice_SetRenderState_Dxt1NoiseEnable
	.p2align	4
_D3DDevice_SetRenderState_Dxt1NoiseEnable: ; @D3DDevice_SetRenderState_Dxt1NoiseEnable
; %bb.0:
Lloh151:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh152:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh153:
	str	w0, [x8, #548]
	ret
	.loh AdrpLdrGotStr	Lloh151, Lloh152, Lloh153
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_YuvEnable ; -- Begin function D3DDevice_SetRenderState_YuvEnable
	.p2align	4
_D3DDevice_SetRenderState_YuvEnable:    ; @D3DDevice_SetRenderState_YuvEnable
; %bb.0:
Lloh154:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh155:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh156:
	str	w0, [x8, #552]
	ret
	.loh AdrpLdrGotStr	Lloh154, Lloh155, Lloh156
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_OcclusionCullEnable ; -- Begin function D3DDevice_SetRenderState_OcclusionCullEnable
	.p2align	4
_D3DDevice_SetRenderState_OcclusionCullEnable: ; @D3DDevice_SetRenderState_OcclusionCullEnable
; %bb.0:
Lloh157:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh158:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh159:
	str	w0, [x8, #556]
	ret
	.loh AdrpLdrGotStr	Lloh157, Lloh158, Lloh159
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_StencilCullEnable ; -- Begin function D3DDevice_SetRenderState_StencilCullEnable
	.p2align	4
_D3DDevice_SetRenderState_StencilCullEnable: ; @D3DDevice_SetRenderState_StencilCullEnable
; %bb.0:
Lloh160:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh161:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh162:
	str	w0, [x8, #560]
	ret
	.loh AdrpLdrGotStr	Lloh160, Lloh161, Lloh162
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_RopZCmpAlwaysRead ; -- Begin function D3DDevice_SetRenderState_RopZCmpAlwaysRead
	.p2align	4
_D3DDevice_SetRenderState_RopZCmpAlwaysRead: ; @D3DDevice_SetRenderState_RopZCmpAlwaysRead
; %bb.0:
Lloh163:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh164:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh165:
	str	w0, [x8, #564]
	ret
	.loh AdrpLdrGotStr	Lloh163, Lloh164, Lloh165
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_RopZRead ; -- Begin function D3DDevice_SetRenderState_RopZRead
	.p2align	4
_D3DDevice_SetRenderState_RopZRead:     ; @D3DDevice_SetRenderState_RopZRead
; %bb.0:
Lloh166:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh167:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh168:
	str	w0, [x8, #568]
	ret
	.loh AdrpLdrGotStr	Lloh166, Lloh167, Lloh168
                                        ; -- End function
	.globl	_D3DDevice_SetRenderState_DoNotCullUncompressed ; -- Begin function D3DDevice_SetRenderState_DoNotCullUncompressed
	.p2align	4
_D3DDevice_SetRenderState_DoNotCullUncompressed: ; @D3DDevice_SetRenderState_DoNotCullUncompressed
; %bb.0:
Lloh169:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh170:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
Lloh171:
	str	w0, [x8, #572]
	ret
	.loh AdrpLdrGotStr	Lloh169, Lloh170, Lloh171
                                        ; -- End function
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
	.globl	_halo_screen_width              ; -- Begin function halo_screen_width
	.p2align	4
_halo_screen_width:                     ; @halo_screen_width
; %bb.0:
	sub	sp, sp, #80
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	adrp	x19, _screen_width@PAGE
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	ldr	w0, [x19, _screen_width@PAGEOFF]
	cbnz	w0, LBB32_6
; %bb.1:
	mov	w24, #640                       ; =0x280
	adrp	x20, _screen_scale.1@PAGE
	mov	w8, #1065353216                 ; =0x3f800000
	adrp	x23, _screen_scale.0@PAGE
	add	x0, sp, #28
	add	x1, sp, #24
	str	w24, [x19, _screen_width@PAGEOFF]
	str	w8, [x20, _screen_scale.1@PAGEOFF]
	str	w8, [x23, _screen_scale.0@PAGEOFF]
	bl	_platform_screen_mode
	ldp	w9, w10, [sp, #24]
	cmp	w0, #0
	ccmp	w9, #0, #4, ne
	ccmp	w10, #0, #4, gt
	b.le	LBB32_4
; %bb.2:
	mov	w8, #480                        ; =0x1e0
	ucvtf	s0, w10
	mul	w8, w10, w8
	add	w8, w8, w9, lsr #1
	sdiv	w11, w8, w9
	mov	w8, #1920                       ; =0x780
	cmp	w11, #1920
	csel	w8, w11, w8, lt
	cmp	w11, #640
	and	w8, w8, #0x7fe
	csel	w8, w24, w8, lt
	ucvtf	s1, w8
	str	w8, [x19, _screen_width@PAGEOFF]
	fdiv	s0, s0, s1
	ucvtf	s1, w9
	mov	w9, #1139802112                 ; =0x43f00000
	fmov	s2, w9
	and	w9, w11, #0xfffffffe
	cmp	w8, w9
	ccmp	w8, w11, #4, ne
	fdiv	s1, s1, s2
	str	s0, [x23, _screen_scale.0@PAGEOFF]
	str	s1, [x20, _screen_scale.1@PAGEOFF]
	b.eq	LBB32_5
; %bb.3:
	fcmp	s0, s1
	fcsel	s1, s0, s1, mi
	fmov	s0, s1
	str	s1, [x20, _screen_scale.1@PAGEOFF]
	str	s1, [x23, _screen_scale.0@PAGEOFF]
	b	LBB32_5
LBB32_4:
	ldr	w8, [x19, _screen_width@PAGEOFF]
	ldr	s0, [x23, _screen_scale.0@PAGEOFF]
	ldr	s1, [x20, _screen_scale.1@PAGEOFF]
LBB32_5:
	mov	w9, #1139802112                 ; =0x43f00000
	scvtf	s2, w8
Lloh172:
	adrp	x0, l_.str@PAGE
Lloh173:
	add	x0, x0, l_.str@PAGEOFF
	fmov	s3, w9
	mov	w9, #480                        ; =0x1e0
	fmul	s0, s0, s2
	stp	w8, w9, [sp]
	fmul	s1, s1, s3
	fcvt	d0, s0
	fcvt	d1, s1
	stp	d0, d1, [sp, #8]
	bl	_platform_log
	ldr	w0, [x19, _screen_width@PAGEOFF]
LBB32_6:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh172, Lloh173
                                        ; -- End function
	.globl	_halo_screen_pixel_scale        ; -- Begin function halo_screen_pixel_scale
	.p2align	4
_halo_screen_pixel_scale:               ; @halo_screen_pixel_scale
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	bl	_halo_screen_width
Lloh174:
	adrp	x8, _screen_scale.1@PAGE
Lloh175:
	ldr	s0, [x8, _screen_scale.1@PAGEOFF]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh174, Lloh175
                                        ; -- End function
	.globl	_halo_screen_scale              ; -- Begin function halo_screen_scale
	.p2align	4
_halo_screen_scale:                     ; @halo_screen_scale
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	bl	_halo_screen_width
Lloh176:
	adrp	x8, _screen_scale.0@PAGE
Lloh177:
	adrp	x9, _screen_scale.1@PAGE
Lloh178:
	ldr	s0, [x8, _screen_scale.0@PAGEOFF]
Lloh179:
	ldr	s1, [x9, _screen_scale.1@PAGEOFF]
	fcmp	s0, s1
	fcsel	s0, s0, s1, gt
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh177, Lloh179
	.loh AdrpLdr	Lloh176, Lloh178
                                        ; -- End function
	.globl	_halo_model_detail_stock        ; -- Begin function halo_model_detail_stock
	.p2align	4
_halo_model_detail_stock:               ; @halo_model_detail_stock
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	adrp	x20, _model_detail_setting.read_at@PAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	ldr	w19, [x20, _model_detail_setting.read_at@PAGEOFF]
	bl	_config_changes
	cmp	w19, w0
	b.ne	LBB35_2
; %bb.1:
Lloh180:
	adrp	x8, _model_detail_setting.value@PAGE
Lloh181:
	ldr	w8, [x8, _model_detail_setting.value@PAGEOFF]
	b	LBB35_6
LBB35_2:
Lloh182:
	adrp	x0, l_.str.23@PAGE
Lloh183:
	add	x0, x0, l_.str.23@PAGEOFF
	bl	_config_string
	mov	x19, x0
	bl	_config_changes
	str	w0, [x20, _model_detail_setting.read_at@PAGEOFF]
Lloh184:
	adrp	x1, l_.str.24@PAGE
Lloh185:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cbz	w0, LBB35_4
; %bb.3:
Lloh186:
	adrp	x1, l_.str.25@PAGE
Lloh187:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	mov	w8, #2                          ; =0x2
	cmp	w0, #0
	csel	w8, w8, wzr, eq
	b	LBB35_5
LBB35_4:
	mov	w8, #1                          ; =0x1
LBB35_5:
	adrp	x9, _model_detail_setting.value@PAGE
	str	w8, [x9, _model_detail_setting.value@PAGEOFF]
LBB35_6:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	cmp	w8, #0
	cset	w0, eq
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh180, Lloh181
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpAdd	Lloh186, Lloh187
                                        ; -- End function
	.globl	_halo_model_detail_scale        ; -- Begin function halo_model_detail_scale
	.p2align	4
_halo_model_detail_scale:               ; @halo_model_detail_scale
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	adrp	x23, _model_detail_setting.read_at@PAGE
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	mov	w19, w0
	ldr	w20, [x23, _model_detail_setting.read_at@PAGEOFF]
	bl	_config_changes
	cmp	w20, w0
	b.ne	LBB36_4
; %bb.1:
Lloh188:
	adrp	x8, _model_detail_setting.value@PAGE
Lloh189:
	ldr	w8, [x8, _model_detail_setting.value@PAGEOFF]
	cbz	w8, LBB36_10
LBB36_2:
	ldr	w20, [x23, _model_detail_setting.read_at@PAGEOFF]
	bl	_config_changes
	cmp	w20, w0
	b.ne	LBB36_6
; %bb.3:
Lloh190:
	adrp	x8, _model_detail_setting.value@PAGE
Lloh191:
	ldr	w8, [x8, _model_detail_setting.value@PAGEOFF]
	cbnz	w19, LBB36_13
	b	LBB36_15
LBB36_4:
Lloh192:
	adrp	x0, l_.str.23@PAGE
Lloh193:
	add	x0, x0, l_.str.23@PAGEOFF
	bl	_config_string
	mov	x20, x0
	bl	_config_changes
	str	w0, [x23, _model_detail_setting.read_at@PAGEOFF]
Lloh194:
	adrp	x1, l_.str.24@PAGE
Lloh195:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	x0, x20
	bl	_strcmp
	cbz	w0, LBB36_8
; %bb.5:
Lloh196:
	adrp	x1, l_.str.25@PAGE
Lloh197:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	x0, x20
	bl	_strcmp
	mov	w8, #2                          ; =0x2
	cmp	w0, #0
	csel	w8, w8, wzr, eq
	b	LBB36_9
LBB36_6:
Lloh198:
	adrp	x0, l_.str.23@PAGE
Lloh199:
	add	x0, x0, l_.str.23@PAGEOFF
	bl	_config_string
	mov	x20, x0
	bl	_config_changes
	str	w0, [x23, _model_detail_setting.read_at@PAGEOFF]
Lloh200:
	adrp	x1, l_.str.24@PAGE
Lloh201:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	x0, x20
	bl	_strcmp
	cbz	w0, LBB36_11
; %bb.7:
Lloh202:
	adrp	x1, l_.str.25@PAGE
Lloh203:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	x0, x20
	bl	_strcmp
	mov	w8, #2                          ; =0x2
	cmp	w0, #0
	csel	w8, w8, wzr, eq
	b	LBB36_12
LBB36_8:
	mov	w8, #1                          ; =0x1
LBB36_9:
	adrp	x9, _model_detail_setting.value@PAGE
	str	w8, [x9, _model_detail_setting.value@PAGEOFF]
	cbnz	w8, LBB36_2
LBB36_10:
	fmov	s0, #1.00000000
	b	LBB36_16
LBB36_11:
	mov	w8, #1                          ; =0x1
LBB36_12:
	adrp	x9, _model_detail_setting.value@PAGE
	str	w8, [x9, _model_detail_setting.value@PAGEOFF]
	cbz	w19, LBB36_15
LBB36_13:
	cmp	w8, #2
	b.ne	LBB36_15
; %bb.14:
	mov	w8, #9216                       ; =0x2400
	movk	w8, #18804, lsl #16
	fmov	s0, w8
	b	LBB36_16
LBB36_15:
	bl	_halo_screen_width
Lloh204:
	adrp	x8, _screen_scale.1@PAGE
	fmov	s0, #1.00000000
Lloh205:
	ldr	s1, [x8, _screen_scale.1@PAGEOFF]
	fcmp	s1, s0
	fcsel	s0, s1, s0, gt
LBB36_16:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh188, Lloh189
	.loh AdrpLdr	Lloh190, Lloh191
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpAdd	Lloh192, Lloh193
	.loh AdrpAdd	Lloh196, Lloh197
	.loh AdrpAdd	Lloh200, Lloh201
	.loh AdrpAdd	Lloh198, Lloh199
	.loh AdrpAdd	Lloh202, Lloh203
	.loh AdrpLdr	Lloh204, Lloh205
                                        ; -- End function
	.globl	_d3d8_gl_set_height_fade        ; -- Begin function d3d8_gl_set_height_fade
	.p2align	4
_d3d8_gl_set_height_fade:               ; @d3d8_gl_set_height_fade
; %bb.0:
	ret
                                        ; -- End function
	.globl	_halo_screen_tone_map           ; -- Begin function halo_screen_tone_map
	.p2align	4
_halo_screen_tone_map:                  ; @halo_screen_tone_map
; %bb.0:
	ret
                                        ; -- End function
	.globl	_halo_screen_ui_offset          ; -- Begin function halo_screen_ui_offset
	.p2align	4
_halo_screen_ui_offset:                 ; @halo_screen_ui_offset
; %bb.0:
	cbz	w0, LBB39_2
; %bb.1:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	bl	_halo_screen_width
	sub	w8, w0, #640
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	LBB39_3
LBB39_2:
	mov	w8, wzr
LBB39_3:
	adrp	x9, _ui_offset@PAGE
	str	w8, [x9, _ui_offset@PAGEOFF]
	ret
                                        ; -- End function
	.globl	_halo_screen_ui_offset_view     ; -- Begin function halo_screen_ui_offset_view
	.p2align	4
_halo_screen_ui_offset_view:            ; @halo_screen_ui_offset_view
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	mov	w19, w0
	bl	_halo_screen_width
	cmp	w19, w0
	ccmp	w19, #0, #4, lt
	b.le	LBB40_3
; %bb.1:
	cmp	w19, #321
	b.lo	LBB40_4
; %bb.2:
	sub	w8, w19, #320
	lsr	w8, w8, #1
	b	LBB40_5
LBB40_3:
	sub	w8, w0, #640
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	b	LBB40_5
LBB40_4:
	mov	w8, wzr
LBB40_5:
	adrp	x9, _ui_offset@PAGE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	str	w8, [x9, _ui_offset@PAGEOFF]
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
                                        ; -- End function
	.globl	_halo_screen_ui_offset_current  ; -- Begin function halo_screen_ui_offset_current
	.p2align	4
_halo_screen_ui_offset_current:         ; @halo_screen_ui_offset_current
; %bb.0:
Lloh206:
	adrp	x8, _ui_offset@PAGE
Lloh207:
	ldr	w0, [x8, _ui_offset@PAGEOFF]
	ret
	.loh AdrpLdr	Lloh206, Lloh207
                                        ; -- End function
	.globl	_halo_hdr_calibration_available ; -- Begin function halo_hdr_calibration_available
	.p2align	4
_halo_hdr_calibration_available:        ; @halo_hdr_calibration_available
; %bb.0:
	mov	w0, wzr
	ret
                                        ; -- End function
	.globl	_halo_hdr_calibration_show      ; -- Begin function halo_hdr_calibration_show
	.p2align	4
_halo_hdr_calibration_show:             ; @halo_hdr_calibration_show
; %bb.0:
	ret
                                        ; -- End function
	.globl	_xgpu_static_buffer_add         ; -- Begin function xgpu_static_buffer_add
	.p2align	4
_xgpu_static_buffer_add:                ; @xgpu_static_buffer_add
; %bb.0:
	cbz	w0, LBB44_2
; %bb.1:
	ldr	w9, [x0, #4]
	cmp	w2, #0
	mov	w10, #12                        ; =0xc
	cset	w11, ne
Lloh208:
	adrp	x12, _static_lists@PAGE
Lloh209:
	add	x12, x12, _static_lists@PAGEOFF
	umaddl	x0, w11, w10, x12
	mov	w8, w1
	cmp	w9, #0
	mov	w2, w8
	csinc	w10, w11, wzr, pl
	orr	w11, w9, #0x80000000
	cmp	w10, #0
	csel	w10, w9, w11, ne
	cmp	w9, #0
	csel	w1, wzr, w10, eq
	b	_static_note
LBB44_2:
	ret
	.loh AdrpAdd	Lloh208, Lloh209
                                        ; -- End function
	.p2align	4                               ; -- Begin function static_note
_static_note:                           ; @static_note
; %bb.0:
	cbz	w1, LBB45_65
; %bb.1:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	w19, w2
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	cbz	w2, LBB45_64
; %bb.2:
	ldr	w8, [x0, #4]
	mov	w20, w1
	mov	x23, x0
	cbz	w8, LBB45_59
; %bb.3:
	ldr	w9, [x23]
	mov	w25, wzr
	mov	w10, w8
	.p2align	4, , 8
LBB45_4:                                ; =>This Inner Loop Header: Depth=1
	add	w11, w10, w25
	lsr	w11, w11, #1
	ubfiz	x12, x11, #5, #32
	ldr	w12, [x9, x12]
	cmp	w12, w20
	csel	w10, w11, w10, hi
	csinc	w25, w25, w11, hi
	cmp	w25, w10
	b.lo	LBB45_4
; %bb.5:
	cbz	w25, LBB45_12
; %bb.6:
	add	w24, w9, w25, lsl #5
	sub	w9, w24, #32
	ldr	w9, [x9]
	cmp	w9, w20
	b.ne	LBB45_12
; %bb.7:
	sub	w8, w24, #16
	ldr	w0, [x8]
	bl	_free
	sub	w8, w24, #24
	ldr	w8, [x8]
	cbz	w8, LBB45_11
; %bb.8:
	adrp	x26, _stream_used@PAGE
	adrp	x27, _stream@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
	ldr	w1, [x26, _stream_used@PAGEOFF]
	ldr	w0, [x27, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4085
	cmp	w8, w9
	b.hs	LBB45_10
; %bb.9:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh210:
	adrp	x10, _streams@PAGE
Lloh211:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x27, _stream@PAGEOFF]
LBB45_10:
	mov	x9, #20                         ; =0x14
	add	x8, x0, w1, sxtw
	movk	x9, #12, lsl #32
	add	w10, w1, #12
	sub	w11, w24, #24
	str	x9, [x8]
	str	w10, [x26, _stream_used@PAGEOFF]
	ldr	w9, [x11]
	str	w9, [x8, #8]
LBB45_11:
	ldr	w8, [x23, #4]
	sub	w0, w24, #32
	mov	x1, x24
	sub	w8, w8, w25
	lsl	w2, w8, #5
	bl	_memmove
	ldr	w8, [x23, #4]
	subs	w8, w8, #1
	str	w8, [x23, #4]
	b.eq	LBB45_17
LBB45_12:
	ldr	w9, [x23]
	mov	w25, wzr
	mov	w10, w8
	.p2align	4, , 8
LBB45_13:                               ; =>This Inner Loop Header: Depth=1
	add	w11, w25, w10
	lsr	w11, w11, #1
	ubfiz	x12, x11, #5, #32
	ldr	w12, [x9, x12]
	cmp	w12, w20
	csel	w10, w11, w10, hi
	csinc	w25, w25, w11, hi
	cmp	w25, w10
	b.lo	LBB45_13
; %bb.14:
	cbz	w25, LBB45_18
; %bb.15:
	ldr	w9, [x23]
	add	w9, w9, w25, lsl #5
	sub	w10, w9, #32
	sub	w9, w9, #28
	ldr	w10, [x10]
	ldr	w9, [x9]
	add	w9, w9, w10
	add	w10, w19, w20
	cmp	w9, w10
	b.eq	LBB45_64
; %bb.16:
	mov	w26, wzr
	cmp	w25, w8
	b.lo	LBB45_19
	b	LBB45_29
LBB45_17:
	mov	w25, wzr
LBB45_18:
	mov	w26, #1                         ; =0x1
	cmp	w25, w8
	b.hs	LBB45_29
LBB45_19:
	ldr	w9, [x23]
	sxtw	x10, w25
	add	w12, w19, w20
	add	x11, x9, x10, lsl #5
	ldp	w10, w11, [x11]
	add	w11, w11, w10
	cmp	w11, w12
	b.ne	LBB45_29
; %bb.20:
	mov	w27, wzr
	mov	w11, w8
	.p2align	4, , 8
LBB45_21:                               ; =>This Inner Loop Header: Depth=1
	add	w12, w11, w27
	lsr	w12, w12, #1
	ubfiz	x13, x12, #5, #32
	ldr	w13, [x9, x13]
	cmp	w13, w10
	csel	w11, w12, w11, hi
	csinc	w27, w27, w12, hi
	cmp	w27, w11
	b.lo	LBB45_21
; %bb.22:
	cbz	w27, LBB45_29
; %bb.23:
	add	w24, w9, w27, lsl #5
	sub	w9, w24, #32
	ldr	w9, [x9]
	cmp	w9, w10
	b.ne	LBB45_29
; %bb.24:
	sub	w8, w24, #16
	ldr	w0, [x8]
	bl	_free
	sub	w8, w24, #24
	ldr	w8, [x8]
	cbz	w8, LBB45_28
; %bb.25:
	adrp	x12, _stream_used@PAGE
	adrp	x28, _stream@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
	ldr	w1, [x12, _stream_used@PAGEOFF]
	ldr	w0, [x28, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4085
	cmp	w8, w9
	b.hs	LBB45_27
; %bb.26:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	adrp	x12, _stream_used@PAGE
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh212:
	adrp	x10, _streams@PAGE
Lloh213:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x28, _stream@PAGEOFF]
LBB45_27:
	mov	x9, #20                         ; =0x14
	add	x8, x0, w1, sxtw
	movk	x9, #12, lsl #32
	add	w10, w1, #12
	sub	w11, w24, #24
	str	x9, [x8]
	str	w10, [x12, _stream_used@PAGEOFF]
	ldr	w9, [x11]
	str	w9, [x8, #8]
LBB45_28:
	ldr	w8, [x23, #4]
	sub	w0, w24, #32
	mov	x1, x24
	sub	w8, w8, w27
	lsl	w2, w8, #5
	bl	_memmove
	ldr	w8, [x23, #4]
	sub	w8, w8, #1
	str	w8, [x23, #4]
LBB45_29:
	tbz	w26, #0, LBB45_31
LBB45_30:
	mov	w25, wzr
	b	LBB45_46
LBB45_31:
	mov	x26, #20                        ; =0x14
	adrp	x27, _stream_used@PAGE
	adrp	x28, _stream@PAGE
	movk	x26, #12, lsl #32
	.p2align	4, , 8
LBB45_32:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB45_35 Depth 2
                                        ;     Child Loop BB45_44 Depth 2
	ldr	w9, [x23]
	add	w10, w9, w25, lsl #5
	sub	w11, w10, #32
	sub	w12, w10, #28
	ldr	w10, [x11]
	ldr	w11, [x12]
	add	w11, w11, w10
	cmp	w11, w20
	b.ls	LBB45_46
; %bb.33:                               ;   in Loop: Header=BB45_32 Depth=1
	cbz	w8, LBB45_59
; %bb.34:                               ;   in Loop: Header=BB45_32 Depth=1
	mov	w25, wzr
	mov	w11, w8
	.p2align	4, , 8
LBB45_35:                               ;   Parent Loop BB45_32 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w12, w11, w25
	lsr	w12, w12, #1
	ubfiz	x13, x12, #5, #32
	ldr	w13, [x9, x13]
	cmp	w13, w10
	csel	w11, w12, w11, hi
	csinc	w25, w25, w12, hi
	cmp	w25, w11
	b.lo	LBB45_35
; %bb.36:                               ;   in Loop: Header=BB45_32 Depth=1
	cbz	w25, LBB45_43
; %bb.37:                               ;   in Loop: Header=BB45_32 Depth=1
	add	w24, w9, w25, lsl #5
	sub	w9, w24, #32
	ldr	w9, [x9]
	cmp	w9, w10
	b.ne	LBB45_43
; %bb.38:                               ;   in Loop: Header=BB45_32 Depth=1
	sub	w8, w24, #16
	ldr	w0, [x8]
	bl	_free
	sub	w8, w24, #24
	ldr	w8, [x8]
	cbz	w8, LBB45_42
; %bb.39:                               ;   in Loop: Header=BB45_32 Depth=1
	ldr	w1, [x27, _stream_used@PAGEOFF]
	mov	w8, #11                         ; =0xb
	ldr	w0, [x28, _stream@PAGEOFF]
	movk	w8, #65472, lsl #16
	mov	w9, #-4194305                   ; =0xffbfffff
	add	w8, w1, w8
	cmp	w8, w9
	b.hs	LBB45_41
; %bb.40:                               ;   in Loop: Header=BB45_32 Depth=1
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x10, _stream_index@PAGE
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	ldr	w8, [x10, _stream_index@PAGEOFF]
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh214:
	adrp	x9, _streams@PAGE
Lloh215:
	add	x9, x9, _streams@PAGEOFF
	add	x0, x9, x8, lsl #22
	str	w8, [x10, _stream_index@PAGEOFF]
	str	w0, [x28, _stream@PAGEOFF]
LBB45_41:                               ;   in Loop: Header=BB45_32 Depth=1
	add	x8, x0, w1, sxtw
	add	w9, w1, #12
	sub	w10, w24, #24
	str	x26, [x8]
	str	w9, [x27, _stream_used@PAGEOFF]
	ldr	w9, [x10]
	str	w9, [x8, #8]
LBB45_42:                               ;   in Loop: Header=BB45_32 Depth=1
	ldr	w8, [x23, #4]
	sub	w0, w24, #32
	mov	x1, x24
	sub	w8, w8, w25
	lsl	w2, w8, #5
	bl	_memmove
	ldr	w8, [x23, #4]
	subs	w8, w8, #1
	str	w8, [x23, #4]
	b.eq	LBB45_30
LBB45_43:                               ;   in Loop: Header=BB45_32 Depth=1
	ldr	w9, [x23]
	mov	w25, wzr
	mov	w10, w8
	.p2align	4, , 8
LBB45_44:                               ;   Parent Loop BB45_32 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w11, w25, w10
	lsr	w11, w11, #1
	ubfiz	x12, x11, #5, #32
	ldr	w12, [x9, x12]
	cmp	w12, w20
	csel	w10, w11, w10, hi
	csinc	w25, w25, w11, hi
	cmp	w25, w10
	b.lo	LBB45_44
; %bb.45:                               ;   in Loop: Header=BB45_32 Depth=1
	cbnz	w25, LBB45_32
LBB45_46:
	cmp	w25, w8
	b.hs	LBB45_60
; %bb.47:
	add	w26, w19, w20
	mov	w9, w25
	sbfiz	x27, x9, #5, #32
	b	LBB45_51
LBB45_48:                               ;   in Loop: Header=BB45_51 Depth=1
	mov	x11, #20                        ; =0x14
	add	x8, x0, w1, sxtw
	movk	x11, #12, lsl #32
	add	w9, w1, #12
	sub	w10, w24, #24
	str	x11, [x8]
	adrp	x11, _stream_used@PAGE
	str	w9, [x11, _stream_used@PAGEOFF]
	ldr	w9, [x10]
	str	w9, [x8, #8]
LBB45_49:                               ;   in Loop: Header=BB45_51 Depth=1
	ldr	w8, [x23, #4]
	sub	w0, w24, #32
	mov	x1, x24
	sub	w8, w8, w28
	lsl	w2, w8, #5
	bl	_memmove
	ldr	w8, [x23, #4]
	sub	w8, w8, #1
	str	w8, [x23, #4]
LBB45_50:                               ;   in Loop: Header=BB45_51 Depth=1
	cmp	w25, w8
	b.hs	LBB45_60
LBB45_51:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB45_53 Depth 2
	ldr	w10, [x23]
	ldr	w9, [x10, x27]
	cmp	w26, w9
	b.ls	LBB45_60
; %bb.52:                               ;   in Loop: Header=BB45_51 Depth=1
	mov	w28, wzr
	mov	w11, w8
	.p2align	4, , 8
LBB45_53:                               ;   Parent Loop BB45_51 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w12, w11, w28
	lsr	w12, w12, #1
	ubfiz	x13, x12, #5, #32
	ldr	w13, [x10, x13]
	cmp	w13, w9
	csel	w11, w12, w11, hi
	csinc	w28, w28, w12, hi
	cmp	w28, w11
	b.lo	LBB45_53
; %bb.54:                               ;   in Loop: Header=BB45_51 Depth=1
	cbz	w28, LBB45_50
; %bb.55:                               ;   in Loop: Header=BB45_51 Depth=1
	add	w24, w10, w28, lsl #5
	sub	w10, w24, #32
	ldr	w10, [x10]
	cmp	w10, w9
	b.ne	LBB45_50
; %bb.56:                               ;   in Loop: Header=BB45_51 Depth=1
	sub	w8, w24, #16
	ldr	w0, [x8]
	bl	_free
	sub	w8, w24, #24
	ldr	w8, [x8]
	cbz	w8, LBB45_49
; %bb.57:                               ;   in Loop: Header=BB45_51 Depth=1
Lloh216:
	adrp	x8, _stream_used@PAGE
	mov	w10, #-4194305                  ; =0xffbfffff
Lloh217:
	ldr	w1, [x8, _stream_used@PAGEOFF]
Lloh218:
	adrp	x8, _stream@PAGE
Lloh219:
	ldr	w0, [x8, _stream@PAGEOFF]
	mov	w8, #11                         ; =0xb
	movk	w8, #65472, lsl #16
	add	w8, w1, w8
	cmp	w8, w10
	b.hs	LBB45_48
; %bb.58:                               ;   in Loop: Header=BB45_51 Depth=1
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x10, _stream_index@PAGE
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	ldr	w8, [x10, _stream_index@PAGEOFF]
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh220:
	adrp	x9, _streams@PAGE
Lloh221:
	add	x9, x9, _streams@PAGEOFF
	add	x0, x9, x8, lsl #22
	str	w8, [x10, _stream_index@PAGEOFF]
	adrp	x8, _stream@PAGE
	str	w0, [x8, _stream@PAGEOFF]
	b	LBB45_48
LBB45_59:
	mov	w25, wzr
LBB45_60:
	ldr	w9, [x23, #8]
	ldr	w0, [x23]
	cmp	w8, w9
	b.ne	LBB45_63
; %bb.61:
	cmp	w8, #0
	mov	w9, #256                        ; =0x100
	lsl	w8, w8, #1
	csel	w24, w9, w8, eq
	lsl	w1, w24, #5
	bl	_realloc
	cbz	w0, LBB45_64
; %bb.62:
	ldr	w8, [x23, #4]
	str	w0, [x23]
	str	w24, [x23, #8]
LBB45_63:
	mov	w9, w25
	sub	w8, w8, w25
	sbfiz	x24, x9, #5, #32
	add	x1, x0, x24
	add	x0, x1, #32
	lsl	w2, w8, #5
	bl	_memmove
	ldp	w9, w8, [x23]
	add	w8, w8, #1
	add	x9, x9, x24
	str	w8, [x23, #4]
	stp	xzr, xzr, [x9, #16]
	str	xzr, [x9, #8]
	stp	w20, w19, [x9]
LBB45_64:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
LBB45_65:
	ret
	.loh AdrpAdd	Lloh210, Lloh211
	.loh AdrpAdd	Lloh212, Lloh213
	.loh AdrpAdd	Lloh214, Lloh215
	.loh AdrpLdr	Lloh218, Lloh219
	.loh AdrpAdrp	Lloh216, Lloh218
	.loh AdrpLdr	Lloh216, Lloh217
	.loh AdrpAdd	Lloh220, Lloh221
                                        ; -- End function
	.globl	_xgpu_static_buffer_remove      ; -- Begin function xgpu_static_buffer_remove
	.p2align	4
_xgpu_static_buffer_remove:             ; @xgpu_static_buffer_remove
; %bb.0:
	cbz	w0, LBB46_12
; %bb.1:
	stp	x26, x25, [sp, #-64]!           ; 16-byte Folded Spill
	cmp	w1, #0
	ldr	w10, [x0, #4]
	cset	w8, ne
	mov	w9, #12                         ; =0xc
Lloh222:
	adrp	x11, _static_lists@PAGE
Lloh223:
	add	x11, x11, _static_lists@PAGEOFF
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	umaddl	x20, w8, w9, x11
	cmp	w10, #0
	orr	w11, w10, #0x80000000
	csinc	w8, w8, wzr, pl
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	cmp	w8, #0
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	ldr	w9, [x20, #4]
	csel	w8, w10, w11, ne
	cmp	w10, #0
	add	x29, sp, #48
	csel	w8, wzr, w8, eq
	cbz	w9, LBB46_11
; %bb.2:
	ldr	w10, [x20]
	mov	w23, wzr
	.p2align	4, , 8
LBB46_3:                                ; =>This Inner Loop Header: Depth=1
	add	w11, w9, w23
	lsr	w11, w11, #1
	ubfiz	x12, x11, #5, #32
	ldr	w12, [x10, x12]
	cmp	w12, w8
	csel	w9, w11, w9, hi
	csinc	w23, w23, w11, hi
	cmp	w23, w9
	b.lo	LBB46_3
; %bb.4:
	cbz	w23, LBB46_11
; %bb.5:
	add	w19, w10, w23, lsl #5
	sub	w9, w19, #32
	ldr	w9, [x9]
	cmp	w9, w8
	b.ne	LBB46_11
; %bb.6:
	sub	w8, w19, #16
	ldr	w0, [x8]
	bl	_free
	sub	w8, w19, #24
	ldr	w8, [x8]
	cbz	w8, LBB46_10
; %bb.7:
	adrp	x24, _stream_used@PAGE
	adrp	x25, _stream@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
	ldr	w1, [x24, _stream_used@PAGEOFF]
	ldr	w0, [x25, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4085
	cmp	w8, w9
	b.hs	LBB46_9
; %bb.8:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh224:
	adrp	x10, _streams@PAGE
Lloh225:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x25, _stream@PAGEOFF]
LBB46_9:
	mov	x9, #20                         ; =0x14
	add	x8, x0, w1, sxtw
	movk	x9, #12, lsl #32
	add	w10, w1, #12
	sub	w11, w19, #24
	str	x9, [x8]
	str	w10, [x24, _stream_used@PAGEOFF]
	ldr	w9, [x11]
	str	w9, [x8, #8]
LBB46_10:
	ldr	w8, [x20, #4]
	sub	w0, w19, #32
	mov	x1, x19
	sub	w8, w8, w23
	lsl	w2, w8, #5
	bl	_memmove
	ldr	w8, [x20, #4]
	sub	w8, w8, #1
	str	w8, [x20, #4]
LBB46_11:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
LBB46_12:
	ret
	.loh AdrpAdd	Lloh222, Lloh223
	.loh AdrpAdd	Lloh224, Lloh225
                                        ; -- End function
	.globl	_xgpu_static_buffers_add        ; -- Begin function xgpu_static_buffers_add
	.p2align	4
_xgpu_static_buffers_add:               ; @xgpu_static_buffers_add
; %bb.0:
	cmp	w3, #0
	cset	w8, ne
	cmp	w1, #1
	ccmp	w0, #0, #4, ge
	b.eq	LBB47_10
; %bb.1:
	and	w9, w1, #0x3
	cmp	w1, #4
	b.hs	LBB47_3
; %bb.2:
	mov	w1, wzr
	mov	w10, wzr
	b	LBB47_6
LBB47_3:
	stp	x20, x19, [sp, #-16]!           ; 16-byte Folded Spill
	mov	w11, w1
	mov	w1, wzr
	mov	w10, wzr
	and	w11, w11, #0x7ffffffc
	lsl	w12, w2, #1
	add	w13, w12, w2
	add	w14, w0, #4
	lsl	w15, w2, #2
	.p2align	4, , 8
LBB47_4:                                ; =>This Inner Loop Header: Depth=1
	add	w16, w14, w13
	add	w17, w14, w12
	cmp	w3, #0
	add	w5, w14, w2
	cset	w6, ne
	add	w10, w10, #4
	ldr	w16, [x16]
	ldr	w17, [x17]
	ldr	w5, [x5]
	cmp	w16, #0
	orr	w19, w16, #0x80000000
	csinc	w7, w6, wzr, pl
	cmp	w7, #0
	csel	w7, w16, w19, ne
	cmp	w16, #0
	csel	w16, wzr, w7, eq
	cmp	w17, #0
	csinc	w19, w6, wzr, pl
	ldr	w7, [x14]
	cmp	w19, #0
	orr	w19, w17, #0x80000000
	csel	w19, w17, w19, ne
	cmp	w17, #0
	csel	w17, wzr, w19, eq
	cmp	w5, #0
	csinc	w19, w6, wzr, pl
	add	w14, w14, w15
	cmp	w19, #0
	orr	w19, w5, #0x80000000
	csel	w19, w5, w19, ne
	cmp	w5, #0
	csel	w5, wzr, w19, eq
	cmp	w7, #0
	csinc	w6, w6, wzr, pl
	orr	w19, w7, #0x80000000
	cmp	w6, #0
	csel	w6, w7, w19, ne
	cmp	w7, #0
	csel	w6, wzr, w6, eq
	sub	w7, w1, #1
	sub	w19, w6, #1
	cmp	w19, w7
	csel	w1, w6, w1, lo
	sub	w6, w5, #1
	sub	w7, w1, #1
	cmp	w6, w7
	csel	w1, w5, w1, lo
	sub	w5, w17, #1
	sub	w6, w1, #1
	cmp	w5, w6
	csel	w17, w17, w1, lo
	sub	w1, w16, #1
	sub	w5, w17, #1
	cmp	w1, w5
	csel	w1, w16, w17, lo
	cmp	w11, w10
	b.ne	LBB47_4
; %bb.5:
	ldp	x20, x19, [sp], #16             ; 16-byte Folded Reload
	cbz	w9, LBB47_9
LBB47_6:
	mul	w11, w10, w2
	add	x11, x0, w11, sxtw
	ldr	w11, [x11, #4]
	cmp	w11, #0
	orr	w12, w11, #0x80000000
	ccmp	w3, #0, #0, pl
	csel	w12, w11, w12, ne
	cmp	w11, #0
	csel	w11, wzr, w12, eq
	sub	w12, w1, #1
	sub	w13, w11, #1
	cmp	w13, w12
	csel	w1, w11, w1, lo
	cmp	w9, #1
	b.eq	LBB47_9
; %bb.7:
	madd	w11, w2, w10, w2
	add	x11, x0, w11, sxtw
	ldr	w11, [x11, #4]
	cmp	w11, #0
	orr	w12, w11, #0x80000000
	ccmp	w3, #0, #0, pl
	csel	w12, w11, w12, ne
	cmp	w11, #0
	csel	w11, wzr, w12, eq
	sub	w12, w1, #1
	sub	w13, w11, #1
	cmp	w13, w12
	csel	w1, w11, w1, lo
	cmp	w9, #2
	b.eq	LBB47_9
; %bb.8:
	add	w9, w10, #2
	mul	w9, w9, w2
	add	x9, x0, w9, sxtw
	ldr	w9, [x9, #4]
	cmp	w9, #0
	orr	w10, w9, #0x80000000
	ccmp	w3, #0, #0, pl
	csel	w10, w9, w10, ne
	cmp	w9, #0
	csel	w9, wzr, w10, eq
	sub	w10, w1, #1
	sub	w11, w9, #1
	cmp	w11, w10
	csel	w1, w9, w1, lo
LBB47_9:
	cmp	w1, #0
	ccmp	w4, w1, #0, ne
	b.hi	LBB47_11
LBB47_10:
	ret
LBB47_11:
	mov	w9, #12                         ; =0xc
Lloh226:
	adrp	x10, _static_lists@PAGE
Lloh227:
	add	x10, x10, _static_lists@PAGEOFF
	sub	w2, w4, w1
	umaddl	x0, w8, w9, x10
	b	_static_note
	.loh AdrpAdd	Lloh226, Lloh227
                                        ; -- End function
	.globl	_xgpu_static_buffers_remove     ; -- Begin function xgpu_static_buffers_remove
	.p2align	4
_xgpu_static_buffers_remove:            ; @xgpu_static_buffers_remove
; %bb.0:
	cmp	w3, #0
	cset	w9, ne
	cmp	w1, #1
	ccmp	w0, #0, #4, ge
	b.eq	LBB48_21
; %bb.1:
	stp	x26, x25, [sp, #-64]!           ; 16-byte Folded Spill
	and	w10, w1, #0x3
	cmp	w1, #4
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	b.hs	LBB48_3
; %bb.2:
	mov	w8, wzr
	mov	w11, wzr
	b	LBB48_6
LBB48_3:
	mov	w8, wzr
	mov	w11, wzr
	and	w12, w1, #0x7ffffffc
	lsl	w13, w2, #1
	add	w14, w13, w2
	add	w15, w0, #4
	lsl	w16, w2, #2
	.p2align	4, , 8
LBB48_4:                                ; =>This Inner Loop Header: Depth=1
	add	w17, w15, w14
	add	w1, w15, w13
	cmp	w3, #0
	add	w4, w15, w2
	cset	w5, ne
	add	w11, w11, #4
	ldr	w17, [x17]
	ldr	w1, [x1]
	ldr	w4, [x4]
	cmp	w17, #0
	orr	w7, w17, #0x80000000
	csinc	w6, w5, wzr, pl
	cmp	w6, #0
	csel	w6, w17, w7, ne
	cmp	w17, #0
	csel	w17, wzr, w6, eq
	cmp	w1, #0
	csinc	w7, w5, wzr, pl
	ldr	w6, [x15]
	cmp	w7, #0
	orr	w7, w1, #0x80000000
	csel	w7, w1, w7, ne
	cmp	w1, #0
	csel	w1, wzr, w7, eq
	cmp	w4, #0
	csinc	w7, w5, wzr, pl
	add	w15, w15, w16
	cmp	w7, #0
	orr	w7, w4, #0x80000000
	csel	w7, w4, w7, ne
	cmp	w4, #0
	csel	w4, wzr, w7, eq
	cmp	w6, #0
	csinc	w5, w5, wzr, pl
	orr	w7, w6, #0x80000000
	cmp	w5, #0
	csel	w5, w6, w7, ne
	cmp	w6, #0
	csel	w5, wzr, w5, eq
	sub	w6, w8, #1
	sub	w7, w5, #1
	cmp	w7, w6
	csel	w8, w5, w8, lo
	sub	w5, w4, #1
	sub	w6, w8, #1
	cmp	w5, w6
	csel	w8, w4, w8, lo
	sub	w4, w1, #1
	sub	w5, w8, #1
	cmp	w4, w5
	csel	w8, w1, w8, lo
	sub	w1, w17, #1
	sub	w4, w8, #1
	cmp	w1, w4
	csel	w8, w17, w8, lo
	cmp	w12, w11
	b.ne	LBB48_4
; %bb.5:
	cbz	w10, LBB48_9
LBB48_6:
	mul	w12, w11, w2
	add	x12, x0, w12, sxtw
	ldr	w12, [x12, #4]
	cmp	w12, #0
	orr	w13, w12, #0x80000000
	ccmp	w3, #0, #0, pl
	csel	w13, w12, w13, ne
	cmp	w12, #0
	csel	w12, wzr, w13, eq
	sub	w13, w8, #1
	sub	w14, w12, #1
	cmp	w14, w13
	csel	w8, w12, w8, lo
	cmp	w10, #1
	b.eq	LBB48_9
; %bb.7:
	madd	w12, w2, w11, w2
	add	x12, x0, w12, sxtw
	ldr	w12, [x12, #4]
	cmp	w12, #0
	orr	w13, w12, #0x80000000
	ccmp	w3, #0, #0, pl
	csel	w13, w12, w13, ne
	cmp	w12, #0
	csel	w12, wzr, w13, eq
	sub	w13, w8, #1
	sub	w14, w12, #1
	cmp	w14, w13
	csel	w8, w12, w8, lo
	cmp	w10, #2
	b.eq	LBB48_9
; %bb.8:
	add	w10, w11, #2
	mul	w10, w10, w2
	add	x10, x0, w10, sxtw
	ldr	w10, [x10, #4]
	cmp	w10, #0
	orr	w11, w10, #0x80000000
	ccmp	w3, #0, #0, pl
	csel	w11, w10, w11, ne
	cmp	w10, #0
	csel	w10, wzr, w11, eq
	sub	w11, w8, #1
	sub	w12, w10, #1
	cmp	w12, w11
	csel	w8, w10, w8, lo
LBB48_9:
	cbz	w8, LBB48_20
; %bb.10:
	mov	w10, #12                        ; =0xc
Lloh228:
	adrp	x11, _static_lists@PAGE
Lloh229:
	add	x11, x11, _static_lists@PAGEOFF
	umaddl	x20, w9, w10, x11
	ldr	w9, [x20, #4]
	cbz	w9, LBB48_20
; %bb.11:
	ldr	w10, [x20]
	mov	w23, wzr
	.p2align	4, , 8
LBB48_12:                               ; =>This Inner Loop Header: Depth=1
	add	w11, w9, w23
	lsr	w11, w11, #1
	ubfiz	x12, x11, #5, #32
	ldr	w12, [x10, x12]
	cmp	w12, w8
	csel	w9, w11, w9, hi
	csinc	w23, w23, w11, hi
	cmp	w23, w9
	b.lo	LBB48_12
; %bb.13:
	cbz	w23, LBB48_20
; %bb.14:
	add	w19, w10, w23, lsl #5
	sub	w9, w19, #32
	ldr	w9, [x9]
	cmp	w9, w8
	b.ne	LBB48_20
; %bb.15:
	sub	w8, w19, #16
	ldr	w0, [x8]
	bl	_free
	sub	w8, w19, #24
	ldr	w8, [x8]
	cbz	w8, LBB48_19
; %bb.16:
	adrp	x24, _stream_used@PAGE
	adrp	x25, _stream@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
	ldr	w1, [x24, _stream_used@PAGEOFF]
	ldr	w0, [x25, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4085
	cmp	w8, w9
	b.hs	LBB48_18
; %bb.17:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh230:
	adrp	x10, _streams@PAGE
Lloh231:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x25, _stream@PAGEOFF]
LBB48_18:
	mov	x9, #20                         ; =0x14
	add	x8, x0, w1, sxtw
	movk	x9, #12, lsl #32
	add	w10, w1, #12
	sub	w11, w19, #24
	str	x9, [x8]
	str	w10, [x24, _stream_used@PAGEOFF]
	ldr	w9, [x11]
	str	w9, [x8, #8]
LBB48_19:
	ldr	w8, [x20, #4]
	sub	w0, w19, #32
	mov	x1, x19
	sub	w8, w8, w23
	lsl	w2, w8, #5
	bl	_memmove
	ldr	w8, [x20, #4]
	sub	w8, w8, #1
	str	w8, [x20, #4]
LBB48_20:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
LBB48_21:
	ret
	.loh AdrpAdd	Lloh228, Lloh229
	.loh AdrpAdd	Lloh230, Lloh231
                                        ; -- End function
	.globl	_xgpu_static_range_add          ; -- Begin function xgpu_static_range_add
	.p2align	4
_xgpu_static_range_add:                 ; @xgpu_static_range_add
; %bb.0:
	cmp	w2, #0
	mov	w9, #12                         ; =0xc
	cset	w10, ne
Lloh232:
	adrp	x11, _static_lists@PAGE
Lloh233:
	add	x11, x11, _static_lists@PAGEOFF
	mov	w8, w1
	umaddl	x9, w10, w9, x11
	mov	x1, x0
	mov	w2, w8
                                        ; kill: def $w1 killed $w1 killed $x1
	mov	x0, x9
	b	_static_note
	.loh AdrpAdd	Lloh232, Lloh233
                                        ; -- End function
	.globl	_xgpu_static_range_remove       ; -- Begin function xgpu_static_range_remove
	.p2align	4
_xgpu_static_range_remove:              ; @xgpu_static_range_remove
; %bb.0:
	stp	x26, x25, [sp, #-64]!           ; 16-byte Folded Spill
	cmp	w1, #0
	mov	w8, #12                         ; =0xc
	cset	w9, ne
Lloh234:
	adrp	x10, _static_lists@PAGE
Lloh235:
	add	x10, x10, _static_lists@PAGEOFF
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	umaddl	x20, w9, w8, x10
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	ldr	w8, [x20, #4]
	cbz	w8, LBB50_10
; %bb.1:
	ldr	w9, [x20]
	mov	w23, wzr
	.p2align	4, , 8
LBB50_2:                                ; =>This Inner Loop Header: Depth=1
	add	w10, w8, w23
	lsr	w10, w10, #1
	ubfiz	x11, x10, #5, #32
	ldr	w11, [x9, x11]
	cmp	w11, w0
	csel	w8, w10, w8, hi
	csinc	w23, w23, w10, hi
	cmp	w23, w8
	b.lo	LBB50_2
; %bb.3:
	cbz	w23, LBB50_10
; %bb.4:
	add	w19, w9, w23, lsl #5
	sub	w8, w19, #32
	ldr	w8, [x8]
	cmp	w8, w0
	b.ne	LBB50_10
; %bb.5:
	sub	w8, w19, #16
	ldr	w0, [x8]
	bl	_free
	sub	w8, w19, #24
	ldr	w8, [x8]
	cbz	w8, LBB50_9
; %bb.6:
	adrp	x24, _stream_used@PAGE
	adrp	x25, _stream@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
	ldr	w1, [x24, _stream_used@PAGEOFF]
	ldr	w0, [x25, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4085
	cmp	w8, w9
	b.hs	LBB50_8
; %bb.7:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh236:
	adrp	x10, _streams@PAGE
Lloh237:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x25, _stream@PAGEOFF]
LBB50_8:
	mov	x9, #20                         ; =0x14
	add	x8, x0, w1, sxtw
	movk	x9, #12, lsl #32
	add	w10, w1, #12
	sub	w11, w19, #24
	str	x9, [x8]
	str	w10, [x24, _stream_used@PAGEOFF]
	ldr	w9, [x11]
	str	w9, [x8, #8]
LBB50_9:
	ldr	w8, [x20, #4]
	sub	w0, w19, #32
	mov	x1, x19
	sub	w8, w8, w23
	lsl	w2, w8, #5
	bl	_memmove
	ldr	w8, [x20, #4]
	sub	w8, w8, #1
	str	w8, [x20, #4]
LBB50_10:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh234, Lloh235
	.loh AdrpAdd	Lloh236, Lloh237
                                        ; -- End function
	.globl	_xgpu_static_forget_all         ; -- Begin function xgpu_static_forget_all
	.p2align	4
_xgpu_static_forget_all:                ; @xgpu_static_forget_all
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
Lloh238:
	adrp	x8, _static_lists@PAGE+4
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	adrp	x23, _stream_used@PAGE
	adrp	x24, _stream@PAGE
	adrp	x25, _stream_index@PAGE
Lloh239:
	ldr	w8, [x8, _static_lists@PAGEOFF+4]
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	cbz	w8, LBB51_12
; %bb.1:
Lloh240:
	adrp	x9, _static_lists@PAGE
	mov	x26, #20                        ; =0x14
	mov	w27, #-4194305                  ; =0xffbfffff
	movk	x26, #12, lsl #32
Lloh241:
	adrp	x28, _static_lists@PAGE
Lloh242:
	add	x28, x28, _static_lists@PAGEOFF
Lloh243:
	ldr	w9, [x9, _static_lists@PAGEOFF]
	b	LBB51_5
LBB51_2:                                ;   in Loop: Header=BB51_5 Depth=1
	add	x8, x0, w1, sxtw
	add	w9, w1, #12
	sub	w10, w19, #24
	str	x26, [x8]
	str	w9, [x23, _stream_used@PAGEOFF]
	ldr	w9, [x10]
	str	w9, [x8, #8]
LBB51_3:                                ;   in Loop: Header=BB51_5 Depth=1
	ldr	w8, [x28, #4]
	sub	w0, w19, #32
	mov	x1, x19
	sub	w8, w8, w20
	lsl	w2, w8, #5
	bl	_memmove
	ldp	w9, w8, [x28]
	sub	w8, w8, #1
	str	w8, [x28, #4]
LBB51_4:                                ;   in Loop: Header=BB51_5 Depth=1
	cbz	w8, LBB51_12
LBB51_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB51_6 Depth 2
	add	w10, w9, w8, lsl #5
	mov	w20, wzr
	sub	w10, w10, #32
	mov	w11, w8
	ldr	w10, [x10]
	.p2align	4, , 8
LBB51_6:                                ;   Parent Loop BB51_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w12, w11, w20
	lsr	w12, w12, #1
	ubfiz	x13, x12, #5, #32
	ldr	w13, [x9, x13]
	cmp	w13, w10
	csel	w11, w12, w11, hi
	csinc	w20, w20, w12, hi
	cmp	w20, w11
	b.lo	LBB51_6
; %bb.7:                                ;   in Loop: Header=BB51_5 Depth=1
	cbz	w20, LBB51_4
; %bb.8:                                ;   in Loop: Header=BB51_5 Depth=1
	add	w19, w9, w20, lsl #5
	sub	w11, w19, #32
	ldr	w11, [x11]
	cmp	w11, w10
	b.ne	LBB51_4
; %bb.9:                                ;   in Loop: Header=BB51_5 Depth=1
	sub	w8, w19, #16
	ldr	w0, [x8]
	bl	_free
	sub	w8, w19, #24
	ldr	w8, [x8]
	cbz	w8, LBB51_3
; %bb.10:                               ;   in Loop: Header=BB51_5 Depth=1
	ldr	w1, [x23, _stream_used@PAGEOFF]
	mov	w8, #11                         ; =0xb
	ldr	w0, [x24, _stream@PAGEOFF]
	movk	w8, #65472, lsl #16
	add	w8, w1, w8
	cmp	w8, w27
	b.hs	LBB51_2
; %bb.11:                               ;   in Loop: Header=BB51_5 Depth=1
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	ldr	w8, [x25, _stream_index@PAGEOFF]
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh244:
	adrp	x9, _streams@PAGE
Lloh245:
	add	x9, x9, _streams@PAGEOFF
	add	x0, x9, x8, lsl #22
	str	w8, [x25, _stream_index@PAGEOFF]
	str	w0, [x24, _stream@PAGEOFF]
	b	LBB51_2
LBB51_12:
Lloh246:
	adrp	x8, _static_lists@PAGE+16
Lloh247:
	ldr	w8, [x8, _static_lists@PAGEOFF+16]
	cbz	w8, LBB51_24
; %bb.13:
Lloh248:
	adrp	x9, _static_lists@PAGE+12
	mov	x26, #20                        ; =0x14
	mov	w27, #-4194305                  ; =0xffbfffff
	movk	x26, #12, lsl #32
Lloh249:
	adrp	x28, _static_lists@PAGE+12
Lloh250:
	add	x28, x28, _static_lists@PAGEOFF+12
Lloh251:
	ldr	w9, [x9, _static_lists@PAGEOFF+12]
	b	LBB51_17
LBB51_14:                               ;   in Loop: Header=BB51_17 Depth=1
	add	x8, x0, w1, sxtw
	add	w9, w1, #12
	sub	w10, w19, #24
	str	x26, [x8]
	str	w9, [x23, _stream_used@PAGEOFF]
	ldr	w9, [x10]
	str	w9, [x8, #8]
LBB51_15:                               ;   in Loop: Header=BB51_17 Depth=1
	ldr	w8, [x28, #4]
	sub	w0, w19, #32
	mov	x1, x19
	sub	w8, w8, w20
	lsl	w2, w8, #5
	bl	_memmove
	ldp	w9, w8, [x28]
	sub	w8, w8, #1
	str	w8, [x28, #4]
LBB51_16:                               ;   in Loop: Header=BB51_17 Depth=1
	cbz	w8, LBB51_24
LBB51_17:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB51_18 Depth 2
	add	w10, w9, w8, lsl #5
	mov	w20, wzr
	sub	w10, w10, #32
	mov	w11, w8
	ldr	w10, [x10]
	.p2align	4, , 8
LBB51_18:                               ;   Parent Loop BB51_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w12, w11, w20
	lsr	w12, w12, #1
	ubfiz	x13, x12, #5, #32
	ldr	w13, [x9, x13]
	cmp	w13, w10
	csel	w11, w12, w11, hi
	csinc	w20, w20, w12, hi
	cmp	w20, w11
	b.lo	LBB51_18
; %bb.19:                               ;   in Loop: Header=BB51_17 Depth=1
	cbz	w20, LBB51_16
; %bb.20:                               ;   in Loop: Header=BB51_17 Depth=1
	add	w19, w9, w20, lsl #5
	sub	w11, w19, #32
	ldr	w11, [x11]
	cmp	w11, w10
	b.ne	LBB51_16
; %bb.21:                               ;   in Loop: Header=BB51_17 Depth=1
	sub	w8, w19, #16
	ldr	w0, [x8]
	bl	_free
	sub	w8, w19, #24
	ldr	w8, [x8]
	cbz	w8, LBB51_15
; %bb.22:                               ;   in Loop: Header=BB51_17 Depth=1
	ldr	w1, [x23, _stream_used@PAGEOFF]
	mov	w8, #11                         ; =0xb
	ldr	w0, [x24, _stream@PAGEOFF]
	movk	w8, #65472, lsl #16
	add	w8, w1, w8
	cmp	w8, w27
	b.hs	LBB51_14
; %bb.23:                               ;   in Loop: Header=BB51_17 Depth=1
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	ldr	w8, [x25, _stream_index@PAGEOFF]
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh252:
	adrp	x9, _streams@PAGE
Lloh253:
	add	x9, x9, _streams@PAGEOFF
	add	x0, x9, x8, lsl #22
	str	w8, [x25, _stream_index@PAGEOFF]
	str	w0, [x24, _stream@PAGEOFF]
	b	LBB51_14
LBB51_24:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh238, Lloh239
	.loh AdrpAdd	Lloh241, Lloh242
	.loh AdrpLdr	Lloh240, Lloh243
	.loh AdrpAdd	Lloh244, Lloh245
	.loh AdrpLdr	Lloh246, Lloh247
	.loh AdrpAdd	Lloh249, Lloh250
	.loh AdrpLdr	Lloh248, Lloh251
	.loh AdrpAdd	Lloh252, Lloh253
                                        ; -- End function
	.globl	_halo_shadow_map_scale          ; -- Begin function halo_shadow_map_scale
	.p2align	4
_halo_shadow_map_scale:                 ; @halo_shadow_map_scale
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	adrp	x19, _shadow_scale@PAGE
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	ldr	w0, [x19, _shadow_scale@PAGEOFF]
	cbnz	w0, LBB52_7
; %bb.1:
	bl	_config_changes
	adrp	x8, _shadow_scale_read_at@PAGE
	str	w0, [x8, _shadow_scale_read_at@PAGEOFF]
Lloh254:
	adrp	x0, l_.str.26@PAGE
Lloh255:
	add	x0, x0, l_.str.26@PAGEOFF
	bl	_config_integer
	cmp	w0, #256
	b.ge	LBB52_3
; %bb.2:
	mov	w8, #1                          ; =0x1
	b	LBB52_6
LBB52_3:
	cmp	w0, #512
	b.ge	LBB52_5
; %bb.4:
	mov	w8, #2                          ; =0x2
	b	LBB52_6
LBB52_5:
	cmp	w0, #1024
	mov	w8, #8                          ; =0x8
	mov	w9, #4                          ; =0x4
	csel	w8, w9, w8, lt
LBB52_6:
Lloh256:
	adrp	x0, l_.str.1@PAGE
Lloh257:
	add	x0, x0, l_.str.1@PAGEOFF
	lsl	w9, w8, #7
	str	w8, [x19, _shadow_scale@PAGEOFF]
	stp	w9, w9, [sp]
	bl	_platform_log
	ldr	w0, [x19, _shadow_scale@PAGEOFF]
LBB52_7:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh254, Lloh255
	.loh AdrpAdd	Lloh256, Lloh257
                                        ; -- End function
	.globl	_d3d_find_flipcount             ; -- Begin function d3d_find_flipcount
	.p2align	4
_d3d_find_flipcount:                    ; @d3d_find_flipcount
; %bb.0:
Lloh258:
	adrp	x0, _flip_count@PAGE
Lloh259:
	add	x0, x0, _flip_count@PAGEOFF
	ret
	.loh AdrpAdd	Lloh258, Lloh259
                                        ; -- End function
	.globl	_D3DDevice_SetVerticalBlankCallback ; -- Begin function D3DDevice_SetVerticalBlankCallback
	.p2align	4
_D3DDevice_SetVerticalBlankCallback:    ; @D3DDevice_SetVerticalBlankCallback
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
Lloh260:
	adrp	x20, _vertical_blank_lock@PAGE
Lloh261:
	add	x20, x20, _vertical_blank_lock@PAGEOFF
	mov	x19, x0
	mov	x0, x20
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	bl	_pthread_mutex_lock
	adrp	x8, _vertical_blank_callback@PAGE
	mov	x0, x20
	str	w19, [x8, _vertical_blank_callback@PAGEOFF]
	bl	_pthread_mutex_unlock
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_vertical_blank_start
	.loh AdrpAdd	Lloh260, Lloh261
                                        ; -- End function
	.p2align	4                               ; -- Begin function vertical_blank_start
_vertical_blank_start:                  ; @vertical_blank_start
; %bb.0:
	sub	sp, sp, #48
Lloh262:
	adrp	x0, _vertical_blank_lock@PAGE
Lloh263:
	add	x0, x0, _vertical_blank_lock@PAGEOFF
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	bl	_pthread_mutex_lock
	adrp	x19, _vertical_blank_thread_started@PAGE
	ldrb	w8, [x19, _vertical_blank_thread_started@PAGEOFF]
	tbnz	w8, #0, LBB55_4
; %bb.1:
Lloh264:
	adrp	x2, _vertical_blank_thread@PAGE
Lloh265:
	add	x2, x2, _vertical_blank_thread@PAGEOFF
	add	x0, sp, #12
	mov	x1, xzr
	mov	x3, xzr
	bl	_pthread_create
	cbz	w0, LBB55_3
; %bb.2:
Lloh266:
	adrp	x0, l_.str.27@PAGE
Lloh267:
	add	x0, x0, l_.str.27@PAGEOFF
	bl	_platform_log
	b	LBB55_4
LBB55_3:
	ldr	w0, [sp, #12]
	bl	_pthread_detach
	mov	w8, #1                          ; =0x1
	strb	w8, [x19, _vertical_blank_thread_started@PAGEOFF]
LBB55_4:
Lloh268:
	adrp	x0, _vertical_blank_lock@PAGE
Lloh269:
	add	x0, x0, _vertical_blank_lock@PAGEOFF
	bl	_pthread_mutex_unlock
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh262, Lloh263
	.loh AdrpAdd	Lloh264, Lloh265
	.loh AdrpAdd	Lloh266, Lloh267
	.loh AdrpAdd	Lloh268, Lloh269
                                        ; -- End function
	.globl	_D3DDevice_BlockUntilVerticalBlank ; -- Begin function D3DDevice_BlockUntilVerticalBlank
	.p2align	4
_D3DDevice_BlockUntilVerticalBlank:     ; @D3DDevice_BlockUntilVerticalBlank
; %bb.0:
	sub	sp, sp, #128
Lloh270:
	adrp	x8, _device@PAGE+80
Lloh271:
	add	x8, x8, _device@PAGEOFF+80
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	ldr	w9, [x8, #4856]
	ldr	w8, [x8]
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	cmp	w9, #0
	ccmp	w8, #0, #4, ne
	b.eq	LBB56_7
; %bb.1:
Lloh272:
	adrp	x8, _device@PAGE+100
Lloh273:
	add	x8, x8, _device@PAGEOFF+100
	ldr	w9, [x8, #4840]
	ldr	w8, [x8]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB56_7
; %bb.2:
Lloh274:
	adrp	x19, _device@PAGE+52
Lloh275:
	add	x19, x19, _device@PAGEOFF+52
	add	x2, sp, #40
	add	x3, sp, #8
	mov	x0, x19
	mov	w1, wzr
	bl	_surface_describe
	add	x0, x19, #24
	add	x2, sp, #16
	mov	x3, sp
	mov	w1, wzr
	bl	_surface_describe
	ldr	w8, [sp, #60]
	cmp	w8, #1
	b.ne	LBB56_7
; %bb.3:
	ldr	w8, [sp, #36]
	cmp	w8, #1
	b.ne	LBB56_7
; %bb.4:
	mov	w8, #1142947840                 ; =0x44200000
	ldr	s0, [sp, #8]
	ldr	w19, [sp, #52]
	fmov	s1, w8
	fmul	s0, s0, s1
	fmov	s1, #0.50000000
	fadd	s0, s0, s1
	fcvtzu	w8, s0
	cmp	w19, w8
	csel	w23, w19, w8, lo
	sub	w8, w19, w23
	lsr	w25, w8, #1
	bl	_loading_widescreen_active
	adrp	x20, _stream_used@PAGE
	adrp	x24, _stream@PAGE
	cmp	w0, #0
	mov	w9, #-4194305                   ; =0xffbfffff
	csel	w19, w23, w19, eq
	csel	w23, w25, wzr, eq
	ldr	w1, [x20, _stream_used@PAGEOFF]
	ldr	w0, [x24, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4009
	cmp	w8, w9
	b.hs	LBB56_6
; %bb.5:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh276:
	adrp	x10, _streams@PAGE
Lloh277:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x24, _stream@PAGEOFF]
LBB56_6:
	mov	x9, #15                         ; =0xf
	add	x8, x0, w1, sxtw
	movk	x9, #88, lsl #32
	ldr	x10, [sp, #32]
	str	x9, [x8]
	add	w9, w1, #88
	ldur	q0, [sp, #40]
	str	w9, [x20, _stream_used@PAGEOFF]
	stur	q0, [x8, #8]
	ldr	q0, [sp, #16]
	ldr	x9, [sp, #56]
	str	x10, [x8, #48]
	stp	w23, wzr, [x8, #56]
	str	q0, [x8, #32]
	str	w19, [x8, #64]
Lloh278:
	adrp	x19, _device@PAGE+76
Lloh279:
	add	x19, x19, _device@PAGEOFF+76
	str	x9, [x8, #24]
	ldr	w9, [sp, #56]
	mov	x0, x19
	ldur	d0, [sp, #28]
	str	xzr, [x8, #72]
	str	w9, [x8, #68]
	str	d0, [x8, #80]
	bl	_rendered_note
	ldr	w8, [x19, #4864]
	add	w8, w8, #1
	str	w8, [x19, #28]
LBB56_7:
Lloh280:
	adrp	x0, _vertical_blank_lock@PAGE
Lloh281:
	add	x0, x0, _vertical_blank_lock@PAGEOFF
	bl	_pthread_mutex_lock
	adrp	x19, _vertical_blank_thread_started@PAGE
	ldrb	w8, [x19, _vertical_blank_thread_started@PAGEOFF]
	tbnz	w8, #0, LBB56_11
; %bb.8:
Lloh282:
	adrp	x2, _vertical_blank_thread@PAGE
Lloh283:
	add	x2, x2, _vertical_blank_thread@PAGEOFF
	add	x0, sp, #40
	mov	x1, xzr
	mov	x3, xzr
	bl	_pthread_create
	cbz	w0, LBB56_10
; %bb.9:
Lloh284:
	adrp	x0, l_.str.27@PAGE
Lloh285:
	add	x0, x0, l_.str.27@PAGEOFF
	bl	_platform_log
	b	LBB56_11
LBB56_10:
	ldr	w0, [sp, #40]
	bl	_pthread_detach
	mov	w8, #1                          ; =0x1
	strb	w8, [x19, _vertical_blank_thread_started@PAGEOFF]
LBB56_11:
Lloh286:
	adrp	x19, _vertical_blank_lock@PAGE
Lloh287:
	add	x19, x19, _vertical_blank_lock@PAGEOFF
	mov	x0, x19
	bl	_pthread_mutex_unlock
	mov	x0, x19
	bl	_pthread_mutex_lock
	adrp	x23, _vertical_blank_count@PAGE
Lloh288:
	adrp	x20, _vertical_blank_condition@PAGE
Lloh289:
	add	x20, x20, _vertical_blank_condition@PAGEOFF
	ldr	w24, [x23, _vertical_blank_count@PAGEOFF]
	.p2align	4, , 8
LBB56_12:                               ; =>This Inner Loop Header: Depth=1
	mov	x0, x20
	mov	x1, x19
	bl	_pthread_cond_wait
	ldr	w8, [x23, _vertical_blank_count@PAGEOFF]
	cmp	w8, w24
	b.eq	LBB56_12
; %bb.13:
Lloh290:
	adrp	x0, _vertical_blank_lock@PAGE
Lloh291:
	add	x0, x0, _vertical_blank_lock@PAGEOFF
	bl	_pthread_mutex_unlock
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh270, Lloh271
	.loh AdrpAdd	Lloh272, Lloh273
	.loh AdrpAdd	Lloh274, Lloh275
	.loh AdrpAdd	Lloh276, Lloh277
	.loh AdrpAdd	Lloh278, Lloh279
	.loh AdrpAdd	Lloh280, Lloh281
	.loh AdrpAdd	Lloh282, Lloh283
	.loh AdrpAdd	Lloh284, Lloh285
	.loh AdrpAdd	Lloh288, Lloh289
	.loh AdrpAdd	Lloh286, Lloh287
	.loh AdrpAdd	Lloh290, Lloh291
                                        ; -- End function
	.globl	_vk_stream_command              ; -- Begin function vk_stream_command
	.p2align	4
_vk_stream_command:                     ; @vk_stream_command
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	adrp	x20, _stream_used@PAGE
	mov	w8, w1
	mov	w19, w0
	add	w8, w8, #3
	adrp	x24, _stream@PAGE
	ldr	w1, [x20, _stream_used@PAGEOFF]
	and	w23, w8, #0xfffffffc
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	add	w8, w1, w23
	cmp	w8, #1024, lsl #12              ; =4194304
	b.ls	LBB57_3
; %bb.1:
	cbz	w1, LBB57_3
; %bb.2:
	ldr	w0, [x24, _stream@PAGEOFF]
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh292:
	adrp	x10, _streams@PAGE
Lloh293:
	add	x10, x10, _streams@PAGEOFF
	add	w10, w10, w9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w10, [x24, _stream@PAGEOFF]
LBB57_3:
	ldr	w8, [x24, _stream@PAGEOFF]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	x0, x8, w1, sxtw
	add	w8, w1, w23
	stp	w19, w23, [x0]
	str	w8, [x20, _stream_used@PAGEOFF]
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh292, Lloh293
                                        ; -- End function
	.globl	_vk_data_put                    ; -- Begin function vk_data_put
	.p2align	4
_vk_data_put:                           ; @vk_data_put
; %bb.0:
	sub	sp, sp, #96
	adrp	x8, _data_id@PAGE
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	adrp	x28, _stream_used@PAGE
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	mov	w19, w1
	ldr	w9, [x8, _data_id@PAGEOFF]
	mov	w27, wzr
	ldr	w24, [x28, _stream_used@PAGEOFF]
	adrp	x20, _stream@PAGE
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	add	w23, w9, #1
	str	x0, [sp, #8]                    ; 8-byte Spill
	str	w23, [x8, _data_id@PAGEOFF]
	b	LBB58_2
	.p2align	4, , 8
LBB58_1:                                ;   in Loop: Header=BB58_2 Depth=1
	add	w27, w25, w27
	cmp	w27, w19
	b.hs	LBB58_14
LBB58_2:                                ; =>This Inner Loop Header: Depth=1
	mov	w9, #65512                      ; =0xffe8
	mov	w8, #-4194305                   ; =0xffbfffff
	movk	w9, #63, lsl #16
	add	w8, w24, w8
	sub	w9, w9, w24
	cmn	w8, #25
	and	w9, w9, #0xfffffffc
	sub	w25, w19, w27
	csel	w8, w9, wzr, lo
	cmp	w8, #63
	b.hi	LBB58_7
; %bb.3:                                ;   in Loop: Header=BB58_2 Depth=1
	cmp	w8, w25
	b.hs	LBB58_7
; %bb.4:                                ;   in Loop: Header=BB58_2 Depth=1
	cbz	w24, LBB58_6
; %bb.5:                                ;   in Loop: Header=BB58_2 Depth=1
	ldr	w0, [x20, _stream@PAGEOFF]
	mov	w1, w24
	bl	_host_vk_submit
	adrp	x10, _stream_index@PAGE
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	ldr	w8, [x10, _stream_index@PAGEOFF]
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh294:
	adrp	x9, _streams@PAGE
Lloh295:
	add	x9, x9, _streams@PAGEOFF
	add	w9, w9, w8, lsl #22
	str	w8, [x10, _stream_index@PAGEOFF]
	str	w9, [x20, _stream@PAGEOFF]
LBB58_6:                                ;   in Loop: Header=BB58_2 Depth=1
	mov	w8, #65512                      ; =0xffe8
	mov	w24, wzr
	movk	w8, #63, lsl #16
	str	wzr, [x28, _stream_used@PAGEOFF]
LBB58_7:                                ;   in Loop: Header=BB58_2 Depth=1
	cmp	w25, w8
	csel	w25, w25, w8, lo
	add	w8, w25, #27
	and	w26, w8, #0xfffffffc
	add	w8, w26, w24
	cmp	w8, #1024, lsl #12              ; =4194304
	b.ls	LBB58_10
; %bb.8:                                ;   in Loop: Header=BB58_2 Depth=1
	ldr	w0, [x20, _stream@PAGEOFF]
	cbz	w24, LBB58_11
; %bb.9:                                ;   in Loop: Header=BB58_2 Depth=1
	mov	w1, w24
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x10, _stream_index@PAGE
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w24, wzr
	ldr	w8, [x10, _stream_index@PAGEOFF]
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh296:
	adrp	x9, _streams@PAGE
Lloh297:
	add	x9, x9, _streams@PAGEOFF
	add	x0, x9, x8, lsl #22
	str	w8, [x10, _stream_index@PAGEOFF]
	str	w0, [x20, _stream@PAGEOFF]
	b	LBB58_11
	.p2align	4, , 8
LBB58_10:                               ;   in Loop: Header=BB58_2 Depth=1
	ldr	w0, [x20, _stream@PAGEOFF]
LBB58_11:                               ;   in Loop: Header=BB58_2 Depth=1
	add	x8, x0, w24, sxtw
	add	w24, w24, w26
	mov	w9, #4                          ; =0x4
	stp	w9, w26, [x8]
	str	w24, [x28, _stream_used@PAGEOFF]
	stp	w23, w27, [x8, #8]
	stp	w19, w25, [x8, #16]
	cbz	w25, LBB58_1
; %bb.12:                               ;   in Loop: Header=BB58_2 Depth=1
	add	x26, x8, #24
	ldr	x8, [sp, #8]                    ; 8-byte Reload
	mov	x0, x26
	mov	w2, w25
	add	x1, x8, w27, sxtw
	bl	_memcpy
	ands	w8, w25, #0x3
	b.eq	LBB58_1
; %bb.13:                               ;   in Loop: Header=BB58_2 Depth=1
	mov	w9, #4                          ; =0x4
	add	x0, x26, w25, sxtw
	sub	w1, w9, w8
	bl	_bzero
	b	LBB58_1
LBB58_14:
	mov	w0, w23
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh294, Lloh295
	.loh AdrpAdd	Lloh296, Lloh297
                                        ; -- End function
	.globl	_halo_render_defer_sun_glow     ; -- Begin function halo_render_defer_sun_glow
	.p2align	4
_halo_render_defer_sun_glow:            ; @halo_render_defer_sun_glow
; %bb.0:
	mov	w0, wzr
	ret
                                        ; -- End function
	.globl	_halo_render_defer_water        ; -- Begin function halo_render_defer_water
	.p2align	4
_halo_render_defer_water:               ; @halo_render_defer_water
; %bb.0:
	mov	w0, wzr
	ret
                                        ; -- End function
	.globl	_halo_render_marker             ; -- Begin function halo_render_marker
	.p2align	4
_halo_render_marker:                    ; @halo_render_marker
; %bb.0:
	ret
                                        ; -- End function
	.globl	_halo_texture_clip_stage        ; -- Begin function halo_texture_clip_stage
	.p2align	4
_halo_texture_clip_stage:               ; @halo_texture_clip_stage
; %bb.0:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	adrp	x24, _halo_texture_clip_stage.mode@PAGE
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	fmov	s8, s1
	fmov	s9, s0
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	ldr	w8, [x24, _halo_texture_clip_stage.mode@PAGEOFF]
	mov	w19, w1
	mov	w20, w0
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	tbnz	w8, #31, LBB62_6
; %bb.1:
	movi	d0, #0000000000000000
	cbz	w8, LBB62_17
LBB62_2:
	cmp	w8, #2
	b.eq	LBB62_10
; %bb.3:
	cmp	w8, #3
	b.ne	LBB62_19
; %bb.4:
	cmp	w20, #4
	b.hs	LBB62_12
; %bb.5:
Lloh298:
	adrp	x8, _halo_texture_clip_stage.set_low@PAGE
Lloh299:
	adrp	x9, _halo_texture_clip_stage.set_high@PAGE
Lloh300:
	ldr	s9, [x8, _halo_texture_clip_stage.set_low@PAGEOFF]
Lloh301:
	ldr	s8, [x9, _halo_texture_clip_stage.set_high@PAGEOFF]
	b	LBB62_20
LBB62_6:
Lloh302:
	adrp	x0, l_.str.2@PAGE
Lloh303:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_config_string
Lloh304:
	adrp	x1, l_.str.3@PAGE
Lloh305:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x23, x0
	bl	_strcmp
	cbz	w0, LBB62_13
; %bb.7:
Lloh306:
	adrp	x1, l_.str.4@PAGE
Lloh307:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	x0, x23
	bl	_strcmp
	cbz	w0, LBB62_14
; %bb.8:
	mov	w8, #1                          ; =0x1
Lloh308:
	adrp	x1, l_.str.5@PAGE
Lloh309:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	x0, x23
Lloh310:
	adrp	x9, _halo_texture_clip_stage.set_low@PAGE
Lloh311:
	add	x9, x9, _halo_texture_clip_stage.set_low@PAGEOFF
	str	w8, [x24, _halo_texture_clip_stage.mode@PAGEOFF]
Lloh312:
	adrp	x8, _halo_texture_clip_stage.set_high@PAGE
Lloh313:
	add	x8, x8, _halo_texture_clip_stage.set_high@PAGEOFF
	stp	w9, w8, [sp]
	bl	_sscanf
	cmp	w0, #2
	b.ne	LBB62_18
; %bb.9:
	mov	w8, #3                          ; =0x3
	b	LBB62_15
LBB62_10:
	cmp	w20, #3
	b.hi	LBB62_12
; %bb.11:
	mov	w8, #1148846080                 ; =0x447a0000
	mov	w9, #-998637568                 ; =0xc47a0000
	fmov	s8, w8
	fmov	s9, w9
	b	LBB62_20
LBB62_12:
	mov	w9, wzr
	b	LBB62_22
LBB62_13:
	mov	w8, wzr
	b	LBB62_15
LBB62_14:
	mov	w8, #2                          ; =0x2
LBB62_15:
	str	w8, [x24, _halo_texture_clip_stage.mode@PAGEOFF]
LBB62_16:
Lloh314:
	adrp	x0, l_.str.6@PAGE
Lloh315:
	add	x0, x0, l_.str.6@PAGEOFF
	str	w23, [sp]
	bl	_platform_log
	ldr	w8, [x24, _halo_texture_clip_stage.mode@PAGEOFF]
	movi	d0, #0000000000000000
	cbnz	w8, LBB62_2
LBB62_17:
	movi	d8, #0000000000000000
	mov	w9, wzr
	b	LBB62_23
LBB62_18:
	ldr	w8, [x24, _halo_texture_clip_stage.mode@PAGEOFF]
	cmp	w8, #1
	b.ne	LBB62_16
LBB62_19:
	cmp	w20, #4
	b.hs	LBB62_21
LBB62_20:
	fmov	s1, #1.00000000
	mov	w9, #1                          ; =0x1
	fmov	s0, s9
	mov	w8, w20
	b	LBB62_24
LBB62_21:
	mov	w9, wzr
	movi	d0, #0000000000000000
LBB62_22:
	movi	d8, #0000000000000000
	mov	w8, wzr
LBB62_23:
	movi	d1, #0000000000000000
LBB62_24:
Lloh316:
	adrp	x10, _texture_clip.0@PAGE
	adrp	x11, _texture_clip.1@PAGE
	cmp	w19, #0
	adrp	x12, _texture_clip.2@PAGE
	adrp	x13, _texture_clip_stage@PAGE
	csel	w9, wzr, w9, eq
	str	s0, [x10, _texture_clip.0@PAGEOFF]
Lloh317:
	adrp	x10, _texture_clip_3d@PAGE
	str	s8, [x11, _texture_clip.1@PAGEOFF]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	str	s1, [x12, _texture_clip.2@PAGEOFF]
	str	w8, [x13, _texture_clip_stage@PAGEOFF]
	str	w9, [x10, _texture_clip_3d@PAGEOFF]
	add	sp, sp, #80
	ret
	.loh AdrpLdr	Lloh299, Lloh301
	.loh AdrpLdr	Lloh298, Lloh300
	.loh AdrpAdd	Lloh304, Lloh305
	.loh AdrpAdd	Lloh302, Lloh303
	.loh AdrpAdd	Lloh306, Lloh307
	.loh AdrpAdd	Lloh312, Lloh313
	.loh AdrpAdd	Lloh310, Lloh311
	.loh AdrpAdd	Lloh308, Lloh309
	.loh AdrpAdd	Lloh314, Lloh315
	.loh AdrpAdrp	Lloh316, Lloh317
                                        ; -- End function
	.globl	_halo_texture_clip              ; -- Begin function halo_texture_clip
	.p2align	4
_halo_texture_clip:                     ; @halo_texture_clip
; %bb.0:
	cmp	w0, #0
	mov	w1, wzr
	csetm	w0, eq
	b	_halo_texture_clip_stage
                                        ; -- End function
	.globl	_halo_draw_scissor              ; -- Begin function halo_draw_scissor
	.p2align	4
_halo_draw_scissor:                     ; @halo_draw_scissor
; %bb.0:
	stp	d11, d10, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	adrp	x20, _halo_draw_scissor.enabled@PAGE
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	fmov	s8, s3
	fmov	s9, s2
	mov	w19, w0
	fmov	s10, s1
	ldr	w8, [x20, _halo_draw_scissor.enabled@PAGEOFF]
	fmov	s11, s0
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	tbz	w8, #31, LBB64_4
; %bb.1:
Lloh318:
	adrp	x0, l_.str.7@PAGE
Lloh319:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_config_boolean
	cmp	w0, #0
	cset	w8, ne
	str	w8, [x20, _halo_draw_scissor.enabled@PAGEOFF]
	cbz	w0, LBB64_3
; %bb.2:
	mov	w8, #1                          ; =0x1
	b	LBB64_4
LBB64_3:
Lloh320:
	adrp	x0, l_.str.8@PAGE
Lloh321:
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_platform_log
	ldr	w8, [x20, _halo_draw_scissor.enabled@PAGEOFF]
LBB64_4:
	cmp	w19, #0
	adrp	x9, _draw_scissor.0@PAGE
	ccmp	w8, #0, #4, ne
	adrp	x11, _draw_scissor.2@PAGE
	adrp	x12, _draw_scissor.3@PAGE
	adrp	x8, _draw_scissor.1@PAGE
	adrp	x10, _draw_scissor_on@PAGE
	str	s11, [x9, _draw_scissor.0@PAGEOFF]
	cset	w9, ne
	str	s9, [x11, _draw_scissor.2@PAGEOFF]
	str	s8, [x12, _draw_scissor.3@PAGEOFF]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	str	s10, [x8, _draw_scissor.1@PAGEOFF]
	strb	w9, [x10, _draw_scissor_on@PAGEOFF]
	ldp	d11, d10, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh318, Lloh319
	.loh AdrpAdd	Lloh320, Lloh321
                                        ; -- End function
	.globl	_halo_screen_fast_warp          ; -- Begin function halo_screen_fast_warp
	.p2align	4
_halo_screen_fast_warp:                 ; @halo_screen_fast_warp
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	adrp	x19, _halo_screen_fast_warp.on@PAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	ldr	w8, [x19, _halo_screen_fast_warp.on@PAGEOFF]
	tbz	w8, #31, LBB65_4
; %bb.1:
Lloh322:
	adrp	x0, l_.str.9@PAGE
Lloh323:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_config_boolean
	cmp	w0, #0
	cset	w8, eq
	str	w8, [x19, _halo_screen_fast_warp.on@PAGEOFF]
	cbz	w0, LBB65_3
; %bb.2:
Lloh324:
	adrp	x0, l_.str.10@PAGE
Lloh325:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_platform_log
	ldr	w8, [x19, _halo_screen_fast_warp.on@PAGEOFF]
	b	LBB65_4
LBB65_3:
	mov	w8, #1                          ; =0x1
LBB65_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	and	w0, w8, #0xff
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh322, Lloh323
	.loh AdrpAdd	Lloh324, Lloh325
                                        ; -- End function
	.globl	_halo_screen_warp_blend         ; -- Begin function halo_screen_warp_blend
	.p2align	4
_halo_screen_warp_blend:                ; @halo_screen_warp_blend
; %bb.0:
	adrp	x8, _warp_blend@PAGE
	strb	w0, [x8, _warp_blend@PAGEOFF]
	ret
                                        ; -- End function
	.globl	_halo_screen_fast_blur          ; -- Begin function halo_screen_fast_blur
	.p2align	4
_halo_screen_fast_blur:                 ; @halo_screen_fast_blur
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	adrp	x19, _halo_screen_fast_blur.on@PAGE
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	ldr	w8, [x19, _halo_screen_fast_blur.on@PAGEOFF]
	tbz	w8, #31, LBB67_4
; %bb.1:
Lloh326:
	adrp	x0, l_.str.11@PAGE
Lloh327:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_config_boolean
	cmp	w0, #0
	cset	w8, eq
	str	w8, [x19, _halo_screen_fast_blur.on@PAGEOFF]
	cbz	w0, LBB67_3
; %bb.2:
Lloh328:
	adrp	x0, l_.str.12@PAGE
Lloh329:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_platform_log
	ldr	w8, [x19, _halo_screen_fast_blur.on@PAGEOFF]
	b	LBB67_4
LBB67_3:
	mov	w8, #1                          ; =0x1
LBB67_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	and	w0, w8, #0xff
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh326, Lloh327
	.loh AdrpAdd	Lloh328, Lloh329
                                        ; -- End function
	.globl	_halo_screen_anti_alias         ; -- Begin function halo_screen_anti_alias
	.p2align	4
_halo_screen_anti_alias:                ; @halo_screen_anti_alias
; %bb.0:
Lloh330:
	adrp	x8, _device@PAGE+4936
Lloh331:
	ldr	w8, [x8, _device@PAGEOFF+4936]
	cbz	w8, LBB68_10
; %bb.1:
	sub	sp, sp, #96
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	adrp	x25, _anti_aliasing_value@PAGE
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	mov	w23, w1
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	mov	w19, w3
	ldr	w8, [x25, _anti_aliasing_value@PAGEOFF]
	mov	w20, w2
	mov	w24, w0
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	tbz	w8, #31, LBB68_3
; %bb.2:
	bl	_anti_aliasing_read
	ldr	w8, [x25, _anti_aliasing_value@PAGEOFF]
LBB68_3:
	sub	w8, w8, #1
	cmp	w8, #1
	b.hi	LBB68_9
; %bb.4:
Lloh332:
	adrp	x0, _device@PAGE+52
Lloh333:
	add	x0, x0, _device@PAGEOFF+52
	add	x2, sp, #8
	mov	x3, sp
	mov	w1, wzr
	bl	_surface_describe
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.ne	LBB68_9
; %bb.5:
	scvtf	s0, w24
	scvtf	s2, w20
	scvtf	s1, w23
	scvtf	s5, w19
	ldp	s3, s4, [sp]
	fmov	s6, #0.50000000
	fmul	s0, s3, s0
	fmul	s2, s3, s2
	fmul	s1, s4, s1
	fmul	s3, s4, s5
	fadd	s0, s0, s6
	fadd	s2, s2, s6
	fadd	s1, s1, s6
	fadd	s3, s3, s6
	fcvtms	w19, s0
	fcvtms	w8, s2
	fcvtms	w20, s1
	fcvtms	w24, s3
	subs	w23, w8, w19
	ccmp	w24, w20, #4, gt
	b.le	LBB68_9
; %bb.6:
	adrp	x25, _stream_used@PAGE
	adrp	x26, _stream@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
	ldr	w1, [x25, _stream_used@PAGEOFF]
	ldr	w0, [x26, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4049
	cmp	w8, w9
	b.hs	LBB68_8
; %bb.7:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh334:
	adrp	x10, _streams@PAGE
Lloh335:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x26, _stream@PAGEOFF]
LBB68_8:
	mov	x9, #14                         ; =0xe
	add	x8, x0, w1, sxtw
	movk	x9, #48, lsl #32
	ldur	q0, [sp, #8]
	ldr	x11, [sp, #24]
	add	w10, w1, #48
	str	x9, [x8]
	sub	w9, w24, w20
	str	w10, [x25, _stream_used@PAGEOFF]
	stur	q0, [x8, #8]
	str	x11, [x8, #24]
	stp	w19, w20, [x8, #32]
	stp	w23, w9, [x8, #40]
LBB68_9:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
LBB68_10:
	ret
	.loh AdrpLdr	Lloh330, Lloh331
	.loh AdrpAdd	Lloh332, Lloh333
	.loh AdrpAdd	Lloh334, Lloh335
                                        ; -- End function
	.p2align	4                               ; -- Begin function surface_describe
_surface_describe:                      ; @surface_describe
; %bb.0:
	sub	sp, sp, #160
	fmov	v0.2s, #1.00000000
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	mov	x23, x0
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	stp	xzr, xzr, [x2]
	str	xzr, [x2, #16]
	str	d0, [x3]
	cbz	w23, LBB69_17
; %bb.1:
	ldr	w8, [x23, #4]
	cbz	w8, LBB69_17
; %bb.2:
	mov	w24, w1
	mov	x20, x2
	ldp	w0, w1, [x23, #12]
	add	x2, sp, #44
	mov	x19, x3
	bl	_xgpu_texture_describe
	ldr	w8, [sp, #44]
	sub	w25, w8, #42
	cmp	w25, #8
	ccmp	w24, #0, #4, hs
	b.ne	LBB69_17
; %bb.3:
	ldur	d0, [sp, #48]
	str	q0, [sp, #16]                   ; 16-byte Spill
	bl	_halo_screen_width
	ldr	q3, [sp, #16]                   ; 16-byte Reload
	fmov	w9, s3
	mov	w8, v3.s[1]
	cmp	w9, w0
	mov	w9, #480                        ; =0x1e0
	ccmp	w8, w9, #0, eq
	b.ne	LBB69_5
; %bb.4:
Lloh336:
	adrp	x8, _screen_scale.0@PAGE
Lloh337:
	adrp	x9, _screen_scale.1@PAGE
Lloh338:
	ldr	s4, [x8, _screen_scale.0@PAGEOFF]
Lloh339:
	ldr	s0, [x9, _screen_scale.1@PAGEOFF]
	b	LBB69_16
LBB69_5:
	fmov	s4, #1.00000000
	cmp	w25, #8
	b.hs	LBB69_7
; %bb.6:
	fmov	s0, #1.00000000
	b	LBB69_16
LBB69_7:
	ldp	w0, w1, [x23, #12]
	add	x2, sp, #44
	bl	_xgpu_texture_describe
	ldp	w9, w8, [sp, #48]
	fmov	s4, #1.00000000
	ldr	w10, [sp, #44]
	fmov	s0, #1.00000000
	ldr	q3, [sp, #16]                   ; 16-byte Reload
	cmp	w8, #128
	mov	w8, #128                        ; =0x80
	ccmp	w9, w8, #0, eq
	ccmp	w10, #5, #0, eq
	b.ne	LBB69_16
; %bb.8:
	adrp	x24, _shadow_scale@PAGE
	ldr	w8, [x24, _shadow_scale@PAGEOFF]
	cbnz	w8, LBB69_15
; %bb.9:
	bl	_config_changes
	adrp	x8, _shadow_scale_read_at@PAGE
	str	w0, [x8, _shadow_scale_read_at@PAGEOFF]
Lloh340:
	adrp	x0, l_.str.26@PAGE
Lloh341:
	add	x0, x0, l_.str.26@PAGEOFF
	bl	_config_integer
	cmp	w0, #256
	b.ge	LBB69_11
; %bb.10:
	mov	w8, #1                          ; =0x1
	b	LBB69_14
LBB69_11:
	cmp	w0, #512
	b.ge	LBB69_13
; %bb.12:
	mov	w8, #2                          ; =0x2
	b	LBB69_14
LBB69_13:
	cmp	w0, #1024
	mov	w8, #8                          ; =0x8
	mov	w9, #4                          ; =0x4
	csel	w8, w9, w8, lt
LBB69_14:
Lloh342:
	adrp	x0, l_.str.1@PAGE
Lloh343:
	add	x0, x0, l_.str.1@PAGEOFF
	lsl	w9, w8, #7
	str	w8, [x24, _shadow_scale@PAGEOFF]
	stp	w9, w9, [sp]
	bl	_platform_log
	ldr	w8, [x24, _shadow_scale@PAGEOFF]
	ldr	q3, [sp, #16]                   ; 16-byte Reload
LBB69_15:
	scvtf	s4, w8
	fmov	s0, s4
LBB69_16:
	mov	v1.16b, v4.16b
	ldr	w8, [x23, #4]
	ucvtf	v2.2s, v3.2s
	cmp	w25, #8
	mov	w9, #1                          ; =0x1
	stur	d3, [x20, #4]
	cinc	w9, w9, lo
	str	w8, [x20]
	mov	v1.s[1], v0.s[0]
	str	w9, [x20, #20]
	fmul	v1.2s, v1.2s, v2.2s
	movi	v2.2s, #63, lsl #24
	fadd	v1.2s, v1.2s, v2.2s
	fcvtzu	v1.2s, v1.2s
	stur	d1, [x20, #12]
	stp	s4, s0, [x19]
LBB69_17:
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.loh AdrpLdr	Lloh337, Lloh339
	.loh AdrpLdr	Lloh336, Lloh338
	.loh AdrpAdd	Lloh340, Lloh341
	.loh AdrpAdd	Lloh342, Lloh343
                                        ; -- End function
	.globl	_xgpu_gl_state_invalidate       ; -- Begin function xgpu_gl_state_invalidate
	.p2align	4
_xgpu_gl_state_invalidate:              ; @xgpu_gl_state_invalidate
; %bb.0:
	ret
                                        ; -- End function
	.globl	_xgpu_gl_ready                  ; -- Begin function xgpu_gl_ready
	.p2align	4
_xgpu_gl_ready:                         ; @xgpu_gl_ready
; %bb.0:
	mov	w0, #1                          ; =0x1
	ret
                                        ; -- End function
	.globl	_Direct3DCreate8                ; -- Begin function Direct3DCreate8
	.p2align	4
_Direct3DCreate8:                       ; @Direct3DCreate8
; %bb.0:
	mov	w0, #1                          ; =0x1
	ret
                                        ; -- End function
	.globl	_Direct3D_SetPushBufferSize     ; -- Begin function Direct3D_SetPushBufferSize
	.p2align	4
_Direct3D_SetPushBufferSize:            ; @Direct3D_SetPushBufferSize
; %bb.0:
	ret
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function Direct3D_CreateDevice
lCPI74_0:
	.long	16843009                        ; 0x1010101
	.long	7680                            ; 0x1e00
	.long	7680                            ; 0x1e00
	.long	519                             ; 0x207
lCPI74_1:
	.long	0xbf800000                      ; float -1
	.long	0xbf800000                      ; float -1
	.long	0x3f000000                      ; float 0.5
	.long	0x3f800000                      ; float 1
lCPI74_2:
	.long	0x00000000                      ; float 0
	.long	0x00000000                      ; float 0
	.long	0x3f800000                      ; float 1
	.long	0x40400000                      ; float 3
lCPI74_3:
	.long	0xbf800000                      ; float -1
	.long	0x3f000000                      ; float 0.5
	.long	0x3f800000                      ; float 1
	.long	0x00000000                      ; float 0
lCPI74_4:
	.long	0x00000000                      ; float 0
	.long	0x3f800000                      ; float 1
	.long	0xbf800000                      ; float -1
	.long	0x40400000                      ; float 3
lCPI74_5:
	.long	0x3f000000                      ; float 0.5
	.long	0x3f800000                      ; float 1
	.long	0x00000000                      ; float 0
	.long	0x00000000                      ; float 0
lCPI74_6:
	.long	0xbf800000                      ; float -1
	.long	0xbf800000                      ; float -1
	.long	0x3f000000                      ; float 0.5
	.long	0x00000000                      ; float 0
lCPI74_7:
	.long	0x3f800000                      ; float 1
	.long	0x00000000                      ; float 0
	.long	0x3f800000                      ; float 1
	.long	0x40400000                      ; float 3
lCPI74_8:
	.long	0xbf800000                      ; float -1
	.long	0x3f000000                      ; float 0.5
	.long	0x00000000                      ; float 0
	.long	0x3f800000                      ; float 1
lCPI74_9:
	.long	0x3f000000                      ; float 0.5
	.long	0x00000000                      ; float 0
	.long	0x3f800000                      ; float 1
	.long	0x00000000                      ; float 0
lCPI74_10:
	.long	0x00000000                      ; float 0
	.long	0x3f800000                      ; float 1
	.long	0x3f800000                      ; float 1
	.long	0x40400000                      ; float 3
lCPI74_11:
	.long	0xbf800000                      ; float -1
	.long	0x3f000000                      ; float 0.5
	.long	0x00000000                      ; float 0
	.long	0x00000000                      ; float 0
lCPI74_12:
	.long	0x3f800000                      ; float 1
	.long	0x3f800000                      ; float 1
	.long	0xbf800000                      ; float -1
	.long	0x40400000                      ; float 3
lCPI74_13:
	.long	0x3f000000                      ; float 0.5
	.long	0x00000000                      ; float 0
	.long	0x00000000                      ; float 0
	.long	0x3f800000                      ; float 1
lCPI74_14:
	.long	0                               ; 0x0
	.long	255                             ; 0xff
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI74_15:
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	255                             ; 0xff
	.long	0                               ; 0x0
lCPI74_16:
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	255                             ; 0xff
	.long	1                               ; 0x1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_Direct3D_CreateDevice
	.p2align	4
_Direct3D_CreateDevice:                 ; @Direct3D_CreateDevice
; %bb.0:
	sub	sp, sp, #224
Lloh344:
	adrp	x8, _device@PAGE+4948
	stp	x20, x19, [sp, #192]            ; 16-byte Folded Spill
	mov	x19, x5
	stp	x28, x27, [sp, #144]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #160]            ; 16-byte Folded Spill
Lloh345:
	ldr	w8, [x8, _device@PAGEOFF+4948]
	stp	x24, x23, [sp, #176]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
	cbz	w8, LBB74_2
LBB74_1:
Lloh346:
	adrp	x8, _device@PAGE
Lloh347:
	add	x8, x8, _device@PAGEOFF
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	mov	w0, wzr
	str	w8, [x19]
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
LBB74_2:
Lloh348:
	adrp	x24, _device@PAGE
Lloh349:
	add	x24, x24, _device@PAGEOFF
	mov	x0, x24
	mov	w1, #4952                       ; =0x1358
	mov	x25, x4
	bl	_bzero
	mov	w20, #480                       ; =0x1e0
	mov	w23, #640                       ; =0x280
	cbz	w25, LBB74_4
; %bb.3:
	ldp	q0, q1, [x25]
	ldr	q2, [x25, #32]
	ldr	w8, [x25, #48]
	stp	q0, q1, [x24]
	ldp	w9, w10, [x24]
	str	w8, [x24, #48]
	str	q2, [x24, #32]
	cmp	w9, #0
	csel	w23, w23, w9, eq
	cmp	w10, #0
	csel	w20, w20, w10, eq
LBB74_4:
Lloh350:
	adrp	x24, _device@PAGE+52
Lloh351:
	add	x24, x24, _device@PAGEOFF+52
	mov	x0, x24
	mov	w1, #18                         ; =0x12
	mov	w2, w23
	mov	w3, w20
	bl	_d3d8_surface_initialize
	add	x0, x24, #56
	mov	w1, #46                         ; =0x2e
	mov	w2, w23
	mov	w3, w20
	sub	x25, x24, #52
	add	x26, x24, #56
	bl	_d3d8_surface_initialize
	fmov	v0.2s, #1.00000000
	mov	w8, #1065353216                 ; =0x3f800000
	stp	w24, w26, [x24, #80]
	mov	w9, #32774                      ; =0x8006
Lloh352:
	adrp	x10, lCPI74_0@PAGE
	mov	w11, #6914                      ; =0x1b02
	str	w8, [x24, #132]
	str	w8, [x24, #152]
	str	w8, [x24, #196]
	str	w8, [x24, #216]
	str	w8, [x24, #260]
	str	w8, [x24, #280]
	str	w8, [x24, #324]
	str	w8, [x24, #344]
	str	w8, [x24, #388]
	str	w8, [x24, #408]
	str	w8, [x24, #452]
	str	w8, [x24, #472]
	str	w8, [x24, #516]
	str	w8, [x24, #536]
	str	w8, [x24, #580]
	str	w8, [x24, #600]
	str	w8, [x24, #644]
	str	w8, [x24, #664]
	str	w8, [x24, #708]
	str	w8, [x24, #728]
	str	w8, [x24, #748]
Lloh353:
	adrp	x8, _D3D__RenderState@GOTPAGE
	stur	d0, [x24, #172]
	stur	d0, [x24, #236]
	str	d0, [x25, #352]
	str	d0, [x25, #416]
	str	d0, [x25, #480]
	str	d0, [x25, #544]
	str	d0, [x25, #608]
	str	d0, [x25, #672]
	str	d0, [x25, #736]
	mov	w25, #1                         ; =0x1
	stur	d0, [x24, #108]
	movi	d0, #0x0000ff000000ff
Lloh354:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
	stp	w23, w20, [x24, #96]
	str	w25, [x24, #4892]
	str	w9, [x8, #296]
	mov	w9, #2305                       ; =0x901
	str	w9, [x8, #508]
	add	x9, x8, #268
	str	d0, [x8, #288]
Lloh355:
	ldr	q0, [x10, lCPI74_0@PAGEOFF]
	mov	x10, #515                       ; =0x203
	movk	x10, #519, lsl #32
	str	w11, [x8, #476]
Lloh356:
	adrp	x11, _D3D__TextureState@GOTPAGE
	str	w25, [x8, #492]
	stur	x10, [x8, #228]
	mov	x10, #7680                      ; =0x1e00
	str	q0, [x9]
	movi	v0.4s, #1
Lloh357:
	ldr	w11, [x11, _D3D__TextureState@GOTPAGEOFF]
	add	x9, x8, #500
	str	w25, [x8, #256]
	movk	x10, #2304, lsl #32
	str	x25, [x8, #248]
	add	x8, x11, #296
	str	x10, [x9]
	stur	q0, [x11, #40]
	str	w25, [x11, #56]
	str	q0, [x8]
	add	x8, x11, #424
	str	w25, [x11, #72]
	stur	q0, [x11, #168]
	str	w25, [x11, #184]
	str	w25, [x11, #200]
	str	w25, [x11, #312]
	str	w25, [x11, #328]
	str	q0, [x8]
	str	w25, [x11, #440]
	str	w25, [x11, #456]
	bl	_viewport_update_constants
Lloh358:
	adrp	x0, l_.str.13@PAGE
Lloh359:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_config_boolean
	cbz	w0, LBB74_6
LBB74_5:
Lloh360:
	adrp	x0, l_.str.15@PAGE
Lloh361:
	add	x0, x0, l_.str.15@PAGEOFF
	b	LBB74_8
LBB74_6:
	mov	w0, w23
	mov	w1, w20
	bl	_platform_video_initialize
	cbz	w0, LBB74_5
; %bb.7:
	adrp	x8, _device@PAGE+4936
	mov	w9, #1                          ; =0x1
	str	w9, [x8, _device@PAGEOFF+4936]
	bl	_memory_watch_initialize
Lloh362:
	adrp	x0, l_.str.14@PAGE
Lloh363:
	add	x0, x0, l_.str.14@PAGEOFF
LBB74_8:
	bl	_platform_log
Lloh364:
	adrp	x8, _device@PAGE+4936
Lloh365:
	add	x8, x8, _device@PAGEOFF+4936
	ldr	w9, [x8]
	str	w25, [x8, #12]
	cbz	w9, LBB74_1
; %bb.9:
Lloh366:
	adrp	x0, l_.str.16@PAGE
Lloh367:
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_config_boolean
	cbz	w0, LBB74_1
; %bb.10:
	mov	w0, #4096                       ; =0x1000
	movk	w0, #64, lsl #16
	bl	_malloc
	mov	x25, x0
	cbz	w25, LBB74_21
; %bb.11:
Lloh368:
	adrp	x8, lCPI74_1@PAGE
Lloh369:
	adrp	x9, lCPI74_2@PAGE
Lloh370:
	adrp	x10, lCPI74_3@PAGE
	mov	w24, #1065353216                ; =0x3f800000
	add	x0, sp, #48
	mov	w1, #84                         ; =0x54
Lloh371:
	ldr	q0, [x8, lCPI74_1@PAGEOFF]
Lloh372:
	adrp	x8, lCPI74_4@PAGE
Lloh373:
	ldr	q1, [x9, lCPI74_2@PAGEOFF]
Lloh374:
	adrp	x9, lCPI74_5@PAGE
Lloh375:
	ldr	q2, [x10, lCPI74_3@PAGEOFF]
Lloh376:
	ldr	q4, [x8, lCPI74_4@PAGEOFF]
Lloh377:
	ldr	q3, [x9, lCPI74_5@PAGEOFF]
	str	w24, [sp, #128]
	stp	q1, q2, [sp, #64]
	stp	q4, q0, [sp, #32]               ; 16-byte Folded Spill
	stp	q4, q3, [sp, #96]
	bl	_vk_data_put
Lloh378:
	adrp	x8, lCPI74_6@PAGE
Lloh379:
	adrp	x9, lCPI74_7@PAGE
Lloh380:
	adrp	x10, lCPI74_8@PAGE
	str	w0, [sp, #28]                   ; 4-byte Spill
	add	x0, sp, #48
	mov	w1, #84                         ; =0x54
Lloh381:
	ldr	q3, [x8, lCPI74_6@PAGEOFF]
Lloh382:
	adrp	x8, lCPI74_9@PAGE
Lloh383:
	ldr	q0, [x9, lCPI74_7@PAGEOFF]
Lloh384:
	ldr	q1, [x10, lCPI74_8@PAGEOFF]
Lloh385:
	ldr	q2, [x8, lCPI74_9@PAGEOFF]
	str	q3, [sp]                        ; 16-byte Spill
	stp	q3, q0, [sp, #48]
	ldr	q0, [sp, #32]                   ; 16-byte Reload
	str	q2, [sp, #112]
	str	w24, [sp, #128]
	stp	q1, q0, [sp, #80]
	bl	_vk_data_put
	adrp	x26, _stream_used@PAGE
	adrp	x27, _stream@PAGE
	adrp	x28, _stream_index@PAGE
	str	w0, [sp, #32]                   ; 4-byte Spill
	ldr	w1, [x26, _stream_used@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4009
	cmp	w8, #87
	b.hi	LBB74_13
; %bb.12:
	ldr	w0, [x27, _stream@PAGEOFF]
	bl	_host_vk_submit
	ldr	w8, [x28, _stream_index@PAGEOFF]
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	str	wzr, [x26, _stream_used@PAGEOFF]
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh386:
	adrp	x9, _streams@PAGE
Lloh387:
	add	x9, x9, _streams@PAGEOFF
	add	w9, w9, w8, lsl #22
	str	w8, [x28, _stream_index@PAGEOFF]
	str	w9, [x27, _stream@PAGEOFF]
LBB74_13:
	mov	w8, #65512                      ; =0xffe8
	mov	w2, #4096                       ; =0x1000
	movk	w8, #63, lsl #16
	mov	x0, x25
	sub	w8, w8, w1
	mov	w1, #165                        ; =0xa5
	movk	w2, #64, lsl #16
	and	w8, w8, #0xfffffffc
	sub	w20, w8, #40
	bl	_memset
Lloh388:
	adrp	x8, lCPI74_10@PAGE
Lloh389:
	adrp	x9, lCPI74_11@PAGE
Lloh390:
	adrp	x10, lCPI74_12@PAGE
	ldr	q4, [sp]                        ; 16-byte Reload
	mov	w1, #4096                       ; =0x1000
	mov	x0, x25
Lloh391:
	ldr	q0, [x8, lCPI74_10@PAGEOFF]
Lloh392:
	adrp	x8, lCPI74_13@PAGE
Lloh393:
	ldr	q1, [x9, lCPI74_11@PAGEOFF]
	add	x9, x25, w20, sxtw
Lloh394:
	ldr	q2, [x10, lCPI74_12@PAGEOFF]
	movk	w1, #64, lsl #16
Lloh395:
	ldr	q3, [x8, lCPI74_13@PAGEOFF]
	stp	q4, q0, [x9]
	str	w24, [x9, #80]
	stp	q1, q2, [x9, #32]
	str	q3, [x9, #64]
	bl	_vk_data_put
	str	w0, [sp]                        ; 4-byte Spill
	mov	x0, x25
	bl	_free
	ldr	w1, [x26, _stream_used@PAGEOFF]
Lloh396:
	adrp	x23, _streams@PAGE
Lloh397:
	add	x23, x23, _streams@PAGEOFF
	ldr	w0, [x27, _stream@PAGEOFF]
	mov	w9, #-4194305                   ; =0xffbfffff
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4065
	cmp	w8, w9
	b.hs	LBB74_15
; %bb.14:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	ldr	w8, [x28, _stream_index@PAGEOFF]
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	mov	x24, x23
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
	add	x0, x23, x8, lsl #22
	mov	x23, x27
	str	w8, [x28, _stream_index@PAGEOFF]
	str	w0, [x27, _stream@PAGEOFF]
	b	LBB74_16
LBB74_15:
	mov	x24, x23
	mov	x23, x27
LBB74_16:
Lloh398:
	adrp	x9, lCPI74_14@PAGE
	mov	x25, #5                         ; =0x5
	add	x10, x0, w1, sxtw
	movk	x25, #32, lsl #32
	add	w8, w1, #32
	mov	w27, #4194240                   ; =0x3fffc0
Lloh399:
	ldr	q0, [x9, lCPI74_14@PAGEOFF]
	cmp	w1, w27
	ldr	w9, [sp, #28]                   ; 4-byte Reload
	str	x25, [x10]
	str	w8, [x26, _stream_used@PAGEOFF]
	stur	q0, [x10, #12]
	str	w9, [x10, #8]
	str	wzr, [x10, #28]
	b.le	LBB74_18
; %bb.17:
	mov	w1, w8
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	ldr	w9, [x28, _stream_index@PAGEOFF]
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w8, wzr
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
	add	x0, x24, x9, lsl #22
	str	w9, [x28, _stream_index@PAGEOFF]
	str	w0, [x23, _stream@PAGEOFF]
LBB74_18:
Lloh400:
	adrp	x9, lCPI74_15@PAGE
	add	x10, x0, w8, sxtw
	add	w1, w8, #32
	cmp	w8, w27
Lloh401:
	ldr	q0, [x9, lCPI74_15@PAGEOFF]
	ldr	w9, [sp, #32]                   ; 4-byte Reload
	str	x25, [x10]
	str	w1, [x26, _stream_used@PAGEOFF]
	stur	q0, [x10, #12]
	str	w9, [x10, #8]
	str	wzr, [x10, #28]
	b.ls	LBB74_20
; %bb.19:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	ldr	w8, [x28, _stream_index@PAGEOFF]
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
	add	x0, x24, x8, lsl #22
	str	w8, [x28, _stream_index@PAGEOFF]
	str	w0, [x23, _stream@PAGEOFF]
LBB74_20:
	mov	x9, #5                          ; =0x5
	add	x8, x0, w1, sxtw
	movk	x9, #32, lsl #32
Lloh402:
	adrp	x10, lCPI74_16@PAGE
	add	w1, w1, #32
                                        ; kill: def $w0 killed $w0 killed $x0
	str	x9, [x8]
Lloh403:
	ldr	q0, [x10, lCPI74_16@PAGEOFF]
	ldr	w9, [sp]                        ; 4-byte Reload
	str	w1, [x26, _stream_used@PAGEOFF]
	str	q0, [x8, #16]
	stp	w9, w20, [x8, #8]
	bl	_host_vk_submit
	ldr	w8, [x28, _stream_index@PAGEOFF]
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	adrp	x10, _data_id@PAGE
	str	wzr, [x26, _stream_used@PAGEOFF]
	add	w8, w8, #1
	str	wzr, [x10, _data_id@PAGEOFF]
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh404:
	adrp	x9, _streams@PAGE
Lloh405:
	add	x9, x9, _streams@PAGEOFF
	add	w9, w9, w8, lsl #22
	str	w8, [x28, _stream_index@PAGEOFF]
	str	w9, [x23, _stream@PAGEOFF]
LBB74_21:
	mov	x20, #48879                     ; =0xbeef
Lloh406:
	adrp	x0, l_.str.34@PAGE
Lloh407:
	add	x0, x0, l_.str.34@PAGEOFF
	movk	x20, #57005, lsl #16
	movk	x20, #32343, lsl #32
Lloh408:
	adrp	x3, l_.str.35@PAGE
Lloh409:
	add	x3, x3, l_.str.35@PAGEOFF
	movk	x20, #24095, lsl #48
	mov	w1, wzr
	mov	x2, x20
	mov	w4, #1                          ; =0x1
	bl	_shader_self_test_one
Lloh410:
	adrp	x0, l_.str.36@PAGE
Lloh411:
	add	x0, x0, l_.str.36@PAGEOFF
Lloh412:
	adrp	x3, l_.str.37@PAGE
Lloh413:
	add	x3, x3, l_.str.37@PAGEOFF
	add	x2, x20, #1
	mov	w1, #1                          ; =0x1
	mov	w4, #1                          ; =0x1
	bl	_shader_self_test_one
Lloh414:
	adrp	x0, l_.str.38@PAGE
Lloh415:
	add	x0, x0, l_.str.38@PAGEOFF
Lloh416:
	adrp	x3, l_.str.39@PAGE
Lloh417:
	add	x3, x3, l_.str.39@PAGEOFF
	add	x2, x20, #2
	mov	w1, #1                          ; =0x1
	mov	w4, wzr
	bl	_shader_self_test_one
	b	LBB74_1
	.loh AdrpLdr	Lloh344, Lloh345
	.loh AdrpAdd	Lloh346, Lloh347
	.loh AdrpAdd	Lloh348, Lloh349
	.loh AdrpAdd	Lloh358, Lloh359
	.loh AdrpLdrGot	Lloh356, Lloh357
	.loh AdrpLdrGot	Lloh353, Lloh354
	.loh AdrpLdr	Lloh352, Lloh355
	.loh AdrpAdd	Lloh350, Lloh351
	.loh AdrpAdd	Lloh360, Lloh361
	.loh AdrpAdd	Lloh362, Lloh363
	.loh AdrpAdd	Lloh364, Lloh365
	.loh AdrpAdd	Lloh366, Lloh367
	.loh AdrpLdr	Lloh382, Lloh385
	.loh AdrpLdr	Lloh380, Lloh384
	.loh AdrpLdr	Lloh379, Lloh383
	.loh AdrpAdrp	Lloh378, Lloh382
	.loh AdrpLdr	Lloh378, Lloh381
	.loh AdrpLdr	Lloh374, Lloh377
	.loh AdrpLdr	Lloh372, Lloh376
	.loh AdrpLdr	Lloh370, Lloh375
	.loh AdrpAdrp	Lloh369, Lloh374
	.loh AdrpLdr	Lloh369, Lloh373
	.loh AdrpAdrp	Lloh368, Lloh372
	.loh AdrpLdr	Lloh368, Lloh371
	.loh AdrpAdd	Lloh386, Lloh387
	.loh AdrpAdd	Lloh396, Lloh397
	.loh AdrpLdr	Lloh392, Lloh395
	.loh AdrpLdr	Lloh390, Lloh394
	.loh AdrpLdr	Lloh389, Lloh393
	.loh AdrpAdrp	Lloh388, Lloh392
	.loh AdrpLdr	Lloh388, Lloh391
	.loh AdrpLdr	Lloh398, Lloh399
	.loh AdrpLdr	Lloh400, Lloh401
	.loh AdrpAdd	Lloh404, Lloh405
	.loh AdrpLdr	Lloh402, Lloh403
	.loh AdrpAdd	Lloh416, Lloh417
	.loh AdrpAdd	Lloh414, Lloh415
	.loh AdrpAdd	Lloh412, Lloh413
	.loh AdrpAdd	Lloh410, Lloh411
	.loh AdrpAdd	Lloh408, Lloh409
	.loh AdrpAdd	Lloh406, Lloh407
                                        ; -- End function
	.p2align	4                               ; -- Begin function viewport_update_constants
_viewport_update_constants:             ; @viewport_update_constants
; %bb.0:
Lloh418:
	adrp	x8, _device@PAGE+136
Lloh419:
	ldr	w8, [x8, _device@PAGEOFF+136]
	cbz	w8, LBB75_2
; %bb.1:
	sub	sp, sp, #80
	ldp	w0, w1, [x8, #12]
	add	x2, sp, #12
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	bl	_xgpu_texture_describe
	mov	w10, #65280                     ; =0xff00
	mov	w9, #1266679807                 ; =0x4b7fffff
	movk	w10, #18303, lsl #16
	ldr	w8, [sp, #12]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	fmov	s0, w9
	mov	w9, #-6                         ; =0xfffffffa
	fmov	s1, w10
	sub	w8, w8, #44
	tst	w8, w9
	fcsel	s0, s1, s0, eq
	add	sp, sp, #80
	b	LBB75_3
LBB75_2:
	mov	w8, #1266679807                 ; =0x4b7fffff
	fmov	s0, w8
LBB75_3:
Lloh420:
	adrp	x8, _device@PAGE+140
Lloh421:
	add	x8, x8, _device@PAGEOFF+140
	fmov	s5, #-0.50000000
	ldp	s3, s1, [x8, #16]
	ldr	s2, [x8, #12]
	ldp	d6, d4, [x8]
	fsub	s7, s1, s3
	fmul	s1, s0, s3
	ldrb	w9, [x8, #696]
	ucvtf	s16, s2
	str	wzr, [x8, #4340]
	ucvtf	v2.2s, v4.2s, #1
	str	wzr, [x8, #4356]
	ucvtf	v6.2s, v6.2s
	fmul	s3, s0, s7
	str	s1, [x8, #4352]
	fmul	s4, s16, s5
	str	s2, [x8, #4328]
	fadd	v0.2s, v2.2s, v6.2s
	str	s3, [x8, #4336]
	str	s4, [x8, #4332]
	str	d0, [x8, #4344]
	tbnz	w9, #4, LBB75_8
; %bb.4:
	mov	v2.s[1], v4.s[0]
Lloh422:
	adrp	x12, _device@PAGE+2324
Lloh423:
	add	x12, x12, _device@PAGEOFF+2324
	adrp	x8, _constants_serial@PAGE
	fmov	w11, s1
	ldr	w10, [x8, _constants_serial@PAGEOFF]
	mov	v2.s[2], v3.s[0]
	ldr	q3, [x12]
	mov	v2.s[3], wzr
	cmeq	v2.4s, v3.4s, v2.4s
	addp	d2, v2.2d
	fmov	x9, d2
	cmn	x9, #2
Lloh424:
	adrp	x9, _constant_log@PAGE
Lloh425:
	add	x9, x9, _constant_log@PAGEOFF
	b.eq	LBB75_6
; %bb.5:
	ldr	q1, [x12, #2144]
	add	w10, w10, #1
	mov	w13, #58                        ; =0x3a
	and	w14, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q1, [x12]
	strb	w13, [x9, w14, uxtw]
LBB75_6:
	movi	v1.2d, #0000000000000000
	mov	v1.s[0], w11
Lloh426:
	adrp	x11, _device@PAGE+2340
Lloh427:
	add	x11, x11, _device@PAGEOFF+2340
	mov	v0.d[1], v1.d[0]
	ldr	q1, [x11]
	cmeq	v0.4s, v1.4s, v0.4s
	addp	d0, v0.2d
	fmov	x12, d0
	cmn	x12, #2
	b.eq	LBB75_8
; %bb.7:
	ldr	q0, [x11, #2144]
	add	w10, w10, #1
	mov	w12, #59                        ; =0x3b
	and	w13, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q0, [x11]
	strb	w12, [x9, w13, uxtw]
LBB75_8:
	ret
	.loh AdrpLdr	Lloh418, Lloh419
	.loh AdrpAdd	Lloh420, Lloh421
	.loh AdrpAdd	Lloh424, Lloh425
	.loh AdrpAdd	Lloh422, Lloh423
	.loh AdrpAdd	Lloh426, Lloh427
                                        ; -- End function
	.globl	_halo_ui_pointer_update         ; -- Begin function halo_ui_pointer_update
	.p2align	4
_halo_ui_pointer_update:                ; @halo_ui_pointer_update
; %bb.0:
	sub	sp, sp, #96
	cmp	w0, #0
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	cset	w23, ne
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	mov	w20, w0
	mov	w0, w23
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	mov	x19, x1
	bl	_platform_menus_set_active
	mov	w0, w23
	bl	_platform_ui_pointer_set_active
	cbz	w20, LBB76_3
; %bb.1:
	mov	x0, sp
	bl	_platform_ui_pointer_read
	cbz	w0, LBB76_3
; %bb.2:
	ldp	s0, s1, [sp]
	mov	x20, x19
	add	x2, x19, #2
	mov	w0, #1                          ; =0x1
	mov	x1, x19
	stp	xzr, xzr, [x19]
	mov	w23, #1                         ; =0x1
	strh	wzr, [x20, #16]!
	bl	_ui_point_from_window_on
	ldp	s0, s1, [sp, #8]
	add	x1, x19, #4
	add	x2, x19, #6
	mov	w0, #1                          ; =0x1
	bl	_ui_point_from_window_on
	ldp	w8, w9, [sp, #16]
	mov	w10, #255                       ; =0xff
	mov	w13, #-8                        ; =0xfffffff8
	ldp	w11, w12, [sp, #24]
	add	x1, x19, #14
	mov	w0, #1                          ; =0x1
	cmp	w8, #0
	ldr	w14, [sp, #44]
	cset	w8, ne
	cmp	w9, #255
	csel	w9, w9, w10, lt
	cmp	w11, #255
	csel	w11, w11, w10, lt
	cmn	w12, #8
	strb	w8, [x19, #8]
	csel	w12, w12, w13, gt
	ldr	w8, [sp, #32]
	cmp	w12, #8
	strb	w9, [x19, #9]
	mov	w9, #8                          ; =0x8
	csel	w9, w12, w9, lt
	cmp	w14, #0
	strb	w11, [x19, #10]
	cset	w11, ne
	cmp	w8, #255
	mov	x2, x20
	ldp	s0, s1, [sp, #36]
	csel	w8, w8, w10, lt
	strb	w9, [x19, #11]
	strb	w11, [x19, #12]
	strb	w8, [x19, #13]
	bl	_ui_point_from_window_on
	b	LBB76_4
LBB76_3:
	mov	w23, wzr
LBB76_4:
	mov	w0, w23
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
                                        ; -- End function
	.globl	_xgpu_gl_texture_deleted        ; -- Begin function xgpu_gl_texture_deleted
	.p2align	4
_xgpu_gl_texture_deleted:               ; @xgpu_gl_texture_deleted
; %bb.0:
	ret
                                        ; -- End function
	.globl	_halo_forge_pointer_update      ; -- Begin function halo_forge_pointer_update
	.p2align	4
_halo_forge_pointer_update:             ; @halo_forge_pointer_update
; %bb.0:
	sub	sp, sp, #80
	cmp	w0, #0
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	x19, x1
	cset	w0, ne
	stp	xzr, xzr, [x1]
	strh	wzr, [x1, #16]
	mov	x1, sp
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	bl	_platform_forge_pointer
	cbz	w0, LBB78_2
; %bb.1:
	ldp	s0, s1, [sp]
	add	x2, x19, #2
	mov	w0, wzr
	mov	x1, x19
	bl	_ui_point_from_window_on
	ldp	s0, s1, [sp, #8]
	add	x1, x19, #4
	add	x2, x19, #6
	mov	w0, wzr
	bl	_ui_point_from_window_on
	ldp	w8, w9, [sp, #16]
	mov	w11, #255                       ; =0xff
	mov	w0, #1                          ; =0x1
	ldp	w10, w12, [sp, #24]
	cmp	w8, #0
	cset	w8, ne
	cmp	w9, #255
	csel	w9, w9, w11, lt
	cmp	w10, #255
	csel	w10, w10, w11, lt
	cmn	w12, #8
	mov	w11, #-8                        ; =0xfffffff8
	strb	w8, [x19, #8]
	csel	w11, w12, w11, gt
	mov	w12, #8                         ; =0x8
	cmp	w11, #8
	strb	w9, [x19, #9]
	csel	w8, w11, w12, lt
	strb	w10, [x19, #10]
	strb	w8, [x19, #11]
LBB78_2:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
                                        ; -- End function
	.p2align	4                               ; -- Begin function ui_point_from_window_on
_ui_point_from_window_on:               ; @ui_point_from_window_on
; %bb.0:
	sub	sp, sp, #112
	mov	w8, #65535                      ; =0xffff
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	fmov	s8, s1
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	mov	w23, w0
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	mov	x19, x2
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	mov	x20, x1
	fmov	s9, s0
	strh	w8, [x2]
	strh	w8, [x1]
	bl	_halo_screen_width
	adrp	x24, _screen_width@PAGE
Lloh428:
	adrp	x8, _screen_scale.0@PAGE
Lloh429:
	adrp	x9, _screen_scale.1@PAGE
	add	x0, sp, #12
	add	x1, sp, #8
	ldr	s11, [x24, _screen_width@PAGEOFF]
Lloh430:
	ldr	s12, [x8, _screen_scale.0@PAGEOFF]
Lloh431:
	ldr	s10, [x9, _screen_scale.1@PAGEOFF]
	bl	_platform_video_window_size
	add	x0, sp, #4
	mov	x1, sp
	bl	_platform_video_drawable_size
	ldr	w9, [sp, #12]
	cmp	w9, #1
	b.lt	LBB79_9
; %bb.1:
	ldr	w8, [sp, #8]
	cmp	w8, #1
	b.lt	LBB79_9
; %bb.2:
	scvtf	s0, s11
	fmul	s1, s12, s0
	fcmp	s1, #0.0
	b.ls	LBB79_9
; %bb.3:
	mov	w10, #1139802112                ; =0x43f00000
	fmov	s0, w10
	fmul	s2, s10, s0
	fcmp	s2, #0.0
	b.ls	LBB79_9
; %bb.4:
	ldp	w11, w12, [sp]
	scvtf	s0, w12
	fmul	s3, s2, s0
	fdiv	s3, s3, s1
	fcvtzs	w10, s3
	cmp	w11, w10
	b.ge	LBB79_6
; %bb.5:
	scvtf	s3, w11
	mov	w10, w11
	fmul	s1, s1, s3
	fdiv	s1, s1, s2
	fcvtzs	w13, s1
	b	LBB79_7
LBB79_6:
	mov	w13, w12
LBB79_7:
	cmp	w10, #1
	ccmp	w13, #1, #8, ge
	b.lt	LBB79_9
; %bb.8:
	fmul	s0, s9, s0
	ucvtf	s1, w9
	ucvtf	s2, w8
	sub	w8, w12, w13
	sub	w9, w11, w10
	ucvtf	s3, w13
	add	w8, w8, w8, lsr #31
	movi	d4, #0000000000000000
	asr	w8, w8, #1
	add	w9, w9, w9, lsr #31
	asr	w9, w9, #1
	cmp	w23, #0
	fdiv	s0, s0, s1
	scvtf	s1, w11
	fmul	s1, s8, s1
	fdiv	s1, s1, s2
	scvtf	s2, w8
	ldr	w8, [x24, _screen_width@PAGEOFF]
	fsub	s0, s0, s2
	scvtf	s2, w8
	sub	w8, w8, #640
	fmul	s0, s0, s2
	scvtf	s2, w9
	mov	w9, #1139802112                 ; =0x43f00000
	fsub	s1, s1, s2
	fdiv	s0, s0, s3
	fmov	s2, w9
	scvtf	s3, w8, #1
	fmul	s1, s1, s2
	ucvtf	s2, w10
	fdiv	s1, s1, s2
	fcsel	s2, s4, s3, eq
	fsub	s0, s0, s2
	frintm	s0, s0
	frintm	s1, s1
	fcvtzs	s0, s0
	fcvtzs	s1, s1
	str	h0, [x20]
	str	h1, [x19]
LBB79_9:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpLdr	Lloh429, Lloh431
	.loh AdrpLdr	Lloh428, Lloh430
                                        ; -- End function
	.globl	_halo_scoreboard_pointer_update ; -- Begin function halo_scoreboard_pointer_update
	.p2align	4
_halo_scoreboard_pointer_update:        ; @halo_scoreboard_pointer_update
; %bb.0:
	sub	sp, sp, #80
	cmp	w0, #0
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	x19, x1
	cset	w0, ne
	stp	xzr, xzr, [x1]
	strh	wzr, [x1, #16]
	mov	x1, sp
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	bl	_platform_scoreboard_pointer
	cbz	w0, LBB80_2
; %bb.1:
	ldp	s0, s1, [sp]
	add	x2, x19, #2
	mov	w0, wzr
	mov	x1, x19
	bl	_ui_point_from_window_on
	ldp	s0, s1, [sp, #8]
	add	x1, x19, #4
	add	x2, x19, #6
	mov	w0, wzr
	bl	_ui_point_from_window_on
	ldp	w8, w9, [sp, #16]
	mov	w10, #255                       ; =0xff
	mov	w0, #1                          ; =0x1
	cmp	w8, #0
	cset	w8, ne
	cmp	w9, #255
	csel	w9, w9, w10, lt
	strb	w8, [x19, #8]
	strb	w9, [x19, #9]
LBB80_2:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
                                        ; -- End function
	.globl	_halo_screen_commit             ; -- Begin function halo_screen_commit
	.p2align	4
_halo_screen_commit:                    ; @halo_screen_commit
; %bb.0:
	sub	sp, sp, #96
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	adrp	x19, _shadow_scale@PAGE
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	ldr	w8, [x19, _shadow_scale@PAGEOFF]
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	cbz	w8, LBB81_9
; %bb.1:
	adrp	x20, _shadow_scale_read_at@PAGE
	ldr	w23, [x20, _shadow_scale_read_at@PAGEOFF]
	bl	_config_changes
	cmp	w23, w0
	b.eq	LBB81_9
; %bb.2:
	bl	_config_changes
	str	w0, [x20, _shadow_scale_read_at@PAGEOFF]
Lloh432:
	adrp	x0, l_.str.26@PAGE
Lloh433:
	add	x0, x0, l_.str.26@PAGEOFF
	bl	_config_integer
	cmp	w0, #256
	b.ge	LBB81_4
; %bb.3:
	mov	w20, #1                         ; =0x1
	b	LBB81_7
LBB81_4:
	cmp	w0, #512
	b.ge	LBB81_6
; %bb.5:
	mov	w20, #2                         ; =0x2
	b	LBB81_7
LBB81_6:
	cmp	w0, #1024
	mov	w8, #8                          ; =0x8
	mov	w9, #4                          ; =0x4
	csel	w20, w9, w8, lt
LBB81_7:
	ldr	w8, [x19, _shadow_scale@PAGEOFF]
	cmp	w20, w8
	b.eq	LBB81_9
; %bb.8:
Lloh434:
	adrp	x0, l_.str.1@PAGE
Lloh435:
	add	x0, x0, l_.str.1@PAGEOFF
	lsl	w8, w20, #7
	stp	w8, w8, [sp]
	bl	_platform_log
	str	w20, [x19, _shadow_scale@PAGEOFF]
LBB81_9:
	bl	_anti_aliasing_read
	adrp	x20, _screen_width@PAGE
	ldr	w8, [x20, _screen_width@PAGEOFF]
	cbz	w8, LBB81_13
; %bb.10:
	add	x0, sp, #28
	add	x1, sp, #24
	bl	_platform_screen_mode
	ldp	w8, w9, [sp, #24]
	cmp	w0, #0
	mov	w19, #640                       ; =0x280
	ccmp	w8, #0, #4, ne
	ccmp	w9, #0, #4, gt
	b.le	LBB81_14
; %bb.11:
	mov	w10, #480                       ; =0x1e0
	mov	w11, #1920                      ; =0x780
	ucvtf	s0, w9
	mul	w10, w9, w10
	add	w10, w10, w8, lsr #1
	sdiv	w10, w10, w8
	cmp	w10, #1920
	csel	w11, w10, w11, lt
	cmp	w10, #640
	and	w11, w11, #0x7fe
	csel	w19, w19, w11, lt
	ucvtf	s1, w19
	fdiv	s9, s0, s1
	ucvtf	s0, w8
	mov	w8, #1139802112                 ; =0x43f00000
	fmov	s1, w8
	and	w8, w10, #0xfffffffe
	cmp	w19, w8
	ccmp	w19, w10, #4, ne
	fdiv	s8, s0, s1
	b.eq	LBB81_15
; %bb.12:
	fcmp	s9, s8
	fcsel	s8, s9, s8, mi
	fmov	s9, s8
	b	LBB81_15
LBB81_13:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #96
	b	_halo_screen_width
LBB81_14:
	fmov	s8, #1.00000000
	fmov	s9, #1.00000000
LBB81_15:
	ldr	w8, [x20, _screen_width@PAGEOFF]
	adrp	x23, _screen_scale.0@PAGE
	adrp	x24, _screen_scale.1@PAGE
	cmp	w19, w8
	b.ne	LBB81_18
; %bb.16:
	ldr	s0, [x23, _screen_scale.0@PAGEOFF]
	fcmp	s9, s0
	b.ne	LBB81_18
; %bb.17:
	ldr	s0, [x24, _screen_scale.1@PAGEOFF]
	fcmp	s8, s0
	b.eq	LBB81_20
LBB81_18:
	mov	w8, #1139802112                 ; =0x43f00000
	ucvtf	s0, w19
Lloh436:
	adrp	x0, l_.str@PAGE
Lloh437:
	add	x0, x0, l_.str@PAGEOFF
	fmov	s1, w8
	mov	w8, #480                        ; =0x1e0
	fmul	s0, s9, s0
	stp	w19, w8, [sp]
	fmul	s1, s8, s1
	fcvt	d0, s0
	fcvt	d1, s1
	stp	d0, d1, [sp, #8]
	bl	_platform_log
Lloh438:
	adrp	x8, _device@PAGE+4948
	str	w19, [x20, _screen_width@PAGEOFF]
	str	s9, [x23, _screen_scale.0@PAGEOFF]
	str	s8, [x24, _screen_scale.1@PAGEOFF]
Lloh439:
	ldr	w8, [x8, _device@PAGEOFF+4948]
	cbz	w8, LBB81_20
; %bb.19:
Lloh440:
	adrp	x23, _device@PAGE
Lloh441:
	add	x23, x23, _device@PAGEOFF
	mov	x0, x23
	mov	w1, #18                         ; =0x12
	mov	w2, w19
	mov	w3, #480                        ; =0x1e0
	str	w19, [x0], #52
	bl	_d3d8_surface_resize
	add	x0, x23, #108
	mov	w1, #46                         ; =0x2e
	mov	w2, w19
	mov	w3, #480                        ; =0x1e0
	bl	_d3d8_surface_resize
	ldr	w19, [x20, _screen_width@PAGEOFF]
LBB81_20:
	mov	w0, w19
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh432, Lloh433
	.loh AdrpAdd	Lloh434, Lloh435
	.loh AdrpLdr	Lloh438, Lloh439
	.loh AdrpAdd	Lloh436, Lloh437
	.loh AdrpAdd	Lloh440, Lloh441
                                        ; -- End function
	.p2align	4                               ; -- Begin function anti_aliasing_read
_anti_aliasing_read:                    ; @anti_aliasing_read
; %bb.0:
	sub	sp, sp, #64
Lloh442:
	adrp	x0, l_.str.43@PAGE
Lloh443:
	add	x0, x0, l_.str.43@PAGEOFF
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	bl	_config_string
Lloh444:
	adrp	x1, l_.str.33@PAGE
Lloh445:
	add	x1, x1, l_.str.33@PAGEOFF
	mov	x19, x0
	bl	_strcmp
	cbz	w0, LBB82_6
; %bb.1:
Lloh446:
	adrp	x1, l_.str.32@PAGE
Lloh447:
	add	x1, x1, l_.str.32@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cbz	w0, LBB82_7
; %bb.2:
Lloh448:
	adrp	x1, l_.str.31@PAGE
Lloh449:
	add	x1, x1, l_.str.31@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cbz	w0, LBB82_8
; %bb.3:
Lloh450:
	adrp	x1, l_.str.30@PAGE
Lloh451:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cbz	w0, LBB82_9
; %bb.4:
Lloh452:
	adrp	x1, l_.str.29@PAGE
Lloh453:
	add	x1, x1, l_.str.29@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cbz	w0, LBB82_10
; %bb.5:
Lloh454:
	adrp	x1, l_.str.28@PAGE
Lloh455:
	add	x1, x1, l_.str.28@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cmp	w0, #0
	mov	w8, wzr
	cset	w20, eq
	b	LBB82_11
LBB82_6:
	mov	w20, #6                         ; =0x6
	mov	w8, #1                          ; =0x1
	b	LBB82_11
LBB82_7:
	mov	w20, #5                         ; =0x5
	mov	w8, #1                          ; =0x1
	b	LBB82_11
LBB82_8:
	mov	w20, #4                         ; =0x4
	mov	w8, #1                          ; =0x1
	b	LBB82_11
LBB82_9:
	mov	w8, wzr
	mov	w20, #3                         ; =0x3
	b	LBB82_11
LBB82_10:
	mov	w8, wzr
	mov	w20, #2                         ; =0x2
LBB82_11:
	adrp	x9, _anti_aliasing_value@PAGE
	ldr	w10, [x9, _anti_aliasing_value@PAGEOFF]
	cmp	w20, w10
	b.eq	LBB82_26
; %bb.12:
	mov	w10, #12                        ; =0xc
Lloh456:
	adrp	x12, _anti_aliasing_values@PAGE
Lloh457:
	add	x12, x12, _anti_aliasing_values@PAGEOFF
	adrp	x23, _anti_aliasing_samples@PAGE
	umaddl	x10, w20, w10, x12
	mov	w11, #1                         ; =0x1
	adrp	x13, _multisampled_count@PAGE
	str	w20, [x9, _anti_aliasing_value@PAGEOFF]
	str	w11, [x23, _anti_aliasing_samples@PAGEOFF]
	str	wzr, [x13, _multisampled_count@PAGEOFF]
	cbz	w8, LBB82_15
; %bb.13:
	ldr	w0, [x10, #8]
	bl	_host_vk_samples_supported
	cmp	w0, #1
	str	w0, [x23, _anti_aliasing_samples@PAGEOFF]
	b.hi	LBB82_17
; %bb.14:
Lloh458:
	adrp	x0, l_.str.44@PAGE
Lloh459:
	add	x0, x0, l_.str.44@PAGEOFF
	b	LBB82_25
LBB82_15:
	ldr	w1, [x10]
	mov	x0, x19
	bl	_strcmp
	cbz	w0, LBB82_18
; %bb.16:
Lloh460:
	adrp	x0, l_.str.46@PAGE
Lloh461:
	add	x0, x0, l_.str.46@PAGEOFF
	b	LBB82_25
LBB82_17:
	mov	w8, w0
Lloh462:
	adrp	x0, l_.str.45@PAGE
Lloh463:
	add	x0, x0, l_.str.45@PAGEOFF
	str	w8, [sp, #4]
	b	LBB82_25
LBB82_18:
	sub	w8, w20, #1
	cmp	w8, #1
	b.hi	LBB82_21
; %bb.19:
Lloh464:
	adrp	x1, l_.str.28@PAGE
Lloh465:
	add	x1, x1, l_.str.28@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cbz	w0, LBB82_21
; %bb.20:
Lloh466:
	adrp	x23, l_.str.48@PAGE
Lloh467:
	add	x23, x23, l_.str.48@PAGEOFF
	b	LBB82_24
LBB82_21:
Lloh468:
	adrp	x23, l_.str.50@PAGE
Lloh469:
	add	x23, x23, l_.str.50@PAGEOFF
	cmp	w20, #3
	b.eq	LBB82_23
; %bb.22:
	cbnz	w20, LBB82_24
LBB82_23:
Lloh470:
	adrp	x1, l_.str.3@PAGE
Lloh471:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x0, x19
	bl	_strcmp
Lloh472:
	adrp	x8, l_.str.49@PAGE
Lloh473:
	add	x8, x8, l_.str.49@PAGEOFF
	cmp	w0, #0
	csel	x23, x23, x8, eq
LBB82_24:
Lloh474:
	adrp	x0, l_.str.47@PAGE
Lloh475:
	add	x0, x0, l_.str.47@PAGEOFF
	str	w23, [sp, #4]
LBB82_25:
	str	w19, [sp]
	bl	_platform_log
LBB82_26:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh444, Lloh445
	.loh AdrpAdd	Lloh442, Lloh443
	.loh AdrpAdd	Lloh446, Lloh447
	.loh AdrpAdd	Lloh448, Lloh449
	.loh AdrpAdd	Lloh450, Lloh451
	.loh AdrpAdd	Lloh452, Lloh453
	.loh AdrpAdd	Lloh454, Lloh455
	.loh AdrpAdd	Lloh456, Lloh457
	.loh AdrpAdd	Lloh458, Lloh459
	.loh AdrpAdd	Lloh460, Lloh461
	.loh AdrpAdd	Lloh462, Lloh463
	.loh AdrpAdd	Lloh464, Lloh465
	.loh AdrpAdd	Lloh466, Lloh467
	.loh AdrpAdd	Lloh468, Lloh469
	.loh AdrpAdd	Lloh472, Lloh473
	.loh AdrpAdd	Lloh470, Lloh471
	.loh AdrpAdd	Lloh474, Lloh475
                                        ; -- End function
	.globl	_D3DDevice_Release              ; -- Begin function D3DDevice_Release
	.p2align	4
_D3DDevice_Release:                     ; @D3DDevice_Release
; %bb.0:
	mov	w0, #1                          ; =0x1
	ret
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function D3DDevice_GetDeviceCaps
lCPI84_0:
	.long	4096                            ; 0x1000
	.long	4096                            ; 0x1000
	.long	512                             ; 0x200
	.long	8192                            ; 0x2000
lCPI84_1:
	.long	1048575                         ; 0xfffff
	.long	65535                           ; 0xffff
	.long	16                              ; 0x10
	.long	255                             ; 0xff
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
lCPI84_2:
	.long	4294836481                      ; 0xfffe0101
	.long	192                             ; 0xc0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_D3DDevice_GetDeviceCaps
	.p2align	4
_D3DDevice_GetDeviceCaps:               ; @D3DDevice_GetDeviceCaps
; %bb.0:
	movi	v0.2d, #0000000000000000
Lloh476:
	adrp	x8, lCPI84_0@PAGE
	mov	w9, #1                          ; =0x1
	mov	x10, #4096                      ; =0x1000
	movi	v2.2s, #4
	movk	x10, #4, lsl #32
Lloh477:
	ldr	q1, [x8, lCPI84_0@PAGEOFF]
Lloh478:
	adrp	x8, lCPI84_1@PAGE
	str	w9, [x0]
	mov	w9, #8                          ; =0x8
	stur	q0, [x0, #100]
	stur	q0, [x0, #84]
	stur	q0, [x0, #148]
	str	q0, [x0, #160]
	stur	q0, [x0, #132]
	stur	q0, [x0, #116]
	stur	q0, [x0, #68]
	stur	q0, [x0, #52]
	stur	q0, [x0, #36]
	stur	q0, [x0, #20]
	stur	q0, [x0, #4]
Lloh479:
	ldr	q0, [x8, lCPI84_1@PAGEOFF]
Lloh480:
	adrp	x8, lCPI84_2@PAGE
	str	w9, [x0, #160]
	mov	x9, #257                        ; =0x101
	movk	x9, #65535, lsl #16
	str	x10, [x0, #104]
	mov	w10, #4                         ; =0x4
	movk	x9, #16256, lsl #48
	stur	q0, [x0, #180]
Lloh481:
	ldr	d0, [x8, lCPI84_2@PAGEOFF]
	mov	w8, #1115684864                 ; =0x42800000
	stur	q1, [x0, #88]
	stur	d2, [x0, #148]
	str	w10, [x0, #168]
	str	w8, [x0, #176]
	stur	d0, [x0, #196]
	stur	x9, [x0, #204]
	ret
	.loh AdrpLdr	Lloh480, Lloh481
	.loh AdrpAdrp	Lloh478, Lloh480
	.loh AdrpLdr	Lloh478, Lloh479
	.loh AdrpAdrp	Lloh476, Lloh478
	.loh AdrpLdr	Lloh476, Lloh477
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function D3DDevice_GetBackBuffer
lCPI85_0:
	.long	0x00000000                      ; float 0
	.long	0x00000000                      ; float 0
	.long	0x00000000                      ; float 0
	.long	0x3f800000                      ; float 1
lCPI85_1:
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_D3DDevice_GetBackBuffer
	.p2align	4
_D3DDevice_GetBackBuffer:               ; @D3DDevice_GetBackBuffer
; %bb.0:
	sub	sp, sp, #112
	cmn	w0, #1
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	b.eq	LBB85_3
LBB85_1:
Lloh482:
	adrp	x19, _device@PAGE+52
Lloh483:
	add	x19, x19, _device@PAGEOFF+52
	ldr	w8, [x19]
	add	w8, w8, #1
	str	w8, [x19]
LBB85_2:
	str	w19, [x2]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB85_3:
	adrp	x20, _front_buffer_ready.failed@PAGE
	ldrb	w8, [x20, _front_buffer_ready.failed@PAGEOFF]
	tbnz	w8, #0, LBB85_1
; %bb.4:
Lloh484:
	adrp	x8, _device@PAGE+4936
Lloh485:
	ldr	w8, [x8, _device@PAGEOFF+4936]
	cbz	w8, LBB85_1
; %bb.5:
Lloh486:
	adrp	x8, _device@PAGE+80
Lloh487:
	adrp	x19, _device@PAGE+76
Lloh488:
	add	x19, x19, _device@PAGEOFF+76
Lloh489:
	ldr	w8, [x8, _device@PAGEOFF+80]
	cbnz	w8, LBB85_7
; %bb.6:
	mov	x0, x19
	mov	w1, #18                         ; =0x12
	mov	x23, x2
	mov	w2, #640                        ; =0x280
	mov	w3, #480                        ; =0x1e0
	bl	_d3d8_surface_initialize
	ldr	w8, [x19, #4]
	mov	x2, x23
	cbz	w8, LBB85_14
LBB85_7:
Lloh490:
	adrp	x9, _device@PAGE+104
Lloh491:
	add	x9, x9, _device@PAGEOFF+104
	ldr	w8, [x9]
	ldr	w9, [x9, #4836]
	cmp	w8, w9
	b.eq	LBB85_13
; %bb.8:
Lloh492:
	adrp	x8, _device@PAGE
Lloh493:
	add	x8, x8, _device@PAGEOFF
	add	w9, w8, #76
	add	x0, sp, #28
	mov	x20, x2
	ldur	d0, [x8, #132]
	stp	w9, wzr, [x8, #132]
	ushll	v0.2d, v0.2s, #0
	str	q0, [sp]                        ; 16-byte Spill
	bl	_targets_bind
	cbz	w0, LBB85_12
; %bb.9:
Lloh494:
	adrp	x0, _device@PAGE+76
Lloh495:
	add	x0, x0, _device@PAGEOFF+76
	add	x2, sp, #40
	add	x3, sp, #32
	mov	w1, wzr
	bl	_surface_describe
	adrp	x23, _stream_used@PAGE
	adrp	x24, _stream@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
	ldr	w1, [x23, _stream_used@PAGEOFF]
	ldr	w0, [x24, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4041
	cmp	w8, w9
	b.hs	LBB85_11
; %bb.10:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh496:
	adrp	x10, _streams@PAGE
Lloh497:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x24, _stream@PAGEOFF]
LBB85_11:
Lloh498:
	adrp	x8, lCPI85_0@PAGE
Lloh499:
	adrp	x9, lCPI85_1@PAGE
	add	w10, w1, #56
	mov	w11, #1065353216                ; =0x3f800000
Lloh500:
	ldr	q0, [x8, lCPI85_0@PAGEOFF]
	add	x8, x0, w1, sxtw
Lloh501:
	ldr	q1, [x9, lCPI85_1@PAGEOFF]
	mov	x9, #2                          ; =0x2
	movk	x9, #56, lsl #32
	str	w10, [x23, _stream_used@PAGEOFF]
	mov	w10, #15                        ; =0xf
	str	w11, [x8, #28]
	stur	q0, [x8, #12]
	ldur	d0, [sp, #52]
	str	q1, [x8, #32]
	str	x9, [x8]
	str	w10, [x8, #8]
	str	d0, [x8, #48]
LBB85_12:
	ldr	q0, [sp]                        ; 16-byte Reload
Lloh502:
	adrp	x9, _device@PAGE+132
Lloh503:
	add	x9, x9, _device@PAGEOFF+132
	mov	x2, x20
	xtn	v0.2s, v0.2d
	ldr	w8, [x9, #4808]
	str	d0, [x9]
LBB85_13:
	ldr	w9, [x19]
	add	w8, w8, #1
	str	w8, [x19, #24]
	add	w9, w9, #1
	str	w9, [x19]
	b	LBB85_2
LBB85_14:
	mov	w8, #1                          ; =0x1
	strb	w8, [x20, _front_buffer_ready.failed@PAGEOFF]
	b	LBB85_1
	.loh AdrpAdd	Lloh482, Lloh483
	.loh AdrpLdr	Lloh484, Lloh485
	.loh AdrpAdd	Lloh487, Lloh488
	.loh AdrpLdr	Lloh486, Lloh489
	.loh AdrpAdd	Lloh490, Lloh491
	.loh AdrpAdd	Lloh492, Lloh493
	.loh AdrpAdd	Lloh494, Lloh495
	.loh AdrpAdd	Lloh496, Lloh497
	.loh AdrpLdr	Lloh499, Lloh501
	.loh AdrpLdr	Lloh498, Lloh500
	.loh AdrpAdd	Lloh502, Lloh503
                                        ; -- End function
	.globl	_D3DDevice_GetDepthStencilSurface ; -- Begin function D3DDevice_GetDepthStencilSurface
	.p2align	4
_D3DDevice_GetDepthStencilSurface:      ; @D3DDevice_GetDepthStencilSurface
; %bb.0:
Lloh504:
	adrp	x8, _device@PAGE+136
Lloh505:
	ldr	w8, [x8, _device@PAGEOFF+136]
	str	w8, [x0]
	cbz	w8, LBB86_2
; %bb.1:
	ldr	w9, [x8]
	mov	w0, wzr
	add	w9, w9, #1
	str	w9, [x8]
	ret
LBB86_2:
	mov	w0, #2150                       ; =0x866
	movk	w0, #34934, lsl #16
	ret
	.loh AdrpLdr	Lloh504, Lloh505
                                        ; -- End function
	.globl	_D3DDevice_SetRenderTarget      ; -- Begin function D3DDevice_SetRenderTarget
	.p2align	4
_D3DDevice_SetRenderTarget:             ; @D3DDevice_SetRenderTarget
; %bb.0:
	sub	sp, sp, #80
Lloh506:
	adrp	x8, _device@PAGE+132
Lloh507:
	add	x8, x8, _device@PAGEOFF+132
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	cbz	w0, LBB87_2
; %bb.1:
	stp	w0, w1, [x8]
	b	LBB87_3
LBB87_2:
	ldr	w0, [x8]
	str	w1, [x8, #4]
	cbz	w0, LBB87_4
LBB87_3:
	ldp	w8, w1, [x0, #12]
	add	x2, sp, #12
	mov	w0, w8
	bl	_xgpu_texture_describe
	ldur	d0, [sp, #16]
Lloh508:
	adrp	x8, _device@PAGE+140
Lloh509:
	add	x8, x8, _device@PAGEOFF+140
	mov	x9, #4575657221408423936        ; =0x3f80000000000000
	str	xzr, [x8]
	str	d0, [x8, #8]
	str	x9, [x8, #16]
LBB87_4:
	bl	_viewport_update_constants
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh506, Lloh507
	.loh AdrpAdd	Lloh508, Lloh509
                                        ; -- End function
	.globl	_D3DDevice_GetViewport          ; -- Begin function D3DDevice_GetViewport
	.p2align	4
_D3DDevice_GetViewport:                 ; @D3DDevice_GetViewport
; %bb.0:
Lloh510:
	adrp	x8, _device@PAGE+140
Lloh511:
	add	x8, x8, _device@PAGEOFF+140
	ldr	x9, [x8, #16]
	ldr	q0, [x8]
	str	x9, [x0, #16]
	str	q0, [x0]
	ret
	.loh AdrpAdd	Lloh510, Lloh511
                                        ; -- End function
	.globl	_D3DDevice_SetViewport          ; -- Begin function D3DDevice_SetViewport
	.p2align	4
_D3DDevice_SetViewport:                 ; @D3DDevice_SetViewport
; %bb.0:
Lloh512:
	adrp	x9, _device@PAGE+136
Lloh513:
	add	x9, x9, _device@PAGEOFF+136
	ldr	x10, [x0, #16]
	ldr	q0, [x0]
	ldr	w8, [x9]
	stur	x10, [x9, #20]
	stur	q0, [x9, #4]
	cbz	w8, LBB89_8
; %bb.1:
	sub	sp, sp, #80
	ldp	w0, w1, [x8, #12]
	add	x2, sp, #12
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	bl	_xgpu_texture_describe
	mov	w10, #65280                     ; =0xff00
	mov	w9, #1266679807                 ; =0x4b7fffff
	movk	w10, #18303, lsl #16
	ldr	w8, [sp, #12]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	fmov	s0, w9
	mov	w9, #-6                         ; =0xfffffffa
	fmov	s1, w10
	sub	w8, w8, #44
	tst	w8, w9
	fcsel	s0, s1, s0, eq
	add	sp, sp, #80
LBB89_2:
Lloh514:
	adrp	x8, _device@PAGE+140
Lloh515:
	add	x8, x8, _device@PAGEOFF+140
	fmov	s5, #-0.50000000
	ldp	s3, s1, [x8, #16]
	ldr	s2, [x8, #12]
	ldp	d6, d4, [x8]
	fsub	s7, s1, s3
	fmul	s1, s0, s3
	ldrb	w9, [x8, #696]
	ucvtf	s16, s2
	str	wzr, [x8, #4340]
	ucvtf	v2.2s, v4.2s, #1
	str	wzr, [x8, #4356]
	ucvtf	v6.2s, v6.2s
	fmul	s3, s0, s7
	str	s1, [x8, #4352]
	fmul	s4, s16, s5
	str	s2, [x8, #4328]
	fadd	v0.2s, v2.2s, v6.2s
	str	s3, [x8, #4336]
	str	s4, [x8, #4332]
	str	d0, [x8, #4344]
	tbnz	w9, #4, LBB89_7
; %bb.3:
	mov	v2.s[1], v4.s[0]
Lloh516:
	adrp	x12, _device@PAGE+2324
Lloh517:
	add	x12, x12, _device@PAGEOFF+2324
	adrp	x8, _constants_serial@PAGE
	fmov	w11, s1
	ldr	w10, [x8, _constants_serial@PAGEOFF]
	mov	v2.s[2], v3.s[0]
	ldr	q3, [x12]
	mov	v2.s[3], wzr
	cmeq	v2.4s, v3.4s, v2.4s
	addp	d2, v2.2d
	fmov	x9, d2
	cmn	x9, #2
Lloh518:
	adrp	x9, _constant_log@PAGE
Lloh519:
	add	x9, x9, _constant_log@PAGEOFF
	b.eq	LBB89_5
; %bb.4:
	ldr	q1, [x12, #2144]
	add	w10, w10, #1
	mov	w13, #58                        ; =0x3a
	and	w14, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q1, [x12]
	strb	w13, [x9, w14, uxtw]
LBB89_5:
	movi	v1.2d, #0000000000000000
	mov	v1.s[0], w11
Lloh520:
	adrp	x11, _device@PAGE+2340
Lloh521:
	add	x11, x11, _device@PAGEOFF+2340
	mov	v0.d[1], v1.d[0]
	ldr	q1, [x11]
	cmeq	v0.4s, v1.4s, v0.4s
	addp	d0, v0.2d
	fmov	x12, d0
	cmn	x12, #2
	b.eq	LBB89_7
; %bb.6:
	ldr	q0, [x11, #2144]
	add	w10, w10, #1
	mov	w12, #59                        ; =0x3b
	and	w13, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q0, [x11]
	strb	w12, [x9, w13, uxtw]
LBB89_7:
	ret
LBB89_8:
	mov	w8, #1266679807                 ; =0x4b7fffff
	fmov	s0, w8
	b	LBB89_2
	.loh AdrpAdd	Lloh512, Lloh513
	.loh AdrpAdd	Lloh514, Lloh515
	.loh AdrpAdd	Lloh518, Lloh519
	.loh AdrpAdd	Lloh516, Lloh517
	.loh AdrpAdd	Lloh520, Lloh521
                                        ; -- End function
	.globl	_D3DDevice_SetTransform         ; -- Begin function D3DDevice_SetTransform
	.p2align	4
_D3DDevice_SetTransform:                ; @D3DDevice_SetTransform
; %bb.0:
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w0, #9
	b.hi	LBB90_2
; %bb.1:
Lloh522:
	adrp	x8, _device@PAGE
Lloh523:
	add	x8, x8, _device@PAGEOFF
	sxtw	x9, w0
	ldp	q1, q0, [x1, #32]
	add	x8, x8, x9, lsl #6
	ldp	q3, q2, [x1]
	stur	q0, [x8, #212]
	stur	q1, [x8, #196]
	stur	q2, [x8, #180]
	stur	q3, [x8, #164]
LBB90_2:
	ret
	.loh AdrpAdd	Lloh522, Lloh523
                                        ; -- End function
	.globl	_D3DDevice_GetTransform         ; -- Begin function D3DDevice_GetTransform
	.p2align	4
_D3DDevice_GetTransform:                ; @D3DDevice_GetTransform
; %bb.0:
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w0, #9
	b.hi	LBB91_2
; %bb.1:
	sxtw	x8, w0
Lloh524:
	adrp	x9, _device@PAGE
Lloh525:
	add	x9, x9, _device@PAGEOFF
	add	x8, x9, x8, lsl #6
	ldur	q0, [x8, #212]
	ldur	q1, [x8, #196]
	ldur	q2, [x8, #180]
	ldur	q3, [x8, #164]
	stp	q1, q0, [x1, #32]
	stp	q3, q2, [x1]
LBB91_2:
	ret
	.loh AdrpAdd	Lloh524, Lloh525
                                        ; -- End function
	.globl	_D3DDevice_SetFlickerFilter     ; -- Begin function D3DDevice_SetFlickerFilter
	.p2align	4
_D3DDevice_SetFlickerFilter:            ; @D3DDevice_SetFlickerFilter
; %bb.0:
	ret
                                        ; -- End function
	.globl	_D3DDevice_SetSoftDisplayFilter ; -- Begin function D3DDevice_SetSoftDisplayFilter
	.p2align	4
_D3DDevice_SetSoftDisplayFilter:        ; @D3DDevice_SetSoftDisplayFilter
; %bb.0:
	ret
                                        ; -- End function
	.globl	_D3DDevice_SetShaderConstantMode ; -- Begin function D3DDevice_SetShaderConstantMode
	.p2align	4
_D3DDevice_SetShaderConstantMode:       ; @D3DDevice_SetShaderConstantMode
; %bb.0:
	adrp	x8, _device@PAGE+836
	str	w0, [x8, _device@PAGEOFF+836]
	b	_viewport_update_constants
                                        ; -- End function
	.globl	_D3DDevice_IsBusy               ; -- Begin function D3DDevice_IsBusy
	.p2align	4
_D3DDevice_IsBusy:                      ; @D3DDevice_IsBusy
; %bb.0:
	mov	w0, wzr
	ret
                                        ; -- End function
	.globl	_D3DDevice_KickPushBuffer       ; -- Begin function D3DDevice_KickPushBuffer
	.p2align	4
_D3DDevice_KickPushBuffer:              ; @D3DDevice_KickPushBuffer
; %bb.0:
	ret
                                        ; -- End function
	.globl	_D3DDevice_InsertCallback       ; -- Begin function D3DDevice_InsertCallback
	.p2align	4
_D3DDevice_InsertCallback:              ; @D3DDevice_InsertCallback
; %bb.0:
	cbz	w1, LBB97_2
; %bb.1:
	mov	w0, w2
	br	x1
LBB97_2:
	ret
                                        ; -- End function
	.globl	_d3d8_renderer_description      ; -- Begin function d3d8_renderer_description
	.p2align	4
_d3d8_renderer_description:             ; @d3d8_renderer_description
; %bb.0:
	adrp	x8, _d3d8_renderer_description.description@PAGE
	ldrb	w8, [x8, _d3d8_renderer_description.description@PAGEOFF]
	cbnz	w8, LBB98_5
; %bb.1:
	sub	sp, sp, #80
	add	x0, sp, #8
	mov	w1, #56                         ; =0x38
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	strb	wzr, [sp, #8]
	bl	_host_vk_driver_name
	ldrb	w8, [sp, #8]
	cbz	w8, LBB98_3
; %bb.2:
Lloh526:
	adrp	x0, _d3d8_renderer_description.description@PAGE
Lloh527:
	add	x0, x0, _d3d8_renderer_description.description@PAGEOFF
Lloh528:
	adrp	x2, l_.str.17@PAGE
Lloh529:
	add	x2, x2, l_.str.17@PAGEOFF
	add	x8, sp, #8
	mov	w1, #64                         ; =0x40
	str	w8, [sp]
	bl	_snprintf
	b	LBB98_4
LBB98_3:
	mov	w8, #24939                      ; =0x616b
	mov	w9, #30038                      ; =0x7556
	movk	w8, #110, lsl #16
	movk	w9, #27500, lsl #16
Lloh530:
	adrp	x10, _d3d8_renderer_description.description@PAGE
Lloh531:
	add	x10, x10, _d3d8_renderer_description.description@PAGEOFF
	stur	w8, [x10, #3]
	str	w9, [x10]
LBB98_4:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
LBB98_5:
Lloh532:
	adrp	x0, _d3d8_renderer_description.description@PAGE
Lloh533:
	add	x0, x0, _d3d8_renderer_description.description@PAGEOFF
	ret
	.loh AdrpAdd	Lloh528, Lloh529
	.loh AdrpAdd	Lloh526, Lloh527
	.loh AdrpAdd	Lloh530, Lloh531
	.loh AdrpAdd	Lloh532, Lloh533
                                        ; -- End function
	.globl	_D3DDevice_BeginVisibilityTest  ; -- Begin function D3DDevice_BeginVisibilityTest
	.p2align	4
_D3DDevice_BeginVisibilityTest:         ; @D3DDevice_BeginVisibilityTest
; %bb.0:
Lloh534:
	adrp	x8, _device@PAGE+4932
Lloh535:
	add	x8, x8, _device@PAGEOFF+4932
	ldp	w8, w9, [x8]
	cmp	w9, #0
	ccmp	w8, #0, #0, ne
	b.ne	LBB99_4
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	adrp	x19, _stream_used@PAGE
	adrp	x20, _stream@PAGE
	adrp	x8, _device@PAGE+4932
	mov	w9, #1                          ; =0x1
	mov	w11, #-4194305                  ; =0xffbfffff
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	ldr	w1, [x19, _stream_used@PAGEOFF]
	add	x29, sp, #16
	ldr	w0, [x20, _stream@PAGEOFF]
	str	w9, [x8, _device@PAGEOFF+4932]
	sub	w10, w1, #1023, lsl #12         ; =4190208
	sub	w10, w10, #4089
	cmp	w10, w11
	b.hs	LBB99_3
; %bb.2:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh536:
	adrp	x10, _streams@PAGE
Lloh537:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x20, _stream@PAGEOFF]
LBB99_3:
	mov	x8, #12                         ; =0xc
	add	w9, w1, #8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	movk	x8, #8, lsl #32
	str	w9, [x19, _stream_used@PAGEOFF]
	str	x8, [x0, w1, sxtw]
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
LBB99_4:
	ret
	.loh AdrpAdd	Lloh534, Lloh535
	.loh AdrpAdd	Lloh536, Lloh537
                                        ; -- End function
	.globl	_D3DDevice_EndVisibilityTest    ; -- Begin function D3DDevice_EndVisibilityTest
	.p2align	4
_D3DDevice_EndVisibilityTest:           ; @D3DDevice_EndVisibilityTest
; %bb.0:
Lloh538:
	adrp	x8, _device@PAGE+4932
Lloh539:
	add	x8, x8, _device@PAGEOFF+4932
	ldp	w8, w9, [x8]
	cmp	w9, #0
	ccmp	w8, #0, #4, ne
	b.eq	LBB100_4
; %bb.1:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	adrp	x20, _stream_used@PAGE
	adrp	x23, _stream@PAGE
	and	w19, w0, #0xfff
	adrp	x8, _device@PAGE+4932
	mov	w10, #-4194305                  ; =0xffbfffff
	ldr	w1, [x20, _stream_used@PAGEOFF]
	ldr	w0, [x23, _stream@PAGEOFF]
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	str	wzr, [x8, _device@PAGEOFF+4932]
	sub	w9, w1, #1023, lsl #12          ; =4190208
	sub	w9, w9, #4077
	cmp	w9, w10
	b.hs	LBB100_3
; %bb.2:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh540:
	adrp	x10, _streams@PAGE
Lloh541:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x23, _stream@PAGEOFF]
LBB100_3:
	mov	x9, #13                         ; =0xd
	add	x8, x0, w1, sxtw
	movk	x9, #20, lsl #32
	add	w10, w1, #20
Lloh542:
	adrp	x11, _target_scale.0@PAGE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	str	x9, [x8]
Lloh543:
	adrp	x9, _visibility_ended@PAGE
Lloh544:
	add	x9, x9, _visibility_ended@PAGEOFF
	str	w10, [x20, _stream_used@PAGEOFF]
	str	w19, [x8, #8]
	ldr	x10, [x9, w19, uxtw #3]
	add	x10, x10, #1
	str	x10, [x9, w19, uxtw #3]
Lloh545:
	adrp	x9, _target_scale.1@PAGE
	str	w10, [x8, #16]
Lloh546:
	adrp	x10, _target_samples@PAGE
Lloh547:
	ldr	s0, [x11, _target_scale.0@PAGEOFF]
Lloh548:
	ldr	s1, [x9, _target_scale.1@PAGEOFF]
	mov	w9, #1                          ; =0x1
Lloh549:
	ldr	s2, [x10, _target_samples@PAGEOFF]
Lloh550:
	adrp	x10, _visibility_pending@PAGE
Lloh551:
	add	x10, x10, _visibility_pending@PAGEOFF
	fmul	s0, s0, s1
	ucvtf	s1, s2
	fmul	s3, s0, s1
	str	s3, [x8, #12]
	str	w9, [x10, w19, uxtw #2]
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
LBB100_4:
	mov	w0, wzr
	ret
	.loh AdrpAdd	Lloh538, Lloh539
	.loh AdrpAdd	Lloh540, Lloh541
	.loh AdrpAdd	Lloh550, Lloh551
	.loh AdrpAdrp	Lloh546, Lloh550
	.loh AdrpLdr	Lloh546, Lloh549
	.loh AdrpLdr	Lloh545, Lloh548
	.loh AdrpAdd	Lloh543, Lloh544
	.loh AdrpLdr	Lloh542, Lloh547
                                        ; -- End function
	.globl	_D3DDevice_GetVisibilityTestResult ; -- Begin function D3DDevice_GetVisibilityTestResult
	.p2align	4
_D3DDevice_GetVisibilityTestResult:     ; @D3DDevice_GetVisibilityTestResult
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	mov	x19, x1
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	cbz	w2, LBB101_2
; %bb.1:
	str	xzr, [x2]
LBB101_2:
Lloh552:
	adrp	x8, _device@PAGE+4936
Lloh553:
	ldr	w8, [x8, _device@PAGEOFF+4936]
	cbz	w8, LBB101_8
; %bb.3:
	and	w20, w0, #0xfff
Lloh554:
	adrp	x8, _visibility_pending@PAGE
Lloh555:
	add	x8, x8, _visibility_pending@PAGEOFF
	ldr	w8, [x8, w20, uxtw #2]
	cbz	w8, LBB101_8
; %bb.4:
	mov	w0, w20
	bl	_host_vk_visibility
	lsr	x8, x0, #32
	cbz	w19, LBB101_6
; %bb.5:
	str	w0, [x19]
LBB101_6:
	cbz	x8, LBB101_10
; %bb.7:
Lloh556:
	adrp	x9, _visibility_ended@PAGE
Lloh557:
	add	x9, x9, _visibility_ended@PAGEOFF
	ldr	x9, [x9, w20, uxtw #3]
	sub	w8, w9, w8
	sub	x8, x9, x8
Lloh558:
	adrp	x9, _visibility_counted@PAGE
Lloh559:
	add	x9, x9, _visibility_counted@PAGEOFF
	str	x8, [x9, w20, uxtw #3]
	b	LBB101_10
LBB101_8:
	cbz	w19, LBB101_10
; %bb.9:
	str	wzr, [x19]
LBB101_10:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	mov	w0, wzr
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh552, Lloh553
	.loh AdrpAdd	Lloh554, Lloh555
	.loh AdrpAdd	Lloh558, Lloh559
	.loh AdrpAdd	Lloh556, Lloh557
                                        ; -- End function
	.globl	_xgpu_visibility_tests_ended    ; -- Begin function xgpu_visibility_tests_ended
	.p2align	4
_xgpu_visibility_tests_ended:           ; @xgpu_visibility_tests_ended
; %bb.0:
	and	w8, w0, #0xfff
Lloh560:
	adrp	x9, _visibility_ended@PAGE
Lloh561:
	add	x9, x9, _visibility_ended@PAGEOFF
	ldr	x0, [x9, w8, uxtw #3]
	ret
	.loh AdrpAdd	Lloh560, Lloh561
                                        ; -- End function
	.globl	_xgpu_visibility_test_counted   ; -- Begin function xgpu_visibility_test_counted
	.p2align	4
_xgpu_visibility_test_counted:          ; @xgpu_visibility_test_counted
; %bb.0:
	and	w8, w0, #0xfff
Lloh562:
	adrp	x9, _visibility_counted@PAGE
Lloh563:
	add	x9, x9, _visibility_counted@PAGEOFF
	ldr	x0, [x9, w8, uxtw #3]
	ret
	.loh AdrpAdd	Lloh562, Lloh563
                                        ; -- End function
	.globl	_D3DDevice_SetRenderStateNotInline ; -- Begin function D3DDevice_SetRenderStateNotInline
	.p2align	4
_D3DDevice_SetRenderStateNotInline:     ; @D3DDevice_SetRenderStateNotInline
; %bb.0:
	cmp	w0, #129
	b.eq	LBB104_4
; %bb.1:
	cmp	w0, #143
	b.hi	LBB104_3
; %bb.2:
Lloh564:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh565:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
	str	w1, [x8, w0, sxtw #2]
LBB104_3:
	ret
LBB104_4:
	ucvtf	s0, w1
Lloh566:
	adrp	x8, _D3D__RenderState@GOTPAGE
	fmov	s1, #-0.25000000
	cmp	w1, #0
	cset	w9, ne
Lloh567:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
	fmul	s1, s0, s1
	fneg	s0, s0
	str	w9, [x8, #316]
	str	w9, [x8, #320]
	str	w9, [x8, #324]
	str	w1, [x8, #516]
	str	s1, [x8, #308]
	str	s0, [x8, #312]
	ret
	.loh AdrpLdrGot	Lloh564, Lloh565
	.loh AdrpLdrGot	Lloh566, Lloh567
                                        ; -- End function
	.globl	_D3DDevice_SetTextureState_Deferred ; -- Begin function D3DDevice_SetTextureState_Deferred
	.p2align	4
_D3DDevice_SetTextureState_Deferred:    ; @D3DDevice_SetTextureState_Deferred
; %bb.0:
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w0, #3
	b.hi	LBB105_3
; %bb.1:
	cmp	w1, #31
	b.hi	LBB105_3
; %bb.2:
Lloh568:
	adrp	x8, _D3D__TextureState@GOTPAGE
	sxtw	x9, w0
Lloh569:
	ldr	w8, [x8, _D3D__TextureState@GOTPAGEOFF]
	add	x8, x8, x9, lsl #7
	str	w2, [x8, w1, sxtw #2]
LBB105_3:
	ret
	.loh AdrpLdrGot	Lloh568, Lloh569
                                        ; -- End function
	.globl	_D3DDevice_SetTextureState_TexCoordIndex ; -- Begin function D3DDevice_SetTextureState_TexCoordIndex
	.p2align	4
_D3DDevice_SetTextureState_TexCoordIndex: ; @D3DDevice_SetTextureState_TexCoordIndex
; %bb.0:
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w0, #3
	b.hi	LBB106_2
; %bb.1:
Lloh570:
	adrp	x8, _D3D__TextureState@GOTPAGE
	sxtw	x9, w0
Lloh571:
	ldr	w8, [x8, _D3D__TextureState@GOTPAGEOFF]
	add	x8, x8, x9, lsl #7
	str	w1, [x8, #112]
LBB106_2:
	ret
	.loh AdrpLdrGot	Lloh570, Lloh571
                                        ; -- End function
	.globl	_D3DDevice_SetTextureState_BorderColor ; -- Begin function D3DDevice_SetTextureState_BorderColor
	.p2align	4
_D3DDevice_SetTextureState_BorderColor: ; @D3DDevice_SetTextureState_BorderColor
; %bb.0:
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w0, #3
	b.hi	LBB107_2
; %bb.1:
Lloh572:
	adrp	x8, _D3D__TextureState@GOTPAGE
	sxtw	x9, w0
Lloh573:
	ldr	w8, [x8, _D3D__TextureState@GOTPAGEOFF]
	add	x8, x8, x9, lsl #7
	str	w1, [x8, #116]
LBB107_2:
	ret
	.loh AdrpLdrGot	Lloh572, Lloh573
                                        ; -- End function
	.globl	_D3DDevice_SetTextureState_ColorKeyColor ; -- Begin function D3DDevice_SetTextureState_ColorKeyColor
	.p2align	4
_D3DDevice_SetTextureState_ColorKeyColor: ; @D3DDevice_SetTextureState_ColorKeyColor
; %bb.0:
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w0, #3
	b.hi	LBB108_2
; %bb.1:
Lloh574:
	adrp	x8, _D3D__TextureState@GOTPAGE
	sxtw	x9, w0
Lloh575:
	ldr	w8, [x8, _D3D__TextureState@GOTPAGEOFF]
	add	x8, x8, x9, lsl #7
	str	w1, [x8, #120]
LBB108_2:
	ret
	.loh AdrpLdrGot	Lloh574, Lloh575
                                        ; -- End function
	.globl	_D3DDevice_SetTextureState_BumpEnv ; -- Begin function D3DDevice_SetTextureState_BumpEnv
	.p2align	4
_D3DDevice_SetTextureState_BumpEnv:     ; @D3DDevice_SetTextureState_BumpEnv
; %bb.0:
	cmp	w1, #31
                                        ; kill: def $w0 killed $w0 def $x0
	ccmp	w0, #3, #2, ls
	b.hi	LBB109_2
; %bb.1:
Lloh576:
	adrp	x8, _D3D__TextureState@GOTPAGE
	sxtw	x9, w0
Lloh577:
	ldr	w8, [x8, _D3D__TextureState@GOTPAGEOFF]
	add	x8, x8, x9, lsl #7
	str	w2, [x8, w1, sxtw #2]
LBB109_2:
	ret
	.loh AdrpLdrGot	Lloh576, Lloh577
                                        ; -- End function
	.globl	_D3DDevice_SetTexture           ; -- Begin function D3DDevice_SetTexture
	.p2align	4
_D3DDevice_SetTexture:                  ; @D3DDevice_SetTexture
; %bb.0:
	cmp	w0, #3
	b.hi	LBB110_2
; %bb.1:
Lloh578:
	adrp	x8, _device@PAGE
Lloh579:
	add	x8, x8, _device@PAGEOFF
	add	x8, x8, w0, sxtw #2
	str	w1, [x8, #804]
LBB110_2:
	ret
	.loh AdrpAdd	Lloh578, Lloh579
                                        ; -- End function
	.globl	_xgpu_mcc_texture_unbind        ; -- Begin function xgpu_mcc_texture_unbind
	.p2align	4
_xgpu_mcc_texture_unbind:               ; @xgpu_mcc_texture_unbind
; %bb.0:
	adrp	x8, _device@PAGE+804
	ldr	w9, [x8, _device@PAGEOFF+804]
	cmp	w9, w0
	b.ne	LBB111_2
; %bb.1:
	str	wzr, [x8, _device@PAGEOFF+804]
LBB111_2:
	adrp	x8, _device@PAGE+808
	ldr	w9, [x8, _device@PAGEOFF+808]
	cmp	w9, w0
	b.ne	LBB111_4
; %bb.3:
	str	wzr, [x8, _device@PAGEOFF+808]
LBB111_4:
	adrp	x8, _device@PAGE+812
	ldr	w9, [x8, _device@PAGEOFF+812]
	cmp	w9, w0
	b.ne	LBB111_6
; %bb.5:
	str	wzr, [x8, _device@PAGEOFF+812]
LBB111_6:
	adrp	x8, _device@PAGE+816
	ldr	w9, [x8, _device@PAGEOFF+816]
	cmp	w9, w0
	b.eq	LBB111_8
; %bb.7:
	ret
LBB111_8:
	str	wzr, [x8, _device@PAGEOFF+816]
	ret
                                        ; -- End function
	.globl	_D3DDevice_SetPalette           ; -- Begin function D3DDevice_SetPalette
	.p2align	4
_D3DDevice_SetPalette:                  ; @D3DDevice_SetPalette
; %bb.0:
	cmp	w0, #3
	b.hi	LBB112_2
; %bb.1:
Lloh580:
	adrp	x8, _device@PAGE
Lloh581:
	add	x8, x8, _device@PAGEOFF
	add	x8, x8, w0, sxtw #2
	str	w1, [x8, #820]
LBB112_2:
	ret
	.loh AdrpAdd	Lloh580, Lloh581
                                        ; -- End function
	.globl	_D3DDevice_SetPixelShaderProgram ; -- Begin function D3DDevice_SetPixelShaderProgram
	.p2align	4
_D3DDevice_SetPixelShaderProgram:       ; @D3DDevice_SetPixelShaderProgram
; %bb.0:
	cbz	w0, LBB113_2
; %bb.1:
Lloh582:
	adrp	x8, _D3D__RenderState@GOTPAGE
Lloh583:
	ldr	w8, [x8, _D3D__RenderState@GOTPAGEOFF]
	ldp	q1, q0, [x0]
	ldr	d2, [x0, #32]
	ldur	q3, [x0, #56]
	stp	q1, q0, [x8]
	ldur	q0, [x0, #40]
	ldur	q1, [x0, #72]
	str	d2, [x8, #32]
	ldur	q2, [x0, #88]
	stur	q0, [x8, #40]
	ldur	q0, [x0, #120]
	stur	q1, [x8, #72]
	ldur	q1, [x0, #104]
	ldp	w9, w10, [x0, #212]
	stur	q0, [x8, #120]
	ldur	q0, [x0, #152]
	stur	q2, [x8, #88]
	ldur	q2, [x0, #136]
	stur	q3, [x8, #56]
	stur	q0, [x8, #152]
	ldur	q0, [x0, #196]
	ldr	d3, [x0, #168]
	stur	q1, [x8, #104]
	ldr	w11, [x0, #176]
	ldur	q1, [x0, #180]
	str	w10, [x8, #464]
	stur	q0, [x8, #196]
	ldur	d0, [x0, #220]
	stur	q2, [x8, #136]
	str	d3, [x8, #168]
	str	w11, [x8, #176]
	stur	q1, [x8, #180]
	str	w9, [x8, #212]
	stur	d0, [x8, #220]
LBB113_2:
	ret
	.loh AdrpLdrGot	Lloh582, Lloh583
                                        ; -- End function
	.globl	_D3DDevice_CreateVertexShader   ; -- Begin function D3DDevice_CreateVertexShader
	.p2align	4
_D3DDevice_CreateVertexShader:          ; @D3DDevice_CreateVertexShader
; %bb.0:
	sub	sp, sp, #144
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	mov	x25, x1
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	mov	x24, x0
	mov	w0, #1                          ; =0x1
	mov	w1, #160                        ; =0xa0
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	mov	x19, x2
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	bl	_calloc
	mov	x20, x0
	cbz	w20, LBB114_3
; %bb.1:
	adrp	x8, _device@PAGE+4944
	mov	w10, #26724                     ; =0x6864
	movk	w10, #30323, lsl #16
	ldr	w27, [x8, _device@PAGEOFF+4944]
	add	w9, w27, #1
	stp	w10, w27, [x20]
	str	w9, [x8, _device@PAGEOFF+4944]
	cbz	w25, LBB114_4
; %bb.2:
	ldr	w8, [x25], #4
	lsr	w28, w8, #16
	lsl	w26, w28, #4
	mov	w0, w26
	str	w28, [x20, #12]
	bl	_malloc
	mov	x23, x0
	mov	x1, x25
	mov	w2, w26
	str	w23, [x20, #8]
	bl	_memcpy
	b	LBB114_5
LBB114_3:
	mov	w0, #14                         ; =0xe
	movk	w0, #32775, lsl #16
	b	LBB114_43
LBB114_4:
	mov	x23, xzr
	mov	w28, wzr
LBB114_5:
	movi	v0.2d, #0000000000000000
	stp	q0, q0, [sp]
	stp	q0, q0, [sp, #32]
	cbz	w24, LBB114_33
; %bb.6:
	ldr	w15, [x24]
	cmn	w15, #1
	b.eq	LBB114_33
; %bb.7:
	mov	w9, wzr
	add	x8, x20, #16
	mov	w10, #6                         ; =0x6
	mov	x11, sp
	mov	w12, #1                         ; =0x1
	mov	w13, #2                         ; =0x2
Lloh584:
	adrp	x14, LJTI114_0@PAGE
Lloh585:
	add	x14, x14, LJTI114_0@PAGEOFF
	b	LBB114_11
LBB114_8:                               ;   in Loop: Header=BB114_11 Depth=1
	lsr	w15, w15, #23
	and	w15, w15, #0x3c
LBB114_9:                               ;   in Loop: Header=BB114_11 Depth=1
	add	x24, x24, w15, uxtw #2
LBB114_10:                              ;   in Loop: Header=BB114_11 Depth=1
	ldr	w15, [x24, #4]!
	cmn	w15, #1
	b.eq	LBB114_33
LBB114_11:                              ; =>This Inner Loop Header: Depth=1
	lsr	w16, w15, #29
	cmp	w16, #3
	b.gt	LBB114_19
; %bb.12:                               ;   in Loop: Header=BB114_11 Depth=1
	cmp	w16, #1
	b.eq	LBB114_22
; %bb.13:                               ;   in Loop: Header=BB114_11 Depth=1
	cmp	w16, #2
	b.ne	LBB114_10
; %bb.14:                               ;   in Loop: Header=BB114_11 Depth=1
	tbnz	w15, #28, LBB114_23
; %bb.15:                               ;   in Loop: Header=BB114_11 Depth=1
	ldr	w16, [x20, #112]
	cmp	w16, #15
	b.hi	LBB114_10
; %bb.16:                               ;   in Loop: Header=BB114_11 Depth=1
	add	w0, w16, #1
	smaddl	x16, w16, w10, x8
	and	w1, w15, #0x1f
	ubfx	w17, w15, #16, #8
	sub	w2, w17, #17
	lsr	w3, w15, #16
	cmp	w2, #97
	str	w0, [x20, #112]
	strb	w1, [x16]
	strb	w9, [x16, #1]
	strb	w3, [x16, #2]
	b.hi	LBB114_27
; %bb.17:                               ;   in Loop: Header=BB114_11 Depth=1
Ltmp1:
	adr	x3, Ltmp1
	ldrsw	x4, [x14, x2, lsl #2]
	add	x3, x3, x4
	mov	w0, #8                          ; =0x8
	mov	w1, #4                          ; =0x4
	br	x3
LBB114_18:                              ;   in Loop: Header=BB114_11 Depth=1
	mov	w1, #2                          ; =0x2
	b	LBB114_28
	.p2align	4, , 8
LBB114_19:                              ;   in Loop: Header=BB114_11 Depth=1
	cmp	w16, #4
	b.eq	LBB114_8
; %bb.20:                               ;   in Loop: Header=BB114_11 Depth=1
	cmp	w16, #5
	b.ne	LBB114_10
; %bb.21:                               ;   in Loop: Header=BB114_11 Depth=1
	ubfx	w15, w15, #24, #5
	b	LBB114_9
LBB114_22:                              ;   in Loop: Header=BB114_11 Depth=1
	and	w9, w15, #0xf
	b	LBB114_10
LBB114_23:                              ;   in Loop: Header=BB114_11 Depth=1
	ldr	w16, [x11, w9, sxtw #2]
	bic	w17, w13, w15, lsr #26
	ubfx	w15, w15, #16, #4
	lsl	w15, w15, w17
	add	w15, w16, w15
	str	w15, [x11, w9, sxtw #2]
	b	LBB114_10
LBB114_24:                              ;   in Loop: Header=BB114_11 Depth=1
	mov	w0, #6                          ; =0x6
	b	LBB114_32
LBB114_25:                              ;   in Loop: Header=BB114_11 Depth=1
	mov	w0, #12                         ; =0xc
	b	LBB114_32
LBB114_26:                              ;   in Loop: Header=BB114_11 Depth=1
	mov	w0, #3                          ; =0x3
	b	LBB114_32
LBB114_27:                              ;   in Loop: Header=BB114_11 Depth=1
	mov	w1, wzr
LBB114_28:                              ;   in Loop: Header=BB114_11 Depth=1
	ldr	w0, [x11, w9, sxtw #2]
	cmp	w17, #22
	strb	w1, [x16, #3]
	add	w2, w0, w1
	strh	w0, [x16, #4]
	str	w2, [x11, w9, sxtw #2]
	b.ne	LBB114_10
; %bb.29:                               ;   in Loop: Header=BB114_11 Depth=1
	ldr	w16, [x20, #116]
	lsl	w15, w12, w15
	orr	w15, w16, w15
	str	w15, [x20, #116]
	b	LBB114_10
LBB114_30:                              ;   in Loop: Header=BB114_11 Depth=1
	mov	w0, #16                         ; =0x10
	b	LBB114_32
LBB114_31:                              ;   in Loop: Header=BB114_11 Depth=1
	mov	w0, #1                          ; =0x1
LBB114_32:                              ;   in Loop: Header=BB114_11 Depth=1
	ldr	w15, [x11, w9, sxtw #2]
	strb	w0, [x16, #3]
	add	w17, w15, w0
	strh	w15, [x16, #4]
	str	w17, [x11, w9, sxtw #2]
	b	LBB114_10
LBB114_33:
	mov	x10, #8997                      ; =0x2325
	and	w9, w28, #0xff
	movk	x10, #33826, lsl #16
	mov	x8, #435                        ; =0x1b3
	movk	x10, #40164, lsl #32
	movk	x8, #256, lsl #32
	movk	x10, #52210, lsl #48
	eor	x9, x9, x10
	lsr	w10, w28, #8
	mul	x9, x9, x8
	eor	x9, x9, x10
	mov	x10, #65195                     ; =0xfeab
	movk	x10, #1255, lsl #16
	movk	x10, #31488, lsl #32
	movk	x10, #2217, lsl #48
	mul	x10, x9, x10
	str	x10, [x20, #120]
	cbz	w23, LBB114_38
; %bb.34:
	cbz	w28, LBB114_37
; %bb.35:
	neg	w9, w28, lsl #4
	.p2align	4, , 8
LBB114_36:                              ; =>This Inner Loop Header: Depth=1
	ldrb	w11, [x23]
	add	w12, w23, #1
	adds	w9, w9, #4
	eor	x10, x10, x11
	ldrb	w11, [x12]
	add	w12, w23, #2
	mul	x10, x10, x8
	eor	x10, x10, x11
	ldrb	w11, [x12]
	add	w12, w23, #3
	add	w23, w23, #4
	mul	x10, x10, x8
	eor	x10, x10, x11
	ldrb	w11, [x12]
	mul	x10, x10, x8
	eor	x10, x10, x11
	mul	x10, x10, x8
	b.ne	LBB114_36
LBB114_37:
	str	x10, [x20, #120]
LBB114_38:
	adrp	x23, _vertex_shaders_by_id_count@PAGE
	adrp	x24, _vertex_shaders_by_id@PAGE
	ldr	w8, [x23, _vertex_shaders_by_id_count@PAGEOFF]
	ldr	w0, [x24, _vertex_shaders_by_id@PAGEOFF]
	cmp	w27, w8
	b.lo	LBB114_41
; %bb.39:
	add	w25, w27, #64
	lsl	w1, w25, #2
	bl	_realloc
	cbz	w0, LBB114_42
; %bb.40:
	ldrsw	x9, [x23, _vertex_shaders_by_id_count@PAGEOFF]
	mov	x26, x0
	add	x8, x0, x9, lsl #2
	sub	w9, w25, w9
	mov	x0, x8
	lsl	w1, w9, #2
	bl	_bzero
	mov	x0, x26
	str	w25, [x23, _vertex_shaders_by_id_count@PAGEOFF]
	str	w0, [x24, _vertex_shaders_by_id@PAGEOFF]
LBB114_41:
	str	w20, [x0, w27, sxtw #2]
LBB114_42:
	mov	w0, wzr
	str	w20, [x19]
LBB114_43:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh584, Lloh585
	.section	__TEXT,__const
	.p2align	2, 0x0
LJTI114_0:
	.long	LBB114_18-Ltmp1
	.long	LBB114_28-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_31-Ltmp1
	.long	LBB114_18-Ltmp1
	.long	LBB114_28-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_28-Ltmp1
	.long	LBB114_32-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_18-Ltmp1
	.long	LBB114_28-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_24-Ltmp1
	.long	LBB114_25-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_26-Ltmp1
	.long	LBB114_24-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_28-Ltmp1
	.long	LBB114_32-Ltmp1
	.long	LBB114_30-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_28-Ltmp1
	.long	LBB114_32-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_27-Ltmp1
	.long	LBB114_25-Ltmp1
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_halo_vertex_shader_lighting    ; -- Begin function halo_vertex_shader_lighting
	.p2align	4
_halo_vertex_shader_lighting:           ; @halo_vertex_shader_lighting
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	cbz	w0, LBB115_6
; %bb.1:
	tbnz	w0, #0, LBB115_6
; %bb.2:
	mov	w19, w0
	mov	w9, #26724                      ; =0x6864
	movk	w9, #30323, lsl #16
	ldr	w8, [x19]
	cmp	w8, w9
	b.ne	LBB115_6
; %bb.3:
	ldr	w0, [x19, #8]
	cbz	w0, LBB115_6
; %bb.4:
	ldr	w1, [x19, #12]
	add	x2, x19, #128
	bl	_nv2a_vertex_shader_lighting
	cbnz	w0, LBB115_6
; %bb.5:
	ldr	w8, [x19, #4]
Lloh586:
	adrp	x0, l_.str.19@PAGE
Lloh587:
	add	x0, x0, l_.str.19@PAGEOFF
	stp	xzr, xzr, [x19, #128]
	stur	wzr, [x19, #144]
	str	w8, [sp]
	bl	_platform_log
LBB115_6:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh586, Lloh587
                                        ; -- End function
	.globl	_D3DDevice_DeleteVertexShader   ; -- Begin function D3DDevice_DeleteVertexShader
	.p2align	4
_D3DDevice_DeleteVertexShader:          ; @D3DDevice_DeleteVertexShader
; %bb.0:
	ret
                                        ; -- End function
	.globl	_D3DDevice_SetVertexShader      ; -- Begin function D3DDevice_SetVertexShader
	.p2align	4
_D3DDevice_SetVertexShader:             ; @D3DDevice_SetVertexShader
; %bb.0:
	cbz	w0, LBB117_4
; %bb.1:
	tbnz	w0, #0, LBB117_4
; %bb.2:
	mov	w9, w0
	mov	w10, #26724                     ; =0x6864
	movk	w10, #30323, lsl #16
	ldr	w8, [x9]
	cmp	w8, w10
	b.ne	LBB117_5
; %bb.3:
Lloh588:
	adrp	x10, _device@PAGE+840
Lloh589:
	add	x10, x10, _device@PAGEOFF+840
	mov	w8, wzr
	str	w9, [x10]
	str	wzr, [x10, #552]
	str	w9, [x10, #8]
	b	LBB117_7
LBB117_4:
	cbz	w0, LBB117_6
LBB117_5:
	ret
LBB117_6:
	mov	w8, #1                          ; =0x1
LBB117_7:
	adrp	x9, _device@PAGE+844
	str	w8, [x9, _device@PAGEOFF+844]
	ret
	.loh AdrpAdd	Lloh588, Lloh589
                                        ; -- End function
	.globl	_D3DDevice_LoadVertexShader     ; -- Begin function D3DDevice_LoadVertexShader
	.p2align	4
_D3DDevice_LoadVertexShader:            ; @D3DDevice_LoadVertexShader
; %bb.0:
	cmp	w1, #135
	b.hi	LBB118_5
; %bb.1:
	mov	x8, xzr
	cbz	w0, LBB118_4
; %bb.2:
	tbnz	w0, #0, LBB118_4
; %bb.3:
	mov	w8, w0
	mov	w10, #26724                     ; =0x6864
	movk	w10, #30323, lsl #16
	ldr	w9, [x8]
	cmp	w9, w10
	csel	x8, x8, xzr, eq
LBB118_4:
Lloh590:
	adrp	x9, _device@PAGE
Lloh591:
	add	x9, x9, _device@PAGEOFF
	add	x9, x9, w1, sxtw #2
	str	w8, [x9, #848]
LBB118_5:
	ret
	.loh AdrpAdd	Lloh590, Lloh591
                                        ; -- End function
	.globl	_D3DDevice_SelectVertexShader   ; -- Begin function D3DDevice_SelectVertexShader
	.p2align	4
_D3DDevice_SelectVertexShader:          ; @D3DDevice_SelectVertexShader
; %bb.0:
	cbz	w0, LBB119_7
; %bb.1:
	tbnz	w0, #0, LBB119_7
; %bb.2:
	mov	w8, w0
	mov	w10, #26724                     ; =0x6864
	movk	w10, #30323, lsl #16
	ldr	w9, [x8]
	cmp	w9, w10
	b.ne	LBB119_7
; %bb.3:
Lloh592:
	adrp	x9, _device@PAGE+840
Lloh593:
	add	x9, x9, _device@PAGEOFF+840
	stp	w8, wzr, [x9]
LBB119_4:
	cmp	w1, #135
	b.hi	LBB119_6
; %bb.5:
	adrp	x8, _device@PAGE+1392
	str	w1, [x8, _device@PAGEOFF+1392]
LBB119_6:
	ret
LBB119_7:
	adrp	x8, _device@PAGE+844
	str	wzr, [x8, _device@PAGEOFF+844]
	b	LBB119_4
	.loh AdrpAdd	Lloh592, Lloh593
                                        ; -- End function
	.globl	_D3DDevice_GetVertexShaderSize  ; -- Begin function D3DDevice_GetVertexShaderSize
	.p2align	4
_D3DDevice_GetVertexShaderSize:         ; @D3DDevice_GetVertexShaderSize
; %bb.0:
	mov	w8, wzr
	cbz	w0, LBB120_4
; %bb.1:
	tbnz	w0, #0, LBB120_4
; %bb.2:
	mov	w8, w0
	mov	w10, #26724                     ; =0x6864
	movk	w10, #30323, lsl #16
	ldr	w9, [x8]
	cmp	w9, w10
	b.ne	LBB120_5
; %bb.3:
	ldr	w8, [x8, #12]
LBB120_4:
	str	w8, [x1]
	ret
LBB120_5:
	mov	w8, wzr
	b	LBB120_4
                                        ; -- End function
	.globl	_D3DDevice_SetVertexShaderConstant ; -- Begin function D3DDevice_SetVertexShaderConstant
	.p2align	4
_D3DDevice_SetVertexShaderConstant:     ; @D3DDevice_SetVertexShaderConstant
; %bb.0:
	add	w11, w0, #96
	cmp	w11, #191
	b.hi	LBB121_44
; %bb.1:
	add	w9, w2, w11
	mov	w8, #96                         ; =0x60
	sub	w8, w8, w0
	cmp	w9, #192
	csel	w16, w8, w2, gt
	cbz	w16, LBB121_44
; %bb.2:
	adrp	x8, _constants_serial@PAGE
	cmp	w9, #192
	mov	w10, #192                       ; =0xc0
	and	w12, w16, #0x3
	csel	w9, w9, w10, lt
	mov	w13, wzr
	sub	w9, w9, w0
	ldr	w10, [x8, _constants_serial@PAGEOFF]
	sub	w9, w9, #97
	cmp	w9, #3
Lloh594:
	adrp	x9, _constant_log@PAGE
Lloh595:
	add	x9, x9, _constant_log@PAGEOFF
	b.lo	LBB121_27
; %bb.3:
Lloh596:
	adrp	x17, _device@PAGE
Lloh597:
	add	x17, x17, _device@PAGEOFF
	and	w2, w16, #0xfffffffc
	mov	w14, wzr
	add	w15, w0, #99
	add	w16, w17, w0, lsl #4
	neg	w17, w2
	.p2align	4, , 8
LBB121_4:                               ; =>This Inner Loop Header: Depth=1
	add	w3, w16, w14
	add	w2, w1, w14
	add	w0, w3, #2932
	ldr	w5, [x2]
	ldr	w4, [x0]
	cmp	w4, w5
	b.ne	LBB121_8
; %bb.5:                                ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w3, #2936
	add	w4, w2, #4
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.ne	LBB121_8
; %bb.6:                                ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w16, w14
	add	w4, w1, w14
	add	w5, w3, #2940
	add	w6, w4, #8
	ldr	w5, [x5]
	ldr	w6, [x6]
	cmp	w5, w6
	b.ne	LBB121_8
; %bb.7:                                ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w3, #2944
	add	w4, w4, #12
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.eq	LBB121_9
	.p2align	4, , 8
LBB121_8:                               ;   in Loop: Header=BB121_4 Depth=1
	ldr	q0, [x2]
	add	w10, w10, #1
	sub	w2, w15, #3
	and	w3, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q0, [x0]
	strb	w2, [x9, w3, uxtw]
LBB121_9:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w16, w14
	add	w4, w1, w14
	add	w0, w3, #2948
	add	w2, w4, #16
	ldr	w5, [x0]
	ldr	w6, [x2]
	cmp	w5, w6
	b.ne	LBB121_13
; %bb.10:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w3, #2952
	add	w4, w4, #20
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.ne	LBB121_13
; %bb.11:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w16, w14
	add	w4, w1, w14
	add	w5, w3, #2956
	add	w6, w4, #24
	ldr	w5, [x5]
	ldr	w6, [x6]
	cmp	w5, w6
	b.ne	LBB121_13
; %bb.12:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w3, #2960
	add	w4, w4, #28
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.eq	LBB121_14
	.p2align	4, , 8
LBB121_13:                              ;   in Loop: Header=BB121_4 Depth=1
	ldr	q0, [x2]
	add	w10, w10, #1
	sub	w2, w15, #2
	and	w3, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q0, [x0]
	strb	w2, [x9, w3, uxtw]
LBB121_14:                              ;   in Loop: Header=BB121_4 Depth=1
	add	w0, w16, w14
	add	w2, w1, w14
	add	w0, w0, #2964
	add	w2, w2, #32
	ldr	w3, [x0]
	ldr	w4, [x2]
	cmp	w3, w4
	b.ne	LBB121_18
; %bb.15:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w16, w14
	add	w4, w1, w14
	add	w3, w3, #2968
	add	w4, w4, #36
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.ne	LBB121_18
; %bb.16:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w16, w14
	add	w4, w1, w14
	add	w3, w3, #2972
	add	w4, w4, #40
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.ne	LBB121_18
; %bb.17:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w16, w14
	add	w4, w1, w14
	add	w3, w3, #2976
	add	w4, w4, #44
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.eq	LBB121_19
	.p2align	4, , 8
LBB121_18:                              ;   in Loop: Header=BB121_4 Depth=1
	ldr	q0, [x2]
	add	w10, w10, #1
	sub	w2, w15, #1
	and	w3, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q0, [x0]
	strb	w2, [x9, w3, uxtw]
LBB121_19:                              ;   in Loop: Header=BB121_4 Depth=1
	add	w0, w16, w14
	add	w2, w1, w14
	add	w0, w0, #2980
	add	w2, w2, #48
	ldr	w3, [x0]
	ldr	w4, [x2]
	cmp	w3, w4
	b.ne	LBB121_23
; %bb.20:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w16, w14
	add	w4, w1, w14
	add	w3, w3, #2984
	add	w4, w4, #52
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.ne	LBB121_23
; %bb.21:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w16, w14
	add	w4, w1, w14
	add	w3, w3, #2988
	add	w4, w4, #56
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.ne	LBB121_23
; %bb.22:                               ;   in Loop: Header=BB121_4 Depth=1
	add	w3, w16, w14
	add	w4, w1, w14
	add	w3, w3, #2992
	add	w4, w4, #60
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	b.eq	LBB121_24
	.p2align	4, , 8
LBB121_23:                              ;   in Loop: Header=BB121_4 Depth=1
	ldr	q0, [x2]
	add	w10, w10, #1
	and	w2, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q0, [x0]
	strb	w15, [x9, w2, uxtw]
LBB121_24:                              ;   in Loop: Header=BB121_4 Depth=1
	add	w15, w15, #4
	add	w14, w14, #64
	sub	w13, w13, #4
	cmp	w17, w13
	b.ne	LBB121_4
; %bb.25:
	cbz	w12, LBB121_44
; %bb.26:
	neg	w13, w13
LBB121_27:
	add	w15, w13, w11
Lloh598:
	adrp	x14, _device@PAGE
Lloh599:
	add	x14, x14, _device@PAGEOFF
	add	x17, x1, w13, sxtw #4
	add	x16, x14, w15, sxtw #4
	ldr	w2, [x17]
	ldr	w0, [x16, #1396]
	add	x16, x16, #1396
	cmp	w0, w2
	b.ne	LBB121_31
; %bb.28:
	ldr	w0, [x16, #4]
	ldr	w2, [x17, #4]
	cmp	w0, w2
	b.ne	LBB121_31
; %bb.29:
	ldr	w0, [x16, #8]
	ldr	w2, [x17, #8]
	cmp	w0, w2
	b.ne	LBB121_31
; %bb.30:
	ldr	w0, [x16, #12]
	ldr	w2, [x17, #12]
	cmp	w0, w2
	b.eq	LBB121_32
LBB121_31:
	ldr	q0, [x17]
	add	w10, w10, #1
	and	w17, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q0, [x16]
	strb	w15, [x9, w17, uxtw]
LBB121_32:
	cmp	w12, #1
	b.eq	LBB121_44
; %bb.33:
	add	w16, w13, #1
	add	w15, w16, w11
	add	x16, x1, w16, sxtw #4
	add	x17, x14, w15, sxtw #4
	ldr	w0, [x16]
	ldr	w2, [x17, #1396]
	add	x17, x17, #1396
	cmp	w2, w0
	b.ne	LBB121_37
; %bb.34:
	ldr	w0, [x17, #4]
	ldr	w2, [x16, #4]
	cmp	w0, w2
	b.ne	LBB121_37
; %bb.35:
	ldr	w0, [x17, #8]
	ldr	w2, [x16, #8]
	cmp	w0, w2
	b.ne	LBB121_37
; %bb.36:
	ldr	w0, [x17, #12]
	ldr	w2, [x16, #12]
	cmp	w0, w2
	b.eq	LBB121_38
LBB121_37:
	ldr	q0, [x16]
	add	w10, w10, #1
	and	w16, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q0, [x17]
	strb	w15, [x9, w16, uxtw]
LBB121_38:
	cmp	w12, #2
	b.eq	LBB121_44
; %bb.39:
	add	w12, w13, #2
	add	w11, w12, w11
	add	x12, x1, w12, sxtw #4
	add	x13, x14, w11, sxtw #4
	ldr	w14, [x12]
	ldr	w15, [x13, #1396]
	add	x13, x13, #1396
	cmp	w15, w14
	b.ne	LBB121_43
; %bb.40:
	ldr	w14, [x13, #4]
	ldr	w15, [x12, #4]
	cmp	w14, w15
	b.ne	LBB121_43
; %bb.41:
	ldr	w14, [x13, #8]
	ldr	w15, [x12, #8]
	cmp	w14, w15
	b.ne	LBB121_43
; %bb.42:
	ldr	w14, [x13, #12]
	ldr	w15, [x12, #12]
	cmp	w14, w15
	b.eq	LBB121_44
LBB121_43:
	ldr	q0, [x12]
	add	w10, w10, #1
	and	w12, w10, #0x3ff
	str	w10, [x8, _constants_serial@PAGEOFF]
	str	q0, [x13]
	strb	w11, [x9, w12, uxtw]
LBB121_44:
	ret
	.loh AdrpAdd	Lloh594, Lloh595
	.loh AdrpAdd	Lloh596, Lloh597
	.loh AdrpAdd	Lloh598, Lloh599
                                        ; -- End function
	.globl	_D3DDevice_SetStreamSource      ; -- Begin function D3DDevice_SetStreamSource
	.p2align	4
_D3DDevice_SetStreamSource:             ; @D3DDevice_SetStreamSource
; %bb.0:
	cmp	w0, #15
	b.hi	LBB122_4
; %bb.1:
	cbz	w1, LBB122_5
; %bb.2:
	ldr	w8, [x1, #4]
LBB122_3:
Lloh600:
	adrp	x9, _device@PAGE
Lloh601:
	add	x9, x9, _device@PAGEOFF
	add	x9, x9, w0, sxtw #3
	str	w8, [x9, #4500]
	str	w2, [x9, #4504]
LBB122_4:
	ret
LBB122_5:
	mov	w8, wzr
	b	LBB122_3
	.loh AdrpAdd	Lloh600, Lloh601
                                        ; -- End function
	.globl	_D3DDevice_SetIndices           ; -- Begin function D3DDevice_SetIndices
	.p2align	4
_D3DDevice_SetIndices:                  ; @D3DDevice_SetIndices
; %bb.0:
	adrp	x8, _device@PAGE+4628
	str	w1, [x8, _device@PAGEOFF+4628]
	cbz	w0, LBB123_3
; %bb.1:
	ldr	w8, [x0, #4]
LBB123_2:
Lloh602:
	adrp	x9, _D3D__IndexData@GOTPAGE
Lloh603:
	ldr	w9, [x9, _D3D__IndexData@GOTPAGEOFF]
Lloh604:
	str	w8, [x9]
	ret
LBB123_3:
	mov	x8, xzr
	b	LBB123_2
	.loh AdrpLdrGotStr	Lloh602, Lloh603, Lloh604
                                        ; -- End function
	.globl	_D3DDevice_DrawVertices         ; -- Begin function D3DDevice_DrawVertices
	.p2align	4
_D3DDevice_DrawVertices:                ; @D3DDevice_DrawVertices
; %bb.0:
	cbz	w2, LBB124_2
; %bb.1:
	mov	w4, w1
	mov	w1, w2
	mov	w2, wzr
	mov	x3, xzr
	b	_draw_make
LBB124_2:
	ret
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function draw_make
lCPI125_0:
	.long	4294967280                      ; 0xfffffff0
	.long	4294967288                      ; 0xfffffff8
	.long	0                               ; 0x0
	.long	4294967272                      ; 0xffffffe8
lCPI125_1:
	.long	255                             ; 0xff
	.long	255                             ; 0xff
	.long	255                             ; 0xff
	.long	4294967295                      ; 0xffffffff
lCPI125_2:
	.long	0x00000000                      ; float 0
	.long	0x00000000                      ; float 0
	.long	0x00000000                      ; float 0
	.long	0x3f800000                      ; float 1
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4
_draw_make:                             ; @draw_make
; %bb.0:
	stp	d11, d10, [sp, #-112]!          ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	sub	sp, sp, #2512
Lloh605:
	adrp	x8, _device@PAGE+4936
	str	wzr, [sp, #268]
Lloh606:
	ldr	w8, [x8, _device@PAGEOFF+4936]
	cbz	w8, LBB125_210
; %bb.1:
	mov	w23, w0
	add	x0, sp, #268
	mov	w19, w4
	mov	x20, x3
	mov	w25, w2
	mov	w27, w1
	bl	_targets_bind
	cbz	w0, LBB125_5
; %bb.2:
	str	w19, [sp, #100]                 ; 4-byte Spill
	adrp	x19, _device@PAGE+844
	str	x20, [sp, #80]                  ; 8-byte Spill
	str	w23, [sp, #224]                 ; 4-byte Spill
	ldr	w8, [x19, _device@PAGEOFF+844]
	cbz	w8, LBB125_6
; %bb.3:
Lloh607:
	adrp	x26, _fixed_function_program.program@PAGE
Lloh608:
	add	x26, x26, _fixed_function_program.program@PAGEOFF
	ldr	w8, [x26, #8]
	cbnz	w8, LBB125_7
; %bb.4:
Lloh609:
	adrp	x9, _fixed_function_program.no_instructions@PAGE
Lloh610:
	add	x9, x9, _fixed_function_program.no_instructions@PAGEOFF
	mov	x10, #50348                     ; =0xc4ac
	mov	w8, #26724                      ; =0x6864
	movk	x10, #46919, lsl #16
	movk	w8, #30323, lsl #16
	movk	x10, #559, lsl #32
	str	w9, [x26, #8]
	movk	x10, #19457, lsl #48
	mov	w9, #1                          ; =0x1
	str	w8, [x26]
	str	x10, [x26, #120]
	str	w9, [x26, #156]
	b	LBB125_7
LBB125_5:
	adrp	x8, _stats@PAGE+16
	ldr	w9, [x8, _stats@PAGEOFF+16]
	add	w9, w9, #1
	str	w9, [x8, _stats@PAGEOFF+16]
	b	LBB125_210
LBB125_6:
Lloh611:
	adrp	x8, _device@PAGE
Lloh612:
	add	x8, x8, _device@PAGEOFF
	ldrsw	x9, [x8, #1392]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x8, #840]
	ldr	w9, [x9, #848]
	cmp	w9, #0
	csel	x26, x8, x9, eq
LBB125_7:
	adrp	x23, _dump_folder.read_at@PAGE
	ldr	w24, [x23, _dump_folder.read_at@PAGEOFF]
	bl	_config_changes
	adrp	x20, _dump_folder.folder@PAGE
	cmp	w24, w0
	b.ne	LBB125_13
; %bb.8:
	ldr	w23, [x20, _dump_folder.folder@PAGEOFF]
	ldr	w8, [x19, _device@PAGEOFF+844]
	cbnz	w8, LBB125_17
LBB125_9:
	cbz	w26, LBB125_12
; %bb.10:
Lloh613:
	adrp	x8, _device@PAGE+840
Lloh614:
	ldr	w8, [x8, _device@PAGEOFF+840]
	cbz	w8, LBB125_12
; %bb.11:
	ldr	w8, [x26, #8]
	cbnz	w8, LBB125_18
LBB125_12:
	adrp	x8, _stats@PAGE+12
	ldr	w9, [x8, _stats@PAGEOFF+12]
	add	w9, w9, #1
	str	w9, [x8, _stats@PAGEOFF+12]
	b	LBB125_210
LBB125_13:
	bl	_config_changes
	str	w0, [x23, _dump_folder.read_at@PAGEOFF]
Lloh615:
	adrp	x0, l_.str.52@PAGE
Lloh616:
	add	x0, x0, l_.str.52@PAGEOFF
	bl	_config_string
	mov	x23, x0
	str	w23, [x20, _dump_folder.folder@PAGEOFF]
	cbz	w23, LBB125_107
; %bb.14:
	ldrb	w8, [x23]
	cbnz	w8, LBB125_16
; %bb.15:
	mov	x23, xzr
	str	wzr, [x20, _dump_folder.folder@PAGEOFF]
LBB125_16:
	ldr	w8, [x19, _device@PAGEOFF+844]
	cbz	w8, LBB125_9
LBB125_17:
	cbz	w25, LBB125_12
LBB125_18:
Lloh617:
	adrp	x10, _D3D__RenderState@GOTPAGE
	add	x9, sp, #336
	add	x20, sp, #1632
Lloh618:
	ldr	w10, [x10, _D3D__RenderState@GOTPAGEOFF]
	stp	xzr, xzr, [x9, #232]
	str	xzr, [x9, #248]
	str	wzr, [sp, #592]
	ldp	q0, q1, [x10, #192]
	ldp	q2, q3, [x10, #128]
	stp	q0, q1, [x9, #192]
	ldp	q0, q1, [x10, #160]
	stp	q2, q3, [x9, #128]
	ldp	q2, q3, [x10, #64]
	stp	q0, q1, [x9, #160]
	ldp	q0, q1, [x10, #96]
	ldr	w8, [x10, #224]
	stp	q2, q3, [x9, #64]
	stp	q0, q1, [x9, #96]
	ldp	q0, q1, [x10, #32]
	str	w8, [sp, #560]
	add	x8, sp, #608
	ldp	q2, q3, [x10]
	add	w8, w8, #260
	stp	q0, q1, [sp, #368]
	movi	v0.2d, #0000000000000000
	ldr	w19, [x10, #464]
	stp	q2, q3, [sp, #336]
	str	x8, [sp, #64]                   ; 8-byte Spill
	str	wzr, [sp, #512]
	str	wzr, [sp, #508]
	stur	q0, [x9, #88]
	stur	q0, [x9, #72]
	add	x9, sp, #137
	str	w19, [sp, #564]
	stur	q0, [x9, #255]
	add	x9, sp, #121
	stur	q0, [x9, #255]
	bl	_mcc_environment_shader_active
Lloh619:
	adrp	x8, _texture_clip.2@PAGE
	strb	w0, [sp, #594]
Lloh620:
	ldr	s0, [x8, _texture_clip.2@PAGEOFF]
	fcmp	s0, #0.0
	b.eq	LBB125_20
; %bb.19:
Lloh621:
	adrp	x8, _texture_clip_3d@PAGE
Lloh622:
	adrp	x9, _texture_clip_stage@PAGE
Lloh623:
	ldr	w8, [x8, _texture_clip_3d@PAGEOFF]
Lloh624:
	ldr	w9, [x9, _texture_clip_stage@PAGEOFF]
	cmp	w8, #0
	mov	w8, #4194304                    ; =0x400000
	csel	w8, wzr, w8, eq
	orr	w8, w8, w9, lsl #20
	orr	w8, w8, w19
	orr	w19, w8, #0x10000000
	str	w19, [sp, #564]
LBB125_20:
	mov	w9, w20
	adrp	x8, _warp_blend@PAGE
Lloh625:
	adrp	x16, _D3D__RenderState@GOTPAGE
	str	x23, [sp, #232]                 ; 8-byte Spill
	stp	w27, w25, [sp, #92]             ; 8-byte Folded Spill
	str	x9, [sp, #216]                  ; 8-byte Spill
	ldrb	w8, [x8, _warp_blend@PAGEOFF]
Lloh626:
	ldr	w16, [x16, _D3D__RenderState@GOTPAGEOFF]
	cbz	w8, LBB125_22
; %bb.21:
	orr	w8, w19, #0x40000000
	str	w8, [sp, #564]
LBB125_22:
	add	x8, sp, #336
	mov	w24, wzr
	add	x20, x8, #232
	mov	w27, #27                        ; =0x1b
	mov	w23, #1                         ; =0x1
	mov	w28, #3                         ; =0x3
Lloh627:
	adrp	x25, _rendered@PAGE
Lloh628:
	add	x25, x25, _rendered@PAGEOFF
	b	LBB125_25
	.p2align	4, , 8
LBB125_23:                              ;   in Loop: Header=BB125_25 Depth=1
	cmp	w9, #17
	cset	w8, eq
LBB125_24:                              ;   in Loop: Header=BB125_25 Depth=1
	strb	w8, [x20, w24, sxtw]
	add	w24, w24, #1
	cmp	w24, #4
	b.eq	LBB125_73
LBB125_25:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB125_33 Depth 2
Lloh629:
	adrp	x8, _device@PAGE
Lloh630:
	add	x8, x8, _device@PAGEOFF
	add	x8, x8, w24, sxtw #2
	ldr	w9, [x16, #464]
	add	w10, w24, w24, lsl #2
	ldr	w19, [x8, #804]
	lsr	w10, w9, w10
	and	w9, w10, #0x1f
	cbz	w19, LBB125_23
; %bb.26:                               ;   in Loop: Header=BB125_25 Depth=1
	ldr	w8, [x19, #4]
	and	w10, w10, w27
	cmp	w8, #0
	ccmp	w9, #17, #4, ne
	ccmp	w10, #0, #4, ne
	ccmp	w9, #5, #4, ne
	b.eq	LBB125_23
; %bb.27:                               ;   in Loop: Header=BB125_25 Depth=1
Lloh631:
	adrp	x9, _rendered_count@PAGE
Lloh632:
	ldr	w9, [x9, _rendered_count@PAGEOFF]
	cbz	w9, LBB125_64
; %bb.28:                               ;   in Loop: Header=BB125_25 Depth=1
	and	w10, w9, #0x3
	cmp	w9, #4
	b.hs	LBB125_30
; %bb.29:                               ;   in Loop: Header=BB125_25 Depth=1
	mov	w11, wzr
	mov	w9, #256                        ; =0x100
	b	LBB125_49
LBB125_30:                              ;   in Loop: Header=BB125_25 Depth=1
	mov	w11, wzr
	and	w12, w9, #0xfffffffc
	mov	w9, #256                        ; =0x100
Lloh633:
	adrp	x13, _rendered@PAGE+32
Lloh634:
	add	x13, x13, _rendered@PAGEOFF+32
	b	LBB125_33
	.p2align	4, , 8
LBB125_31:                              ;   in Loop: Header=BB125_33 Depth=2
	add	w9, w11, #3
LBB125_32:                              ;   in Loop: Header=BB125_33 Depth=2
	add	w13, w13, #64
	add	w11, w11, #4
	cmp	w12, w11
	b.eq	LBB125_48
LBB125_33:                              ;   Parent Loop BB125_25 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w14, w13, #32
	ldr	w14, [x14]
	cmp	w14, w8
	b.ne	LBB125_37
; %bb.34:                               ;   in Loop: Header=BB125_33 Depth=2
	cmp	w9, #256
	b.eq	LBB125_36
; %bb.35:                               ;   in Loop: Header=BB125_33 Depth=2
	sub	w14, w13, #20
	add	x15, x25, w9, sxtw #4
	ldr	w14, [x14]
	ldr	w15, [x15, #12]
	cmp	w14, w15
	b.ls	LBB125_37
LBB125_36:                              ;   in Loop: Header=BB125_33 Depth=2
	mov	w9, w11
LBB125_37:                              ;   in Loop: Header=BB125_33 Depth=2
	sub	w14, w13, #16
	ldr	w14, [x14]
	cmp	w14, w8
	b.ne	LBB125_41
; %bb.38:                               ;   in Loop: Header=BB125_33 Depth=2
	cmp	w9, #256
	b.eq	LBB125_40
; %bb.39:                               ;   in Loop: Header=BB125_33 Depth=2
	sub	w14, w13, #4
	add	x15, x25, w9, sxtw #4
	ldr	w14, [x14]
	ldr	w15, [x15, #12]
	cmp	w14, w15
	b.ls	LBB125_41
LBB125_40:                              ;   in Loop: Header=BB125_33 Depth=2
	add	w9, w11, #1
LBB125_41:                              ;   in Loop: Header=BB125_33 Depth=2
	ldr	w14, [x13]
	cmp	w14, w8
	b.ne	LBB125_45
; %bb.42:                               ;   in Loop: Header=BB125_33 Depth=2
	cmp	w9, #256
	b.eq	LBB125_44
; %bb.43:                               ;   in Loop: Header=BB125_33 Depth=2
	add	w14, w13, #12
	add	x15, x25, w9, sxtw #4
	ldr	w14, [x14]
	ldr	w15, [x15, #12]
	cmp	w14, w15
	b.ls	LBB125_45
LBB125_44:                              ;   in Loop: Header=BB125_33 Depth=2
	add	w9, w11, #2
LBB125_45:                              ;   in Loop: Header=BB125_33 Depth=2
	add	w14, w13, #16
	ldr	w14, [x14]
	cmp	w14, w8
	b.ne	LBB125_32
; %bb.46:                               ;   in Loop: Header=BB125_33 Depth=2
	cmp	w9, #256
	b.eq	LBB125_31
; %bb.47:                               ;   in Loop: Header=BB125_33 Depth=2
	add	w14, w13, #28
	add	x15, x25, w9, sxtw #4
	ldr	w14, [x14]
	ldr	w15, [x15, #12]
	cmp	w14, w15
	b.hi	LBB125_31
	b	LBB125_32
LBB125_48:                              ;   in Loop: Header=BB125_25 Depth=1
	cbz	w10, LBB125_63
LBB125_49:                              ;   in Loop: Header=BB125_25 Depth=1
	add	x12, x25, w11, sxtw #4
	ldr	w13, [x12]
	cmp	w13, w8
	b.ne	LBB125_53
; %bb.50:                               ;   in Loop: Header=BB125_25 Depth=1
	cmp	w9, #256
	b.eq	LBB125_52
; %bb.51:                               ;   in Loop: Header=BB125_25 Depth=1
	add	x13, x25, w9, sxtw #4
	ldr	w12, [x12, #12]
	ldr	w13, [x13, #12]
	cmp	w12, w13
	b.ls	LBB125_53
LBB125_52:                              ;   in Loop: Header=BB125_25 Depth=1
	mov	w9, w11
LBB125_53:                              ;   in Loop: Header=BB125_25 Depth=1
	cmp	w10, #1
	b.eq	LBB125_63
; %bb.54:                               ;   in Loop: Header=BB125_25 Depth=1
	add	w12, w11, #1
	add	x12, x25, w12, sxtw #4
	ldr	w13, [x12]
	cmp	w13, w8
	b.ne	LBB125_58
; %bb.55:                               ;   in Loop: Header=BB125_25 Depth=1
	cmp	w9, #256
	b.eq	LBB125_57
; %bb.56:                               ;   in Loop: Header=BB125_25 Depth=1
	add	x13, x25, w9, sxtw #4
	ldr	w12, [x12, #12]
	ldr	w13, [x13, #12]
	cmp	w12, w13
	b.ls	LBB125_58
LBB125_57:                              ;   in Loop: Header=BB125_25 Depth=1
	add	w9, w11, #1
LBB125_58:                              ;   in Loop: Header=BB125_25 Depth=1
	cmp	w10, #2
	b.eq	LBB125_63
; %bb.59:                               ;   in Loop: Header=BB125_25 Depth=1
	add	w10, w11, #2
	add	x11, x25, w10, sxtw #4
	ldr	w12, [x11]
	cmp	w12, w8
	b.ne	LBB125_63
; %bb.60:                               ;   in Loop: Header=BB125_25 Depth=1
	cmp	w9, #256
	b.eq	LBB125_62
; %bb.61:                               ;   in Loop: Header=BB125_25 Depth=1
	add	x8, x25, w9, sxtw #4
	ldr	w11, [x11, #12]
	ldr	w8, [x8, #12]
	cmp	w11, w8
	b.ls	LBB125_63
LBB125_62:                              ;   in Loop: Header=BB125_25 Depth=1
	mov	w9, w10
LBB125_63:                              ;   in Loop: Header=BB125_25 Depth=1
	cmp	w9, #256
	b.ne	LBB125_68
LBB125_64:                              ;   in Loop: Header=BB125_25 Depth=1
	ldp	w0, w1, [x19, #12]
	add	x2, sp, #1632
	bl	_xgpu_texture_describe
	cbnz	w24, LBB125_72
; %bb.65:                               ;   in Loop: Header=BB125_25 Depth=1
Lloh635:
	adrp	x8, _device@PAGE+820
Lloh636:
	ldr	w8, [x8, _device@PAGEOFF+820]
	cbz	w8, LBB125_69
; %bb.66:                               ;   in Loop: Header=BB125_25 Depth=1
	ldr	w8, [x8, #4]
	cbz	w8, LBB125_69
; %bb.67:                               ;   in Loop: Header=BB125_25 Depth=1
	orr	w1, w8, #0x80000000
	b	LBB125_70
LBB125_68:                              ;   in Loop: Header=BB125_25 Depth=1
	mov	w8, #1                          ; =0x1
	b	LBB125_24
LBB125_69:                              ;   in Loop: Header=BB125_25 Depth=1
	mov	x1, xzr
LBB125_70:                              ;   in Loop: Header=BB125_25 Depth=1
	movi	v0.2d, #0000000000000000
	add	x8, sp, #1632
	add	x2, sp, #1568
	sub	x3, x29, #208
	mov	x0, x19
	stur	wzr, [x29, #-160]
	stp	q0, q0, [x8, #768]
	str	q0, [x8, #800]
	bl	_vk_texture_get
	cbz	w0, LBB125_72
; %bb.71:                               ;   in Loop: Header=BB125_25 Depth=1
	ldp	w8, w9, [x29, #-168]
	ldur	w10, [x29, #-160]
	cmp	w8, #0
	cset	w8, ne
	cmp	w9, #0
	cset	w9, ne
	cmp	w10, #0
	cset	w10, ne
	strb	w8, [sp, #587]
	strb	w9, [sp, #588]
	strb	w10, [sp, #592]
LBB125_72:                              ;   in Loop: Header=BB125_25 Depth=1
	ldr	w8, [sp, #1644]
Lloh637:
	adrp	x16, _D3D__RenderState@GOTPAGE
	ldr	w9, [sp, #1652]
Lloh638:
	ldr	w16, [x16, _D3D__RenderState@GOTPAGEOFF]
	cmp	w8, #1
	cinc	w8, w23, hi
	cmp	w9, #0
	csel	w8, w8, w28, eq
	b	LBB125_24
LBB125_73:
Lloh639:
	adrp	x14, _D3D__TextureState@GOTPAGE
	movi	v1.4s, #4
	mov	w12, #32769                     ; =0x8001
Lloh640:
	ldr	w14, [x14, _D3D__TextureState@GOTPAGEOFF]
	ldr	w10, [x16, #248]
	ldrb	w9, [sp, #587]
	add	x8, x14, #212
	ldur	q0, [x14, #84]
	cmp	w10, w12
	ldr	w11, [x14, #80]
	ldr	w13, [x14, #208]
	ldr	w10, [x14, #336]
	ld1	{ v0.s }[1], [x8]
	add	x8, x14, #340
	ldr	w12, [x14, #464]
	lsr	w11, w11, #28
	lsr	w13, w13, #28
	lsr	w10, w10, #28
	strb	w11, [sp, #576]
	ld1	{ v0.s }[2], [x8]
	add	x8, x14, #468
	strb	w13, [sp, #577]
	strb	w10, [sp, #578]
	ld1	{ v0.s }[3], [x8]
	ldr	w8, [x16, #236]
	cmeq	v0.4s, v0.4s, v1.4s
	movi	v1.4h, #1
	ccmp	w8, #0, #4, eq
	ccmp	w9, #0, #4, ne
	lsr	w9, w12, #28
	xtn	v0.4h, v0.4s
	strb	w9, [sp, #579]
	and	v0.8b, v0.8b, v1.8b
	uzp1	v0.8b, v0.8b, v0.8b
	str	s0, [sp, #572]
	b.eq	LBB125_75
; %bb.74:
	ldr	w9, [x16, #252]
	cmp	w9, #770
	cset	w9, eq
	b	LBB125_76
LBB125_75:
	mov	w9, wzr
LBB125_76:
	ldrb	w10, [sp, #588]
Lloh641:
	adrp	x13, _target_samples@PAGE
	ldr	w11, [x16, #240]
	ldr	w12, [x16, #232]
	ldr	x0, [sp, #232]                  ; 8-byte Reload
	cmp	w10, #0
	cset	w10, ne
	cmp	w11, #0
	csel	w11, wzr, w12, eq
	cmp	w8, #0
Lloh642:
	ldr	w8, [x13, _target_samples@PAGEOFF]
	ccmp	w11, #0, #4, eq
	and	w12, w9, #0x1
	and	w9, w10, w9
	str	w11, [sp, #580]
	ccmp	w8, #2, #0, ne
	strb	w12, [sp, #587]
	strb	w9, [sp, #588]
	b.lo	LBB125_78
; %bb.77:
	strb	w8, [sp, #590]
LBB125_78:
	ldr	w8, [x16, #328]
	adrp	x10, _plasma_draw@PAGE
	ldr	w9, [x16, #332]
	str	wzr, [sp, #240]                 ; 4-byte Spill
	str	wzr, [x10, _plasma_draw@PAGEOFF]
	cmp	w8, #0
	cset	w8, ne
	strb	w9, [sp, #585]
	strb	w8, [sp, #584]
	ldr	w8, [sp, #96]                   ; 4-byte Reload
	cbnz	w8, LBB125_82
; %bb.79:
	ldr	w8, [x26, #128]
	cmp	w8, #2
	b.ne	LBB125_81
; %bb.80:
	ldr	w8, [x26, #152]
	cbz	w8, LBB125_237
LBB125_81:
Lloh643:
	adrp	x8, _device@PAGE+840
Lloh644:
	ldr	w8, [x8, _device@PAGEOFF+840]
	ldr	w8, [x8, #116]
	str	w8, [sp, #240]                  ; 4-byte Spill
LBB125_82:
	cbz	w0, LBB125_114
; %bb.83:
	ldr	w8, [x26, #156]
	cbnz	w8, LBB125_85
; %bb.84:
	ldr	w2, [sp, #240]                  ; 4-byte Reload
	mov	x1, x26
	bl	_dump_vertex_shader
LBB125_85:
	mov	w23, #40389                     ; =0x9dc5
	mov	w9, #403                        ; =0x193
	mov	w8, wzr
	movk	w23, #33052, lsl #16
	movk	w9, #256, lsl #16
	add	x10, sp, #336
	.p2align	4, , 8
LBB125_86:                              ; =>This Inner Loop Header: Depth=1
	add	w11, w10, w8
	add	w8, w8, #52
	add	w12, w11, #4
	add	w14, w11, #8
	cmp	w8, #260
	ldr	w13, [x11]
	ldr	w12, [x12]
	eor	w13, w13, w23
	mul	w13, w13, w9
	eor	w12, w12, w13
	ldr	w13, [x14]
	add	w14, w11, #12
	mul	w12, w12, w9
	eor	w12, w13, w12
	ldr	w13, [x14]
	add	w14, w11, #16
	mul	w12, w12, w9
	eor	w12, w13, w12
	ldr	w13, [x14]
	add	w14, w11, #20
	mul	w12, w12, w9
	eor	w12, w13, w12
	ldr	w13, [x14]
	add	w14, w11, #24
	mul	w12, w12, w9
	eor	w12, w13, w12
	ldr	w13, [x14]
	add	w14, w11, #28
	mul	w12, w12, w9
	eor	w12, w13, w12
	ldr	w13, [x14]
	add	w14, w11, #32
	mul	w12, w12, w9
	eor	w12, w13, w12
	ldr	w13, [x14]
	add	w14, w11, #36
	mul	w12, w12, w9
	eor	w12, w13, w12
	ldr	w13, [x14]
	add	w14, w11, #40
	mul	w12, w12, w9
	eor	w12, w13, w12
	ldr	w13, [x14]
	add	w14, w11, #44
	add	w11, w11, #48
	mul	w12, w12, w9
	eor	w12, w13, w12
	ldr	w13, [x14]
	ldr	w11, [x11]
	mul	w12, w12, w9
	eor	w12, w13, w12
	mul	w12, w12, w9
	eor	w11, w11, w12
	mul	w23, w11, w9
	b.ne	LBB125_86
; %bb.87:
	and	w8, w23, #0x3ff
Lloh645:
	adrp	x27, _dump_pixels@PAGE
Lloh646:
	add	x27, x27, _dump_pixels@PAGEOFF
	ldr	w8, [x27, w8, uxtw #2]
	cbz	w8, LBB125_108
; %bb.88:
	add	x9, sp, #336
	mov	w24, wzr
	add	w9, w9, #24
	b	LBB125_91
	.p2align	4, , 8
LBB125_89:                              ;   in Loop: Header=BB125_91 Depth=1
	add	w24, w24, #1
LBB125_90:                              ;   in Loop: Header=BB125_91 Depth=1
	ldr	w8, [x8, #264]
	cbz	w8, LBB125_109
LBB125_91:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB125_93 Depth 2
	ldr	w10, [x8, #260]
	cmp	w10, w23
	b.ne	LBB125_90
; %bb.92:                               ;   in Loop: Header=BB125_91 Depth=1
	add	w10, w8, #24
	mov	w11, #65                        ; =0x41
	mov	x12, x9
LBB125_93:                              ;   Parent Loop BB125_91 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w13, w10, #24
	sub	w14, w12, #24
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.94:                               ;   in Loop: Header=BB125_93 Depth=2
	sub	w13, w10, #20
	sub	w14, w12, #20
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.95:                               ;   in Loop: Header=BB125_93 Depth=2
	sub	w13, w10, #16
	sub	w14, w12, #16
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.96:                               ;   in Loop: Header=BB125_93 Depth=2
	sub	w13, w10, #12
	sub	w14, w12, #12
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.97:                               ;   in Loop: Header=BB125_93 Depth=2
	sub	w13, w10, #8
	sub	w14, w12, #8
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.98:                               ;   in Loop: Header=BB125_93 Depth=2
	sub	w13, w10, #4
	sub	w14, w12, #4
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.99:                               ;   in Loop: Header=BB125_93 Depth=2
	ldr	w13, [x10]
	ldr	w14, [x12]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.100:                              ;   in Loop: Header=BB125_93 Depth=2
	add	w13, w10, #4
	add	w14, w12, #4
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.101:                              ;   in Loop: Header=BB125_93 Depth=2
	add	w13, w10, #8
	add	w14, w12, #8
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.102:                              ;   in Loop: Header=BB125_93 Depth=2
	add	w13, w10, #12
	add	w14, w12, #12
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.103:                              ;   in Loop: Header=BB125_93 Depth=2
	add	w13, w10, #16
	add	w14, w12, #16
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.104:                              ;   in Loop: Header=BB125_93 Depth=2
	add	w13, w10, #20
	add	w14, w12, #20
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.105:                              ;   in Loop: Header=BB125_93 Depth=2
	add	w13, w10, #24
	add	w14, w12, #24
	ldr	w13, [x13]
	ldr	w14, [x14]
	cmp	w13, w14
	b.ne	LBB125_89
; %bb.106:                              ;   in Loop: Header=BB125_93 Depth=2
	add	w12, w12, #52
	add	w10, w10, #52
	subs	w11, w11, #13
	b.ne	LBB125_93
	b	LBB125_114
LBB125_107:
	mov	x23, xzr
	ldr	w8, [x19, _device@PAGEOFF+844]
	cbnz	w8, LBB125_17
	b	LBB125_9
LBB125_108:
	mov	w24, wzr
LBB125_109:
	mov	w0, #1                          ; =0x1
	mov	w1, #268                        ; =0x10c
	bl	_calloc
	cbz	w0, LBB125_114
; %bb.110:
	add	x1, sp, #336
	mov	w2, #260                        ; =0x104
	and	w28, w23, #0x3ff
	mov	x19, x0
	bl	_memcpy
	adrp	x8, _dump_pixel_count@PAGE
	lsl	w9, w28, #2
	str	w23, [x19, #260]
	ldr	w11, [x27, w9, uxtw]
	ldr	w10, [x8, _dump_pixel_count@PAGEOFF]
	str	w19, [x27, w9, uxtw]
	str	w11, [x19, #264]
	add	w10, w10, #1
	str	w10, [x8, _dump_pixel_count@PAGEOFF]
	cbz	w24, LBB125_112
; %bb.111:
Lloh647:
	adrp	x8, _dump_collisions@PAGE
Lloh648:
	adrp	x2, l_.str.63@PAGE
Lloh649:
	add	x2, x2, l_.str.63@PAGEOFF
	add	x0, sp, #1632
	mov	w1, #96                         ; =0x60
	ldr	w9, [x8, _dump_collisions@PAGEOFF]
	add	w9, w9, #1
	str	w9, [x8, _dump_collisions@PAGEOFF]
Lloh650:
	adrp	x8, l_.str.64@PAGE
Lloh651:
	add	x8, x8, l_.str.64@PAGEOFF
	stp	w23, w8, [sp]
	bl	_snprintf
Lloh652:
	adrp	x2, l_.str.65@PAGE
Lloh653:
	add	x2, x2, l_.str.65@PAGEOFF
	add	x0, sp, #1568
	mov	w1, #64                         ; =0x40
	str	w24, [sp, #4]
	b	LBB125_113
LBB125_112:
Lloh654:
	adrp	x2, l_.str.63@PAGE
Lloh655:
	add	x2, x2, l_.str.63@PAGEOFF
	add	x0, sp, #1632
	mov	w1, #96                         ; =0x60
Lloh656:
	adrp	x8, l_.str.50@PAGE
Lloh657:
	add	x8, x8, l_.str.50@PAGEOFF
	stp	w23, w8, [sp]
	bl	_snprintf
Lloh658:
	adrp	x2, l_.str.66@PAGE
Lloh659:
	add	x2, x2, l_.str.66@PAGEOFF
	add	x0, sp, #1568
	mov	w1, #64                         ; =0x40
LBB125_113:
	str	w23, [sp]
	bl	_snprintf
Lloh660:
	adrp	x2, l_.str.67@PAGE
Lloh661:
	add	x2, x2, l_.str.67@PAGEOFF
	add	x23, sp, #1568
	sub	x0, x29, #208
	mov	w1, #80                         ; =0x50
	str	w23, [sp]
	bl	_snprintf
	ldr	x27, [sp, #232]                 ; 8-byte Reload
	sub	x1, x29, #208
	add	x2, sp, #336
	add	x4, sp, #1632
	mov	w3, #260                        ; =0x104
	mov	x0, x27
	bl	_dump_file
	add	x0, sp, #336
	bl	_nv2a_vk_pixel_shader_to_glsl
	mov	x19, x0
Lloh662:
	adrp	x2, l_.str.68@PAGE
Lloh663:
	add	x2, x2, l_.str.68@PAGEOFF
	sub	x0, x29, #208
	mov	w1, #80                         ; =0x50
	str	w23, [sp]
	bl	_snprintf
	mov	x0, x19
	bl	_strlen
	mov	w3, w0
	sub	x1, x29, #208
	add	x4, sp, #1632
	mov	x0, x27
	mov	x2, x19
	bl	_dump_file
	mov	x0, x19
	bl	_free
Lloh664:
	adrp	x24, _xgpu_capabilities@GOTPAGE
Lloh665:
	adrp	x8, l_.str.62@PAGE
Lloh666:
	add	x8, x8, l_.str.62@PAGEOFF
	add	x0, sp, #336
Lloh667:
	ldr	w24, [x24, _xgpu_capabilities@GOTPAGEOFF]
	ldr	w28, [x24, #36]
	str	w8, [x24, #36]
	bl	_nv2a_pixel_shader_to_glsl
	mov	x19, x0
Lloh668:
	adrp	x2, l_.str.69@PAGE
Lloh669:
	add	x2, x2, l_.str.69@PAGEOFF
	sub	x0, x29, #208
	mov	w1, #80                         ; =0x50
	str	w28, [x24, #36]
	str	w23, [sp]
	bl	_snprintf
	mov	x0, x19
	bl	_strlen
	mov	w3, w0
	sub	x1, x29, #208
	add	x4, sp, #1632
	mov	x0, x27
	mov	x2, x19
	bl	_dump_file
	mov	x0, x19
	bl	_free
LBB125_114:
Lloh670:
	adrp	x8, _device@PAGE+4936
Lloh671:
	ldr	w8, [x8, _device@PAGEOFF+4936]
	cbz	w8, LBB125_209
; %bb.115:
	mov	x19, #22372                     ; =0x5764
	ldr	w8, [x26, #128]
	movk	x19, #18328, lsl #16
	mov	x24, #435                       ; =0x1b3
	movk	x19, #51831, lsl #32
	movk	x24, #256, lsl #32
	movk	x19, #44330, lsl #48
	cbz	w8, LBB125_117
; %bb.116:
	ldr	w8, [x26, #148]
	cbz	w8, LBB125_122
LBB125_117:
Lloh672:
	adrp	x8, _plasma_draw@PAGE
	str	wzr, [sp, #1632]
Lloh673:
	ldr	w23, [x8, _plasma_draw@PAGEOFF]
	cbz	w23, LBB125_125
; %bb.118:
	ldr	w27, [sp, #240]                 ; 4-byte Reload
	mov	x0, x26
	mov	w2, wzr
	mov	w3, w23
	stur	wzr, [x29, #-208]
	mov	w1, w27
	bl	_vertex_shader_hash
	mov	x1, x0
	sub	x8, x29, #208
	mov	w0, wzr
	mov	x2, x26
	mov	w3, w27
	mov	w4, wzr
	mov	w5, w23
	mov	x6, xzr
	mov	w7, wzr
	str	w8, [sp]
	bl	_shader_handle
	ldur	w8, [x29, #-208]
	mov	w23, w0
	cbz	w8, LBB125_120
; %bb.119:
	ldr	w8, [x26, #4]
Lloh674:
	adrp	x0, l_.str.72@PAGE
Lloh675:
	add	x0, x0, l_.str.72@PAGEOFF
	str	w8, [sp]
	bl	_platform_log
	mov	w8, #1                          ; =0x1
	str	w8, [x26, #152]
LBB125_120:
	adrp	x8, _plasma_draw@PAGE
	cbz	w23, LBB125_124
; %bb.121:
	ldr	w8, [x8, _plasma_draw@PAGEOFF]
	cbnz	w8, LBB125_126
	b	LBB125_125
LBB125_122:
	adrp	x23, _per_pixel_lighting.read_at@PAGE
	ldr	w28, [x23, _per_pixel_lighting.read_at@PAGEOFF]
	bl	_config_changes
	cmp	w28, w0
	b.ne	LBB125_227
; %bb.123:
Lloh676:
	adrp	x8, _per_pixel_lighting.enabled@PAGE
Lloh677:
	ldr	w8, [x8, _per_pixel_lighting.enabled@PAGEOFF]
	b	LBB125_228
LBB125_124:
	str	wzr, [x8, _plasma_draw@PAGEOFF]
LBB125_125:
	ldrb	w8, [x26, #120]
	mov	w0, wzr
	ldrb	w9, [x26, #121]
	mov	x2, x26
	ldr	w3, [sp, #240]                  ; 4-byte Reload
	mov	w4, wzr
	mov	w5, wzr
	mov	x6, xzr
	eor	x8, x8, x19
	mov	w7, #1                          ; =0x1
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #122]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #123]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #124]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #125]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #126]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #127]
	mul	x8, x8, x24
	eor	x8, x8, x9
	and	w9, w3, #0xff
	mul	x8, x8, x24
	eor	x8, x8, x9
	ubfx	w9, w3, #8, #8
	mul	x8, x8, x24
	eor	x8, x8, x9
	ubfx	w9, w3, #16, #8
	mul	x8, x8, x24
	eor	x8, x8, x9
	lsr	w9, w3, #24
	mul	x8, x8, x24
	eor	x8, x8, x9
	mul	x1, x8, x24
	add	x8, sp, #1632
	str	w8, [sp]
	bl	_shader_handle
	mov	w23, w0
LBB125_126:
	mov	w8, wzr
	add	x9, sp, #336
	.p2align	4, , 8
LBB125_127:                             ; =>This Inner Loop Header: Depth=1
	add	w10, w9, w8
	add	w8, w8, #26
	add	w11, w10, #1
	add	w13, w10, #2
	cmp	w8, #260
	ldrb	w12, [x10]
	ldrb	w11, [x11]
	eor	x12, x19, x12
	mul	x12, x12, x24
	eor	x11, x12, x11
	ldrb	w12, [x13]
	add	w13, w10, #3
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #4
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #5
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #6
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #7
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #8
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #9
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #10
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #11
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #12
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #13
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #14
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #15
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #16
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #17
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #18
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #19
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #20
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #21
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #22
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #23
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #24
	add	w10, w10, #25
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	ldrb	w10, [x10]
	mul	x11, x11, x24
	eor	x11, x11, x12
	mul	x11, x11, x24
	eor	x10, x11, x10
	mul	x19, x10, x24
	b.ne	LBB125_127
; %bb.128:
	add	x8, sp, #1632
	add	x6, sp, #336
	mov	w0, #1                          ; =0x1
	mov	x1, x19
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	mov	w5, wzr
	mov	w7, #1                          ; =0x1
	str	w8, [sp]
	bl	_shader_handle
LBB125_129:
	cbz	w23, LBB125_209
; %bb.130:
	cbz	w0, LBB125_209
; %bb.131:
	str	w0, [sp, #208]                  ; 4-byte Spill
	add	x0, sp, #608
	mov	w1, #960                        ; =0x3c0
	str	w23, [sp, #232]                 ; 4-byte Spill
	add	x23, sp, #608
	bl	_bzero
Lloh678:
	adrp	x2, _D3D__RenderState@GOTPAGE
	fmov	v0.4s, #1.00000000
	fmov	v8.2s, #1.00000000
	mov	w19, wzr
	add	x24, x23, #680
	add	x28, sp, #272
Lloh679:
	ldr	w2, [x2, _D3D__RenderState@GOTPAGEOFF]
	ldr	w27, [sp, #96]                  ; 4-byte Reload
	b	LBB125_135
LBB125_132:                             ;   in Loop: Header=BB125_135 Depth=1
	ldr	w8, [sp, #1648]
	add	x3, x23, #12
	ldr	w2, [sp, #1668]
	cmp	w8, #1
	mov	w8, #1                          ; =0x1
	cset	w1, hi
	stp	w8, w0, [x23]
	mov	w0, w19
	bl	_sampler_state_make
LBB125_133:                             ;   in Loop: Header=BB125_135 Depth=1
Lloh680:
	adrp	x2, _D3D__RenderState@GOTPAGE
	fmov	v0.4s, #1.00000000
Lloh681:
	ldr	w2, [x2, _D3D__RenderState@GOTPAGEOFF]
LBB125_134:                             ;   in Loop: Header=BB125_135 Depth=1
	add	w19, w19, #1
	cmp	w19, #4
	b.eq	LBB125_211
LBB125_135:                             ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB125_150 Depth 2
                                        ;     Child Loop BB125_195 Depth 2
                                        ;     Child Loop BB125_205 Depth 2
Lloh682:
	adrp	x8, _device@PAGE
Lloh683:
	add	x8, x8, _device@PAGEOFF
	add	x9, x8, w19, sxtw #2
	sxtw	x8, w19
	ldr	w10, [x2, #464]
	add	x26, x28, w19, sxtw #4
	ldrb	w11, [x20, x8]
	add	x23, x24, x8, lsl #6
	ldr	w0, [x9, #804]
	str	q0, [x26]
	str	w11, [x23, #8]
	cbz	w0, LBB125_134
; %bb.136:                              ;   in Loop: Header=BB125_135 Depth=1
	ldr	w8, [x0, #4]
	cbz	w8, LBB125_134
; %bb.137:                              ;   in Loop: Header=BB125_135 Depth=1
	add	w11, w19, w19, lsl #2
	lsr	w11, w10, w11
	and	w10, w11, #0x1f
	cmp	w10, #17
	b.eq	LBB125_134
; %bb.138:                              ;   in Loop: Header=BB125_135 Depth=1
	mov	w12, #27                        ; =0x1b
	and	w11, w11, w12
	cbz	w11, LBB125_134
; %bb.139:                              ;   in Loop: Header=BB125_135 Depth=1
	cmp	w10, #5
	b.eq	LBB125_134
; %bb.140:                              ;   in Loop: Header=BB125_135 Depth=1
	ldr	w9, [x9, #820]
	cbz	w9, LBB125_143
; %bb.141:                              ;   in Loop: Header=BB125_135 Depth=1
	ldr	w9, [x9, #4]
	cbz	w9, LBB125_143
; %bb.142:                              ;   in Loop: Header=BB125_135 Depth=1
	orr	w1, w9, #0x80000000
	b	LBB125_144
LBB125_143:                             ;   in Loop: Header=BB125_135 Depth=1
	mov	x1, xzr
LBB125_144:                             ;   in Loop: Header=BB125_135 Depth=1
Lloh684:
	adrp	x9, _rendered_count@PAGE
Lloh685:
	ldr	w9, [x9, _rendered_count@PAGEOFF]
	cbz	w9, LBB125_181
; %bb.145:                              ;   in Loop: Header=BB125_135 Depth=1
	and	w10, w9, #0x3
	cmp	w9, #4
	b.hs	LBB125_147
; %bb.146:                              ;   in Loop: Header=BB125_135 Depth=1
	mov	w11, wzr
	mov	w9, #256                        ; =0x100
	b	LBB125_166
LBB125_147:                             ;   in Loop: Header=BB125_135 Depth=1
	mov	w11, wzr
	and	w12, w9, #0xfffffffc
	mov	w9, #256                        ; =0x100
Lloh686:
	adrp	x13, _rendered@PAGE+32
Lloh687:
	add	x13, x13, _rendered@PAGEOFF+32
	b	LBB125_150
	.p2align	4, , 8
LBB125_148:                             ;   in Loop: Header=BB125_150 Depth=2
	add	w9, w11, #3
LBB125_149:                             ;   in Loop: Header=BB125_150 Depth=2
	add	w13, w13, #64
	add	w11, w11, #4
	cmp	w12, w11
	b.eq	LBB125_165
LBB125_150:                             ;   Parent Loop BB125_135 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w14, w13, #32
	ldr	w14, [x14]
	cmp	w14, w8
	b.ne	LBB125_154
; %bb.151:                              ;   in Loop: Header=BB125_150 Depth=2
	cmp	w9, #256
	b.eq	LBB125_153
; %bb.152:                              ;   in Loop: Header=BB125_150 Depth=2
	sub	w14, w13, #20
	add	x15, x25, w9, sxtw #4
	ldr	w14, [x14]
	ldr	w15, [x15, #12]
	cmp	w14, w15
	b.ls	LBB125_154
LBB125_153:                             ;   in Loop: Header=BB125_150 Depth=2
	mov	w9, w11
LBB125_154:                             ;   in Loop: Header=BB125_150 Depth=2
	sub	w14, w13, #16
	ldr	w14, [x14]
	cmp	w14, w8
	b.ne	LBB125_158
; %bb.155:                              ;   in Loop: Header=BB125_150 Depth=2
	cmp	w9, #256
	b.eq	LBB125_157
; %bb.156:                              ;   in Loop: Header=BB125_150 Depth=2
	sub	w14, w13, #4
	add	x15, x25, w9, sxtw #4
	ldr	w14, [x14]
	ldr	w15, [x15, #12]
	cmp	w14, w15
	b.ls	LBB125_158
LBB125_157:                             ;   in Loop: Header=BB125_150 Depth=2
	add	w9, w11, #1
LBB125_158:                             ;   in Loop: Header=BB125_150 Depth=2
	ldr	w14, [x13]
	cmp	w14, w8
	b.ne	LBB125_162
; %bb.159:                              ;   in Loop: Header=BB125_150 Depth=2
	cmp	w9, #256
	b.eq	LBB125_161
; %bb.160:                              ;   in Loop: Header=BB125_150 Depth=2
	add	w14, w13, #12
	add	x15, x25, w9, sxtw #4
	ldr	w14, [x14]
	ldr	w15, [x15, #12]
	cmp	w14, w15
	b.ls	LBB125_162
LBB125_161:                             ;   in Loop: Header=BB125_150 Depth=2
	add	w9, w11, #2
LBB125_162:                             ;   in Loop: Header=BB125_150 Depth=2
	add	w14, w13, #16
	ldr	w14, [x14]
	cmp	w14, w8
	b.ne	LBB125_149
; %bb.163:                              ;   in Loop: Header=BB125_150 Depth=2
	cmp	w9, #256
	b.eq	LBB125_148
; %bb.164:                              ;   in Loop: Header=BB125_150 Depth=2
	add	w14, w13, #28
	add	x15, x25, w9, sxtw #4
	ldr	w14, [x14]
	ldr	w15, [x15, #12]
	cmp	w14, w15
	b.hi	LBB125_148
	b	LBB125_149
LBB125_165:                             ;   in Loop: Header=BB125_135 Depth=1
	cbz	w10, LBB125_180
LBB125_166:                             ;   in Loop: Header=BB125_135 Depth=1
	add	x12, x25, w11, sxtw #4
	ldr	w13, [x12]
	cmp	w13, w8
	b.ne	LBB125_170
; %bb.167:                              ;   in Loop: Header=BB125_135 Depth=1
	cmp	w9, #256
	b.eq	LBB125_169
; %bb.168:                              ;   in Loop: Header=BB125_135 Depth=1
	add	x13, x25, w9, sxtw #4
	ldr	w12, [x12, #12]
	ldr	w13, [x13, #12]
	cmp	w12, w13
	b.ls	LBB125_170
LBB125_169:                             ;   in Loop: Header=BB125_135 Depth=1
	mov	w9, w11
LBB125_170:                             ;   in Loop: Header=BB125_135 Depth=1
	cmp	w10, #1
	b.eq	LBB125_180
; %bb.171:                              ;   in Loop: Header=BB125_135 Depth=1
	add	w12, w11, #1
	add	x12, x25, w12, sxtw #4
	ldr	w13, [x12]
	cmp	w13, w8
	b.ne	LBB125_175
; %bb.172:                              ;   in Loop: Header=BB125_135 Depth=1
	cmp	w9, #256
	b.eq	LBB125_174
; %bb.173:                              ;   in Loop: Header=BB125_135 Depth=1
	add	x13, x25, w9, sxtw #4
	ldr	w12, [x12, #12]
	ldr	w13, [x13, #12]
	cmp	w12, w13
	b.ls	LBB125_175
LBB125_174:                             ;   in Loop: Header=BB125_135 Depth=1
	add	w9, w11, #1
LBB125_175:                             ;   in Loop: Header=BB125_135 Depth=1
	cmp	w10, #2
	b.eq	LBB125_180
; %bb.176:                              ;   in Loop: Header=BB125_135 Depth=1
	add	w10, w11, #2
	add	x11, x25, w10, sxtw #4
	ldr	w12, [x11]
	cmp	w12, w8
	b.ne	LBB125_180
; %bb.177:                              ;   in Loop: Header=BB125_135 Depth=1
	cmp	w9, #256
	b.eq	LBB125_179
; %bb.178:                              ;   in Loop: Header=BB125_135 Depth=1
	add	x8, x25, w9, sxtw #4
	ldr	w11, [x11, #12]
	ldr	w8, [x8, #12]
	cmp	w11, w8
	b.ls	LBB125_180
LBB125_179:                             ;   in Loop: Header=BB125_135 Depth=1
	mov	w9, w10
LBB125_180:                             ;   in Loop: Header=BB125_135 Depth=1
	cmp	w9, #256
	b.ne	LBB125_184
LBB125_181:                             ;   in Loop: Header=BB125_135 Depth=1
	sub	x2, x29, #208
	add	x3, sp, #1632
	bl	_vk_texture_get
	cbz	w0, LBB125_133
; %bb.182:                              ;   in Loop: Header=BB125_135 Depth=1
	ldr	w8, [sp, #1656]
	cbz	w8, LBB125_132
; %bb.183:                              ;   in Loop: Header=BB125_135 Depth=1
	add	x8, sp, #1632
	ldur	d0, [x8, #4]
	ucvtf	v0.2s, v0.2s
	fdiv	v0.2s, v8.2s, v0.2s
	str	d0, [x26]
	b	LBB125_132
LBB125_184:                             ;   in Loop: Header=BB125_135 Depth=1
	add	x8, x25, w9, sxtw #4
	add	x2, sp, #1632
	mov	x27, x0
	ldur	d0, [x8, #4]
	ldp	w8, w1, [x0, #12]
	str	q0, [sp, #240]                  ; 16-byte Spill
	mov	w0, w8
	bl	_xgpu_texture_describe
	mov	w8, #2                          ; =0x2
	str	w8, [x23]
	ldr	w28, [x27, #4]
	ldr	w8, [sp, #1656]
	str	w28, [x23, #4]
	cbz	w8, LBB125_188
; %bb.185:                              ;   in Loop: Header=BB125_135 Depth=1
	ldr	q0, [sp, #240]                  ; 16-byte Reload
	mov	w10, #1                         ; =0x1
	ucvtf	v0.2s, v0.2s
	fdiv	v0.2s, v8.2s, v0.2s
	str	d0, [x26]
LBB125_186:                             ;   in Loop: Header=BB125_135 Depth=1
	ldr	w27, [sp, #96]                  ; 4-byte Reload
LBB125_187:                             ;   in Loop: Header=BB125_135 Depth=1
	add	x8, sp, #1632
	cmp	w10, #1
	cset	w1, hi
	add	x3, x23, #12
	mov	w0, w19
	mov	w2, wzr
	ldur	d0, [x8, #4]
	str	w10, [x23, #52]
	str	d0, [x23, #56]
	bl	_sampler_state_make
	add	x28, sp, #272
	b	LBB125_133
LBB125_188:                             ;   in Loop: Header=BB125_135 Depth=1
	ldr	q0, [sp, #240]                  ; 16-byte Reload
	mov	w10, #1                         ; =0x1
	ldr	w8, [sp, #1652]
	ldr	w27, [sp, #96]                  ; 4-byte Reload
	cbnz	w8, LBB125_187
; %bb.189:                              ;   in Loop: Header=BB125_135 Depth=1
	ldr	w14, [sp, #1648]
	cmp	w14, #2
	b.lo	LBB125_187
; %bb.190:                              ;   in Loop: Header=BB125_135 Depth=1
	fmov	w9, s0
	ldr	w8, [sp, #1636]
	cmp	w9, w8
	b.ne	LBB125_187
; %bb.191:                              ;   in Loop: Header=BB125_135 Depth=1
	mov	w8, v0.s[1]
	ldr	w11, [sp, #1640]
	cmp	w8, w11
	b.ne	LBB125_187
; %bb.192:                              ;   in Loop: Header=BB125_135 Depth=1
Lloh688:
	adrp	x10, _composites_sent_count@PAGE
Lloh689:
	ldr	w10, [x10, _composites_sent_count@PAGEOFF]
	cbz	w10, LBB125_199
; %bb.193:                              ;   in Loop: Header=BB125_135 Depth=1
	mov	w11, w10
Lloh690:
	adrp	x12, _composites_sent@PAGE+8
Lloh691:
	add	x12, x12, _composites_sent@PAGEOFF+8
	b	LBB125_195
	.p2align	4, , 8
LBB125_194:                             ;   in Loop: Header=BB125_195 Depth=2
	add	w12, w12, #16
	subs	w11, w11, #1
	b.eq	LBB125_199
LBB125_195:                             ;   Parent Loop BB125_135 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w13, w12, #8
	ldr	w13, [x13]
	cmp	w13, w28
	b.ne	LBB125_194
; %bb.196:                              ;   in Loop: Header=BB125_195 Depth=2
	sub	w13, w12, #4
	ldr	w13, [x13]
	cmp	w13, w9
	b.ne	LBB125_194
; %bb.197:                              ;   in Loop: Header=BB125_195 Depth=2
	ldr	w13, [x12]
	cmp	w13, w8
	b.ne	LBB125_194
; %bb.198:                              ;   in Loop: Header=BB125_195 Depth=2
	add	w13, w12, #4
	ldr	w13, [x13]
	cmp	w13, w14
	b.ne	LBB125_194
	b	LBB125_207
LBB125_199:                             ;   in Loop: Header=BB125_135 Depth=1
	cmp	w10, #256
	b.eq	LBB125_207
; %bb.200:                              ;   in Loop: Header=BB125_135 Depth=1
	cmp	w14, #16
	b.hi	LBB125_207
; %bb.201:                              ;   in Loop: Header=BB125_135 Depth=1
Lloh692:
	adrp	x11, _composites_sent@PAGE
Lloh693:
	add	x11, x11, _composites_sent@PAGEOFF
	add	x11, x11, w10, sxtw #4
Lloh694:
	adrp	x12, _stream_used@PAGE
	add	w10, w10, #1
	adrp	x26, _stream@PAGE
	stp	w28, w9, [x11]
	adrp	x9, _composites_sent_count@PAGE
Lloh695:
	ldr	w1, [x12, _stream_used@PAGEOFF]
	ldr	w0, [x26, _stream@PAGEOFF]
	str	w10, [x9, _composites_sent_count@PAGEOFF]
	mov	w9, #87                         ; =0x57
	movk	w9, #65472, lsl #16
	mov	w10, #-4194305                  ; =0xffbfffff
	add	w9, w1, w9
	stp	w8, w14, [x11, #8]
	cmp	w9, w10
	b.hs	LBB125_203
; %bb.202:                              ;   in Loop: Header=BB125_135 Depth=1
                                        ; kill: def $w0 killed $w0 killed $x0
	mov	w27, w14
	bl	_host_vk_submit
	adrp	x10, _stream_index@PAGE
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w14, w27
	mov	w1, wzr
	ldr	w8, [x10, _stream_index@PAGEOFF]
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh696:
	adrp	x9, _streams@PAGE
Lloh697:
	add	x9, x9, _streams@PAGEOFF
	add	x0, x9, x8, lsl #22
	str	w8, [x10, _stream_index@PAGEOFF]
	str	w0, [x26, _stream@PAGEOFF]
LBB125_203:                             ;   in Loop: Header=BB125_135 Depth=1
	mov	x10, #11                        ; =0xb
	add	x8, x0, w1, sxtw
	movk	x10, #88, lsl #32
	add	w9, w1, #88
	str	x10, [x8]
	adrp	x10, _stream_used@PAGE
	str	w9, [x10, _stream_used@PAGEOFF]
	str	w28, [x8, #8]
	ldr	w9, [sp, #1636]
	str	w9, [x8, #12]
	ldr	w9, [sp, #1640]
	str	w9, [x8, #16]
	ldr	w9, [sp, #1648]
	str	w9, [x8, #20]
	cbz	w9, LBB125_208
; %bb.204:                              ;   in Loop: Header=BB125_135 Depth=1
	mov	w26, wzr
	add	w27, w8, #24
	str	w14, [sp, #240]                 ; 4-byte Spill
	.p2align	4, , 8
LBB125_205:                             ;   Parent Loop BB125_135 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x0, sp, #1632
	mov	w1, w26
	bl	_xgpu_texture_level_offset
	add	w8, w27, w26, lsl #2
	add	w9, w0, w28
	add	w26, w26, #1
	str	w9, [x8]
	ldr	w8, [sp, #1648]
	cmp	w26, w8
	b.lo	LBB125_205
; %bb.206:                              ;   in Loop: Header=BB125_135 Depth=1
	ldr	w10, [sp, #240]                 ; 4-byte Reload
	b	LBB125_186
LBB125_207:                             ;   in Loop: Header=BB125_135 Depth=1
	mov	w10, w14
	b	LBB125_187
LBB125_208:                             ;   in Loop: Header=BB125_135 Depth=1
	mov	w10, w14
	b	LBB125_186
LBB125_209:
	adrp	x8, _stats@PAGE+20
	ldr	w9, [x8, _stats@PAGEOFF+20]
	add	w9, w9, #1
	str	w9, [x8, _stats@PAGEOFF+20]
LBB125_210:
	add	sp, sp, #2512
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #112            ; 16-byte Folded Reload
	ret
LBB125_211:
	ldr	w9, [sp, #232]                  ; 4-byte Reload
	adrp	x8, _plasma_draw@PAGE
	ldrb	w8, [x8, _plasma_draw@PAGEOFF]
	str	w9, [sp, #616]
	ldr	w9, [sp, #208]                  ; 4-byte Reload
	str	w9, [sp, #620]
	tbz	w8, #1, LBB125_216
; %bb.212:
	adrp	x19, _plasma_images_told@PAGE
Lloh698:
	adrp	x20, _plasma_draw@PAGE+52
Lloh699:
	add	x20, x20, _plasma_draw@PAGEOFF+52
	mov	w10, #1                         ; =0x1
	ldr	x8, [x19, _plasma_images_told@PAGEOFF]
	ldr	x9, [x20]
	str	w10, [sp, #1564]
	cmp	x8, x9
	b.eq	LBB125_216
; %bb.213:
Lloh700:
	adrp	x8, _stream_used@PAGE
	adrp	x23, _stream@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
Lloh701:
	ldr	w1, [x8, _stream_used@PAGEOFF]
	ldr	w0, [x23, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4081
	cmp	w8, w9
	b.hs	LBB125_215
; %bb.214:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
Lloh702:
	adrp	x2, _D3D__RenderState@GOTPAGE
	adrp	x10, _stream_index@PAGE
	mov	w9, #43691                      ; =0xaaab
	mov	w1, wzr
	movk	w9, #43690, lsl #16
Lloh703:
	ldr	w2, [x2, _D3D__RenderState@GOTPAGEOFF]
	ldr	w8, [x10, _stream_index@PAGEOFF]
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh704:
	adrp	x9, _streams@PAGE
Lloh705:
	add	x9, x9, _streams@PAGEOFF
	add	x0, x9, x8, lsl #22
	str	w8, [x10, _stream_index@PAGEOFF]
	str	w0, [x23, _stream@PAGEOFF]
LBB125_215:
	mov	x9, #22                         ; =0x16
	add	x8, x0, w1, sxtw
	movk	x9, #16, lsl #32
	adrp	x10, _stream_used@PAGE
	str	x9, [x8]
	ldr	x9, [x20]
	str	x9, [x8, #8]
	add	w8, w1, #16
	ldr	x9, [x20]
	str	w8, [x10, _stream_used@PAGEOFF]
	str	x9, [x19, _plasma_images_told@PAGEOFF]
LBB125_216:
Lloh706:
	adrp	x9, _device@PAGE+140
Lloh707:
	add	x9, x9, _device@PAGEOFF+140
Lloh708:
	adrp	x8, _target_scale.0@PAGE
Lloh709:
	adrp	x10, _target_scale.1@PAGE
	movi	v5.2s, #63, lsl #24
	ldr	x17, [sp, #64]                  ; 8-byte Reload
	ldp	d2, d1, [x9]
	adrp	x16, _draw_scissor_on@PAGE
Lloh710:
	ldr	s0, [x8, _target_scale.0@PAGEOFF]
	ldr	w8, [sp, #268]
	add	w15, w17, #200
	add	v3.2s, v1.2s, v2.2s
Lloh711:
	ldr	s1, [x10, _target_scale.1@PAGEOFF]
	ucvtf	v2.2s, v2.2s
Lloh712:
	adrp	x10, _targets_told@PAGE+28
	mov	v4.16b, v0.16b
	ldr	w14, [x2, #492]
	ldr	w11, [x2, #268]
Lloh713:
	ldr	w10, [x10, _targets_told@PAGEOFF+28]
	ldr	w1, [sp, #224]                  ; 4-byte Reload
	ucvtf	v3.2s, v3.2s
	mov	v4.s[1], v1.s[0]
	cmp	w10, #0
	fmul	v2.2s, v4.2s, v2.2s
	fmul	v3.2s, v4.2s, v3.2s
	fadd	v2.2s, v2.2s, v5.2s
	fadd	v3.2s, v3.2s, v5.2s
	ldr	d5, [x9, #16]
	add	w9, w17, #208
	str	d5, [x9]
	cset	w9, ne
	fcvtms	v4.2s, v2.2s
	cmp	w8, #0
	fcvtms	v2.2s, v3.2s
	ccmp	w14, #0, #4, ne
	ldrb	w14, [x16, _draw_scissor_on@PAGEOFF]
	add	w16, w17, #216
	cset	w10, ne
	mov	w12, v4.s[1]
	sub	v3.2s, v2.2s, v4.2s
	scvtf	s6, s4
	fmov	w13, s4
	scvtf	v5.2s, v3.2s
	mov	v4.d[1], v3.d[0]
	str	s6, [sp, #1060]
	scvtf	s3, w12
	str	d5, [x15]
	str	q4, [x16]
	str	s3, [sp, #1064]
	cbz	w14, LBB125_218
; %bb.217:
Lloh714:
	adrp	x14, _draw_scissor.0@PAGE
Lloh715:
	adrp	x15, _draw_scissor.1@PAGE
Lloh716:
	adrp	x16, _draw_scissor.2@PAGE
	fmov	s5, #0.50000000
Lloh717:
	ldr	s3, [x14, _draw_scissor.0@PAGEOFF]
Lloh718:
	adrp	x14, _draw_scissor.3@PAGE
Lloh719:
	ldr	s4, [x15, _draw_scissor.1@PAGEOFF]
Lloh720:
	ldr	s6, [x16, _draw_scissor.2@PAGEOFF]
	mov	w16, v2.s[1]
Lloh721:
	ldr	s7, [x14, _draw_scissor.3@PAGEOFF]
	fmul	s3, s0, s3
	fmul	s4, s1, s4
	fmul	s6, s0, s6
	fmul	s7, s1, s7
	fadd	s3, s3, s5
	fadd	s4, s4, s5
	fadd	s6, s6, s5
	fadd	s5, s7, s5
	fcvtms	w14, s3
	fcvtms	w15, s4
	fcvtms	w17, s6
	fcvtms	w0, s5
	cmp	w14, w13
	csel	w13, w14, w13, gt
	fmov	w14, s2
	cmp	w15, w12
	csel	w12, w15, w12, gt
	str	w13, [sp, #1084]
	str	w12, [sp, #1088]
	cmp	w17, w14
	csel	w14, w17, w14, lt
	cmp	w0, w16
	csel	w15, w0, w16, lt
	subs	w14, w14, w13
	cset	w16, gt
	subs	w15, w15, w12
	cset	w17, gt
	tst	w16, w17
	csinv	w14, w14, wzr, ne
	csinv	w13, w15, wzr, ne
	str	w14, [sp, #1092]
	str	w13, [sp, #1096]
LBB125_218:
Lloh722:
	adrp	x12, _target_samples@PAGE
	ldr	w14, [x2, #476]
	cmp	w8, #0
	lsr	w13, w11, #7
	and	w13, w13, #0x2
	cset	w16, ne
Lloh723:
	ldr	w12, [x12, _target_samples@PAGEOFF]
	mov	w15, #6912                      ; =0x1b00
	bfxil	w13, w11, #16, #1
	mov	w17, #2                         ; =0x2
	bfi	w13, w11, #2, #1
	lsr	w11, w11, #21
	and	w11, w11, #0x8
	ldr	x19, [sp, #80]                  ; 8-byte Reload
	cmp	w12, #1
	orr	w11, w13, w11
	csel	w12, w12, wzr, hi
	cmp	w14, w15
	mov	w15, #6913                      ; =0x1b01
	csel	w17, w17, wzr, eq
	cmp	w14, w15
	str	w16, [sp, #728]
	str	w12, [sp, #732]
	csinc	w12, w17, wzr, ne
	str	w9, [sp, #724]
	str	w11, [sp, #720]
	str	w12, [sp, #628]
	str	w10, [sp, #640]
	cbz	w10, LBB125_220
; %bb.219:
	ldr	w9, [x2, #256]
	ldr	w10, [x2, #228]
	cmp	w9, #0
	and	w9, w10, #0xfffffff8
	cset	w11, ne
	sub	w10, w10, #512
	cmp	w9, #512
	csel	w9, w10, wzr, eq
	str	w11, [sp, #644]
	str	w9, [sp, #648]
LBB125_220:
	cbz	w8, LBB125_304
; %bb.221:
	ldr	w8, [x2, #496]
	cbz	w8, LBB125_304
; %bb.222:
	ldr	w8, [x2, #280]
	ldr	w9, [x2, #500]
	and	w10, w8, #0xfffffff8
	sub	w8, w8, #512
	cmp	w10, #512
	mov	w10, #7681                      ; =0x1e01
	csel	w8, w8, wzr, eq
	cmp	w9, w10
	b.le	LBB125_251
; %bb.223:
	mov	w10, #34054                     ; =0x8506
	cmp	w9, w10
	b.gt	LBB125_255
; %bb.224:
	mov	w10, #7682                      ; =0x1e02
	cmp	w9, w10
	b.eq	LBB125_266
; %bb.225:
	mov	w10, #7683                      ; =0x1e03
	cmp	w9, w10
	b.ne	LBB125_265
; %bb.226:
	mov	w9, #4                          ; =0x4
	b	LBB125_269
LBB125_227:
	bl	_config_changes
	str	w0, [x23, _per_pixel_lighting.read_at@PAGEOFF]
Lloh724:
	adrp	x0, l_.str.70@PAGE
Lloh725:
	add	x0, x0, l_.str.70@PAGEOFF
	bl	_config_boolean
	cmp	w0, #0
	adrp	x9, _per_pixel_lighting.enabled@PAGE
	cset	w8, ne
	str	w8, [x9, _per_pixel_lighting.enabled@PAGEOFF]
LBB125_228:
	cbz	w8, LBB125_117
; %bb.229:
Lloh726:
	adrp	x9, _plasma_draw@PAGE
	mov	x28, #58153                     ; =0xe329
	movk	x28, #2, lsl #16
	ldr	w8, [x26, #128]
	movk	x28, #26112, lsl #32
	str	wzr, [sp, #1632]
Lloh727:
	ldr	w10, [x9, _plasma_draw@PAGEOFF]
	movk	x28, #3, lsl #48
	ldr	w9, [sp, #240]                  ; 4-byte Reload
	strb	w8, [sp, #589]
	lsr	w11, w9, #24
	ubfx	w13, w9, #8, #8
	ubfx	w12, w9, #16, #8
	cbz	w10, LBB125_259
; %bb.230:
	mov	w8, wzr
	add	x9, sp, #336
	mov	x1, x19
	stp	x13, x12, [sp, #200]            ; 16-byte Folded Spill
	str	x11, [sp, #232]                 ; 8-byte Spill
	stur	wzr, [x29, #-208]
	strb	w10, [sp, #593]
	.p2align	4, , 8
LBB125_231:                             ; =>This Inner Loop Header: Depth=1
	add	w10, w9, w8
	add	w8, w8, #26
	add	w11, w10, #1
	add	w13, w10, #2
	cmp	w8, #260
	ldrb	w12, [x10]
	ldrb	w11, [x11]
	eor	x12, x1, x12
	mul	x12, x12, x24
	eor	x11, x12, x11
	ldrb	w12, [x13]
	add	w13, w10, #3
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #4
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #5
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #6
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #7
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #8
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #9
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #10
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #11
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #12
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #13
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #14
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #15
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #16
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #17
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #18
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #19
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #20
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #21
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #22
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #23
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #24
	add	w10, w10, #25
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	ldrb	w10, [x10]
	mul	x11, x11, x24
	eor	x11, x11, x12
	mul	x11, x11, x24
	eor	x10, x11, x10
	mul	x1, x10, x24
	b.ne	LBB125_231
; %bb.232:
	sub	x8, x29, #208
	add	x6, sp, #336
	mov	w0, #1                          ; =0x1
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	mov	w5, wzr
	mov	w7, wzr
	mov	w27, #1                         ; =0x1
	str	w8, [sp]
	bl	_shader_handle
	ldur	w8, [x29, #-208]
	cbz	w8, LBB125_234
; %bb.233:
	ldr	w8, [x26, #4]
	mov	x23, x28
	mov	w28, w0
Lloh728:
	adrp	x0, l_.str.72@PAGE
Lloh729:
	add	x0, x0, l_.str.72@PAGEOFF
	str	w8, [sp]
	bl	_platform_log
	mov	w0, w28
	mov	x28, x23
	str	w27, [x26, #152]
LBB125_234:
	strb	wzr, [sp, #593]
	cbz	w0, LBB125_258
; %bb.235:
	ldrb	w8, [x26, #120]
	mov	x2, x26
	ldrb	w9, [x26, #121]
	mov	w4, #1                          ; =0x1
	ldr	w3, [sp, #240]                  ; 4-byte Reload
	mov	w5, wzr
	mov	x6, xzr
	mov	w7, #1                          ; =0x1
	eor	x8, x8, x19
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #122]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #123]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #124]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #125]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #126]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #127]
	mul	x8, x8, x24
	eor	x8, x8, x9
	and	w9, w3, #0xff
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldp	x10, x9, [sp, #200]             ; 16-byte Folded Reload
	mul	x8, x8, x24
	eor	x8, x8, x10
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldr	x9, [sp, #232]                  ; 8-byte Reload
	mul	x8, x8, x24
	eor	x8, x8, x9
	mov	w9, #108                        ; =0x6c
	mul	x8, x8, x24
	eor	x8, x8, x9
	mov	w9, #105                        ; =0x69
	mul	x8, x8, x24
	eor	x8, x8, x9
	mov	w9, #116                        ; =0x74
	mul	x8, x8, x24
	eor	x8, x8, x9
	mul	x1, x8, x28
	add	x8, sp, #1632
	mov	w28, w0
	mov	w0, wzr
	str	w8, [sp]
	bl	_shader_handle
	mov	w23, w0
	mov	w0, w28
	mov	x28, #58153                     ; =0xe329
	movk	x28, #2, lsl #16
	movk	x28, #26112, lsl #32
	movk	x28, #3, lsl #48
	cbz	w23, LBB125_258
; %bb.236:
Lloh730:
	adrp	x8, _plasma_draw@PAGE
Lloh731:
	ldr	w8, [x8, _plasma_draw@PAGEOFF]
	strb	w8, [sp, #593]
	b	LBB125_129
LBB125_237:
	mov	x23, x0
	bl	_plasma_model_lighting_mask
	mov	w19, w0
	mov	x0, x23
	cbz	w19, LBB125_81
; %bb.238:
	fmov	s8, #1.00000000
	tst	w19, #0x1
	movi	d9, #0000000000000000
Lloh732:
	adrp	x23, _plasma_draw@PAGE
Lloh733:
	add	x23, x23, _plasma_draw@PAGEOFF
	movi	v0.2d, #0000000000000000
	mov	w8, #1                          ; =0x1
	add	x1, x23, #20
	mov	w0, wzr
	str	wzr, [x23, #56]
	str	w8, [x23]
	fcsel	s1, s9, s8, eq
	stur	q0, [x23, #40]
	stur	q0, [x23, #24]
	stur	q0, [x23, #8]
	str	s1, [x23, #4]
	bl	_plasma_occlusion_model_texture
	cbz	w0, LBB125_242
; %bb.239:
	sub	x2, x29, #208
	add	x3, sp, #1632
	mov	x1, xzr
	bl	_vk_texture_get
	cbz	w0, LBB125_242
; %bb.240:
	ldur	w8, [x29, #-208]
	cmp	w8, #2
	b.ne	LBB125_242
; %bb.241:
	ldr	w8, [x23]
	mov	w9, #1065353216                 ; =0x3f800000
	str	w0, [x23, #52]
	str	w9, [x23, #12]
	orr	w8, w8, #0x2
	str	w8, [x23]
LBB125_242:
	tst	w19, #0x2
Lloh734:
	adrp	x1, _plasma_draw@PAGE+8
Lloh735:
	add	x1, x1, _plasma_draw@PAGEOFF+8
	fcsel	s0, s9, s8, eq
	mov	w0, #1                          ; =0x1
	str	s0, [x1], #28
	bl	_plasma_occlusion_model_texture
	cbz	w0, LBB125_246
; %bb.243:
	sub	x2, x29, #208
	add	x3, sp, #1632
	mov	x1, xzr
	bl	_vk_texture_get
	cbz	w0, LBB125_246
; %bb.244:
	ldur	w8, [x29, #-208]
	cmp	w8, #2
	b.ne	LBB125_246
; %bb.245:
	ldr	w8, [x23]
	mov	w9, #1065353216                 ; =0x3f800000
	str	w0, [x23, #56]
	str	w9, [x23, #16]
	orr	w8, w8, #0x2
	str	w8, [x23]
LBB125_246:
	adrp	x8, _plasma_draw@PAGE
	ldr	x0, [sp, #232]                  ; 8-byte Reload
	ldrb	w8, [x8, _plasma_draw@PAGEOFF]
	tbz	w8, #1, LBB125_81
; %bb.247:
Lloh736:
	adrp	x9, _plasma_draw@PAGE+52
Lloh737:
	add	x9, x9, _plasma_draw@PAGEOFF+52
	ldp	w8, w9, [x9]
	cbnz	w8, LBB125_249
; %bb.248:
	adrp	x10, _plasma_draw@PAGE+52
	mov	w8, w9
	str	w9, [x10, _plasma_draw@PAGEOFF+52]
LBB125_249:
	cbnz	w9, LBB125_81
; %bb.250:
	adrp	x9, _plasma_draw@PAGE+56
	str	w8, [x9, _plasma_draw@PAGEOFF+56]
	b	LBB125_81
LBB125_251:
	cbz	w9, LBB125_264
; %bb.252:
	mov	w10, #5386                      ; =0x150a
	cmp	w9, w10
	b.eq	LBB125_268
; %bb.253:
	mov	w10, #7681                      ; =0x1e01
	cmp	w9, w10
	b.ne	LBB125_265
; %bb.254:
	mov	w9, #2                          ; =0x2
	b	LBB125_269
LBB125_255:
	mov	w10, #34055                     ; =0x8507
	cmp	w9, w10
	b.eq	LBB125_267
; %bb.256:
	mov	w10, #34056                     ; =0x8508
	cmp	w9, w10
	b.ne	LBB125_265
; %bb.257:
	mov	w9, #7                          ; =0x7
	b	LBB125_269
LBB125_258:
	ldr	x11, [sp, #232]                 ; 8-byte Reload
	adrp	x8, _plasma_draw@PAGE
	ldp	x13, x12, [sp, #200]            ; 16-byte Folded Reload
	str	wzr, [x8, _plasma_draw@PAGEOFF]
	str	wzr, [sp, #1632]
LBB125_259:
	ldrb	w8, [x26, #120]
	mov	w0, wzr
	ldrb	w9, [x26, #121]
	mov	x2, x26
	ldr	w3, [sp, #240]                  ; 4-byte Reload
	mov	w4, #1                          ; =0x1
	mov	w5, wzr
	mov	x6, xzr
	eor	x8, x8, x19
	mov	w7, #1                          ; =0x1
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #122]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #123]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #124]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #125]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #126]
	mul	x8, x8, x24
	eor	x8, x8, x9
	ldrb	w9, [x26, #127]
	mul	x8, x8, x24
	eor	x8, x8, x9
	and	w9, w3, #0xff
	mul	x8, x8, x24
	eor	x8, x8, x9
	mov	w9, #108                        ; =0x6c
	mul	x8, x8, x24
	eor	x8, x8, x13
	mul	x8, x8, x24
	eor	x8, x8, x12
	mul	x8, x8, x24
	eor	x8, x8, x11
	mul	x8, x8, x24
	eor	x8, x8, x9
	mov	w9, #105                        ; =0x69
	mul	x8, x8, x24
	eor	x8, x8, x9
	mov	w9, #116                        ; =0x74
	mul	x8, x8, x24
	eor	x8, x8, x9
	mul	x1, x8, x28
	add	x8, sp, #1632
	str	w8, [sp]
	bl	_shader_handle
	mov	w28, w0
	mov	w8, wzr
	add	x9, sp, #336
	mov	x1, x19
	.p2align	4, , 8
LBB125_260:                             ; =>This Inner Loop Header: Depth=1
	add	w10, w9, w8
	add	w8, w8, #26
	add	w11, w10, #1
	add	w13, w10, #2
	cmp	w8, #260
	ldrb	w12, [x10]
	ldrb	w11, [x11]
	eor	x12, x1, x12
	mul	x12, x12, x24
	eor	x11, x12, x11
	ldrb	w12, [x13]
	add	w13, w10, #3
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #4
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #5
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #6
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #7
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #8
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #9
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #10
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #11
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #12
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #13
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #14
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #15
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #16
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #17
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #18
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #19
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #20
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #21
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #22
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #23
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	add	w13, w10, #24
	add	w10, w10, #25
	mul	x11, x11, x24
	eor	x11, x11, x12
	ldrb	w12, [x13]
	ldrb	w10, [x10]
	mul	x11, x11, x24
	eor	x11, x11, x12
	mul	x11, x11, x24
	eor	x10, x11, x10
	mul	x1, x10, x24
	b.ne	LBB125_260
; %bb.261:
	add	x8, sp, #1632
	add	x6, sp, #336
	mov	w0, #1                          ; =0x1
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	mov	w5, wzr
	mov	w7, #1                          ; =0x1
	mov	w23, #1                         ; =0x1
	str	w8, [sp]
	bl	_shader_handle
	ldr	w8, [sp, #1632]
	cbz	w8, LBB125_263
; %bb.262:
	ldr	w8, [x26, #4]
Lloh738:
	adrp	x0, l_.str.51@PAGE
Lloh739:
	add	x0, x0, l_.str.51@PAGEOFF
	str	w8, [sp]
	bl	_platform_log
	str	w23, [x26, #148]
	strb	wzr, [sp, #589]
	b	LBB125_117
LBB125_263:
	mov	w23, w28
	b	LBB125_129
LBB125_264:
	mov	w9, #1                          ; =0x1
	b	LBB125_269
LBB125_265:
	mov	w9, wzr
	b	LBB125_269
LBB125_266:
	mov	w9, #3                          ; =0x3
	b	LBB125_269
LBB125_267:
	mov	w9, #6                          ; =0x6
	b	LBB125_269
LBB125_268:
	mov	w9, #5                          ; =0x5
LBB125_269:
	ldr	w10, [x2, #272]
	mov	w11, #7681                      ; =0x1e01
	cmp	w10, w11
	b.le	LBB125_274
; %bb.270:
	mov	w11, #34054                     ; =0x8506
	cmp	w10, w11
	b.gt	LBB125_278
; %bb.271:
	mov	w11, #7682                      ; =0x1e02
	cmp	w10, w11
	b.eq	LBB125_283
; %bb.272:
	mov	w11, #7683                      ; =0x1e03
	cmp	w10, w11
	b.ne	LBB125_282
; %bb.273:
	mov	w10, #4                         ; =0x4
	b	LBB125_286
LBB125_274:
	cbz	w10, LBB125_281
; %bb.275:
	mov	w11, #5386                      ; =0x150a
	cmp	w10, w11
	b.eq	LBB125_285
; %bb.276:
	mov	w11, #7681                      ; =0x1e01
	cmp	w10, w11
	b.ne	LBB125_282
; %bb.277:
	mov	w10, #2                         ; =0x2
	b	LBB125_286
LBB125_278:
	mov	w11, #34055                     ; =0x8507
	cmp	w10, w11
	b.eq	LBB125_284
; %bb.279:
	mov	w11, #34056                     ; =0x8508
	cmp	w10, w11
	b.ne	LBB125_282
; %bb.280:
	mov	w10, #7                         ; =0x7
	b	LBB125_286
LBB125_281:
	mov	w10, #1                         ; =0x1
	b	LBB125_286
LBB125_282:
	mov	w10, wzr
	b	LBB125_286
LBB125_283:
	mov	w10, #3                         ; =0x3
	b	LBB125_286
LBB125_284:
	mov	w10, #6                         ; =0x6
	b	LBB125_286
LBB125_285:
	mov	w10, #5                         ; =0x5
LBB125_286:
	ldr	w11, [x2, #276]
	mov	w12, #7681                      ; =0x1e01
	cmp	w11, w12
	b.le	LBB125_291
; %bb.287:
	mov	w12, #34054                     ; =0x8506
	cmp	w11, w12
	b.gt	LBB125_295
; %bb.288:
	mov	w12, #7682                      ; =0x1e02
	cmp	w11, w12
	b.eq	LBB125_300
; %bb.289:
	mov	w12, #7683                      ; =0x1e03
	cmp	w11, w12
	b.ne	LBB125_299
; %bb.290:
	mov	w11, #4                         ; =0x4
	b	LBB125_303
LBB125_291:
	cbz	w11, LBB125_298
; %bb.292:
	mov	w12, #5386                      ; =0x150a
	cmp	w11, w12
	b.eq	LBB125_302
; %bb.293:
	mov	w12, #7681                      ; =0x1e01
	cmp	w11, w12
	b.ne	LBB125_299
; %bb.294:
	mov	w11, #2                         ; =0x2
	b	LBB125_303
LBB125_295:
	mov	w12, #34055                     ; =0x8507
	cmp	w11, w12
	b.eq	LBB125_301
; %bb.296:
	mov	w12, #34056                     ; =0x8508
	cmp	w11, w12
	b.ne	LBB125_299
; %bb.297:
	mov	w11, #7                         ; =0x7
	b	LBB125_303
LBB125_298:
	mov	w11, #1                         ; =0x1
	b	LBB125_303
LBB125_299:
	mov	w11, wzr
	b	LBB125_303
LBB125_300:
	mov	w11, #3                         ; =0x3
	b	LBB125_303
LBB125_301:
	mov	w11, #6                         ; =0x6
	b	LBB125_303
LBB125_302:
	mov	w11, #5                         ; =0x5
LBB125_303:
	movi	d2, #0x0000ff000000ff
	ldr	d3, [x2, #288]
	str	w10, [sp, #668]
	mov	w12, #1                         ; =0x1
	str	w10, [sp, #684]
	ldr	x10, [sp, #64]                  ; 8-byte Reload
	str	w11, [sp, #664]
	str	w11, [sp, #680]
	and	v2.8b, v3.8b, v2.8b
	ldrb	w11, [x2, #284]
	add	w10, w10, #256
	str	w8, [sp, #672]
	str	w9, [sp, #676]
	str	w12, [sp, #656]
	str	w9, [sp, #660]
	str	w8, [sp, #688]
	str	d2, [x10]
	str	w11, [sp, #1132]
LBB125_304:
	ldr	w8, [x2, #236]
	cbz	w8, LBB125_383
; %bb.305:
	ldr	w9, [x2, #248]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #692]
	cmp	w9, #773
	b.gt	LBB125_311
; %bb.306:
	cmp	w9, #769
	b.le	LBB125_316
; %bb.307:
	cmp	w9, #771
	b.gt	LBB125_324
; %bb.308:
	cmp	w9, #770
	b.eq	LBB125_330
; %bb.309:
	cmp	w9, #771
	b.ne	LBB125_337
; %bb.310:
	mov	w9, #7                          ; =0x7
	b	LBB125_338
LBB125_311:
	cmp	w9, #8, lsl #12                 ; =32768
	b.le	LBB125_320
; %bb.312:
	mov	w8, #32770                      ; =0x8002
	cmp	w9, w8
	b.gt	LBB125_327
; %bb.313:
	mov	w8, #32769                      ; =0x8001
	cmp	w9, w8
	b.eq	LBB125_331
; %bb.314:
	mov	w8, #32770                      ; =0x8002
	cmp	w9, w8
	b.ne	LBB125_337
; %bb.315:
	mov	w9, #11                         ; =0xb
	b	LBB125_338
LBB125_316:
	cbz	w9, LBB125_338
; %bb.317:
	cmp	w9, #768
	b.eq	LBB125_335
; %bb.318:
	cmp	w9, #769
	b.ne	LBB125_337
; %bb.319:
	mov	w9, #3                          ; =0x3
	b	LBB125_338
LBB125_320:
	cmp	w9, #774
	b.eq	LBB125_334
; %bb.321:
	cmp	w9, #775
	b.eq	LBB125_336
; %bb.322:
	cmp	w9, #776
	b.ne	LBB125_337
; %bb.323:
	mov	w9, #14                         ; =0xe
	b	LBB125_338
LBB125_324:
	cmp	w9, #772
	b.eq	LBB125_332
; %bb.325:
	cmp	w9, #773
	b.ne	LBB125_337
; %bb.326:
	mov	w9, #9                          ; =0x9
	b	LBB125_338
LBB125_327:
	mov	w8, #32771                      ; =0x8003
	cmp	w9, w8
	b.eq	LBB125_333
; %bb.328:
	mov	w8, #32772                      ; =0x8004
	cmp	w9, w8
	b.ne	LBB125_337
; %bb.329:
	mov	w9, #13                         ; =0xd
	b	LBB125_338
LBB125_330:
	mov	w9, #6                          ; =0x6
	b	LBB125_338
LBB125_331:
	mov	w9, #10                         ; =0xa
	b	LBB125_338
LBB125_332:
	mov	w9, #8                          ; =0x8
	b	LBB125_338
LBB125_333:
	mov	w9, #12                         ; =0xc
	b	LBB125_338
LBB125_334:
	mov	w9, #4                          ; =0x4
	b	LBB125_338
LBB125_335:
	mov	w9, #2                          ; =0x2
	b	LBB125_338
LBB125_336:
	mov	w9, #5                          ; =0x5
	b	LBB125_338
LBB125_337:
	mov	w9, #1                          ; =0x1
LBB125_338:
	ldr	w8, [x2, #252]
	str	w9, [sp, #708]
	str	w9, [sp, #696]
	cmp	w8, #773
	b.gt	LBB125_344
; %bb.339:
	cmp	w8, #769
	b.le	LBB125_349
; %bb.340:
	cmp	w8, #771
	b.gt	LBB125_357
; %bb.341:
	cmp	w8, #770
	b.eq	LBB125_363
; %bb.342:
	cmp	w8, #771
	b.ne	LBB125_370
; %bb.343:
	mov	w8, #7                          ; =0x7
	b	LBB125_371
LBB125_344:
	cmp	w8, #8, lsl #12                 ; =32768
	b.le	LBB125_353
; %bb.345:
	mov	w9, #32770                      ; =0x8002
	cmp	w8, w9
	b.gt	LBB125_360
; %bb.346:
	mov	w9, #32769                      ; =0x8001
	cmp	w8, w9
	b.eq	LBB125_364
; %bb.347:
	mov	w9, #32770                      ; =0x8002
	cmp	w8, w9
	b.ne	LBB125_370
; %bb.348:
	mov	w8, #11                         ; =0xb
	b	LBB125_371
LBB125_349:
	cbz	w8, LBB125_371
; %bb.350:
	cmp	w8, #768
	b.eq	LBB125_368
; %bb.351:
	cmp	w8, #769
	b.ne	LBB125_370
; %bb.352:
	mov	w8, #3                          ; =0x3
	b	LBB125_371
LBB125_353:
	cmp	w8, #774
	b.eq	LBB125_367
; %bb.354:
	cmp	w8, #775
	b.eq	LBB125_369
; %bb.355:
	cmp	w8, #776
	b.ne	LBB125_370
; %bb.356:
	mov	w8, #14                         ; =0xe
	b	LBB125_371
LBB125_357:
	cmp	w8, #772
	b.eq	LBB125_365
; %bb.358:
	cmp	w8, #773
	b.ne	LBB125_370
; %bb.359:
	mov	w8, #9                          ; =0x9
	b	LBB125_371
LBB125_360:
	mov	w9, #32771                      ; =0x8003
	cmp	w8, w9
	b.eq	LBB125_366
; %bb.361:
	mov	w9, #32772                      ; =0x8004
	cmp	w8, w9
	b.ne	LBB125_370
; %bb.362:
	mov	w8, #13                         ; =0xd
	b	LBB125_371
LBB125_363:
	mov	w8, #6                          ; =0x6
	b	LBB125_371
LBB125_364:
	mov	w8, #10                         ; =0xa
	b	LBB125_371
LBB125_365:
	mov	w8, #8                          ; =0x8
	b	LBB125_371
LBB125_366:
	mov	w8, #12                         ; =0xc
	b	LBB125_371
LBB125_367:
	mov	w8, #4                          ; =0x4
	b	LBB125_371
LBB125_368:
	mov	w8, #2                          ; =0x2
	b	LBB125_371
LBB125_369:
	mov	w8, #5                          ; =0x5
	b	LBB125_371
LBB125_370:
	mov	w8, #1                          ; =0x1
LBB125_371:
	ldr	w9, [x2, #296]
	mov	w10, #32777                     ; =0x8009
	str	w8, [sp, #712]
	str	w8, [sp, #700]
	cmp	w9, w10
	b.le	LBB125_376
; %bb.372:
	mov	w8, #32778                      ; =0x800a
	cmp	w9, w8
	b.eq	LBB125_379
; %bb.373:
	mov	w8, #61445                      ; =0xf005
	cmp	w9, w8
	b.eq	LBB125_375
; %bb.374:
	mov	w8, #32779                      ; =0x800b
	cmp	w9, w8
	b.ne	LBB125_381
LBB125_375:
	mov	w8, #2                          ; =0x2
	b	LBB125_382
LBB125_376:
	mov	w8, #32775                      ; =0x8007
	cmp	w9, w8
	b.eq	LBB125_380
; %bb.377:
	mov	w8, #32776                      ; =0x8008
	cmp	w9, w8
	b.ne	LBB125_381
; %bb.378:
	mov	w8, #4                          ; =0x4
	b	LBB125_382
LBB125_379:
	mov	w8, #1                          ; =0x1
	b	LBB125_382
LBB125_380:
	mov	w8, #3                          ; =0x3
	b	LBB125_382
LBB125_381:
	mov	w8, wzr
LBB125_382:
	add	x9, x2, #300
	str	w8, [sp, #716]
	str	w8, [sp, #704]
	ldr	d2, [x9]
Lloh740:
	adrp	x9, lCPI125_0@PAGE
Lloh741:
	ldr	q3, [x9, lCPI125_0@PAGEOFF]
Lloh742:
	adrp	x9, lCPI125_1@PAGE
	dup	v2.4s, v2.s[0]
	ushl	v2.4s, v2.4s, v3.4s
Lloh743:
	ldr	q3, [x9, lCPI125_1@PAGEOFF]
	mov	w9, #1132396544                 ; =0x437f0000
	and	v2.16b, v2.16b, v3.16b
	dup	v3.4s, w9
	ldr	x9, [sp, #64]                   ; 8-byte Reload
	add	w9, w9, #240
	ucvtf	v2.4s, v2.4s
	fdiv	v2.4s, v2.4s, v3.4s
	str	q2, [x9]
LBB125_383:
	ldr	w8, [x2, #508]
	cbz	w8, LBB125_385
; %bb.384:
	ldr	w9, [x2, #504]
	cmp	w8, w9
	mov	w8, #1                          ; =0x1
	cinc	w8, w8, ne
	cmp	w9, #2305
	cset	w9, ne
	str	w8, [sp, #632]
	str	w9, [sp, #636]
LBB125_385:
	ldr	w8, [x2, #324]
	cbz	w8, LBB125_387
; %bb.386:
	fcmp	s0, s1
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #652]
	fcsel	s0, s0, s1, gt
	ldr	s1, [x2, #308]
	fmul	s0, s0, s1
	ldr	s1, [x2, #312]
	str	s1, [sp, #1100]
	str	s0, [sp, #1104]
LBB125_387:
	sub	w8, w1, #1
	cmp	w8, #9
	b.hi	LBB125_391
; %bb.388:
Lloh744:
	adrp	x9, l_switch.table.draw_make@PAGE
Lloh745:
	add	x9, x9, l_switch.table.draw_make@PAGEOFF
	ldrb	w8, [x9, w8, sxtw]
	str	w8, [sp, #624]
	cbz	w19, LBB125_392
LBB125_389:
	ldr	w11, [sp, #92]                  ; 4-byte Reload
	cmp	w11, #4
	b.hs	LBB125_393
; %bb.390:
	mov	w9, wzr
	mov	w8, wzr
	mov	w12, #65535                     ; =0xffff
	b	LBB125_402
LBB125_391:
	mov	w8, #3                          ; =0x3
	str	w8, [sp, #624]
	cbnz	w19, LBB125_389
LBB125_392:
	ldr	w8, [sp, #92]                   ; 4-byte Reload
	mov	w12, wzr
	mov	w23, wzr
	b	LBB125_405
LBB125_393:
	cmp	w11, #16
	b.hs	LBB125_395
; %bb.394:
	mov	w8, wzr
	mov	w9, wzr
	mov	w12, #65535                     ; =0xffff
	b	LBB125_399
LBB125_395:
	movi	v0.2d, #0x00ffff0000ffff
	and	w10, w11, #0xc
	movi	v1.2d, #0000000000000000
	and	w8, w11, #0xfffffff0
	movi	v4.2d, #0000000000000000
	add	w9, w19, #16
	movi	v5.2d, #0000000000000000
	and	w11, w11, #0xfffffff0
	movi	v7.2d, #0000000000000000
	movi	v2.2d, #0x00ffff0000ffff
	movi	v3.2d, #0x00ffff0000ffff
	movi	v6.2d, #0x00ffff0000ffff
	.p2align	4, , 8
LBB125_396:                             ; =>This Inner Loop Header: Depth=1
	sub	w12, w9, #16
	ldr	q16, [x9]
	add	w9, w9, #32
	subs	w11, w11, #16
	ldr	q17, [x12]
	ushll2	v18.4s, v16.8h, #0
	ushll	v16.4s, v16.4h, #0
	ushll2	v19.4s, v17.8h, #0
	ushll	v17.4s, v17.4h, #0
	umin	v0.4s, v0.4s, v18.4s
	umin	v6.4s, v6.4s, v16.4s
	umax	v1.4s, v1.4s, v18.4s
	umin	v3.4s, v3.4s, v19.4s
	umin	v2.4s, v2.4s, v17.4s
	umax	v5.4s, v5.4s, v19.4s
	umax	v4.4s, v4.4s, v17.4s
	umax	v7.4s, v7.4s, v16.4s
	b.ne	LBB125_396
; %bb.397:
	umax	v4.4s, v4.4s, v7.4s
	ldr	w11, [sp, #92]                  ; 4-byte Reload
	umax	v1.4s, v5.4s, v1.4s
	umin	v2.4s, v2.4s, v6.4s
	umin	v0.4s, v3.4s, v0.4s
	cmp	w11, w8
	umax	v1.4s, v4.4s, v1.4s
	umin	v0.4s, v2.4s, v0.4s
	umaxv	s1, v1.4s
	uminv	s0, v0.4s
	fmov	w9, s1
	fmov	w12, s0
	b.eq	LBB125_404
; %bb.398:
	cbz	w10, LBB125_402
LBB125_399:
	mov	w10, w8
	ldr	w8, [sp, #92]                   ; 4-byte Reload
	dup	v1.4s, w9
	dup	v0.4s, w12
	and	w8, w8, #0xfffffffc
	sub	w9, w10, w8
	add	w10, w19, w10, lsl #1
	.p2align	4, , 8
LBB125_400:                             ; =>This Inner Loop Header: Depth=1
	ldr	d2, [x10]
	add	w10, w10, #8
	adds	w9, w9, #4
	ushll	v2.4s, v2.4h, #0
	umin	v0.4s, v0.4s, v2.4s
	umax	v1.4s, v1.4s, v2.4s
	b.ne	LBB125_400
; %bb.401:
	umaxv	s1, v1.4s
	ldr	w10, [sp, #92]                  ; 4-byte Reload
	uminv	s0, v0.4s
	cmp	w10, w8
	fmov	w9, s1
	fmov	w12, s0
	b.eq	LBB125_404
LBB125_402:
	ldr	w11, [sp, #92]                  ; 4-byte Reload
	add	w10, w19, w8, lsl #1
	sub	w8, w11, w8
	.p2align	4, , 8
LBB125_403:                             ; =>This Inner Loop Header: Depth=1
	ldrh	w11, [x10]
	add	w10, w10, #2
	cmp	w12, w11
	csel	w12, w12, w11, lo
	cmp	w9, w11
	csel	w9, w9, w11, hi
	subs	w8, w8, #1
	b.ne	LBB125_403
LBB125_404:
Lloh746:
	adrp	x8, _device@PAGE+4628
	sub	w9, w9, w12
	ldr	w23, [sp, #92]                  ; 4-byte Reload
Lloh747:
	ldr	w8, [x8, _device@PAGEOFF+4628]
	add	w8, w8, w12
	str	w8, [sp, #100]                  ; 4-byte Spill
	add	w8, w9, #1
LBB125_405:
	str	w8, [sp, #76]                   ; 4-byte Spill
	cmp	w1, #3
	str	w12, [sp, #16]                  ; 4-byte Spill
	b.eq	LBB125_423
; %bb.406:
	cmp	w1, #8
	b.ne	LBB125_437
; %bb.407:
	ldr	w8, [sp, #92]                   ; 4-byte Reload
	lsr	w20, w8, #2
	mov	w8, #2                          ; =0x2
	add	w19, w20, w20, lsl #1
	orr	w0, w8, w19, lsl #2
	bl	_malloc
	cbz	w20, LBB125_465
; %bb.408:
	ldr	w9, [sp, #92]                   ; 4-byte Reload
	mov	x4, x0
	ubfx	w8, w9, #2, #2
	cmp	w9, #16
	mov	w9, wzr
	b.lo	LBB125_442
; %bb.409:
	ldr	x3, [sp, #80]                   ; 8-byte Reload
	and	w10, w20, #0x3ffffffc
	add	w11, w0, #24
	add	w12, w3, #16
	b	LBB125_412
LBB125_410:                             ;   in Loop: Header=BB125_412 Depth=1
	add	w13, w12, #8
	add	w14, w12, #10
	add	w17, w12, #12
	add	w0, w12, #14
	ldrh	w15, [x13]
	ldrh	w16, [x14]
	ldrh	w13, [x17]
	ldrh	w14, [x0]
LBB125_411:                             ;   in Loop: Header=BB125_412 Depth=1
	add	w17, w11, #14
	add	w0, w11, #12
	add	w1, w11, #16
	add	w9, w9, #4
	add	w12, w12, #32
	cmp	w10, w9
	strh	w16, [x17]
	add	w16, w11, #18
	strh	w15, [x0]
	strh	w13, [x1]
	strh	w15, [x16]
	add	w15, w11, #20
	add	w16, w11, #22
	add	w11, w11, #48
	strh	w13, [x15]
	strh	w14, [x16]
	b.eq	LBB125_441
LBB125_412:                             ; =>This Inner Loop Header: Depth=1
	cbz	w3, LBB125_414
; %bb.413:                              ;   in Loop: Header=BB125_412 Depth=1
	sub	w13, w12, #16
	sub	w14, w12, #14
	sub	w16, w12, #12
	sub	w17, w12, #10
	ldrh	w13, [x13]
	ldrh	w15, [x14]
	ldrh	w14, [x16]
	ldrh	w16, [x17]
	b	LBB125_415
LBB125_414:                             ;   in Loop: Header=BB125_412 Depth=1
	mov	w15, #1                         ; =0x1
	mov	w14, #2                         ; =0x2
	mov	w16, #3                         ; =0x3
	lsl	w13, w9, #2
	bfi	w15, w9, #2, #30
	bfi	w14, w9, #2, #30
	bfi	w16, w9, #2, #30
LBB125_415:                             ;   in Loop: Header=BB125_412 Depth=1
	sub	w17, w11, #24
	sub	w0, w11, #22
	sub	w1, w11, #20
	sub	w2, w11, #18
	strh	w13, [x17]
	sub	w17, w11, #16
	strh	w15, [x0]
	sub	w15, w11, #14
	strh	w14, [x1]
	strh	w13, [x2]
	strh	w14, [x17]
	strh	w16, [x15]
	cbz	w3, LBB125_417
; %bb.416:                              ;   in Loop: Header=BB125_412 Depth=1
	sub	w13, w12, #8
	sub	w14, w12, #6
	sub	w16, w12, #4
	sub	w17, w12, #2
	ldrh	w15, [x13]
	ldrh	w14, [x14]
	ldrh	w13, [x16]
	ldrh	w16, [x17]
	b	LBB125_418
LBB125_417:                             ;   in Loop: Header=BB125_412 Depth=1
	add	w17, w9, #1
	mov	w14, #1                         ; =0x1
	mov	w13, #2                         ; =0x2
	mov	w16, #3                         ; =0x3
	lsl	w15, w17, #2
	bfi	w14, w17, #2, #30
	bfi	w13, w17, #2, #30
	bfi	w16, w17, #2, #30
LBB125_418:                             ;   in Loop: Header=BB125_412 Depth=1
	sub	w17, w11, #12
	sub	w0, w11, #10
	sub	w1, w11, #8
	sub	w2, w11, #6
	strh	w15, [x17]
	sub	w17, w11, #4
	strh	w14, [x0]
	sub	w14, w11, #2
	strh	w13, [x1]
	strh	w15, [x2]
	strh	w13, [x17]
	strh	w16, [x14]
	cbz	w3, LBB125_420
; %bb.419:                              ;   in Loop: Header=BB125_412 Depth=1
	add	w14, w12, #2
	add	w16, w12, #4
	add	w17, w12, #6
	ldrh	w13, [x12]
	ldrh	w15, [x14]
	ldrh	w14, [x16]
	ldrh	w16, [x17]
	b	LBB125_421
LBB125_420:                             ;   in Loop: Header=BB125_412 Depth=1
	add	w17, w9, #2
	mov	w15, #1                         ; =0x1
	mov	w14, #2                         ; =0x2
	mov	w16, #3                         ; =0x3
	lsl	w13, w17, #2
	bfi	w15, w17, #2, #30
	bfi	w14, w17, #2, #30
	bfi	w16, w17, #2, #30
LBB125_421:                             ;   in Loop: Header=BB125_412 Depth=1
	add	w17, w11, #2
	add	w0, w11, #4
	add	w1, w11, #6
	add	w2, w11, #8
	strh	w13, [x11]
	strh	w15, [x17]
	add	w15, w11, #10
	strh	w14, [x0]
	strh	w13, [x1]
	strh	w14, [x2]
	strh	w16, [x15]
	cbnz	w3, LBB125_410
; %bb.422:                              ;   in Loop: Header=BB125_412 Depth=1
	add	w17, w9, #3
	mov	w16, #1                         ; =0x1
	mov	w13, #2                         ; =0x2
	mov	w14, #3                         ; =0x3
	lsl	w15, w17, #2
	bfi	w16, w17, #2, #30
	bfi	w13, w17, #2, #30
	bfi	w14, w17, #2, #30
	b	LBB125_411
LBB125_423:
	ldr	w20, [sp, #92]                  ; 4-byte Reload
	add	w8, w20, #1
	add	w23, w20, #1
	lsl	w8, w8, #1
	add	w0, w8, #2
	bl	_malloc
	and	w8, w20, #0x3
	mov	x15, x0
	mov	w9, wzr
	cmp	w20, #4
	b.lo	LBB125_439
; %bb.424:
	and	w10, w20, #0xfffffffc
	add	w11, w19, #4
	add	w12, w0, #4
	b	LBB125_428
LBB125_425:                             ;   in Loop: Header=BB125_428 Depth=1
	add	w13, w9, #2
	strh	w13, [x12]
	cbz	w19, LBB125_436
LBB125_426:                             ;   in Loop: Header=BB125_428 Depth=1
	add	w13, w11, #2
	ldrh	w13, [x13]
LBB125_427:                             ;   in Loop: Header=BB125_428 Depth=1
	add	w14, w12, #2
	add	w9, w9, #4
	add	w11, w11, #8
	add	w12, w12, #8
	cmp	w10, w9
	strh	w13, [x14]
	b.eq	LBB125_438
LBB125_428:                             ; =>This Inner Loop Header: Depth=1
	cbz	w19, LBB125_430
; %bb.429:                              ;   in Loop: Header=BB125_428 Depth=1
	sub	w13, w11, #4
	ldrh	w13, [x13]
	b	LBB125_431
LBB125_430:                             ;   in Loop: Header=BB125_428 Depth=1
	mov	w13, w9
LBB125_431:                             ;   in Loop: Header=BB125_428 Depth=1
	sub	w14, w12, #4
	strh	w13, [x14]
	cbz	w19, LBB125_433
; %bb.432:                              ;   in Loop: Header=BB125_428 Depth=1
	sub	w13, w11, #2
	ldrh	w13, [x13]
	b	LBB125_434
LBB125_433:                             ;   in Loop: Header=BB125_428 Depth=1
	add	w13, w9, #1
LBB125_434:                             ;   in Loop: Header=BB125_428 Depth=1
	sub	w14, w12, #2
	strh	w13, [x14]
	cbz	w19, LBB125_425
; %bb.435:                              ;   in Loop: Header=BB125_428 Depth=1
	ldrh	w13, [x11]
	strh	w13, [x12]
	cbnz	w19, LBB125_426
LBB125_436:                             ;   in Loop: Header=BB125_428 Depth=1
	add	w13, w9, #3
	b	LBB125_427
LBB125_437:
	str	xzr, [sp, #32]                  ; 8-byte Spill
	mov	x0, x19
	b	LBB125_466
LBB125_438:
	mov	x0, x15
	cbz	w8, LBB125_462
LBB125_439:
	cbz	w19, LBB125_444
; %bb.440:
	ldrh	w10, [x19, w9, sxtw #1]
	b	LBB125_445
LBB125_441:
	mov	x0, x4
	cbz	w8, LBB125_465
LBB125_442:
	ldr	x11, [sp, #80]                  ; 8-byte Reload
	cbz	w11, LBB125_448
; %bb.443:
	lsl	w10, w9, #3
	add	x13, x11, w10, sxtw
	ldrh	w11, [x13]
	ldrh	w12, [x13, #2]
	ldrh	w10, [x13, #4]
	ldrh	w13, [x13, #6]
	b	LBB125_449
LBB125_444:
	mov	w10, w9
LBB125_445:
	mov	x0, x15
	cmp	w8, #1
	strh	w10, [x15, w9, sxtw #1]
	b.eq	LBB125_462
; %bb.446:
	add	w10, w9, #1
	cbz	w19, LBB125_452
; %bb.447:
	ldrh	w11, [x19, w10, sxtw #1]
	b	LBB125_453
LBB125_448:
	mov	w12, #1                         ; =0x1
	mov	w10, #2                         ; =0x2
	mov	w13, #3                         ; =0x3
	lsl	w11, w9, #2
	bfi	w12, w9, #2, #30
	bfi	w10, w9, #2, #30
	bfi	w13, w9, #2, #30
LBB125_449:
	add	w14, w9, w9, lsl #1
	mov	x0, x4
	lsl	w14, w14, #2
	cmp	w8, #1
	add	x14, x4, w14, sxtw
	add	w15, w14, #6
	strh	w11, [x14]
	strh	w11, [x15]
	add	w15, w14, #4
	add	w11, w14, #8
	strh	w12, [x14, #2]
	add	w12, w14, #10
	strh	w10, [x15]
	strh	w10, [x11]
	strh	w13, [x12]
	b.eq	LBB125_465
; %bb.450:
	ldr	x11, [sp, #80]                  ; 8-byte Reload
	add	w13, w9, #1
	cbz	w11, LBB125_456
; %bb.451:
	lsl	w10, w13, #3
	add	x14, x11, w10, sxtw
	ldrh	w11, [x14]
	ldrh	w12, [x14, #2]
	ldrh	w10, [x14, #4]
	ldrh	w14, [x14, #6]
	b	LBB125_457
LBB125_452:
	add	w11, w9, #1
LBB125_453:
	mov	x0, x15
	cmp	w8, #2
	strh	w11, [x15, w10, sxtw #1]
	b.eq	LBB125_462
; %bb.454:
	add	w8, w9, #2
	cbz	w19, LBB125_460
; %bb.455:
	ldrh	w9, [x19, w8, sxtw #1]
	b	LBB125_461
LBB125_456:
	mov	w12, #1                         ; =0x1
	mov	w10, #2                         ; =0x2
	mov	w14, #3                         ; =0x3
	lsl	w11, w13, #2
	bfi	w12, w13, #2, #30
	bfi	w10, w13, #2, #30
	bfi	w14, w13, #2, #30
LBB125_457:
	add	w13, w13, w13, lsl #1
	mov	x0, x4
	lsl	w13, w13, #2
	cmp	w8, #2
	add	x13, x4, w13, sxtw
	add	w15, w13, #6
	strh	w11, [x13]
	strh	w11, [x15]
	add	w15, w13, #4
	add	w11, w13, #8
	strh	w12, [x13, #2]
	add	w12, w13, #10
	strh	w10, [x15]
	strh	w10, [x11]
	strh	w14, [x12]
	b.eq	LBB125_465
; %bb.458:
	add	w11, w9, #2
	ldr	x9, [sp, #80]                   ; 8-byte Reload
	cbz	w9, LBB125_463
; %bb.459:
	lsl	w8, w11, #3
	add	x12, x9, w8, sxtw
	ldrh	w8, [x12]
	ldrh	w10, [x12, #2]
	ldrh	w9, [x12, #4]
	ldrh	w12, [x12, #6]
	b	LBB125_464
LBB125_460:
	mov	w9, w8
LBB125_461:
	strh	w9, [x0, w8, sxtw #1]
LBB125_462:
	ldrh	w8, [x0]
	ldr	w9, [sp, #92]                   ; 4-byte Reload
	str	x0, [sp, #32]                   ; 8-byte Spill
	strh	w8, [x0, w9, sxtw #1]
	b	LBB125_466
LBB125_463:
	mov	w10, #1                         ; =0x1
	mov	w9, #2                          ; =0x2
	mov	w12, #3                         ; =0x3
	lsl	w8, w11, #2
	bfi	w10, w11, #2, #30
	bfi	w9, w11, #2, #30
	bfi	w12, w11, #2, #30
LBB125_464:
	add	w11, w11, w11, lsl #1
	mov	x0, x4
	lsl	w11, w11, #2
	add	x11, x4, w11, sxtw
	add	w13, w11, #4
	add	w14, w11, #6
	add	w15, w11, #8
	strh	w10, [x11, #2]
	add	w10, w11, #10
	strh	w8, [x11]
	strh	w9, [x13]
	strh	w8, [x14]
	strh	w9, [x15]
	strh	w12, [x10]
LBB125_465:
	str	x0, [sp, #32]                   ; 8-byte Spill
	lsl	w23, w19, #1
LBB125_466:
	str	x0, [sp, #24]                   ; 8-byte Spill
	str	w23, [sp, #20]                  ; 4-byte Spill
	cbz	w27, LBB125_492
; %bb.467:
Lloh748:
	adrp	x8, _device@PAGE+844
Lloh749:
	add	x8, x8, _device@PAGEOFF+844
	ldr	w9, [x8, #4068]
	ldr	w8, [x8]
	lsl	w19, w9, #2
	lsl	w20, w9, #4
	cbz	w8, LBB125_471
; %bb.468:
	adrp	x8, _device@PAGE+4908
	ldrb	w8, [x8, _device@PAGEOFF+4908]
	tbz	w8, #0, LBB125_471
; %bb.469:
Lloh750:
	adrp	x0, _device@PAGE+4916
Lloh751:
	add	x0, x0, _device@PAGEOFF+4916
	bl	_strlen
	ldr	w8, [sp, #92]                   ; 4-byte Reload
Lloh752:
	adrp	x10, _device@PAGE+164
Lloh753:
	add	x10, x10, _device@PAGEOFF+164
	lsl	w9, w0, #4
	.p2align	4, , 8
LBB125_470:                             ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x10, #4732]
	subs	w8, w8, #1
	ldr	s0, [x10, #384]
	ldr	s1, [x10, #400]
	ldr	s2, [x10, #416]
	add	w14, w11, w9
	add	w9, w9, w20
	add	w13, w14, #4
	add	w12, w14, #8
	add	w11, w14, #12
	ldr	s3, [x14]
	ldr	s4, [x13]
	ldr	s6, [x12]
	ldr	s7, [x11]
	fmul	s0, s3, s0
	fmul	s1, s4, s1
	fmul	s2, s6, s2
	fadd	s0, s0, s1
	ldr	s1, [x10, #432]
	fmul	s1, s7, s1
	fadd	s0, s0, s2
	fadd	s0, s0, s1
	str	s0, [x14]
	ldr	s1, [x10, #388]
	ldr	s2, [x10, #404]
	ldr	s5, [x10, #420]
	fmul	s1, s3, s1
	fmul	s2, s4, s2
	fmul	s5, s6, s5
	fadd	s1, s1, s2
	ldr	s2, [x10, #436]
	fmul	s2, s7, s2
	fadd	s1, s1, s5
	fadd	s2, s1, s2
	str	s2, [x13]
	ldr	s1, [x10, #392]
	ldr	s5, [x10, #408]
	ldr	s16, [x10, #424]
	fmul	s1, s3, s1
	fmul	s5, s4, s5
	fmul	s16, s6, s16
	fadd	s1, s1, s5
	ldr	s5, [x10, #440]
	fmul	s18, s7, s5
	fadd	s1, s1, s16
	fadd	s5, s1, s18
	str	s5, [x12]
	ldr	s1, [x10, #396]
	ldr	s16, [x10, #412]
	fmul	s1, s3, s1
	fmul	s3, s4, s16
	ldr	s4, [x10, #428]
	fmul	s4, s6, s4
	fadd	s1, s1, s3
	ldr	s3, [x10, #444]
	fmul	s16, s7, s3
	fadd	s1, s1, s4
	fadd	s6, s1, s16
	str	s6, [x11]
	ldr	s1, [x10]
	ldr	s3, [x10, #16]
	ldr	s4, [x10, #32]
	fmul	s1, s0, s1
	fmul	s3, s2, s3
	fmul	s4, s5, s4
	fadd	s1, s1, s3
	ldr	s3, [x10, #48]
	fmul	s16, s6, s3
	fadd	s1, s1, s4
	fadd	s1, s1, s16
	str	s1, [x14]
	ldr	s3, [x10, #4]
	ldr	s4, [x10, #20]
	ldr	s7, [x10, #36]
	fmul	s3, s0, s3
	fmul	s4, s2, s4
	fmul	s7, s5, s7
	fadd	s3, s3, s4
	ldr	s4, [x10, #52]
	fmul	s4, s6, s4
	fadd	s3, s3, s7
	fadd	s3, s3, s4
	str	s3, [x13]
	ldr	s4, [x10, #8]
	ldr	s7, [x10, #24]
	ldr	s16, [x10, #40]
	fmul	s4, s0, s4
	fmul	s7, s2, s7
	fmul	s16, s5, s16
	fadd	s4, s4, s7
	ldr	s7, [x10, #56]
	fmul	s7, s6, s7
	fadd	s4, s4, s16
	fadd	s4, s4, s7
	str	s4, [x12]
	ldr	s7, [x10, #12]
	ldr	s16, [x10, #28]
	fmul	s0, s0, s7
	ldr	s7, [x10, #44]
	fmul	s2, s2, s16
	fmul	s5, s5, s7
	fadd	s0, s0, s2
	ldr	s2, [x10, #60]
	fmul	s7, s6, s2
	fadd	s0, s0, s5
	fadd	s0, s0, s7
	str	s0, [x11]
	ldr	s2, [x10, #64]
	ldr	s5, [x10, #80]
	ldr	s6, [x10, #96]
	fmul	s2, s1, s2
	fmul	s5, s3, s5
	fmul	s6, s4, s6
	fadd	s2, s2, s5
	ldr	s5, [x10, #112]
	fmul	s5, s0, s5
	fadd	s2, s2, s6
	fadd	s2, s2, s5
	str	s2, [x14]
	ldr	s2, [x10, #68]
	ldr	s5, [x10, #84]
	ldr	s6, [x10, #100]
	fmul	s2, s1, s2
	fmul	s5, s3, s5
	fmul	s6, s4, s6
	fadd	s2, s2, s5
	ldr	s5, [x10, #116]
	fmul	s5, s0, s5
	fadd	s2, s2, s6
	fadd	s2, s2, s5
	str	s2, [x13]
	ldr	s2, [x10, #72]
	ldr	s5, [x10, #88]
	ldr	s6, [x10, #104]
	fmul	s2, s1, s2
	fmul	s5, s3, s5
	fmul	s6, s4, s6
	fadd	s2, s2, s5
	ldr	s5, [x10, #120]
	fmul	s5, s0, s5
	fadd	s2, s2, s6
	fadd	s2, s2, s5
	str	s2, [x12]
	ldr	s2, [x10, #76]
	ldr	s5, [x10, #92]
	fmul	s1, s1, s2
	fmul	s2, s3, s5
	ldr	s3, [x10, #108]
	fadd	s1, s1, s2
	fmul	s2, s4, s3
	ldr	s3, [x10, #124]
	fmul	s5, s0, s3
	fadd	s1, s1, s2
	fadd	s0, s1, s5
	str	s0, [x11]
	b.ne	LBB125_470
LBB125_471:
	ldr	w8, [sp, #92]                   ; 4-byte Reload
Lloh754:
	adrp	x23, _device@PAGE+4632
Lloh755:
	add	x23, x23, _device@PAGEOFF+4632
	mul	w8, w8, w19
	ldr	w0, [x23, #264]
	lsl	w19, w8, #2
	mov	w1, w19
	bl	_vk_data_put
	ldp	q0, q1, [x23, #192]
	add	x14, sp, #1632
	adrp	x10, _stats@PAGE+80
	ldp	q2, q3, [x23, #224]
	mov	w12, w0
	add	x13, sp, #336
	stp	q0, q1, [x14, #192]
	add	x1, sp, #1632
	ldp	q0, q1, [x23, #128]
	mov	w8, wzr
	mov	w9, wzr
	ldr	x11, [x10, _stats@PAGEOFF+80]
	stp	q2, q3, [x14, #224]
	stp	q0, q1, [x14, #128]
	ldp	q0, q1, [x23, #64]
	add	x11, x11, x19
	ldp	q2, q3, [x23, #160]
	stp	q0, q1, [x14, #64]
	ldp	q0, q1, [x23]
	ldr	x2, [sp, #64]                   ; 8-byte Reload
	str	x11, [x10, _stats@PAGEOFF+80]
	add	x10, sp, #1632
	stp	q2, q3, [x14, #160]
	add	x11, x10, #64
	ldp	q2, q3, [x23, #96]
	mov	w11, w11
	str	x12, [x13, #824]
	mov	x12, #109                       ; =0x6d
	str	w20, [sp, #740]
	movk	x12, #1, lsl #32
	stp	q0, q1, [x1]
	mov	x13, x2
	ldp	q0, q1, [x23, #32]
	ldr	w10, [x23, #276]
	ldr	x20, [sp, #80]                  ; 8-byte Reload
	stp	q2, q3, [x14, #96]
	stp	q0, q1, [x1, #32]
	b	LBB125_473
	.p2align	4, , 8
LBB125_472:                             ;   in Loop: Header=BB125_473 Depth=1
	add	w14, w13, #84
	add	w15, w8, #112
	add	w16, w13, #92
	add	w9, w9, #8
	add	w13, w13, #96
	add	w8, w8, #128
	cmp	w8, #256
	str	x12, [x14]
	str	w15, [x16]
	b.eq	LBB125_489
LBB125_473:                             ; =>This Inner Loop Header: Depth=1
	lsr	w14, w10, w9
	tbz	w14, #0, LBB125_475
; %bb.474:                              ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w11, w8
	sub	w15, w15, #64
	stp	xzr, xzr, [x15]
LBB125_475:                             ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w13, #8
	str	x12, [x13]
	str	w8, [x15]
	tbz	w14, #1, LBB125_477
; %bb.476:                              ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w11, w8
	sub	w15, w15, #48
	stp	xzr, xzr, [x15]
LBB125_477:                             ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w13, #12
	add	w16, w8, #16
	add	w17, w13, #20
	str	x12, [x15]
	str	w16, [x17]
	tbz	w14, #2, LBB125_479
; %bb.478:                              ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w11, w8
	sub	w15, w15, #32
	stp	xzr, xzr, [x15]
LBB125_479:                             ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w13, #24
	add	w16, w8, #32
	add	w17, w13, #32
	str	x12, [x15]
	str	w16, [x17]
	tbz	w14, #3, LBB125_481
; %bb.480:                              ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w11, w8
	sub	w15, w15, #16
	stp	xzr, xzr, [x15]
LBB125_481:                             ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w13, #36
	add	w16, w8, #48
	add	w17, w13, #44
	str	x12, [x15]
	str	w16, [x17]
	tbz	w14, #4, LBB125_483
; %bb.482:                              ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w11, w8
	stp	xzr, xzr, [x15]
LBB125_483:                             ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w13, #48
	add	w16, w8, #64
	add	w17, w13, #56
	str	x12, [x15]
	str	w16, [x17]
	tbz	w14, #5, LBB125_485
; %bb.484:                              ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w11, w8
	add	w15, w15, #16
	stp	xzr, xzr, [x15]
LBB125_485:                             ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w13, #60
	add	w16, w8, #80
	add	w17, w13, #68
	str	x12, [x15]
	str	w16, [x17]
	tbz	w14, #6, LBB125_487
; %bb.486:                              ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w11, w8
	add	w15, w15, #32
	stp	xzr, xzr, [x15]
LBB125_487:                             ;   in Loop: Header=BB125_473 Depth=1
	add	w15, w13, #72
	add	w16, w8, #96
	add	w17, w13, #80
	str	x12, [x15]
	str	w16, [x17]
	tbz	w14, #7, LBB125_472
; %bb.488:                              ;   in Loop: Header=BB125_473 Depth=1
	add	w14, w11, w8
	add	w14, w14, #48
	stp	xzr, xzr, [x14]
	b	LBB125_472
LBB125_489:
Lloh756:
	adrp	x8, _device@PAGE+4912
Lloh757:
	ldr	w10, [x8, _device@PAGEOFF+4912]
	cbz	w10, LBB125_744
; %bb.490:
	and	w8, w10, #0x3
	cmp	w10, #4
	b.hs	LBB125_737
; %bb.491:
	mov	w9, wzr
	b	LBB125_741
LBB125_492:
Lloh758:
	adrp	x8, _device@PAGE+840
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0xffffffffffffffff
	mov	w24, wzr
Lloh759:
	ldr	w25, [x8, _device@PAGEOFF+840]
	add	x8, sp, #336
	str	q0, [x8, #1280]
	ldr	w20, [x25, #112]
	str	q0, [x8, #1264]
	str	q0, [x8, #1248]
	str	q0, [x8, #1232]
	add	x8, sp, #1632
	stp	q1, q1, [x8, #768]
	stp	q1, q1, [x8, #800]
	cbz	w20, LBB125_500
; %bb.493:
	add	w8, w25, #18
	sub	x9, x29, #208
	mov	w10, w20
	b	LBB125_495
	.p2align	4, , 8
LBB125_494:                             ;   in Loop: Header=BB125_495 Depth=1
	add	w8, w8, #6
	subs	w10, w10, #1
	b.eq	LBB125_500
LBB125_495:                             ; =>This Inner Loop Header: Depth=1
	sub	w11, w8, #1
Lloh760:
	adrp	x12, _device@PAGE
Lloh761:
	add	x12, x12, _device@PAGEOFF
	ldrb	w11, [x11]
	add	x12, x12, x11, lsl #3
	ldr	w12, [x12, #4500]
	cbz	w12, LBB125_494
; %bb.496:                              ;   in Loop: Header=BB125_495 Depth=1
	ldrb	w12, [x8]
	cmp	w12, #2
	b.eq	LBB125_494
; %bb.497:                              ;   in Loop: Header=BB125_495 Depth=1
	ldr	w12, [x9, w11, uxtw #2]
	tbz	w12, #31, LBB125_494
; %bb.498:                              ;   in Loop: Header=BB125_495 Depth=1
	cmp	w24, #14
	b.hi	LBB125_767
; %bb.499:                              ;   in Loop: Header=BB125_495 Depth=1
	lsl	w11, w11, #2
	add	w12, w24, #1
	str	w24, [x9, w11, uxtw]
	mov	w24, w12
	b	LBB125_494
LBB125_500:
	add	x8, sp, #608
	mov	w10, #1132396544                ; =0x437f0000
	add	x26, x8, #260
	add	x9, x8, #132
	add	x8, x8, #552
	fmov	s8, #-1.00000000
	fmov	s10, w10
	mov	w28, wzr
	add	w14, w25, #16
	mov	w15, #6                         ; =0x6
	stp	x9, x8, [sp, #48]               ; 16-byte Folded Spill
	mov	w9, #65024                      ; =0xfe00
	movk	w9, #18175, lsl #16
Lloh762:
	adrp	x8, lCPI125_2@PAGE
	str	x25, [sp, #104]                 ; 8-byte Spill
	str	x24, [sp, #40]                  ; 8-byte Spill
	dup	v0.4s, w9
	str	x26, [sp, #120]                 ; 8-byte Spill
	fmov	s9, w9
	str	q0, [sp, #128]                  ; 16-byte Spill
Lloh763:
	ldr	q0, [x8, lCPI125_2@PAGEOFF]
	add	w8, w25, #16
	str	x8, [sp, #224]                  ; 8-byte Spill
	str	q0, [sp, #240]                  ; 16-byte Spill
	dup	v0.4s, w10
	str	q0, [sp, #176]                  ; 16-byte Spill
	b	LBB125_502
	.p2align	4, , 8
LBB125_501:                             ;   in Loop: Header=BB125_502 Depth=1
	add	w28, w28, #1
	cmp	w28, #16
	b.eq	LBB125_682
LBB125_502:                             ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB125_508 Depth 2
                                        ;     Child Loop BB125_532 Depth 2
                                        ;     Child Loop BB125_562 Depth 2
                                        ;       Child Loop BB125_566 Depth 3
                                        ;         Child Loop BB125_592 Depth 4
                                        ;         Child Loop BB125_600 Depth 4
                                        ;         Child Loop BB125_608 Depth 4
                                        ;         Child Loop BB125_596 Depth 4
                                        ;         Child Loop BB125_604 Depth 4
                                        ;         Child Loop BB125_612 Depth 4
                                        ;       Child Loop BB125_630 Depth 3
                                        ;       Child Loop BB125_634 Depth 3
                                        ;       Child Loop BB125_638 Depth 3
                                        ;     Child Loop BB125_644 Depth 2
                                        ;     Child Loop BB125_526 Depth 2
                                        ;     Child Loop BB125_657 Depth 2
	sub	x8, x29, #208
	ldr	w8, [x8, w28, sxtw #2]
	tbnz	w8, #31, LBB125_501
; %bb.503:                              ;   in Loop: Header=BB125_502 Depth=1
	str	x8, [sp, #144]                  ; 8-byte Spill
Lloh764:
	adrp	x8, _device@PAGE
Lloh765:
	add	x8, x8, _device@PAGEOFF
	mov	w9, #4500                       ; =0x1194
	add	x8, x8, w28, sxtw #3
	ldr	w10, [x8, #4504]
	ldr	w8, [x8, x9]
	ldr	w9, [sp, #76]                   ; 4-byte Reload
	cmp	w10, #0
	str	w10, [sp, #196]                 ; 4-byte Spill
	orr	w8, w8, #0x80000000
	mul	w19, w10, w9
	ldr	w9, [sp, #100]                  ; 4-byte Reload
	madd	w8, w10, w9, w8
	str	x8, [sp, #168]                  ; 8-byte Spill
	mov	w8, #64                         ; =0x40
	csel	w27, w19, w8, ne
	cbz	w20, LBB125_518
; %bb.504:                              ;   in Loop: Header=BB125_502 Depth=1
	mov	w24, wzr
	mov	w23, wzr
	add	w26, w25, #18
	b	LBB125_508
LBB125_505:                             ;   in Loop: Header=BB125_508 Depth=2
	ldr	x25, [sp, #104]                 ; 8-byte Reload
	cmp	w8, #1
	csinc	w23, w23, wzr, eq
	ldr	w20, [x25, #112]
LBB125_506:                             ;   in Loop: Header=BB125_508 Depth=2
	ldr	x14, [sp, #224]                 ; 8-byte Reload
	mov	w15, #6                         ; =0x6
LBB125_507:                             ;   in Loop: Header=BB125_508 Depth=2
	add	w24, w24, #1
	add	w26, w26, #6
	cmp	w24, w20
	b.hs	LBB125_514
LBB125_508:                             ;   Parent Loop BB125_502 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w8, w26, #1
	ldrb	w8, [x8]
	cmp	w28, w8
	b.ne	LBB125_507
; %bb.509:                              ;   in Loop: Header=BB125_508 Depth=2
	ldrb	w0, [x26]
	cmp	w0, #2
	b.eq	LBB125_507
; %bb.510:                              ;   in Loop: Header=BB125_508 Depth=2
	bl	_element_format
	cmp	w0, #97
	b.hi	LBB125_506
; %bb.511:                              ;   in Loop: Header=BB125_508 Depth=2
Lloh766:
	adrp	x20, _format_supported.known@PAGE
Lloh767:
	add	x20, x20, _format_supported.known@PAGEOFF
	ldrb	w8, [x20, w0, uxtw]
	cbnz	w8, LBB125_505
; %bb.512:                              ;   in Loop: Header=BB125_508 Depth=2
	mov	w25, w0
	bl	_host_vk_format_supported
	mov	w8, #1                          ; =0x1
	cmp	w0, #0
	cinc	w9, w8, eq
	strb	w9, [x20, w25, uxtw]
	cbnz	w0, LBB125_505
; %bb.513:                              ;   in Loop: Header=BB125_508 Depth=2
Lloh768:
	adrp	x0, l_.str.74@PAGE
Lloh769:
	add	x0, x0, l_.str.74@PAGEOFF
	str	w25, [sp]
	bl	_platform_log
	ldrb	w8, [x20, w25, uxtw]
	b	LBB125_505
LBB125_514:                             ;   in Loop: Header=BB125_502 Depth=1
	ldr	x24, [sp, #40]                  ; 8-byte Reload
	ldr	x26, [sp, #120]                 ; 8-byte Reload
	cbz	w23, LBB125_518
; %bb.515:                              ;   in Loop: Header=BB125_502 Depth=1
	ldr	w19, [sp, #196]                 ; 4-byte Reload
	ldr	w8, [sp, #76]                   ; 4-byte Reload
	cmp	w19, #0
	csinc	w24, w8, wzr, ne
	cbz	w20, LBB125_529
; %bb.516:                              ;   in Loop: Header=BB125_502 Depth=1
	and	w8, w20, #0x3
	cmp	w20, #4
	b.hs	LBB125_530
; %bb.517:                              ;   in Loop: Header=BB125_502 Depth=1
	mov	w23, wzr
	mov	w9, wzr
	b	LBB125_545
LBB125_518:                             ;   in Loop: Header=BB125_502 Depth=1
	ldr	x20, [sp, #144]                 ; 8-byte Reload
	ldr	w8, [sp, #196]                  ; 4-byte Reload
	cbz	w8, LBB125_522
; %bb.519:                              ;   in Loop: Header=BB125_502 Depth=1
	ldr	w8, [sp, #196]                  ; 4-byte Reload
	and	w8, w8, #0x3
	cbnz	w8, LBB125_522
; %bb.520:                              ;   in Loop: Header=BB125_502 Depth=1
	ldr	x8, [sp, #56]                   ; 8-byte Reload
	mov	w1, w19
	ldr	x0, [sp, #168]                  ; 8-byte Reload
	mov	w2, wzr
	add	x3, x8, w20, sxtw #3
	bl	_static_ref
	cbz	w0, LBB125_522
; %bb.521:                              ;   in Loop: Header=BB125_502 Depth=1
	adrp	x9, _stats@PAGE+112
	ldr	x8, [x9, _stats@PAGEOFF+112]
	add	x8, x8, w19, uxtw
	str	x8, [x9, _stats@PAGEOFF+112]
	b	LBB125_523
LBB125_522:                             ;   in Loop: Header=BB125_502 Depth=1
	ldr	x0, [sp, #168]                  ; 8-byte Reload
	mov	w1, w27
	bl	_vk_data_put
Lloh770:
	adrp	x12, _stats@PAGE+32
Lloh771:
	add	x12, x12, _stats@PAGEOFF+32
	ldr	x11, [sp, #56]                  ; 8-byte Reload
	mov	w10, w0
	ldr	x8, [x12]
	ldr	w9, [x12, #64]
	str	x10, [x11, w20, sxtw #3]
	add	x8, x8, w27, uxtw
	add	w9, w9, #1
	str	x8, [x12]
	str	w9, [x12, #64]
LBB125_523:                             ;   in Loop: Header=BB125_502 Depth=1
	ldr	x9, [sp, #48]                   ; 8-byte Reload
	sbfiz	x8, x20, #3, #32
	ldr	w10, [sp, #196]                 ; 4-byte Reload
	mov	w15, #6                         ; =0x6
	ldr	x14, [sp, #224]                 ; 8-byte Reload
	str	w10, [x9, x8]
	ldr	w20, [x25, #112]
	cbz	w20, LBB125_501
; %bb.524:                              ;   in Loop: Header=BB125_502 Depth=1
	mov	w19, wzr
	add	w23, w25, #16
	b	LBB125_526
	.p2align	4, , 8
LBB125_525:                             ;   in Loop: Header=BB125_526 Depth=2
	add	w19, w19, #1
	add	w23, w23, #6
	cmp	w19, w20
	b.hs	LBB125_652
LBB125_526:                             ;   Parent Loop BB125_502 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w8, w23, #1
	ldrb	w8, [x8]
	cmp	w28, w8
	b.ne	LBB125_525
; %bb.527:                              ;   in Loop: Header=BB125_526 Depth=2
	add	w8, w23, #2
	ldrb	w0, [x8]
	cmp	w0, #2
	b.eq	LBB125_525
; %bb.528:                              ;   in Loop: Header=BB125_526 Depth=2
	bl	_element_format
	ldrb	w8, [x23]
	mov	w10, #12                        ; =0xc
	ldr	x9, [sp, #144]                  ; 8-byte Reload
	mov	w15, #6                         ; =0x6
	ldr	x14, [sp, #224]                 ; 8-byte Reload
	add	x8, x8, x8, lsl #1
	str	w0, [x26, x8, lsl #2]
	ldrb	w8, [x23]
	umaddl	x8, w8, w10, x26
	str	w9, [x8, #4]
	add	w9, w23, #4
	ldrb	w8, [x23]
	ldrh	w9, [x9]
	umaddl	x8, w8, w10, x26
	str	w9, [x8, #8]
	ldr	w20, [x25, #112]
	b	LBB125_525
LBB125_529:                             ;   in Loop: Header=BB125_502 Depth=1
	mov	w23, wzr
	b	LBB125_556
LBB125_530:                             ;   in Loop: Header=BB125_502 Depth=1
	mov	w23, wzr
	mov	w9, wzr
	and	w10, w20, #0xfffffffc
	add	w11, w25, #18
	b	LBB125_532
	.p2align	4, , 8
LBB125_531:                             ;   in Loop: Header=BB125_532 Depth=2
	add	w9, w9, #4
	add	w11, w11, #24
	cmp	w10, w9
	b.eq	LBB125_544
LBB125_532:                             ;   Parent Loop BB125_502 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w12, w11, #1
	ldrb	w12, [x12]
	cmp	w28, w12
	b.ne	LBB125_535
; %bb.533:                              ;   in Loop: Header=BB125_532 Depth=2
	ldrb	w12, [x11]
	cmp	w12, #2
	b.eq	LBB125_535
; %bb.534:                              ;   in Loop: Header=BB125_532 Depth=2
	add	x13, sp, #1632
	add	w12, w23, #1
	str	w9, [x13, w23, sxtw #2]
	mov	w23, w12
LBB125_535:                             ;   in Loop: Header=BB125_532 Depth=2
	add	w12, w11, #5
	ldrb	w12, [x12]
	cmp	w28, w12
	b.ne	LBB125_538
; %bb.536:                              ;   in Loop: Header=BB125_532 Depth=2
	add	w12, w11, #6
	ldrb	w12, [x12]
	cmp	w12, #2
	b.eq	LBB125_538
; %bb.537:                              ;   in Loop: Header=BB125_532 Depth=2
	add	w12, w9, #1
	add	x16, sp, #1632
	add	w13, w23, #1
	str	w12, [x16, w23, sxtw #2]
	mov	w23, w13
LBB125_538:                             ;   in Loop: Header=BB125_532 Depth=2
	add	w12, w11, #11
	ldrb	w12, [x12]
	cmp	w28, w12
	b.ne	LBB125_541
; %bb.539:                              ;   in Loop: Header=BB125_532 Depth=2
	add	w12, w11, #12
	ldrb	w12, [x12]
	cmp	w12, #2
	b.eq	LBB125_541
; %bb.540:                              ;   in Loop: Header=BB125_532 Depth=2
	add	w12, w9, #2
	add	x16, sp, #1632
	add	w13, w23, #1
	str	w12, [x16, w23, sxtw #2]
	mov	w23, w13
LBB125_541:                             ;   in Loop: Header=BB125_532 Depth=2
	add	w12, w11, #17
	ldrb	w12, [x12]
	cmp	w28, w12
	b.ne	LBB125_531
; %bb.542:                              ;   in Loop: Header=BB125_532 Depth=2
	add	w12, w11, #18
	ldrb	w12, [x12]
	cmp	w12, #2
	b.eq	LBB125_531
; %bb.543:                              ;   in Loop: Header=BB125_532 Depth=2
	add	w12, w9, #3
	add	x16, sp, #1632
	add	w13, w23, #1
	str	w12, [x16, w23, sxtw #2]
	mov	w23, w13
	b	LBB125_531
LBB125_544:                             ;   in Loop: Header=BB125_502 Depth=1
	cbz	w8, LBB125_556
LBB125_545:                             ;   in Loop: Header=BB125_502 Depth=1
	smaddl	x10, w9, w15, x14
	ldrb	w11, [x10, #1]
	cmp	w28, w11
	b.ne	LBB125_548
; %bb.546:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w10, [x10, #2]
	cmp	w10, #2
	b.eq	LBB125_548
; %bb.547:                              ;   in Loop: Header=BB125_502 Depth=1
	add	x11, sp, #1632
	add	w10, w23, #1
	str	w9, [x11, w23, sxtw #2]
	mov	w23, w10
LBB125_548:                             ;   in Loop: Header=BB125_502 Depth=1
	cmp	w8, #1
	b.eq	LBB125_556
; %bb.549:                              ;   in Loop: Header=BB125_502 Depth=1
	add	w10, w9, #1
	smaddl	x11, w10, w15, x14
	ldrb	w12, [x11, #1]
	cmp	w28, w12
	b.ne	LBB125_552
; %bb.550:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w11, [x11, #2]
	cmp	w11, #2
	b.eq	LBB125_552
; %bb.551:                              ;   in Loop: Header=BB125_502 Depth=1
	add	x12, sp, #1632
	add	w11, w23, #1
	str	w10, [x12, w23, sxtw #2]
	mov	w23, w11
LBB125_552:                             ;   in Loop: Header=BB125_502 Depth=1
	cmp	w8, #2
	b.eq	LBB125_556
; %bb.553:                              ;   in Loop: Header=BB125_502 Depth=1
	add	w8, w9, #2
	smaddl	x9, w8, w15, x14
	ldrb	w10, [x9, #1]
	cmp	w28, w10
	b.ne	LBB125_556
; %bb.554:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w9, [x9, #2]
	cmp	w9, #2
	b.eq	LBB125_556
; %bb.555:                              ;   in Loop: Header=BB125_502 Depth=1
	add	x10, sp, #1632
	add	w9, w23, #1
	str	w8, [x10, w23, sxtw #2]
	mov	w23, w9
LBB125_556:                             ;   in Loop: Header=BB125_502 Depth=1
	lsl	w20, w23, #4
	mov	w0, w24
	mov	w1, w20
	bl	_calloc
	str	x0, [sp, #160]                  ; 8-byte Spill
	cbz	w0, LBB125_767
; %bb.557:                              ;   in Loop: Header=BB125_502 Depth=1
	str	w23, [sp, #200]                 ; 4-byte Spill
	cbz	w24, LBB125_640
; %bb.558:                              ;   in Loop: Header=BB125_502 Depth=1
	cbz	w23, LBB125_640
; %bb.559:                              ;   in Loop: Header=BB125_502 Depth=1
	and	w8, w23, #0xfffffffe
	ldr	x16, [sp, #224]                 ; 8-byte Reload
	ldp	x25, x23, [sp, #160]            ; 16-byte Folded Reload
	mov	w10, wzr
	add	x14, sp, #1632
	mov	w0, #6                          ; =0x6
	str	w8, [sp, #232]                  ; 4-byte Spill
	str	w28, [sp, #116]                 ; 4-byte Spill
	add	w11, w25, #16
	stp	w20, w24, [sp, #152]            ; 8-byte Folded Spill
	b	LBB125_562
	.p2align	4, , 8
LBB125_560:                             ;   in Loop: Header=BB125_562 Depth=2
	ldr	w9, [x1]
	add	w8, w20, w8
	str	w9, [x8]
LBB125_561:                             ;   in Loop: Header=BB125_562 Depth=2
	ldr	w10, [sp, #216]                 ; 4-byte Reload
	ldr	w19, [sp, #196]                 ; 4-byte Reload
	ldp	w20, w24, [sp, #152]            ; 8-byte Folded Reload
	ldr	x11, [sp, #208]                 ; 8-byte Reload
	add	w10, w10, #1
	add	w23, w23, w19
	add	w25, w25, w20
	cmp	w10, w24
	add	w11, w11, w20
	b.eq	LBB125_641
LBB125_562:                             ;   Parent Loop BB125_502 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB125_566 Depth 3
                                        ;         Child Loop BB125_592 Depth 4
                                        ;         Child Loop BB125_600 Depth 4
                                        ;         Child Loop BB125_608 Depth 4
                                        ;         Child Loop BB125_596 Depth 4
                                        ;         Child Loop BB125_604 Depth 4
                                        ;         Child Loop BB125_612 Depth 4
                                        ;       Child Loop BB125_630 Depth 3
                                        ;       Child Loop BB125_634 Depth 3
                                        ;       Child Loop BB125_638 Depth 3
	ldr	x9, [sp, #160]                  ; 8-byte Reload
	mul	w8, w20, w10
	mov	w24, wzr
	str	w10, [sp, #216]                 ; 4-byte Spill
	str	x11, [sp, #208]                 ; 8-byte Spill
	add	x20, x9, w8, sxtw
	ldr	x8, [sp, #168]                  ; 8-byte Reload
	mov	w27, w20
	madd	w19, w10, w19, w8
	ldr	w8, [sp, #200]                  ; 4-byte Reload
	cmp	w8, #1
	b.eq	LBB125_616
; %bb.563:                              ;   in Loop: Header=BB125_562 Depth=2
	mov	x26, x11
	mov	x28, x25
	b	LBB125_566
	.p2align	4, , 8
LBB125_564:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	w8, [x1]
	add	w9, w20, w9
	str	w8, [x9]
LBB125_565:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	w8, [sp, #232]                  ; 4-byte Reload
	add	w24, w24, #2
	add	w28, w28, #32
	add	w26, w26, #32
	cmp	w24, w8
	b.eq	LBB125_615
LBB125_566:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB125_592 Depth 4
                                        ;         Child Loop BB125_600 Depth 4
                                        ;         Child Loop BB125_608 Depth 4
                                        ;         Child Loop BB125_596 Depth 4
                                        ;         Child Loop BB125_604 Depth 4
                                        ;         Child Loop BB125_612 Depth 4
	ldrsw	x8, [x14, w24, sxtw #2]
	smaddl	x9, w8, w0, x16
	ldrh	w8, [x9, #4]
	ldrb	w11, [x9, #2]
	lsl	w9, w24, #4
	add	w1, w19, w8
	cmp	w11, #22
	b.ne	LBB125_568
; %bb.567:                              ;   in Loop: Header=BB125_566 Depth=3
	ldr	w8, [x1]
	add	w9, w20, w9
	str	w8, [x9]
	b	LBB125_570
	.p2align	4, , 8
LBB125_568:                             ;   in Loop: Header=BB125_566 Depth=3
	sub	w10, w11, #18
	ldr	q0, [sp, #240]                  ; 16-byte Reload
	mov	w13, #79                        ; =0x4f
	ror	w10, w10, #4
	str	q0, [x20, w9, sxtw]
	cmp	w10, #7
	lsr	w13, w13, w10
	cset	w12, lo
	tst	w12, w13
	b.eq	LBB125_573
; %bb.569:                              ;   in Loop: Header=BB125_566 Depth=3
Lloh772:
	adrp	x8, l_switch.table.draw_make.83@PAGE
Lloh773:
	add	x8, x8, l_switch.table.draw_make.83@PAGEOFF
	add	w0, w27, w9
	ldrb	w2, [x8, w10, sxtw]
	bl	_memcpy
	ldr	x16, [sp, #224]                 ; 8-byte Reload
	mov	w0, #6                          ; =0x6
	add	x14, sp, #1632
LBB125_570:                             ;   in Loop: Header=BB125_566 Depth=3
	orr	w8, w24, #0x1
	lsl	w9, w8, #4
	ldrsw	x8, [x14, w8, sxtw #2]
	smaddl	x10, w8, w0, x16
	ldrh	w8, [x10, #4]
	ldrb	w11, [x10, #2]
	add	w1, w19, w8
	cmp	w11, #22
	b.eq	LBB125_564
; %bb.571:                              ;   in Loop: Header=BB125_566 Depth=3
	sub	w10, w11, #18
	mov	w13, #79                        ; =0x4f
	ldr	q0, [sp, #240]                  ; 16-byte Reload
	ror	w10, w10, #4
	str	q0, [x20, w9, sxtw]
	cmp	w10, #7
	lsr	w13, w13, w10
	cset	w12, lo
	and	w12, w12, w13
	tbz	w12, #0, LBB125_577
; %bb.572:                              ;   in Loop: Header=BB125_566 Depth=3
Lloh774:
	adrp	x8, l_switch.table.draw_make.83@PAGE
Lloh775:
	add	x8, x8, l_switch.table.draw_make.83@PAGEOFF
	add	w0, w27, w9
	ldrb	w2, [x8, w10, sxtw]
	bl	_memcpy
	ldr	x16, [sp, #224]                 ; 8-byte Reload
	mov	w0, #6                          ; =0x6
	add	x14, sp, #1632
	b	LBB125_565
	.p2align	4, , 8
LBB125_573:                             ;   in Loop: Header=BB125_566 Depth=3
	sub	w10, w11, #17
	cmp	w10, #52
	b.hi	LBB125_570
; %bb.574:                              ;   in Loop: Header=BB125_566 Depth=3
Lloh776:
	adrp	x15, LJTI125_0@PAGE
Lloh777:
	add	x15, x15, LJTI125_0@PAGEOFF
Ltmp2:
	adr	x12, Ltmp2
	ldrsw	x13, [x15, x10, lsl #2]
	add	x12, x12, x13
	br	x12
LBB125_575:                             ;   in Loop: Header=BB125_566 Depth=3
	lsr	w10, w11, #4
	tbnz	w11, #7, LBB125_605
; %bb.576:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w9, wzr
	b	LBB125_607
	.p2align	4, , 8
LBB125_577:                             ;   in Loop: Header=BB125_566 Depth=3
	sub	w10, w11, #17
	cmp	w10, #52
	b.hi	LBB125_565
; %bb.578:                              ;   in Loop: Header=BB125_566 Depth=3
Lloh778:
	adrp	x15, LJTI125_1@PAGE
Lloh779:
	add	x15, x15, LJTI125_1@PAGEOFF
Ltmp3:
	adr	x12, Ltmp3
	ldrsw	x13, [x15, x10, lsl #2]
	add	x12, x12, x13
	br	x12
LBB125_579:                             ;   in Loop: Header=BB125_566 Depth=3
	lsr	w10, w11, #4
	tbnz	w11, #7, LBB125_609
; %bb.580:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w9, wzr
	b	LBB125_611
LBB125_581:                             ;   in Loop: Header=BB125_566 Depth=3
	lsr	w10, w11, #4
	tbnz	w11, #7, LBB125_589
; %bb.582:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w9, wzr
	b	LBB125_591
LBB125_583:                             ;   in Loop: Header=BB125_566 Depth=3
	lsr	w10, w11, #4
	tbnz	w11, #7, LBB125_593
; %bb.584:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w9, wzr
	b	LBB125_595
LBB125_585:                             ;   in Loop: Header=BB125_566 Depth=3
	lsr	w10, w11, #4
	tbnz	w11, #7, LBB125_597
; %bb.586:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w11, wzr
	b	LBB125_599
LBB125_587:                             ;   in Loop: Header=BB125_566 Depth=3
	lsr	w10, w11, #4
	tbnz	w11, #7, LBB125_601
; %bb.588:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w11, wzr
	b	LBB125_603
LBB125_589:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	q0, [x1]
	add	w9, w20, w9
	cmp	w10, #8
	sshll2	v1.4s, v0.8h, #0
	sshll	v0.4s, v0.4h, #0
	scvtf	v1.4s, v1.4s
	scvtf	v0.4s, v0.4s
	stp	q0, q1, [x9]
	b.eq	LBB125_570
; %bb.590:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w9, #8                          ; =0x8
LBB125_591:                             ;   in Loop: Header=BB125_566 Depth=3
	add	w8, w23, w8
	.p2align	4, , 8
LBB125_592:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ;       Parent Loop BB125_566 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	add	w11, w8, w9, lsl #1
	ldrsh	w11, [x11]
	scvtf	s0, w11
	add	w11, w28, w9, lsl #2
	add	w9, w9, #1
	cmp	w10, w9
	str	s0, [x11]
	b.ne	LBB125_592
	b	LBB125_570
LBB125_593:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	q0, [x1]
	add	w9, w20, w9
	cmp	w10, #8
	sshll2	v1.4s, v0.8h, #0
	sshll	v0.4s, v0.4h, #0
	scvtf	v1.4s, v1.4s
	scvtf	v0.4s, v0.4s
	stp	q0, q1, [x9]
	b.eq	LBB125_565
; %bb.594:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w9, #8                          ; =0x8
LBB125_595:                             ;   in Loop: Header=BB125_566 Depth=3
	add	w8, w23, w8
	.p2align	4, , 8
LBB125_596:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ;       Parent Loop BB125_566 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	add	w11, w8, w9, lsl #1
	ldrsh	w11, [x11]
	scvtf	s0, w11
	add	w11, w26, w9, lsl #2
	add	w9, w9, #1
	cmp	w10, w9
	str	s0, [x11]
	b.ne	LBB125_596
	b	LBB125_565
LBB125_597:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	d0, [x1]
	add	w9, w20, w9
	ldr	q2, [sp, #176]                  ; 16-byte Reload
	cmp	w10, #8
	zip2	v1.8b, v0.8b, v0.8b
	zip1	v0.8b, v0.8b, v0.8b
	bic	v1.4h, #255, lsl #8
	bic	v0.4h, #255, lsl #8
	ushll	v1.4s, v1.4h, #0
	ushll	v0.4s, v0.4h, #0
	ucvtf	v1.4s, v1.4s
	ucvtf	v0.4s, v0.4s
	fdiv	v1.4s, v1.4s, v2.4s
	fdiv	v0.4s, v0.4s, v2.4s
	stp	q0, q1, [x9]
	b.eq	LBB125_570
; %bb.598:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w11, #8                         ; =0x8
LBB125_599:                             ;   in Loop: Header=BB125_566 Depth=3
	add	w9, w23, w11
	sub	w10, w10, w11
	add	w8, w9, w8
	add	w9, w28, w11, lsl #2
	.p2align	4, , 8
LBB125_600:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ;       Parent Loop BB125_566 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	ldr	b0, [x8]
	add	w8, w8, #1
	subs	w10, w10, #1
	ucvtf	s0, s0
	fdiv	s0, s0, s10
	str	s0, [x9]
	add	w9, w9, #4
	b.ne	LBB125_600
	b	LBB125_570
LBB125_601:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	d0, [x1]
	add	w9, w20, w9
	ldr	q2, [sp, #176]                  ; 16-byte Reload
	cmp	w10, #8
	zip2	v1.8b, v0.8b, v0.8b
	zip1	v0.8b, v0.8b, v0.8b
	bic	v1.4h, #255, lsl #8
	bic	v0.4h, #255, lsl #8
	ushll	v1.4s, v1.4h, #0
	ushll	v0.4s, v0.4h, #0
	ucvtf	v1.4s, v1.4s
	ucvtf	v0.4s, v0.4s
	fdiv	v1.4s, v1.4s, v2.4s
	fdiv	v0.4s, v0.4s, v2.4s
	stp	q0, q1, [x9]
	b.eq	LBB125_565
; %bb.602:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w11, #8                         ; =0x8
LBB125_603:                             ;   in Loop: Header=BB125_566 Depth=3
	sub	w9, w10, w11
	add	w10, w26, w11, lsl #2
	add	w8, w11, w8
	.p2align	4, , 8
LBB125_604:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ;       Parent Loop BB125_566 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	add	w11, w23, w8
	add	w8, w8, #1
	subs	w9, w9, #1
	ldr	b0, [x11]
	ucvtf	s0, s0
	fdiv	s0, s0, s10
	str	s0, [x10]
	add	w10, w10, #4
	b.ne	LBB125_604
	b	LBB125_565
LBB125_605:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	q0, [x1]
	fmov	v4.4s, #-1.00000000
	ldr	q2, [sp, #128]                  ; 16-byte Reload
	add	w9, w20, w9
	cmp	w10, #8
	sshll2	v1.4s, v0.8h, #0
	sshll	v0.4s, v0.4h, #0
	scvtf	v1.4s, v1.4s
	scvtf	v0.4s, v0.4s
	fdiv	v1.4s, v1.4s, v2.4s
	fdiv	v0.4s, v0.4s, v2.4s
	fcmgt	v2.4s, v4.4s, v1.4s
	bit	v1.16b, v4.16b, v2.16b
	fcmgt	v3.4s, v4.4s, v0.4s
	bit	v0.16b, v4.16b, v3.16b
	stp	q0, q1, [x9]
	b.eq	LBB125_570
; %bb.606:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w9, #8                          ; =0x8
LBB125_607:                             ;   in Loop: Header=BB125_566 Depth=3
	add	w8, w23, w8
	.p2align	4, , 8
LBB125_608:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ;       Parent Loop BB125_566 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	add	w11, w8, w9, lsl #1
	ldrsh	w11, [x11]
	scvtf	s0, w11
	add	w11, w28, w9, lsl #2
	add	w9, w9, #1
	fdiv	s0, s0, s9
	fcmp	s0, s8
	fcsel	s0, s8, s0, mi
	cmp	w10, w9
	str	s0, [x11]
	b.ne	LBB125_608
	b	LBB125_570
LBB125_609:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	q0, [x1]
	fmov	v4.4s, #-1.00000000
	ldr	q2, [sp, #128]                  ; 16-byte Reload
	add	w9, w20, w9
	cmp	w10, #8
	sshll2	v1.4s, v0.8h, #0
	sshll	v0.4s, v0.4h, #0
	scvtf	v1.4s, v1.4s
	scvtf	v0.4s, v0.4s
	fdiv	v1.4s, v1.4s, v2.4s
	fdiv	v0.4s, v0.4s, v2.4s
	fcmgt	v2.4s, v4.4s, v1.4s
	bit	v1.16b, v4.16b, v2.16b
	fcmgt	v3.4s, v4.4s, v0.4s
	bit	v0.16b, v4.16b, v3.16b
	stp	q0, q1, [x9]
	b.eq	LBB125_565
; %bb.610:                              ;   in Loop: Header=BB125_566 Depth=3
	mov	w9, #8                          ; =0x8
LBB125_611:                             ;   in Loop: Header=BB125_566 Depth=3
	add	w8, w23, w8
	.p2align	4, , 8
LBB125_612:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ;       Parent Loop BB125_566 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	add	w11, w8, w9, lsl #1
	ldrsh	w11, [x11]
	scvtf	s0, w11
	add	w11, w26, w9, lsl #2
	add	w9, w9, #1
	fdiv	s0, s0, s9
	fcmp	s0, s8
	fcsel	s0, s8, s0, mi
	cmp	w10, w9
	str	s0, [x11]
	b.ne	LBB125_612
	b	LBB125_565
LBB125_613:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	s0, [x1]
	ldr	q1, [sp, #176]                  ; 16-byte Reload
	ushll	v0.8h, v0.8b, #0
	ushll	v0.4s, v0.4h, #0
	ucvtf	v0.4s, v0.4s
	fdiv	v0.4s, v0.4s, v1.4s
	rev64	v0.4s, v0.4s
	ext	v0.16b, v0.16b, v0.16b, #12
	str	q0, [x20, w9, sxtw]
	b	LBB125_570
LBB125_614:                             ;   in Loop: Header=BB125_566 Depth=3
	ldr	s0, [x1]
	ldr	q1, [sp, #176]                  ; 16-byte Reload
	ushll	v0.8h, v0.8b, #0
	ushll	v0.4s, v0.4h, #0
	ucvtf	v0.4s, v0.4s
	fdiv	v0.4s, v0.4s, v1.4s
	rev64	v0.4s, v0.4s
	ext	v0.16b, v0.16b, v0.16b, #12
	str	q0, [x20, w9, sxtw]
	b	LBB125_565
	.p2align	4, , 8
LBB125_615:                             ;   in Loop: Header=BB125_562 Depth=2
	ldr	w28, [sp, #116]                 ; 4-byte Reload
	ldr	x26, [sp, #120]                 ; 8-byte Reload
	ldr	w8, [sp, #200]                  ; 4-byte Reload
	tbz	w8, #0, LBB125_561
LBB125_616:                             ;   in Loop: Header=BB125_562 Depth=2
	ldrsw	x8, [x14, w24, sxtw #2]
	smaddl	x8, w8, w0, x16
	ldrh	w9, [x8, #4]
	ldrb	w11, [x8, #2]
	lsl	w8, w24, #4
	add	w1, w19, w9
	cmp	w11, #22
	b.eq	LBB125_560
; %bb.617:                              ;   in Loop: Header=BB125_562 Depth=2
	sub	w10, w11, #18
	mov	w13, #79                        ; =0x4f
	ldr	q0, [sp, #240]                  ; 16-byte Reload
	ror	w10, w10, #4
	str	q0, [x20, w8, sxtw]
	cmp	w10, #7
	lsr	w13, w13, w10
	cset	w12, lo
	and	w12, w12, w13
	tbz	w12, #0, LBB125_619
; %bb.618:                              ;   in Loop: Header=BB125_562 Depth=2
Lloh780:
	adrp	x9, l_switch.table.draw_make.83@PAGE
Lloh781:
	add	x9, x9, l_switch.table.draw_make.83@PAGEOFF
	add	w0, w27, w8
	ldrb	w2, [x9, w10, sxtw]
	bl	_memcpy
	ldr	x16, [sp, #224]                 ; 8-byte Reload
	mov	w0, #6                          ; =0x6
	add	x14, sp, #1632
	b	LBB125_561
LBB125_619:                             ;   in Loop: Header=BB125_562 Depth=2
	sub	w10, w11, #17
	cmp	w10, #52
	b.hi	LBB125_561
; %bb.620:                              ;   in Loop: Header=BB125_562 Depth=2
Lloh782:
	adrp	x15, LJTI125_2@PAGE
Lloh783:
	add	x15, x15, LJTI125_2@PAGEOFF
Ltmp4:
	adr	x12, Ltmp4
	ldrsw	x13, [x15, x10, lsl #2]
	add	x12, x12, x13
	br	x12
LBB125_621:                             ;   in Loop: Header=BB125_562 Depth=2
	lsr	w10, w11, #4
	tbnz	w11, #7, LBB125_635
; %bb.622:                              ;   in Loop: Header=BB125_562 Depth=2
	mov	w11, wzr
	b	LBB125_637
LBB125_623:                             ;   in Loop: Header=BB125_562 Depth=2
	lsr	w10, w11, #4
	tbnz	w11, #7, LBB125_627
; %bb.624:                              ;   in Loop: Header=BB125_562 Depth=2
	mov	w11, wzr
	b	LBB125_629
LBB125_625:                             ;   in Loop: Header=BB125_562 Depth=2
	lsr	w10, w11, #4
	tbnz	w11, #7, LBB125_631
; %bb.626:                              ;   in Loop: Header=BB125_562 Depth=2
	mov	w11, wzr
	b	LBB125_633
LBB125_627:                             ;   in Loop: Header=BB125_562 Depth=2
	ldr	q0, [x1]
	add	w11, w20, w8
	cmp	w10, #8
	sshll2	v1.4s, v0.8h, #0
	sshll	v0.4s, v0.4h, #0
	scvtf	v1.4s, v1.4s
	scvtf	v0.4s, v0.4s
	stp	q0, q1, [x11]
	b.eq	LBB125_561
; %bb.628:                              ;   in Loop: Header=BB125_562 Depth=2
	mov	w11, #8                         ; =0x8
LBB125_629:                             ;   in Loop: Header=BB125_562 Depth=2
	sub	w10, w10, w11
	add	w8, w8, w11, lsl #2
	add	w9, w9, w11, lsl #1
	.p2align	4, , 8
LBB125_630:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	w11, w23, w9
	add	w9, w9, #2
	subs	w10, w10, #1
	ldrsh	w11, [x11]
	scvtf	s0, w11
	add	w11, w25, w8
	add	w8, w8, #4
	str	s0, [x11]
	b.ne	LBB125_630
	b	LBB125_561
LBB125_631:                             ;   in Loop: Header=BB125_562 Depth=2
	ldr	d0, [x1]
	add	w11, w20, w8
	ldr	q2, [sp, #176]                  ; 16-byte Reload
	cmp	w10, #8
	zip2	v1.8b, v0.8b, v0.8b
	zip1	v0.8b, v0.8b, v0.8b
	bic	v1.4h, #255, lsl #8
	bic	v0.4h, #255, lsl #8
	ushll	v1.4s, v1.4h, #0
	ushll	v0.4s, v0.4h, #0
	ucvtf	v1.4s, v1.4s
	ucvtf	v0.4s, v0.4s
	fdiv	v1.4s, v1.4s, v2.4s
	fdiv	v0.4s, v0.4s, v2.4s
	stp	q0, q1, [x11]
	b.eq	LBB125_561
; %bb.632:                              ;   in Loop: Header=BB125_562 Depth=2
	mov	w11, #8                         ; =0x8
LBB125_633:                             ;   in Loop: Header=BB125_562 Depth=2
	sub	w10, w10, w11
	add	w8, w8, w11, lsl #2
	add	w9, w11, w9
	.p2align	4, , 8
LBB125_634:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	w11, w23, w9
	add	w9, w9, #1
	subs	w10, w10, #1
	ldr	b0, [x11]
	add	w11, w25, w8
	add	w8, w8, #4
	ucvtf	s0, s0
	fdiv	s0, s0, s10
	str	s0, [x11]
	b.ne	LBB125_634
	b	LBB125_561
LBB125_635:                             ;   in Loop: Header=BB125_562 Depth=2
	ldr	q0, [x1]
	fmov	v4.4s, #-1.00000000
	ldr	q2, [sp, #128]                  ; 16-byte Reload
	add	w11, w20, w8
	cmp	w10, #8
	sshll2	v1.4s, v0.8h, #0
	sshll	v0.4s, v0.4h, #0
	scvtf	v1.4s, v1.4s
	scvtf	v0.4s, v0.4s
	fdiv	v1.4s, v1.4s, v2.4s
	fdiv	v0.4s, v0.4s, v2.4s
	fcmgt	v2.4s, v4.4s, v1.4s
	bit	v1.16b, v4.16b, v2.16b
	fcmgt	v3.4s, v4.4s, v0.4s
	bit	v0.16b, v4.16b, v3.16b
	stp	q0, q1, [x11]
	b.eq	LBB125_561
; %bb.636:                              ;   in Loop: Header=BB125_562 Depth=2
	mov	w11, #8                         ; =0x8
LBB125_637:                             ;   in Loop: Header=BB125_562 Depth=2
	sub	w10, w10, w11
	add	w8, w8, w11, lsl #2
	add	w9, w9, w11, lsl #1
	.p2align	4, , 8
LBB125_638:                             ;   Parent Loop BB125_502 Depth=1
                                        ;     Parent Loop BB125_562 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	w11, w23, w9
	add	w9, w9, #2
	ldrsh	w11, [x11]
	scvtf	s0, w11
	add	w11, w25, w8
	add	w8, w8, #4
	fdiv	s0, s0, s9
	fcmp	s0, s8
	fcsel	s0, s8, s0, mi
	subs	w10, w10, #1
	str	s0, [x11]
	b.ne	LBB125_638
	b	LBB125_561
LBB125_639:                             ;   in Loop: Header=BB125_562 Depth=2
	ldr	s0, [x1]
	ldr	q1, [sp, #176]                  ; 16-byte Reload
	ushll	v0.8h, v0.8b, #0
	ushll	v0.4s, v0.4h, #0
	ucvtf	v0.4s, v0.4s
	fdiv	v0.4s, v0.4s, v1.4s
	rev64	v0.4s, v0.4s
	ext	v0.16b, v0.16b, v0.16b, #12
	str	q0, [x20, w8, sxtw]
	b	LBB125_561
LBB125_640:                             ;   in Loop: Header=BB125_502 Depth=1
	ldr	x16, [sp, #224]                 ; 8-byte Reload
	add	x14, sp, #1632
	mov	w0, #6                          ; =0x6
	cbz	w23, LBB125_650
LBB125_641:                             ;   in Loop: Header=BB125_502 Depth=1
	ldr	w10, [sp, #200]                 ; 4-byte Reload
	and	w8, w10, #0x3
	sub	w9, w10, #1
	cmp	w9, #3
	b.hs	LBB125_643
; %bb.642:                              ;   in Loop: Header=BB125_502 Depth=1
	mov	w9, wzr
	b	LBB125_647
LBB125_643:                             ;   in Loop: Header=BB125_502 Depth=1
	and	w10, w10, #0xfffffffc
	ldr	x3, [sp, #144]                  ; 8-byte Reload
	mov	w9, wzr
	neg	w10, w10
	mov	w11, #48                        ; =0x30
	add	w12, w14, #8
	mov	w17, #12                        ; =0xc
	mov	w1, #109                        ; =0x6d
	mov	w2, #98                         ; =0x62
	.p2align	4, , 8
LBB125_644:                             ;   Parent Loop BB125_502 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w13, w12, #8
	sub	w9, w9, #4
	ldrsw	x13, [x13]
	smaddl	x13, w13, w0, x16
	ldrb	w14, [x13, #2]
	ldrb	w15, [x13]
	cmp	w14, #22
	add	x14, x15, x15, lsl #1
	csel	w15, w2, w1, eq
	str	w15, [x26, x14, lsl #2]
	sub	w15, w12, #4
	ldrb	w14, [x13]
	umaddl	x14, w14, w17, x26
	str	w3, [x14, #4]
	ldrb	w13, [x13]
	ldrsw	x14, [x15]
	sub	w15, w11, #48
	umaddl	x13, w13, w17, x26
	smaddl	x14, w14, w0, x16
	str	w15, [x13, #8]
	ldrb	w13, [x14, #2]
	ldrb	w15, [x14]
	cmp	w13, #22
	add	x13, x15, x15, lsl #1
	csel	w15, w2, w1, eq
	str	w15, [x26, x13, lsl #2]
	sub	w15, w11, #32
	ldrb	w13, [x14]
	umaddl	x13, w13, w17, x26
	str	w3, [x13, #4]
	ldrb	w13, [x14]
	ldrsw	x14, [x12]
	umaddl	x13, w13, w17, x26
	smaddl	x14, w14, w0, x16
	str	w15, [x13, #8]
	ldrb	w13, [x14, #2]
	ldrb	w15, [x14]
	cmp	w13, #22
	add	x13, x15, x15, lsl #1
	csel	w15, w2, w1, eq
	str	w15, [x26, x13, lsl #2]
	add	w15, w12, #4
	ldrb	w13, [x14]
	add	w12, w12, #16
	umaddl	x13, w13, w17, x26
	str	w3, [x13, #4]
	ldrb	w13, [x14]
	ldrsw	x14, [x15]
	sub	w15, w11, #16
	umaddl	x13, w13, w17, x26
	smaddl	x14, w14, w0, x16
	str	w15, [x13, #8]
	ldrb	w13, [x14, #2]
	ldrb	w15, [x14]
	cmp	w13, #22
	add	x13, x15, x15, lsl #1
	csel	w15, w2, w1, eq
	cmp	w10, w9
	str	w15, [x26, x13, lsl #2]
	ldrb	w13, [x14]
	umaddl	x13, w13, w17, x26
	str	w3, [x13, #4]
	ldrb	w13, [x14]
	umaddl	x13, w13, w17, x26
	str	w11, [x13, #8]
	add	w11, w11, #64
	b.ne	LBB125_644
; %bb.645:                              ;   in Loop: Header=BB125_502 Depth=1
	add	x14, sp, #1632
	cbz	w8, LBB125_650
; %bb.646:                              ;   in Loop: Header=BB125_502 Depth=1
	neg	w9, w9
LBB125_647:                             ;   in Loop: Header=BB125_502 Depth=1
	ldrsw	x10, [x14, w9, sxtw #2]
	mov	w17, #109                       ; =0x6d
	mov	w2, #98                         ; =0x62
	mov	w13, #12                        ; =0xc
	ldr	x3, [sp, #144]                  ; 8-byte Reload
	mov	w15, #109                       ; =0x6d
	mov	w1, #98                         ; =0x62
	smaddl	x10, w10, w0, x16
	ldrb	w11, [x10, #2]
	ldrb	w12, [x10]
	cmp	w11, #22
	csel	w11, w2, w17, eq
	add	x12, x12, x12, lsl #1
	cmp	w8, #1
	str	w11, [x26, x12, lsl #2]
	ldrb	w11, [x10]
	umaddl	x11, w11, w13, x26
	str	w3, [x11, #4]
	lsl	w11, w9, #4
	ldrb	w10, [x10]
	umaddl	x10, w10, w13, x26
	str	w11, [x10, #8]
	b.eq	LBB125_650
; %bb.648:                              ;   in Loop: Header=BB125_502 Depth=1
	add	w10, w9, #1
	ldr	x17, [sp, #144]                 ; 8-byte Reload
	ldrsw	x11, [x14, w10, sxtw #2]
	lsl	w10, w10, #4
	smaddl	x11, w11, w0, x16
	ldrb	w12, [x11, #2]
	ldrb	w13, [x11]
	cmp	w12, #22
	csel	w12, w1, w15, eq
	add	x13, x13, x13, lsl #1
	cmp	w8, #2
	str	w12, [x26, x13, lsl #2]
	mov	w13, #12                        ; =0xc
	ldrb	w12, [x11]
	umaddl	x12, w12, w13, x26
	str	w17, [x12, #4]
	ldrb	w11, [x11]
	umaddl	x11, w11, w13, x26
	str	w10, [x11, #8]
	b.eq	LBB125_650
; %bb.649:                              ;   in Loop: Header=BB125_502 Depth=1
	add	w8, w9, #2
	ldr	x12, [sp, #144]                 ; 8-byte Reload
	ldrsw	x9, [x14, w8, sxtw #2]
	lsl	w8, w8, #4
	smaddl	x9, w9, w0, x16
	ldrb	w10, [x9, #2]
	ldrb	w11, [x9]
	cmp	w10, #22
	csel	w10, w1, w15, eq
	add	x11, x11, x11, lsl #1
	str	w10, [x26, x11, lsl #2]
	mov	w11, #12                        ; =0xc
	ldrb	w10, [x9]
	umaddl	x10, w10, w11, x26
	str	w12, [x10, #4]
	ldrb	w9, [x9]
	umaddl	x9, w9, w11, x26
	str	w8, [x9, #8]
LBB125_650:                             ;   in Loop: Header=BB125_502 Depth=1
	cmp	w19, #0
	ldr	x23, [sp, #160]                 ; 8-byte Reload
	csel	w8, w20, wzr, ne
	mul	w19, w20, w24
	ldr	x20, [sp, #144]                 ; 8-byte Reload
	ldr	x10, [sp, #48]                  ; 8-byte Reload
	mov	w1, w19
	mov	x0, x23
	sbfiz	x9, x20, #3, #32
	str	w8, [x10, x9]
	bl	_vk_data_put
	adrp	x9, _stats@PAGE+40
	ldr	x8, [x9, _stats@PAGEOFF+40]
	add	x8, x8, x19
	mov	w19, w0
	mov	x0, x23
	str	x8, [x9, _stats@PAGEOFF+40]
	bl	_free
	ldr	x25, [sp, #104]                 ; 8-byte Reload
	ldr	x24, [sp, #40]                  ; 8-byte Reload
	cbz	w19, LBB125_767
; %bb.651:                              ;   in Loop: Header=BB125_502 Depth=1
	ldr	x9, [sp, #56]                   ; 8-byte Reload
	mov	w8, w19
	ldr	x14, [sp, #224]                 ; 8-byte Reload
	mov	w15, #6                         ; =0x6
	str	x8, [x9, w20, sxtw #3]
	ldr	w20, [x25, #112]
LBB125_652:                             ;   in Loop: Header=BB125_502 Depth=1
	add	x13, sp, #1568
	mov	w16, #1                         ; =0x1
	cbz	w20, LBB125_501
; %bb.653:                              ;   in Loop: Header=BB125_502 Depth=1
	and	w8, w20, #0x3
	cmp	w20, #4
	b.hs	LBB125_655
; %bb.654:                              ;   in Loop: Header=BB125_502 Depth=1
	mov	w9, wzr
	b	LBB125_671
LBB125_655:                             ;   in Loop: Header=BB125_502 Depth=1
	and	w10, w20, #0xfffffffc
	mov	w9, wzr
	neg	w10, w10
	add	w11, w25, #18
	b	LBB125_657
	.p2align	4, , 8
LBB125_656:                             ;   in Loop: Header=BB125_657 Depth=2
	sub	w9, w9, #4
	add	w11, w11, #24
	cmp	w10, w9
	b.eq	LBB125_669
LBB125_657:                             ;   Parent Loop BB125_502 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w12, w11, #1
	ldrb	w12, [x12]
	cmp	w28, w12
	b.ne	LBB125_660
; %bb.658:                              ;   in Loop: Header=BB125_657 Depth=2
	ldrb	w12, [x11]
	cmp	w12, #2
	b.eq	LBB125_660
; %bb.659:                              ;   in Loop: Header=BB125_657 Depth=2
	sub	w12, w11, #2
	ldrb	w12, [x12]
	str	w16, [x13, x12, lsl #2]
LBB125_660:                             ;   in Loop: Header=BB125_657 Depth=2
	add	w12, w11, #5
	ldrb	w12, [x12]
	cmp	w28, w12
	b.ne	LBB125_663
; %bb.661:                              ;   in Loop: Header=BB125_657 Depth=2
	add	w12, w11, #6
	ldrb	w12, [x12]
	cmp	w12, #2
	b.eq	LBB125_663
; %bb.662:                              ;   in Loop: Header=BB125_657 Depth=2
	add	w12, w11, #4
	ldrb	w12, [x12]
	str	w16, [x13, x12, lsl #2]
LBB125_663:                             ;   in Loop: Header=BB125_657 Depth=2
	add	w12, w11, #11
	ldrb	w12, [x12]
	cmp	w28, w12
	b.ne	LBB125_666
; %bb.664:                              ;   in Loop: Header=BB125_657 Depth=2
	add	w12, w11, #12
	ldrb	w12, [x12]
	cmp	w12, #2
	b.eq	LBB125_666
; %bb.665:                              ;   in Loop: Header=BB125_657 Depth=2
	add	w12, w11, #10
	ldrb	w12, [x12]
	str	w16, [x13, x12, lsl #2]
LBB125_666:                             ;   in Loop: Header=BB125_657 Depth=2
	add	w12, w11, #17
	ldrb	w12, [x12]
	cmp	w28, w12
	b.ne	LBB125_656
; %bb.667:                              ;   in Loop: Header=BB125_657 Depth=2
	add	w12, w11, #18
	ldrb	w12, [x12]
	cmp	w12, #2
	b.eq	LBB125_656
; %bb.668:                              ;   in Loop: Header=BB125_657 Depth=2
	add	w12, w11, #16
	ldrb	w12, [x12]
	str	w16, [x13, x12, lsl #2]
	b	LBB125_656
LBB125_669:                             ;   in Loop: Header=BB125_502 Depth=1
	cbz	w8, LBB125_501
; %bb.670:                              ;   in Loop: Header=BB125_502 Depth=1
	neg	w9, w9
LBB125_671:                             ;   in Loop: Header=BB125_502 Depth=1
	smaddl	x9, w9, w15, x14
	ldrb	w10, [x9, #1]
	cmp	w28, w10
	b.ne	LBB125_674
; %bb.672:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w10, [x9, #2]
	cmp	w10, #2
	b.eq	LBB125_674
; %bb.673:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w10, [x9]
	str	w16, [x13, x10, lsl #2]
LBB125_674:                             ;   in Loop: Header=BB125_502 Depth=1
	cmp	w8, #1
	b.eq	LBB125_501
; %bb.675:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w10, [x9, #7]
	cmp	w28, w10
	b.ne	LBB125_678
; %bb.676:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w10, [x9, #8]
	cmp	w10, #2
	b.eq	LBB125_678
; %bb.677:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w10, [x9, #6]
	str	w16, [x13, x10, lsl #2]
LBB125_678:                             ;   in Loop: Header=BB125_502 Depth=1
	cmp	w8, #2
	b.eq	LBB125_501
; %bb.679:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w8, [x9, #13]
	cmp	w28, w8
	b.ne	LBB125_501
; %bb.680:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w8, [x9, #14]
	cmp	w8, #2
	b.eq	LBB125_501
; %bb.681:                              ;   in Loop: Header=BB125_502 Depth=1
	ldrb	w8, [x9, #12]
	str	w16, [x13, x8, lsl #2]
	b	LBB125_501
LBB125_682:
Lloh784:
	adrp	x8, _device@PAGE+4632
Lloh785:
	add	x8, x8, _device@PAGEOFF+4632
	add	x9, sp, #1632
	ldp	q2, q3, [x8, #224]
	ldp	q0, q1, [x8, #192]
	stp	q2, q3, [x9, #224]
	ldp	q2, q3, [x8, #160]
	stp	q0, q1, [x9, #192]
	ldp	q0, q1, [x8, #128]
	stp	q2, q3, [x9, #160]
	ldp	q2, q3, [x8, #96]
	stp	q0, q1, [x9, #128]
	ldp	q0, q1, [x8, #64]
	stp	q2, q3, [x9, #96]
	ldp	q2, q3, [x8, #32]
	stp	q0, q1, [x9, #64]
	ldp	q0, q1, [x8]
	ldr	w8, [x25, #116]
	stp	q2, q3, [x9, #32]
	stp	q0, q1, [x9]
	tbz	w8, #0, LBB125_684
; %bb.683:
	stp	xzr, xzr, [x9]
LBB125_684:
	ldr	x20, [sp, #80]                  ; 8-byte Reload
	ldr	w27, [sp, #96]                  ; 4-byte Reload
	tbnz	w8, #1, LBB125_781
; %bb.685:
	tbnz	w8, #2, LBB125_782
LBB125_686:
	tbnz	w8, #3, LBB125_783
LBB125_687:
	tbnz	w8, #4, LBB125_784
LBB125_688:
	tbnz	w8, #5, LBB125_785
LBB125_689:
	tbnz	w8, #6, LBB125_786
LBB125_690:
	tbnz	w8, #7, LBB125_787
LBB125_691:
	tbnz	w8, #8, LBB125_788
LBB125_692:
	tbnz	w8, #9, LBB125_789
LBB125_693:
	tbnz	w8, #10, LBB125_790
LBB125_694:
	tbnz	w8, #11, LBB125_791
LBB125_695:
	tbnz	w8, #12, LBB125_792
LBB125_696:
	tbnz	w8, #13, LBB125_793
LBB125_697:
	tbnz	w8, #14, LBB125_794
LBB125_698:
	tbz	w8, #15, LBB125_700
LBB125_699:
	stp	xzr, xzr, [x9, #240]
LBB125_700:
Lloh786:
	adrp	x8, _puts_this_frame@PAGE+904
Lloh787:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+904]
	cbz	w8, LBB125_717
; %bb.701:
	adrp	x8, _puts_this_frame@PAGE+908
	add	x8, x8, _puts_this_frame@PAGEOFF+908
	ldr	q1, [x9]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.702:
	adrp	x8, _puts_this_frame@PAGE+924
	add	x8, x8, _puts_this_frame@PAGEOFF+924
	ldr	q1, [x9, #16]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.703:
	adrp	x8, _puts_this_frame@PAGE+940
	add	x8, x8, _puts_this_frame@PAGEOFF+940
	ldr	q1, [x9, #32]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.704:
	adrp	x8, _puts_this_frame@PAGE+956
	add	x8, x8, _puts_this_frame@PAGEOFF+956
	ldr	q1, [x9, #48]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.705:
	adrp	x8, _puts_this_frame@PAGE+972
	add	x8, x8, _puts_this_frame@PAGEOFF+972
	ldr	q1, [x9, #64]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.706:
	adrp	x8, _puts_this_frame@PAGE+988
	add	x8, x8, _puts_this_frame@PAGEOFF+988
	ldr	q1, [x9, #80]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.707:
	adrp	x8, _puts_this_frame@PAGE+1004
	add	x8, x8, _puts_this_frame@PAGEOFF+1004
	ldr	q1, [x9, #96]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.708:
	adrp	x8, _puts_this_frame@PAGE+1020
	add	x8, x8, _puts_this_frame@PAGEOFF+1020
	ldr	q1, [x9, #112]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.709:
	adrp	x8, _puts_this_frame@PAGE+1036
	add	x8, x8, _puts_this_frame@PAGEOFF+1036
	ldr	q1, [x9, #128]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.710:
	adrp	x8, _puts_this_frame@PAGE+1052
	add	x8, x8, _puts_this_frame@PAGEOFF+1052
	ldr	q1, [x9, #144]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.711:
	adrp	x8, _puts_this_frame@PAGE+1068
	add	x8, x8, _puts_this_frame@PAGEOFF+1068
	ldr	q1, [x9, #160]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.712:
	adrp	x8, _puts_this_frame@PAGE+1084
	add	x8, x8, _puts_this_frame@PAGEOFF+1084
	ldr	q1, [x9, #176]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.713:
	adrp	x8, _puts_this_frame@PAGE+1100
	add	x8, x8, _puts_this_frame@PAGEOFF+1100
	ldr	q1, [x9, #192]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.714:
	adrp	x8, _puts_this_frame@PAGE+1116
	add	x8, x8, _puts_this_frame@PAGEOFF+1116
	ldr	q1, [x9, #208]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.715:
	adrp	x8, _puts_this_frame@PAGE+1132
	add	x8, x8, _puts_this_frame@PAGEOFF+1132
	ldr	q1, [x9, #224]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_717
; %bb.716:
	adrp	x8, _puts_this_frame@PAGE+1148
	add	x8, x8, _puts_this_frame@PAGEOFF+1148
	ldr	q1, [x9, #240]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbz	x8, LBB125_854
LBB125_717:
	ldp	q0, q1, [x9, #192]
Lloh788:
	adrp	x19, _puts_this_frame@PAGE+904
Lloh789:
	add	x19, x19, _puts_this_frame@PAGEOFF+904
	ldp	q2, q3, [x9, #224]
	add	x0, sp, #1632
	mov	w1, #256                        ; =0x100
	stur	q0, [x19, #196]
	stur	q1, [x19, #212]
	stur	q2, [x19, #228]
	stur	q3, [x19, #244]
	ldp	q0, q1, [x9, #128]
	ldp	q2, q3, [x9, #160]
	stur	q0, [x19, #132]
	stur	q1, [x19, #148]
	stur	q2, [x19, #164]
	stur	q3, [x19, #180]
	ldp	q0, q1, [x9, #64]
	ldp	q2, q3, [x9, #96]
	stur	q0, [x19, #68]
	stur	q1, [x19, #84]
	stur	q2, [x19, #100]
	stur	q3, [x19, #116]
	ldp	q0, q1, [x9]
	ldp	q2, q3, [x9, #32]
	stur	q0, [x19, #4]
	stur	q1, [x19, #20]
	stur	q2, [x19, #36]
	stur	q3, [x19, #52]
	bl	_vk_data_put
	add	x8, x19, #260
	mov	w14, w0
	mov	w9, #1                          ; =0x1
	str	x14, [x8]
	str	w9, [x19]
LBB125_718:
	ldr	x17, [sp, #56]                  ; 8-byte Reload
	lsl	w15, w24, #3
	add	x9, sp, #608
	add	x10, sp, #1568
	mov	w8, wzr
	add	w9, w9, #352
	add	w10, w10, #16
	mov	w11, #112                       ; =0x70
	str	x14, [x17, w15, sxtw]
	mov	w12, #98                        ; =0x62
	ldr	x14, [sp, #48]                  ; 8-byte Reload
	mov	w13, #109                       ; =0x6d
	sbfiz	x16, x24, #3, #32
	str	wzr, [x14, x16]
	b	LBB125_720
	.p2align	4, , 8
LBB125_719:                             ;   in Loop: Header=BB125_720 Depth=1
	add	w10, w10, #32
	add	w8, w8, #8
	add	w11, w11, #128
	add	w9, w9, #96
	cmp	w11, #368
	b.eq	LBB125_736
LBB125_720:                             ; =>This Inner Loop Header: Depth=1
	sub	w14, w10, #16
	ldr	w14, [x14]
	cbnz	w14, LBB125_722
; %bb.721:                              ;   in Loop: Header=BB125_720 Depth=1
	ldr	w14, [x25, #116]
	sub	w15, w9, #88
	sub	w17, w11, #112
	sub	w0, w9, #84
	str	w24, [x15]
	lsr	w14, w14, w8
	tst	w14, #0x1
	sub	w14, w9, #92
	csel	w16, w13, w12, eq
	str	w17, [x0]
	str	w16, [x14]
LBB125_722:                             ;   in Loop: Header=BB125_720 Depth=1
	sub	w14, w10, #12
	ldr	w14, [x14]
	cbnz	w14, LBB125_724
; %bb.723:                              ;   in Loop: Header=BB125_720 Depth=1
	ldr	w14, [x25, #116]
	sub	w15, w9, #76
	sub	w17, w11, #96
	sub	w0, w9, #72
	str	w24, [x15]
	lsr	w14, w14, w8
	tst	w14, #0x2
	sub	w14, w9, #80
	csel	w16, w13, w12, eq
	str	w17, [x0]
	str	w16, [x14]
LBB125_724:                             ;   in Loop: Header=BB125_720 Depth=1
	sub	w14, w10, #8
	ldr	w14, [x14]
	cbnz	w14, LBB125_726
; %bb.725:                              ;   in Loop: Header=BB125_720 Depth=1
	ldr	w14, [x25, #116]
	sub	w15, w9, #64
	sub	w17, w11, #80
	sub	w0, w9, #60
	str	w24, [x15]
	lsr	w14, w14, w8
	tst	w14, #0x4
	sub	w14, w9, #68
	csel	w16, w13, w12, eq
	str	w17, [x0]
	str	w16, [x14]
LBB125_726:                             ;   in Loop: Header=BB125_720 Depth=1
	sub	w14, w10, #4
	ldr	w14, [x14]
	cbz	w14, LBB125_734
; %bb.727:                              ;   in Loop: Header=BB125_720 Depth=1
	ldr	w14, [x10]
	cbz	w14, LBB125_735
LBB125_728:                             ;   in Loop: Header=BB125_720 Depth=1
	add	w14, w10, #4
	ldr	w14, [x14]
	cbnz	w14, LBB125_730
; %bb.729:                              ;   in Loop: Header=BB125_720 Depth=1
	ldr	w14, [x25, #116]
	sub	w15, w9, #28
	sub	w17, w11, #32
	sub	w0, w9, #24
	str	w24, [x15]
	lsr	w14, w14, w8
	tst	w14, #0x20
	sub	w14, w9, #32
	csel	w16, w13, w12, eq
	str	w17, [x0]
	str	w16, [x14]
LBB125_730:                             ;   in Loop: Header=BB125_720 Depth=1
	add	w14, w10, #8
	ldr	w14, [x14]
	cbnz	w14, LBB125_732
; %bb.731:                              ;   in Loop: Header=BB125_720 Depth=1
	ldr	w14, [x25, #116]
	sub	w15, w9, #16
	sub	w17, w11, #16
	sub	w0, w9, #12
	str	w24, [x15]
	lsr	w14, w14, w8
	tst	w14, #0x40
	sub	w14, w9, #20
	csel	w16, w13, w12, eq
	str	w17, [x0]
	str	w16, [x14]
LBB125_732:                             ;   in Loop: Header=BB125_720 Depth=1
	add	w14, w10, #12
	ldr	w14, [x14]
	cbnz	w14, LBB125_719
; %bb.733:                              ;   in Loop: Header=BB125_720 Depth=1
	ldr	w14, [x25, #116]
	sub	w15, w9, #4
	str	w11, [x9]
	str	w24, [x15]
	lsr	w14, w14, w8
	tst	w14, #0x80
	sub	w14, w9, #8
	csel	w16, w13, w12, eq
	str	w16, [x14]
	b	LBB125_719
LBB125_734:                             ;   in Loop: Header=BB125_720 Depth=1
	ldr	w14, [x25, #116]
	sub	w15, w9, #52
	sub	w17, w11, #64
	sub	w0, w9, #48
	str	w24, [x15]
	lsr	w14, w14, w8
	tst	w14, #0x8
	sub	w14, w9, #56
	csel	w16, w13, w12, eq
	str	w17, [x0]
	str	w16, [x14]
	ldr	w14, [x10]
	cbnz	w14, LBB125_728
LBB125_735:                             ;   in Loop: Header=BB125_720 Depth=1
	ldr	w14, [x25, #116]
	sub	w15, w9, #40
	sub	w17, w11, #48
	sub	w0, w9, #36
	str	w24, [x15]
	lsr	w14, w14, w8
	tst	w14, #0x10
	sub	w14, w9, #44
	csel	w16, w13, w12, eq
	str	w17, [x0]
	str	w16, [x14]
	b	LBB125_728
LBB125_736:
	add	w8, w24, #1
	str	w8, [sp, #736]
	b	LBB125_763
LBB125_737:
	and	w10, w10, #0xfffffffc
	mov	w9, wzr
	neg	w10, w10
	mov	w11, #48                        ; =0x30
	mov	w12, #12                        ; =0xc
Lloh790:
	adrp	x13, _device@PAGE+4919
Lloh791:
	add	x13, x13, _device@PAGEOFF+4919
	.p2align	4, , 8
LBB125_738:                             ; =>This Inner Loop Header: Depth=1
	sub	w14, w13, #3
	sub	w15, w13, #2
	sub	w16, w13, #1
	ldrb	w0, [x13]
	sub	w17, w11, #48
	sub	w9, w9, #4
	ldrb	w14, [x14]
	add	w13, w13, #4
	ldrb	w15, [x15]
	cmp	w10, w9
	ldrb	w16, [x16]
	umaddl	x0, w0, w12, x2
	umaddl	x14, w14, w12, x2
	umaddl	x15, w15, w12, x2
	umaddl	x16, w16, w12, x2
	stp	wzr, w17, [x14, #4]
	sub	w14, w11, #32
	sub	w17, w11, #16
	stp	wzr, w14, [x15, #4]
	stp	wzr, w17, [x16, #4]
	stp	wzr, w11, [x0, #4]
	add	w11, w11, #64
	b.ne	LBB125_738
; %bb.739:
	cbz	w8, LBB125_744
; %bb.740:
	neg	w9, w9
LBB125_741:
Lloh792:
	adrp	x10, _device@PAGE
Lloh793:
	add	x10, x10, _device@PAGEOFF
	add	x10, x10, w9, sxtw
	mov	w11, #4916                      ; =0x1334
	cmp	w8, #1
	ldrb	w10, [x10, x11]
	mov	w11, #12                        ; =0xc
	umaddl	x10, w10, w11, x2
	lsl	w11, w9, #4
	stp	wzr, w11, [x10, #4]
	b.eq	LBB125_744
; %bb.742:
	add	w10, w9, #1
Lloh794:
	adrp	x12, _device@PAGE
Lloh795:
	add	x12, x12, _device@PAGEOFF
	mov	w11, #4916                      ; =0x1334
	add	x12, x12, w10, sxtw
	lsl	w10, w10, #4
	cmp	w8, #2
	ldrb	w11, [x12, x11]
	mov	w12, #12                        ; =0xc
	umaddl	x11, w11, w12, x2
	stp	wzr, w10, [x11, #4]
	b.eq	LBB125_744
; %bb.743:
	add	w8, w9, #2
Lloh796:
	adrp	x10, _device@PAGE
Lloh797:
	add	x10, x10, _device@PAGEOFF
	mov	w9, #4916                       ; =0x1334
	add	x10, x10, w8, sxtw
	lsl	w8, w8, #4
	ldrb	w9, [x10, x9]
	mov	w10, #12                        ; =0xc
	umaddl	x9, w9, w10, x2
	stp	wzr, w8, [x9, #4]
LBB125_744:
Lloh798:
	adrp	x8, _puts_this_frame@PAGE+904
Lloh799:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+904]
	cbz	w8, LBB125_761
; %bb.745:
Lloh800:
	adrp	x8, _puts_this_frame@PAGE+908
Lloh801:
	add	x8, x8, _puts_this_frame@PAGEOFF+908
Lloh802:
	ldr	q0, [x8]
	ldr	x8, [sp, #216]                  ; 8-byte Reload
	ldr	q1, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.746:
	adrp	x8, _puts_this_frame@PAGE+924
	add	x8, x8, _puts_this_frame@PAGEOFF+924
	ldr	q1, [x1, #16]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.747:
	adrp	x8, _puts_this_frame@PAGE+940
	add	x8, x8, _puts_this_frame@PAGEOFF+940
	ldr	q1, [x1, #32]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.748:
	adrp	x8, _puts_this_frame@PAGE+956
	add	x8, x8, _puts_this_frame@PAGEOFF+956
	ldr	q1, [x1, #48]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.749:
	adrp	x8, _puts_this_frame@PAGE+972
	add	x8, x8, _puts_this_frame@PAGEOFF+972
	ldr	q1, [x1, #64]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.750:
	adrp	x8, _puts_this_frame@PAGE+988
	add	x8, x8, _puts_this_frame@PAGEOFF+988
	ldr	q1, [x1, #80]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.751:
	adrp	x8, _puts_this_frame@PAGE+1004
	add	x8, x8, _puts_this_frame@PAGEOFF+1004
	ldr	q1, [x1, #96]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.752:
	adrp	x8, _puts_this_frame@PAGE+1020
	add	x8, x8, _puts_this_frame@PAGEOFF+1020
	ldr	q1, [x1, #112]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.753:
	adrp	x8, _puts_this_frame@PAGE+1036
	add	x8, x8, _puts_this_frame@PAGEOFF+1036
	ldr	q1, [x1, #128]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.754:
	adrp	x8, _puts_this_frame@PAGE+1052
	add	x8, x8, _puts_this_frame@PAGEOFF+1052
	ldr	q1, [x1, #144]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.755:
	adrp	x8, _puts_this_frame@PAGE+1068
	add	x8, x8, _puts_this_frame@PAGEOFF+1068
	ldr	q1, [x1, #160]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.756:
	adrp	x8, _puts_this_frame@PAGE+1084
	add	x8, x8, _puts_this_frame@PAGEOFF+1084
	ldr	q1, [x1, #176]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.757:
	adrp	x8, _puts_this_frame@PAGE+1100
	add	x8, x8, _puts_this_frame@PAGEOFF+1100
	ldr	q1, [x1, #192]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.758:
	adrp	x8, _puts_this_frame@PAGE+1116
	add	x8, x8, _puts_this_frame@PAGEOFF+1116
	ldr	q1, [x1, #208]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.759:
	adrp	x8, _puts_this_frame@PAGE+1132
	add	x8, x8, _puts_this_frame@PAGEOFF+1132
	ldr	q1, [x1, #224]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbnz	x8, LBB125_761
; %bb.760:
	adrp	x8, _puts_this_frame@PAGE+1148
	add	x8, x8, _puts_this_frame@PAGEOFF+1148
	ldr	q1, [x1, #240]
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x8, d0
	cbz	x8, LBB125_853
LBB125_761:
	ldp	q0, q1, [x1, #192]
Lloh803:
	adrp	x19, _puts_this_frame@PAGE+904
Lloh804:
	add	x19, x19, _puts_this_frame@PAGEOFF+904
	ldp	q2, q3, [x1, #224]
	add	x0, sp, #1632
	stur	q0, [x19, #196]
	stur	q1, [x19, #212]
	stur	q2, [x19, #228]
	stur	q3, [x19, #244]
	ldp	q0, q1, [x1, #128]
	ldp	q2, q3, [x1, #160]
	stur	q0, [x19, #132]
	stur	q1, [x19, #148]
	stur	q2, [x19, #164]
	stur	q3, [x19, #180]
	ldp	q0, q1, [x1, #64]
	ldp	q2, q3, [x1, #96]
	stur	q0, [x19, #68]
	stur	q1, [x19, #84]
	stur	q2, [x19, #100]
	stur	q3, [x19, #116]
	ldp	q0, q1, [x1]
	ldp	q2, q3, [x1, #32]
	mov	w1, #256                        ; =0x100
	stur	q0, [x19, #4]
	stur	q1, [x19, #20]
	stur	q2, [x19, #36]
	stur	q3, [x19, #52]
	bl	_vk_data_put
	add	x9, x19, #260
	mov	w8, w0
	mov	w10, #1                         ; =0x1
	str	x8, [x9]
	str	w10, [x19]
LBB125_762:
	mov	w9, #2                          ; =0x2
	add	x10, sp, #336
	str	wzr, [sp, #748]
	str	x8, [x10, #832]
	str	w9, [sp, #736]
LBB125_763:
	ldr	x9, [sp, #24]                   ; 8-byte Reload
	ldr	w10, [sp, #20]                  ; 4-byte Reload
	cbz	w9, LBB125_772
; %bb.764:
	cbz	w10, LBB125_768
; %bb.765:
	mov	w8, #1                          ; =0x1
	mov	w24, w10
	lsl	w19, w10, #1
	cmp	w9, w20
	str	w8, [sp, #1544]
	b.eq	LBB125_769
LBB125_766:
	ldr	x8, [sp, #64]                   ; 8-byte Reload
	mov	x0, x9
	mov	w1, w19
	add	w20, w8, #680
	bl	_vk_data_put
Lloh805:
	adrp	x8, _stats@PAGE+48
Lloh806:
	add	x8, x8, _stats@PAGEOFF+48
	mov	w11, w0
	ldr	x9, [x8]
	ldr	w10, [x8, #56]
	str	x11, [x20]
	ldr	x20, [sp, #80]                  ; 8-byte Reload
	add	x9, x9, w19, uxtw
	add	w10, w10, #1
	str	x9, [x8]
	str	w10, [x8, #56]
	b	LBB125_771
LBB125_767:
	adrp	x8, _stats@PAGE+28
	ldr	w9, [x8, _stats@PAGEOFF+28]
	add	w9, w9, #1
	str	w9, [x8, _stats@PAGEOFF+28]
LBB125_768:
	ldr	x0, [sp, #32]                   ; 8-byte Reload
	bl	_free
	b	LBB125_210
LBB125_769:
	add	x8, sp, #608
	mov	x0, x9
	add	x3, x8, #940
	mov	w1, w19
	mov	w2, #1                          ; =0x1
	mov	x23, x9
	bl	_static_ref
	mov	x9, x23
	cbz	w0, LBB125_766
; %bb.770:
	adrp	x8, _stats@PAGE+120
	ldr	x9, [x8, _stats@PAGEOFF+120]
	add	x9, x9, w19, uxtw
	str	x9, [x8, _stats@PAGEOFF+120]
LBB125_771:
	ldr	w8, [sp, #16]                   ; 4-byte Reload
	cmp	w20, #0
	str	w24, [sp, #92]                  ; 4-byte Spill
	csneg	w8, wzr, w8, eq
	str	w8, [sp, #1556]
LBB125_772:
	ldr	w8, [sp, #92]                   ; 4-byte Reload
	ldr	x0, [sp, #32]                   ; 8-byte Reload
	str	w8, [sp, #1560]
	bl	_free
Lloh807:
	adrp	x8, _puts_this_frame@PAGE
	ldrb	w19, [sp, #589]
	adrp	x20, _constants_serial@PAGE
Lloh808:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF]
	cbz	w8, LBB125_780
; %bb.773:
Lloh809:
	adrp	x8, _puts_this_frame@PAGE+8
Lloh810:
	ldr	w9, [x8, _puts_this_frame@PAGEOFF+8]
	ldr	w8, [x20, _constants_serial@PAGEOFF]
	subs	w10, w8, w9
	b.ne	LBB125_775
; %bb.774:
	adrp	x8, _puts_this_frame@PAGE+12
	add	x8, x8, _puts_this_frame@PAGEOFF+12
Lloh811:
	adrp	x2, _D3D__RenderState@GOTPAGE
	ldr	x8, [x8]
Lloh812:
	ldr	w2, [x2, _D3D__RenderState@GOTPAGEOFF]
	b	LBB125_812
LBB125_775:
	cmp	w10, #64
	b.hi	LBB125_780
; %bb.776:
Lloh813:
	adrp	x10, _puts_this_frame@PAGE+12
	add	w9, w9, #1
	mov	w25, wzr
	cmp	w9, w8
Lloh814:
	ldr	w24, [x10, _puts_this_frame@PAGEOFF+12]
	add	x10, sp, #1632
	str	xzr, [x10, #776]
	str	xzr, [x10, #768]
	str	xzr, [x10, #784]
	b.ls	LBB125_795
LBB125_777:
Lloh815:
	adrp	x8, _stream_used@PAGE
Lloh816:
	ldr	w1, [x8, _stream_used@PAGEOFF]
	add	w8, w25, w25, lsl #2
	lsl	w23, w8, #2
	add	w26, w23, #20
	add	w8, w1, w26
	cmp	w8, #1024, lsl #12              ; =4194304
	b.ls	LBB125_799
; %bb.778:
	adrp	x28, _stream@PAGE
	ldr	w0, [x28, _stream@PAGEOFF]
	cbz	w1, LBB125_800
; %bb.779:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x10, _stream_index@PAGE
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	ldr	w8, [x10, _stream_index@PAGEOFF]
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh817:
	adrp	x9, _streams@PAGE
Lloh818:
	add	x9, x9, _streams@PAGEOFF
	add	x0, x9, x8, lsl #22
	str	w8, [x10, _stream_index@PAGEOFF]
	str	w0, [x28, _stream@PAGEOFF]
	b	LBB125_800
LBB125_780:
Lloh819:
	adrp	x0, _device@PAGE+1396
Lloh820:
	add	x0, x0, _device@PAGEOFF+1396
	mov	w1, #3072                       ; =0xc00
	bl	_vk_data_put
Lloh821:
	adrp	x9, _stats@PAGE+56
Lloh822:
	add	x9, x9, _stats@PAGEOFF+56
	adrp	x12, _puts_this_frame@PAGE+12
	add	x12, x12, _puts_this_frame@PAGEOFF+12
	mov	w8, w0
Lloh823:
	adrp	x2, _D3D__RenderState@GOTPAGE
	ldr	x10, [x9]
	ldr	w11, [x9, #44]
	str	x8, [x12]
	add	x10, x10, #3072
	add	w11, w11, #1
	str	x10, [x9]
	str	w11, [x9, #44]
Lloh824:
	ldr	w2, [x2, _D3D__RenderState@GOTPAGEOFF]
	b	LBB125_811
LBB125_781:
	stp	xzr, xzr, [x9, #16]
	tbz	w8, #2, LBB125_686
LBB125_782:
	stp	xzr, xzr, [x9, #32]
	tbz	w8, #3, LBB125_687
LBB125_783:
	stp	xzr, xzr, [x9, #48]
	tbz	w8, #4, LBB125_688
LBB125_784:
	stp	xzr, xzr, [x9, #64]
	tbz	w8, #5, LBB125_689
LBB125_785:
	stp	xzr, xzr, [x9, #80]
	tbz	w8, #6, LBB125_690
LBB125_786:
	stp	xzr, xzr, [x9, #96]
	tbz	w8, #7, LBB125_691
LBB125_787:
	stp	xzr, xzr, [x9, #112]
	tbz	w8, #8, LBB125_692
LBB125_788:
	stp	xzr, xzr, [x9, #128]
	tbz	w8, #9, LBB125_693
LBB125_789:
	stp	xzr, xzr, [x9, #144]
	tbz	w8, #10, LBB125_694
LBB125_790:
	stp	xzr, xzr, [x9, #160]
	tbz	w8, #11, LBB125_695
LBB125_791:
	stp	xzr, xzr, [x9, #176]
	tbz	w8, #12, LBB125_696
LBB125_792:
	stp	xzr, xzr, [x9, #192]
	tbz	w8, #13, LBB125_697
LBB125_793:
	stp	xzr, xzr, [x9, #208]
	tbz	w8, #14, LBB125_698
LBB125_794:
	stp	xzr, xzr, [x9, #224]
	tbnz	w8, #15, LBB125_699
	b	LBB125_700
LBB125_795:
	sub	x10, x29, #208
	mov	w11, #1                         ; =0x1
	add	x12, sp, #1632
Lloh825:
	adrp	x13, _constant_log@PAGE
Lloh826:
	add	x13, x13, _constant_log@PAGEOFF
	b	LBB125_797
LBB125_796:                             ;   in Loop: Header=BB125_797 Depth=1
	add	w9, w9, #1
	cmp	w9, w8
	b.hi	LBB125_777
LBB125_797:                             ; =>This Inner Loop Header: Depth=1
	and	w14, w9, #0x3ff
	ldrb	w15, [x13, w14, uxtw]
	lsr	w14, w15, #5
	ldr	w16, [x10, w14, uxtw #2]
	lsr	w17, w16, w15
	tbnz	w17, #0, LBB125_796
; %bb.798:                              ;   in Loop: Header=BB125_797 Depth=1
	add	w17, w25, #1
	strb	w15, [x12, w25, sxtw]
	lsl	w15, w11, w15
	mov	w25, w17
	orr	w15, w15, w16
	lsl	w14, w14, #2
	str	w15, [x10, w14, uxtw]
	b	LBB125_796
LBB125_799:
Lloh827:
	adrp	x8, _stream@PAGE
Lloh828:
	ldr	w0, [x8, _stream@PAGEOFF]
LBB125_800:
	add	x10, x0, w1, sxtw
	mov	w8, #21                         ; =0x15
	adrp	x9, _data_id@PAGE
	add	w11, w1, w26
	adrp	x12, _stream_used@PAGE
Lloh829:
	adrp	x2, _D3D__RenderState@GOTPAGE
	stp	w8, w26, [x10]
	ldr	w8, [x9, _data_id@PAGEOFF]
	str	w11, [x12, _stream_used@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x9, _data_id@PAGEOFF]
	stp	w8, w24, [x10, #8]
	str	w25, [x10, #16]
Lloh830:
	ldr	w2, [x2, _D3D__RenderState@GOTPAGEOFF]
	cbz	w25, LBB125_810
; %bb.801:
	and	w9, w25, #0x3
	cmp	w25, #4
	b.hs	LBB125_803
; %bb.802:
	mov	w11, wzr
	b	LBB125_807
LBB125_803:
	and	w12, w25, #0xfffffffc
	add	w13, w1, w0
	add	x14, sp, #1632
	mov	w11, wzr
	neg	w12, w12
	add	w13, w13, #84
	add	w14, w14, #1
Lloh831:
	adrp	x15, _device@PAGE+1396
Lloh832:
	add	x15, x15, _device@PAGEOFF+1396
LBB125_804:                             ; =>This Inner Loop Header: Depth=1
	sub	w16, w14, #1
	sub	w17, w13, #64
	sub	w11, w11, #4
	cmp	w12, w11
	ldrb	w16, [x16]
	lsl	w0, w16, #4
	str	w0, [x17]
	sub	w17, w13, #44
	ldr	q0, [x15, x16, lsl #4]
	sub	w16, w13, #60
	str	q0, [x16]
	ldrb	w16, [x14]
	lsl	w0, w16, #4
	str	w0, [x17]
	add	w17, w14, #1
	ldr	q0, [x15, x16, lsl #4]
	sub	w16, w13, #40
	str	q0, [x16]
	ldrb	w16, [x17]
	sub	w17, w13, #24
	lsl	w0, w16, #4
	str	w0, [x17]
	add	w17, w14, #2
	ldr	q0, [x15, x16, lsl #4]
	sub	w16, w13, #20
	add	w14, w14, #4
	str	q0, [x16]
	ldrb	w16, [x17]
	sub	w17, w13, #4
	lsl	w0, w16, #4
	str	w0, [x17]
	ldr	q0, [x15, x16, lsl #4]
	str	q0, [x13]
	add	w13, w13, #80
	b.ne	LBB125_804
; %bb.805:
	cbz	w9, LBB125_810
; %bb.806:
	neg	w11, w11
LBB125_807:
	add	x12, sp, #1632
	mov	w13, #20                        ; =0x14
	add	x10, x10, #20
Lloh833:
	adrp	x16, _device@PAGE
Lloh834:
	add	x16, x16, _device@PAGEOFF
	smaddl	x15, w11, w13, x10
	ldrb	w14, [x12, w11, sxtw]
	cmp	w9, #1
	add	x16, x16, x14, lsl #4
	lsl	w14, w14, #4
	add	x16, x16, #1396
	str	w14, [x15]
	ldr	q0, [x16]
	stur	q0, [x15, #4]
	b.eq	LBB125_810
; %bb.808:
	add	w14, w11, #1
	cmp	w9, #2
	smaddl	x13, w14, w13, x10
	ldrb	w12, [x12, w14, sxtw]
Lloh835:
	adrp	x14, _device@PAGE
Lloh836:
	add	x14, x14, _device@PAGEOFF
	add	x14, x14, x12, lsl #4
	lsl	w12, w12, #4
	add	x14, x14, #1396
	str	w12, [x13]
	ldr	q0, [x14]
	stur	q0, [x13, #4]
	b.eq	LBB125_810
; %bb.809:
	add	w9, w11, #2
	add	x11, sp, #1632
	mov	w12, #20                        ; =0x14
	ldrb	w11, [x11, w9, sxtw]
	smaddl	x9, w9, w12, x10
Lloh837:
	adrp	x10, _device@PAGE
Lloh838:
	add	x10, x10, _device@PAGEOFF
	add	x10, x10, x11, lsl #4
	lsl	w11, w11, #4
	add	x10, x10, #1396
	str	w11, [x9]
	ldr	q0, [x10]
	stur	q0, [x9, #4]
LBB125_810:
Lloh839:
	adrp	x9, _stats@PAGE+56
Lloh840:
	add	x9, x9, _stats@PAGEOFF+56
	adrp	x12, _puts_this_frame@PAGE+12
	add	x12, x12, _puts_this_frame@PAGEOFF+12
	ldr	x10, [x9]
	ldr	w11, [x9, #44]
	str	x8, [x12]
	add	x10, x10, w23, uxtw
	add	w11, w11, #1
	str	x10, [x9]
	str	w11, [x9, #44]
LBB125_811:
	ldr	w9, [x20, _constants_serial@PAGEOFF]
	mov	w10, #1                         ; =0x1
Lloh841:
	adrp	x11, _puts_this_frame@PAGE
Lloh842:
	add	x11, x11, _puts_this_frame@PAGEOFF
	str	w9, [x11, #8]
	str	w10, [x11]
LBB125_812:
Lloh843:
	adrp	x9, _device@PAGE+4468
Lloh844:
	add	x9, x9, _device@PAGEOFF+4468
	ldr	w10, [x2, #424]
Lloh845:
	adrp	x11, _ui_offset@PAGE
	fmov	s0, #1.00000000
Lloh846:
	adrp	x20, _plasma_draw@PAGE+4
Lloh847:
	add	x20, x20, _plasma_draw@PAGEOFF+4
	movi	v4.2d, #0000000000000000
	ldp	q1, q2, [x9]
	add	x9, sp, #1632
	fmov	s5, w10
Lloh848:
	ldr	s3, [x11, _ui_offset@PAGEOFF]
	cmp	w10, #0
	sub	x10, x29, #208
	stp	q1, q2, [x9, #768]
	add	x9, sp, #336
	scvtf	s1, s3
	str	xzr, [x10, #88]
	str	x8, [x9, #800]
Lloh849:
	adrp	x8, _plasma_draw@PAGE
	fcsel	s0, s0, s5, eq
	stur	q4, [x10, #40]
	stur	q4, [x10, #56]
Lloh850:
	ldr	w8, [x8, _plasma_draw@PAGEOFF]
	stur	q4, [x10, #72]
	stp	s0, s1, [x29, #-176]
	cbz	w8, LBB125_814
; %bb.813:
	ldp	q2, q3, [x20]
	sub	x8, x29, #208
	ldr	q4, [x20, #32]
	stur	q2, [x8, #48]
	stp	q3, q4, [x10, #64]
LBB125_814:
Lloh851:
	adrp	x8, _puts_this_frame@PAGE+4
Lloh852:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+4]
	cbz	w8, LBB125_837
; %bb.815:
Lloh853:
	adrp	x8, _puts_this_frame@PAGE+28
	ldur	w9, [x29, #-208]
Lloh854:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+28]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.816:
Lloh855:
	adrp	x8, _puts_this_frame@PAGE+32
	ldur	w9, [x29, #-204]
Lloh856:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+32]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.817:
Lloh857:
	adrp	x8, _puts_this_frame@PAGE+36
	ldur	w9, [x29, #-200]
Lloh858:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+36]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.818:
Lloh859:
	adrp	x8, _puts_this_frame@PAGE+40
	ldur	w9, [x29, #-196]
Lloh860:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+40]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.819:
Lloh861:
	adrp	x8, _puts_this_frame@PAGE+44
	ldur	w9, [x29, #-192]
Lloh862:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+44]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.820:
Lloh863:
	adrp	x8, _puts_this_frame@PAGE+48
	ldur	w9, [x29, #-188]
Lloh864:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+48]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.821:
Lloh865:
	adrp	x8, _puts_this_frame@PAGE+52
	ldur	w9, [x29, #-184]
Lloh866:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+52]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.822:
	movi	v2.2d, #0000000000000000
	ldur	w8, [x29, #-180]
	mov	v2.s[0], w8
	fmov	w8, s0
	mov	v2.s[1], w8
	fmov	w8, s1
	mov	v2.s[2], w8
Lloh867:
	adrp	x8, _puts_this_frame@PAGE+56
Lloh868:
	add	x8, x8, _puts_this_frame@PAGEOFF+56
	ldr	q0, [x8]
	cmeq	v0.4s, v0.4s, v2.4s
	addp	d0, v0.2d
	fmov	x9, d0
	cmn	x9, #2
	b.ne	LBB125_837
; %bb.823:
	ldr	w8, [x8, #16]
	cbnz	w8, LBB125_837
; %bb.824:
Lloh869:
	adrp	x8, _puts_this_frame@PAGE+76
	ldur	w9, [x29, #-160]
Lloh870:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+76]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.825:
Lloh871:
	adrp	x8, _puts_this_frame@PAGE+80
	ldur	w9, [x29, #-156]
Lloh872:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+80]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.826:
Lloh873:
	adrp	x8, _puts_this_frame@PAGE+84
	ldur	w9, [x29, #-152]
Lloh874:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+84]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.827:
Lloh875:
	adrp	x8, _puts_this_frame@PAGE+88
	ldur	w9, [x29, #-148]
Lloh876:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+88]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.828:
Lloh877:
	adrp	x8, _puts_this_frame@PAGE+92
	ldur	w9, [x29, #-144]
Lloh878:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+92]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.829:
Lloh879:
	adrp	x8, _puts_this_frame@PAGE+96
	ldur	w9, [x29, #-140]
Lloh880:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+96]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.830:
Lloh881:
	adrp	x8, _puts_this_frame@PAGE+100
	ldur	w9, [x29, #-136]
Lloh882:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+100]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.831:
Lloh883:
	adrp	x8, _puts_this_frame@PAGE+104
	ldur	w9, [x29, #-132]
Lloh884:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+104]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.832:
Lloh885:
	adrp	x8, _puts_this_frame@PAGE+108
	ldur	w9, [x29, #-128]
Lloh886:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+108]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.833:
Lloh887:
	adrp	x8, _puts_this_frame@PAGE+112
	ldur	w9, [x29, #-124]
Lloh888:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+112]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.834:
Lloh889:
	adrp	x8, _puts_this_frame@PAGE+116
	ldur	w9, [x29, #-120]
Lloh890:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+116]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.835:
Lloh891:
	adrp	x8, _puts_this_frame@PAGE+120
	ldur	w9, [x29, #-116]
Lloh892:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+120]
	cmp	w8, w9
	b.ne	LBB125_837
; %bb.836:
Lloh893:
	adrp	x8, _puts_this_frame@PAGE+20
Lloh894:
	add	x8, x8, _puts_this_frame@PAGEOFF+20
Lloh895:
	ldr	x8, [x8]
	b	LBB125_838
LBB125_837:
	ldp	q0, q1, [x10, #64]
Lloh896:
	adrp	x23, _puts_this_frame@PAGE+4
Lloh897:
	add	x23, x23, _puts_this_frame@PAGEOFF+4
	ldp	q2, q3, [x10, #32]
	sub	x0, x29, #208
	mov	w1, #96                         ; =0x60
	stur	q0, [x23, #88]
	stur	q1, [x23, #104]
	ldp	q0, q1, [x10]
	stur	q2, [x23, #56]
	stur	q3, [x23, #72]
	stur	q0, [x23, #24]
	stur	q1, [x23, #40]
	bl	_vk_data_put
	adrp	x9, _stats@PAGE+64
	mov	w8, w0
	mov	w11, #1                         ; =0x1
	ldr	x10, [x9, _stats@PAGEOFF+64]
	str	x8, [x23, #16]
	str	w11, [x23]
	add	x10, x10, #96
	str	x10, [x9, _stats@PAGEOFF+64]
LBB125_838:
	add	x9, sp, #336
	add	x0, sp, #1632
	mov	w1, #768                        ; =0x300
	add	x23, sp, #1632
	str	x8, [x9, #808]
	bl	_bzero
Lloh898:
	adrp	x10, _D3D__RenderState@GOTPAGE
	movi	v5.2d, #0x0000ff000000ff
	mov	w8, #1132396544                 ; =0x437f0000
	add	x9, x23, #128
	add	x12, sp, #1632
Lloh899:
	adrp	x13, _D3D__TextureState@GOTPAGE
Lloh900:
	ldr	w10, [x10, _D3D__RenderState@GOTPAGEOFF]
Lloh901:
	adrp	x11, _texture_clip.1@PAGE
	ldur	q6, [x10, #40]
	ldr	d29, [x10, #176]
	ushr	v0.4s, v6.4s, #8
	ushr	v7.4s, v6.4s, #16
	and	v1.16b, v0.16b, v5.16b
	bic	v7.4s, #255, lsl #8
	dup	v0.4s, w8
Lloh902:
	adrp	x8, lCPI125_0@PAGE
	ucvtf	v1.4s, v1.4s
	ucvtf	v7.4s, v7.4s
	fdiv	v2.4s, v1.4s, v0.4s
	fdiv	v1.4s, v7.4s, v0.4s
	ushr	v7.4s, v6.4s, #24
	and	v6.16b, v6.16b, v5.16b
	ucvtf	v7.4s, v7.4s
	ucvtf	v6.4s, v6.4s
	fdiv	v4.4s, v7.4s, v0.4s
	ldur	q7, [x10, #72]
	ushr	v16.4s, v7.4s, #8
	ushr	v20.4s, v7.4s, #16
	bic	v20.4s, #255, lsl #8
	fdiv	v3.4s, v6.4s, v0.4s
	and	v6.16b, v16.16b, v5.16b
	ucvtf	v6.4s, v6.4s
	fdiv	v17.4s, v6.4s, v0.4s
	ucvtf	v6.4s, v20.4s
	fdiv	v16.4s, v6.4s, v0.4s
	ushr	v6.4s, v7.4s, #24
	ucvtf	v6.4s, v6.4s
	fdiv	v19.4s, v6.4s, v0.4s
	and	v6.16b, v7.16b, v5.16b
	ldur	q7, [x10, #56]
	ushr	v20.4s, v7.4s, #8
	ucvtf	v6.4s, v6.4s
	ushr	v24.4s, v7.4s, #16
	bic	v24.4s, #255, lsl #8
	fdiv	v18.4s, v6.4s, v0.4s
	and	v6.16b, v20.16b, v5.16b
	ucvtf	v6.4s, v6.4s
	fdiv	v21.4s, v6.4s, v0.4s
	ucvtf	v6.4s, v24.4s
	st4	{ v16.4s, v17.4s, v18.4s, v19.4s }, [x9]
	fdiv	v20.4s, v6.4s, v0.4s
	ushr	v6.4s, v7.4s, #24
	ucvtf	v6.4s, v6.4s
	fdiv	v23.4s, v6.4s, v0.4s
	and	v6.16b, v7.16b, v5.16b
	ldur	q7, [x10, #88]
	ushr	v24.4s, v7.4s, #8
	ucvtf	v6.4s, v6.4s
	fdiv	v22.4s, v6.4s, v0.4s
	and	v6.16b, v24.16b, v5.16b
	ushr	v24.4s, v7.4s, #16
	and	v5.16b, v7.16b, v5.16b
	ucvtf	v6.4s, v6.4s
	bic	v24.4s, #255, lsl #8
	ucvtf	v5.4s, v5.4s
	fdiv	v26.4s, v6.4s, v0.4s
	ucvtf	v6.4s, v24.4s
	fdiv	v25.4s, v6.4s, v0.4s
	ushr	v6.4s, v7.4s, #24
Lloh903:
	ldr	q7, [x8, lCPI125_0@PAGEOFF]
Lloh904:
	adrp	x8, lCPI125_1@PAGE
Lloh905:
	ldr	q24, [x8, lCPI125_1@PAGEOFF]
	add	x8, sp, #1632
	ucvtf	v6.4s, v6.4s
	st4	{ v1.4s, v2.4s, v3.4s, v4.4s }, [x8], #64
	ldr	d2, [x10, #336]
	ldr	s3, [x10, #344]
	st4	{ v20.4s, v21.4s, v22.4s, v23.4s }, [x8]
	add	x8, x23, #192
	fdiv	v28.4s, v6.4s, v0.4s
	ldur	d6, [x10, #172]
	ldr	b1, [x10, #244]
	str	d2, [x12, #304]
	str	s3, [sp, #1944]
	dup	v6.4s, v6.s[0]
	ucvtf	s1, s1
	ushl	v6.4s, v6.4s, v7.4s
	fdiv	v27.4s, v5.4s, v0.4s
	and	v5.16b, v6.16b, v24.16b
	dup	v6.4s, v29.s[0]
	ldr	d29, [x10, #472]
Lloh906:
	adrp	x10, _texture_clip.0@PAGE
	dup	v29.4s, v29.s[0]
	ucvtf	v5.4s, v5.4s
	ushl	v6.4s, v6.4s, v7.4s
	ushl	v7.4s, v29.4s, v7.4s
	fdiv	v5.4s, v5.4s, v0.4s
	and	v6.16b, v6.16b, v24.16b
	st4	{ v25.4s, v26.4s, v27.4s, v28.4s }, [x8]
	and	v7.16b, v7.16b, v24.16b
	ucvtf	v6.4s, v6.4s
	ucvtf	v7.4s, v7.4s
	fdiv	v6.4s, v6.4s, v0.4s
	fdiv	v0.4s, v7.4s, v0.4s
	stp	q5, q6, [x12, #256]
	str	q0, [x12, #288]
Lloh907:
	ldr	w13, [x13, _D3D__TextureState@GOTPAGEOFF]
	str	s1, [sp, #1952]
Lloh908:
	ldr	s6, [x10, _texture_clip.0@PAGEOFF]
Lloh909:
	ldr	s7, [x11, _texture_clip.1@PAGEOFF]
	add	x8, x13, #344
	ldur	q0, [x13, #88]
	ldur	q2, [x13, #216]
	add	x9, x13, #472
	ldr	d18, [x13, #104]
	ldr	q3, [x8]
Lloh910:
	adrp	x8, _texture_clip.2@PAGE
	rev64	v1.4s, v0.4s
	ldr	q5, [x9]
	rev64	v4.4s, v2.4s
	str	s6, [sp, #1956]
Lloh911:
	ldr	s16, [x8, _texture_clip.2@PAGEOFF]
	rev64	v17.4s, v3.4s
	str	s7, [sp, #1960]
	rev64	v19.4s, v5.4s
	str	d18, [x12, #400]
	mov	v1.d[0], v0.d[0]
	ldr	d0, [x13, #232]
	mov	v4.d[0], v2.d[0]
	ldr	d2, [x13, #360]
	str	s16, [sp, #1964]
	mov	v17.d[0], v3.d[0]
	mov	v19.d[0], v5.d[0]
	str	d0, [x12, #416]
	str	d2, [x12, #432]
	ldr	d0, [x13, #488]
	stp	q1, q4, [x12, #336]
	ldp	q1, q2, [sp, #304]
	ldp	q3, q4, [sp, #272]
	stp	q17, q19, [x12, #368]
	str	d0, [x12, #448]
	stp	q3, q4, [x12, #464]
	stp	q1, q2, [x12, #496]
	cbz	w19, LBB125_840
; %bb.839:
Lloh912:
	adrp	x8, _device@PAGE+1620
Lloh913:
	add	x8, x8, _device@PAGEOFF+1620
	ldr	q0, [x8]
	ldp	q1, q2, [x8, #48]
	stp	q0, q1, [x12, #528]
	ldp	q3, q0, [x8, #80]
	stp	q2, q3, [x12, #560]
	ldp	q1, q2, [x8, #112]
	stp	q0, q1, [x12, #592]
	ldp	q3, q0, [x8, #144]
	stp	q2, q3, [x12, #624]
	ldp	q1, q2, [x8, #176]
	ldr	q3, [x8, #208]
	stp	q0, q1, [x12, #656]
	stp	q2, q3, [x12, #688]
LBB125_840:
Lloh914:
	adrp	x8, _plasma_draw@PAGE
Lloh915:
	ldr	w8, [x8, _plasma_draw@PAGEOFF]
	cbz	w8, LBB125_842
; %bb.841:
	ldp	q0, q1, [x20]
	add	x8, sp, #1632
	ldr	q2, [x20, #32]
	stp	q0, q1, [x8, #720]
	str	q2, [x8, #752]
LBB125_842:
Lloh916:
	adrp	x8, _puts_this_frame@PAGE+124
Lloh917:
	ldr	w8, [x8, _puts_this_frame@PAGEOFF+124]
	cbz	w8, LBB125_847
; %bb.843:
	mov	w8, wzr
	add	x9, sp, #1632
Lloh918:
	adrp	x10, _puts_this_frame@PAGE
Lloh919:
	add	x10, x10, _puts_this_frame@PAGEOFF
	.p2align	4, , 8
LBB125_844:                             ; =>This Inner Loop Header: Depth=1
	add	w11, w10, w8
	add	w12, w9, w8
	add	w11, w11, #128
	ldr	q1, [x12]
	ldr	q0, [x11]
	cmeq	v0.4s, v0.4s, v1.4s
	mvn	v0.16b, v0.16b
	addp	d0, v0.2d
	fmov	x11, d0
	cbnz	x11, LBB125_847
; %bb.845:                              ;   in Loop: Header=BB125_844 Depth=1
	add	w8, w8, #16
	cmp	w8, #768
	b.ne	LBB125_844
; %bb.846:
Lloh920:
	adrp	x8, _puts_this_frame@PAGE+896
Lloh921:
	add	x8, x8, _puts_this_frame@PAGEOFF+896
Lloh922:
	ldr	x8, [x8]
	b	LBB125_848
LBB125_847:
Lloh923:
	adrp	x19, _puts_this_frame@PAGE+124
Lloh924:
	add	x19, x19, _puts_this_frame@PAGEOFF+124
	add	x0, x19, #4
	add	x1, sp, #1632
	mov	w2, #768                        ; =0x300
	bl	_memcpy
	add	x0, sp, #1632
	mov	w1, #768                        ; =0x300
	bl	_vk_data_put
	adrp	x9, _stats@PAGE+72
	mov	w11, #1                         ; =0x1
	mov	w8, w0
	ldr	x10, [x9, _stats@PAGEOFF+72]
	str	w11, [x19], #-124
	str	x8, [x19, #896]
	add	x10, x10, #768
	str	x10, [x9, _stats@PAGEOFF+72]
LBB125_848:
Lloh925:
	adrp	x9, _stream_used@PAGE
	adrp	x19, _stream@PAGE
	mov	w10, #-4194305                  ; =0xffbfffff
Lloh926:
	ldr	w1, [x9, _stream_used@PAGEOFF]
	ldr	w0, [x19, _stream@PAGEOFF]
	sub	w9, w1, #1023, lsl #12          ; =4190208
	sub	w9, w9, #4009
	add	w9, w9, #872
	cmp	w9, w10
	add	x9, sp, #336
	str	x8, [x9, #816]
	b.hs	LBB125_850
; %bb.849:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x10, _stream_index@PAGE
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	ldr	w8, [x10, _stream_index@PAGEOFF]
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh927:
	adrp	x9, _streams@PAGE
Lloh928:
	add	x9, x9, _streams@PAGEOFF
	add	x0, x9, x8, lsl #22
	str	w8, [x10, _stream_index@PAGEOFF]
	str	w0, [x19, _stream@PAGEOFF]
LBB125_850:
	add	w9, w1, #960
	adrp	x10, _stream_used@PAGE
	mov	x8, #7                          ; =0x7
	add	x0, x0, w1, sxtw
	movk	x8, #960, lsl #32
	add	x1, sp, #608
	str	w9, [x10, _stream_used@PAGEOFF]
	add	x9, sp, #336
	mov	w2, #960                        ; =0x3c0
	str	x8, [x0]
	str	x8, [x9, #272]
	bl	_memcpy
	cbz	w27, LBB125_852
; %bb.851:
	adrp	x8, _stats@PAGE+4
	ldr	w9, [x8, _stats@PAGEOFF+4]
	add	w9, w9, #1
	str	w9, [x8, _stats@PAGEOFF+4]
	b	LBB125_210
LBB125_852:
	adrp	x8, _stats@PAGE
	ldr	w9, [x8, _stats@PAGEOFF]
	add	w9, w9, #1
	str	w9, [x8, _stats@PAGEOFF]
	b	LBB125_210
LBB125_853:
Lloh929:
	adrp	x8, _puts_this_frame@PAGE+1164
Lloh930:
	add	x8, x8, _puts_this_frame@PAGEOFF+1164
Lloh931:
	ldr	x8, [x8]
	b	LBB125_762
LBB125_854:
Lloh932:
	adrp	x8, _puts_this_frame@PAGE+1164
Lloh933:
	add	x8, x8, _puts_this_frame@PAGEOFF+1164
Lloh934:
	ldr	x14, [x8]
	b	LBB125_718
	.loh AdrpLdr	Lloh605, Lloh606
	.loh AdrpAdd	Lloh607, Lloh608
	.loh AdrpAdd	Lloh609, Lloh610
	.loh AdrpAdd	Lloh611, Lloh612
	.loh AdrpLdr	Lloh613, Lloh614
	.loh AdrpAdd	Lloh615, Lloh616
	.loh AdrpLdr	Lloh619, Lloh620
	.loh AdrpLdrGot	Lloh617, Lloh618
	.loh AdrpLdr	Lloh622, Lloh624
	.loh AdrpLdr	Lloh621, Lloh623
	.loh AdrpLdrGot	Lloh625, Lloh626
	.loh AdrpAdd	Lloh627, Lloh628
	.loh AdrpAdd	Lloh629, Lloh630
	.loh AdrpLdr	Lloh631, Lloh632
	.loh AdrpAdd	Lloh633, Lloh634
	.loh AdrpLdr	Lloh635, Lloh636
	.loh AdrpLdrGot	Lloh637, Lloh638
	.loh AdrpLdrGot	Lloh639, Lloh640
	.loh AdrpLdr	Lloh641, Lloh642
	.loh AdrpLdr	Lloh643, Lloh644
	.loh AdrpAdd	Lloh645, Lloh646
	.loh AdrpAdd	Lloh652, Lloh653
	.loh AdrpAdd	Lloh650, Lloh651
	.loh AdrpAdd	Lloh648, Lloh649
	.loh AdrpAdrp	Lloh647, Lloh650
	.loh AdrpAdd	Lloh658, Lloh659
	.loh AdrpAdd	Lloh656, Lloh657
	.loh AdrpAdd	Lloh654, Lloh655
	.loh AdrpAdd	Lloh668, Lloh669
	.loh AdrpAdd	Lloh665, Lloh666
	.loh AdrpLdrGot	Lloh664, Lloh667
	.loh AdrpAdd	Lloh662, Lloh663
	.loh AdrpAdd	Lloh660, Lloh661
	.loh AdrpLdr	Lloh670, Lloh671
	.loh AdrpLdr	Lloh672, Lloh673
	.loh AdrpAdd	Lloh674, Lloh675
	.loh AdrpLdr	Lloh676, Lloh677
	.loh AdrpLdrGot	Lloh678, Lloh679
	.loh AdrpLdrGot	Lloh680, Lloh681
	.loh AdrpAdd	Lloh682, Lloh683
	.loh AdrpLdr	Lloh684, Lloh685
	.loh AdrpAdd	Lloh686, Lloh687
	.loh AdrpLdr	Lloh688, Lloh689
	.loh AdrpAdd	Lloh690, Lloh691
	.loh AdrpLdr	Lloh694, Lloh695
	.loh AdrpAdd	Lloh692, Lloh693
	.loh AdrpAdd	Lloh696, Lloh697
	.loh AdrpAdd	Lloh698, Lloh699
	.loh AdrpLdr	Lloh700, Lloh701
	.loh AdrpAdd	Lloh704, Lloh705
	.loh AdrpLdrGot	Lloh702, Lloh703
	.loh AdrpLdr	Lloh712, Lloh713
	.loh AdrpAdrp	Lloh709, Lloh712
	.loh AdrpLdr	Lloh709, Lloh711
	.loh AdrpLdr	Lloh708, Lloh710
	.loh AdrpAdd	Lloh706, Lloh707
	.loh AdrpLdr	Lloh718, Lloh721
	.loh AdrpLdr	Lloh716, Lloh720
	.loh AdrpLdr	Lloh715, Lloh719
	.loh AdrpAdrp	Lloh714, Lloh718
	.loh AdrpLdr	Lloh714, Lloh717
	.loh AdrpLdr	Lloh722, Lloh723
	.loh AdrpAdd	Lloh724, Lloh725
	.loh AdrpLdr	Lloh726, Lloh727
	.loh AdrpAdd	Lloh728, Lloh729
	.loh AdrpLdr	Lloh730, Lloh731
	.loh AdrpAdd	Lloh732, Lloh733
	.loh AdrpAdd	Lloh734, Lloh735
	.loh AdrpAdd	Lloh736, Lloh737
	.loh AdrpAdd	Lloh738, Lloh739
	.loh AdrpLdr	Lloh742, Lloh743
	.loh AdrpAdrp	Lloh740, Lloh742
	.loh AdrpLdr	Lloh740, Lloh741
	.loh AdrpAdd	Lloh744, Lloh745
	.loh AdrpLdr	Lloh746, Lloh747
	.loh AdrpAdd	Lloh748, Lloh749
	.loh AdrpAdd	Lloh752, Lloh753
	.loh AdrpAdd	Lloh750, Lloh751
	.loh AdrpAdd	Lloh754, Lloh755
	.loh AdrpLdr	Lloh756, Lloh757
	.loh AdrpLdr	Lloh758, Lloh759
	.loh AdrpAdd	Lloh760, Lloh761
	.loh AdrpLdr	Lloh762, Lloh763
	.loh AdrpAdd	Lloh764, Lloh765
	.loh AdrpAdd	Lloh766, Lloh767
	.loh AdrpAdd	Lloh768, Lloh769
	.loh AdrpAdd	Lloh770, Lloh771
	.loh AdrpAdd	Lloh772, Lloh773
	.loh AdrpAdd	Lloh774, Lloh775
	.loh AdrpAdd	Lloh776, Lloh777
	.loh AdrpAdd	Lloh778, Lloh779
	.loh AdrpAdd	Lloh780, Lloh781
	.loh AdrpAdd	Lloh782, Lloh783
	.loh AdrpAdd	Lloh784, Lloh785
	.loh AdrpLdr	Lloh786, Lloh787
	.loh AdrpAdd	Lloh788, Lloh789
	.loh AdrpAdd	Lloh790, Lloh791
	.loh AdrpAdd	Lloh792, Lloh793
	.loh AdrpAdd	Lloh794, Lloh795
	.loh AdrpAdd	Lloh796, Lloh797
	.loh AdrpLdr	Lloh798, Lloh799
	.loh AdrpAddLdr	Lloh800, Lloh801, Lloh802
	.loh AdrpAdd	Lloh803, Lloh804
	.loh AdrpAdd	Lloh805, Lloh806
	.loh AdrpLdr	Lloh807, Lloh808
	.loh AdrpLdr	Lloh809, Lloh810
	.loh AdrpLdrGot	Lloh811, Lloh812
	.loh AdrpLdr	Lloh813, Lloh814
	.loh AdrpLdr	Lloh815, Lloh816
	.loh AdrpAdd	Lloh817, Lloh818
	.loh AdrpLdrGot	Lloh823, Lloh824
	.loh AdrpAdd	Lloh821, Lloh822
	.loh AdrpAdd	Lloh819, Lloh820
	.loh AdrpAdd	Lloh825, Lloh826
	.loh AdrpLdr	Lloh827, Lloh828
	.loh AdrpLdrGot	Lloh829, Lloh830
	.loh AdrpAdd	Lloh831, Lloh832
	.loh AdrpAdd	Lloh833, Lloh834
	.loh AdrpAdd	Lloh835, Lloh836
	.loh AdrpAdd	Lloh837, Lloh838
	.loh AdrpAdd	Lloh839, Lloh840
	.loh AdrpAdd	Lloh841, Lloh842
	.loh AdrpLdr	Lloh849, Lloh850
	.loh AdrpAdd	Lloh846, Lloh847
	.loh AdrpLdr	Lloh845, Lloh848
	.loh AdrpAdd	Lloh843, Lloh844
	.loh AdrpLdr	Lloh851, Lloh852
	.loh AdrpLdr	Lloh853, Lloh854
	.loh AdrpLdr	Lloh855, Lloh856
	.loh AdrpLdr	Lloh857, Lloh858
	.loh AdrpLdr	Lloh859, Lloh860
	.loh AdrpLdr	Lloh861, Lloh862
	.loh AdrpLdr	Lloh863, Lloh864
	.loh AdrpLdr	Lloh865, Lloh866
	.loh AdrpAdd	Lloh867, Lloh868
	.loh AdrpLdr	Lloh869, Lloh870
	.loh AdrpLdr	Lloh871, Lloh872
	.loh AdrpLdr	Lloh873, Lloh874
	.loh AdrpLdr	Lloh875, Lloh876
	.loh AdrpLdr	Lloh877, Lloh878
	.loh AdrpLdr	Lloh879, Lloh880
	.loh AdrpLdr	Lloh881, Lloh882
	.loh AdrpLdr	Lloh883, Lloh884
	.loh AdrpLdr	Lloh885, Lloh886
	.loh AdrpLdr	Lloh887, Lloh888
	.loh AdrpLdr	Lloh889, Lloh890
	.loh AdrpLdr	Lloh891, Lloh892
	.loh AdrpAddLdr	Lloh893, Lloh894, Lloh895
	.loh AdrpAdd	Lloh896, Lloh897
	.loh AdrpLdr	Lloh910, Lloh911
	.loh AdrpLdr	Lloh906, Lloh908
	.loh AdrpLdr	Lloh904, Lloh905
	.loh AdrpAdrp	Lloh902, Lloh904
	.loh AdrpLdr	Lloh902, Lloh903
	.loh AdrpLdr	Lloh901, Lloh909
	.loh AdrpLdrGot	Lloh899, Lloh907
	.loh AdrpLdrGot	Lloh898, Lloh900
	.loh AdrpAdd	Lloh912, Lloh913
	.loh AdrpLdr	Lloh914, Lloh915
	.loh AdrpLdr	Lloh916, Lloh917
	.loh AdrpAdd	Lloh918, Lloh919
	.loh AdrpAddLdr	Lloh920, Lloh921, Lloh922
	.loh AdrpAdd	Lloh923, Lloh924
	.loh AdrpLdr	Lloh925, Lloh926
	.loh AdrpAdd	Lloh927, Lloh928
	.loh AdrpAddLdr	Lloh929, Lloh930, Lloh931
	.loh AdrpAddLdr	Lloh932, Lloh933, Lloh934
	.section	__TEXT,__const
	.p2align	2, 0x0
LJTI125_0:
	.long	LBB125_575-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_585-Ltmp2
	.long	LBB125_581-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_575-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_585-Ltmp2
	.long	LBB125_581-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_575-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_585-Ltmp2
	.long	LBB125_581-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_613-Ltmp2
	.long	LBB125_575-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_570-Ltmp2
	.long	LBB125_585-Ltmp2
	.long	LBB125_581-Ltmp2
	.p2align	2, 0x0
LJTI125_1:
	.long	LBB125_579-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_587-Ltmp3
	.long	LBB125_583-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_579-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_587-Ltmp3
	.long	LBB125_583-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_579-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_587-Ltmp3
	.long	LBB125_583-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_614-Ltmp3
	.long	LBB125_579-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_565-Ltmp3
	.long	LBB125_587-Ltmp3
	.long	LBB125_583-Ltmp3
	.p2align	2, 0x0
LJTI125_2:
	.long	LBB125_621-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_625-Ltmp4
	.long	LBB125_623-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_621-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_625-Ltmp4
	.long	LBB125_623-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_621-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_625-Ltmp4
	.long	LBB125_623-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_639-Ltmp4
	.long	LBB125_621-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_561-Ltmp4
	.long	LBB125_625-Ltmp4
	.long	LBB125_623-Ltmp4
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_D3DDevice_DrawIndexedVertices  ; -- Begin function D3DDevice_DrawIndexedVertices
	.p2align	4
_D3DDevice_DrawIndexedVertices:         ; @D3DDevice_DrawIndexedVertices
; %bb.0:
	cbz	w1, LBB126_3
; %bb.1:
	mov	x3, x2
	cbz	w3, LBB126_3
; %bb.2:
	mov	w2, wzr
	mov	w4, wzr
	b	_draw_make
LBB126_3:
	ret
                                        ; -- End function
	.globl	_D3DDevice_Begin                ; -- Begin function D3DDevice_Begin
	.p2align	4
_D3DDevice_Begin:                       ; @D3DDevice_Begin
; %bb.0:
	mov	w8, #1                          ; =0x1
Lloh935:
	adrp	x9, _device@PAGE+4888
Lloh936:
	add	x9, x9, _device@PAGEOFF+4888
	str	wzr, [x9, #12]
	stp	w8, w0, [x9]
	stp	wzr, wzr, [x9, #20]
	ret
	.loh AdrpAdd	Lloh935, Lloh936
                                        ; -- End function
	.globl	_D3DDevice_End                  ; -- Begin function D3DDevice_End
	.p2align	4
_D3DDevice_End:                         ; @D3DDevice_End
; %bb.0:
Lloh937:
	adrp	x8, _device@PAGE+4888
Lloh938:
	add	x8, x8, _device@PAGEOFF+4888
	ldr	w1, [x8, #12]
	str	wzr, [x8]
	cbz	w1, LBB128_2
; %bb.1:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
Lloh939:
	adrp	x8, _device@PAGE+4892
	mov	w2, #1                          ; =0x1
	mov	x3, xzr
	mov	w4, wzr
	mov	x29, sp
Lloh940:
	ldr	w0, [x8, _device@PAGEOFF+4892]
	bl	_draw_make
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
LBB128_2:
	adrp	x8, _device@PAGE+4900
	str	wzr, [x8, _device@PAGEOFF+4900]
	ret
	.loh AdrpAdd	Lloh937, Lloh938
	.loh AdrpLdr	Lloh939, Lloh940
                                        ; -- End function
	.globl	_D3DDevice_DrawVerticesImmediate ; -- Begin function D3DDevice_DrawVerticesImmediate
	.p2align	4
_D3DDevice_DrawVerticesImmediate:       ; @D3DDevice_DrawVerticesImmediate
; %bb.0:
	cmp	w3, #0
	and	w8, w1, #0xffff0001
	ccmp	w8, #1, #0, ne
	b.ne	LBB129_45
; %bb.1:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	fmov	s0, w1
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
Lloh941:
	adrp	x24, _device@PAGE+4888
Lloh942:
	add	x24, x24, _device@PAGEOFF+4888
	mov	w8, #1                          ; =0x1
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	w20, w3
	mov	x23, x2
	mov	w19, w1
	ldr	w9, [x24, #16]
	cnt	v0.8b, v0.8b
	stp	w8, w0, [x24]
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	str	wzr, [x24, #12]
	stp	wzr, wzr, [x24, #20]
	addv	b0, v0.8b
	fmov	w25, s0
	mul	w26, w3, w25
	lsl	w8, w26, #2
	cmp	w8, w9
	b.ls	LBB129_6
; %bb.2:
	cmp	w9, #0
	mov	w10, #4096                      ; =0x1000
	csel	w9, w10, w9, eq
	.p2align	4, , 8
LBB129_3:                               ; =>This Inner Loop Header: Depth=1
	mov	w27, w9
	lsl	w9, w9, #1
	cmp	w27, w8
	b.lo	LBB129_3
; %bb.4:
Lloh943:
	adrp	x8, _device@PAGE+4896
	lsl	w1, w27, #2
Lloh944:
	ldr	w0, [x8, _device@PAGEOFF+4896]
	bl	_realloc
	cbz	w0, LBB129_59
; %bb.5:
Lloh945:
	adrp	x8, _device@PAGE+4896
Lloh946:
	add	x8, x8, _device@PAGEOFF+4896
	str	w0, [x8]
	str	w27, [x8, #8]
LBB129_6:
	adrp	x8, _device@PAGE+4916
	mov	w9, #1                          ; =0x1
	strb	wzr, [x8, _device@PAGEOFF+4916]
	tbz	w19, #1, LBB129_8
; %bb.7:
	adrp	x8, _device@PAGE+4917
	strb	w9, [x8, _device@PAGEOFF+4917]
	mov	w9, #2                          ; =0x2
LBB129_8:
Lloh947:
	adrp	x8, _device@PAGE
Lloh948:
	add	x8, x8, _device@PAGEOFF
	tbnz	w19, #2, LBB129_46
; %bb.9:
	tbnz	w19, #3, LBB129_47
LBB129_10:
	tbnz	w19, #4, LBB129_48
LBB129_11:
	tbnz	w19, #5, LBB129_49
LBB129_12:
	tbnz	w19, #6, LBB129_50
LBB129_13:
	tbnz	w19, #7, LBB129_51
LBB129_14:
	tbnz	w19, #8, LBB129_52
LBB129_15:
	tbnz	w19, #9, LBB129_53
LBB129_16:
	tbnz	w19, #10, LBB129_54
LBB129_17:
	tbnz	w19, #11, LBB129_55
LBB129_18:
	tbnz	w19, #12, LBB129_56
LBB129_19:
	tbnz	w19, #13, LBB129_57
LBB129_20:
	tbnz	w19, #14, LBB129_58
LBB129_21:
	cmp	w19, #8, lsl #12                ; =32768
	b.lo	LBB129_23
LBB129_22:
	add	x8, x8, w9, uxtw
	mov	w9, #4916                       ; =0x1334
	mov	w10, #15                        ; =0xf
	strb	w10, [x8, x9]
LBB129_23:
Lloh949:
	adrp	x27, _device@PAGE+4744
Lloh950:
	add	x27, x27, _device@PAGEOFF+4744
	mov	x1, x23
	lsl	w2, w26, #4
	ldr	w0, [x27, #152]
	stp	w19, w25, [x27, #164]
	bl	_memcpy
	sub	w9, w20, #1
	mov	w8, wzr
	mov	w10, wzr
	str	w20, [x27, #156]
	mul	w9, w25, w9
	lsl	w9, w9, #4
	add	x9, x23, w9, sxtw
	b	LBB129_25
	.p2align	4, , 8
LBB129_24:                              ;   in Loop: Header=BB129_25 Depth=1
	add	w8, w8, #8
	add	w27, w27, #128
	cmp	w8, #16
	b.eq	LBB129_41
LBB129_25:                              ; =>This Inner Loop Header: Depth=1
	lsr	w11, w19, w8
	tbz	w11, #0, LBB129_27
; %bb.26:                               ;   in Loop: Header=BB129_25 Depth=1
	lsl	w12, w10, #4
	add	w10, w10, #1
	ldr	q0, [x9, w12, sxtw]
	sub	w12, w27, #112
	str	q0, [x12]
LBB129_27:                              ;   in Loop: Header=BB129_25 Depth=1
	tbz	w11, #1, LBB129_29
; %bb.28:                               ;   in Loop: Header=BB129_25 Depth=1
	lsl	w12, w10, #4
	add	w10, w10, #1
	ldr	q0, [x9, w12, sxtw]
	sub	w12, w27, #96
	str	q0, [x12]
LBB129_29:                              ;   in Loop: Header=BB129_25 Depth=1
	tbz	w11, #2, LBB129_31
; %bb.30:                               ;   in Loop: Header=BB129_25 Depth=1
	lsl	w12, w10, #4
	add	w10, w10, #1
	ldr	q0, [x9, w12, sxtw]
	sub	w12, w27, #80
	str	q0, [x12]
LBB129_31:                              ;   in Loop: Header=BB129_25 Depth=1
	tbz	w11, #3, LBB129_33
; %bb.32:                               ;   in Loop: Header=BB129_25 Depth=1
	lsl	w12, w10, #4
	add	w10, w10, #1
	ldr	q0, [x9, w12, sxtw]
	sub	w12, w27, #64
	str	q0, [x12]
LBB129_33:                              ;   in Loop: Header=BB129_25 Depth=1
	tbz	w11, #4, LBB129_35
; %bb.34:                               ;   in Loop: Header=BB129_25 Depth=1
	lsl	w12, w10, #4
	add	w10, w10, #1
	ldr	q0, [x9, w12, sxtw]
	sub	w12, w27, #48
	str	q0, [x12]
LBB129_35:                              ;   in Loop: Header=BB129_25 Depth=1
	tbz	w11, #5, LBB129_37
; %bb.36:                               ;   in Loop: Header=BB129_25 Depth=1
	lsl	w12, w10, #4
	add	w10, w10, #1
	ldr	q0, [x9, w12, sxtw]
	sub	w12, w27, #32
	str	q0, [x12]
LBB129_37:                              ;   in Loop: Header=BB129_25 Depth=1
	tbz	w11, #6, LBB129_39
; %bb.38:                               ;   in Loop: Header=BB129_25 Depth=1
	lsl	w12, w10, #4
	add	w10, w10, #1
	ldr	q0, [x9, w12, sxtw]
	sub	w12, w27, #16
	str	q0, [x12]
LBB129_39:                              ;   in Loop: Header=BB129_25 Depth=1
	tbz	w11, #7, LBB129_24
; %bb.40:                               ;   in Loop: Header=BB129_25 Depth=1
	lsl	w11, w10, #4
	add	w10, w10, #1
	ldr	q0, [x9, w11, sxtw]
	str	q0, [x27]
	b	LBB129_24
LBB129_41:
	ldr	w1, [x24, #12]
	str	wzr, [x24]
	cbz	w1, LBB129_43
; %bb.42:
Lloh951:
	adrp	x8, _device@PAGE+4892
	mov	w2, #1                          ; =0x1
	mov	x3, xzr
	mov	w4, wzr
Lloh952:
	ldr	w0, [x8, _device@PAGEOFF+4892]
	bl	_draw_make
LBB129_43:
	adrp	x8, _device@PAGE+4900
	str	wzr, [x8, _device@PAGEOFF+4900]
LBB129_44:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
LBB129_45:
	ret
LBB129_46:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #2                         ; =0x2
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #3, LBB129_10
LBB129_47:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #3                         ; =0x3
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #4, LBB129_11
LBB129_48:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #4                         ; =0x4
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #5, LBB129_12
LBB129_49:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #5                         ; =0x5
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #6, LBB129_13
LBB129_50:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #6                         ; =0x6
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #7, LBB129_14
LBB129_51:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #7                         ; =0x7
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #8, LBB129_15
LBB129_52:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #8                         ; =0x8
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #9, LBB129_16
LBB129_53:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #9                         ; =0x9
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #10, LBB129_17
LBB129_54:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #10                        ; =0xa
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #11, LBB129_18
LBB129_55:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #11                        ; =0xb
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #12, LBB129_19
LBB129_56:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #12                        ; =0xc
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #13, LBB129_20
LBB129_57:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #13                        ; =0xd
	mov	w9, w10
	strb	w13, [x11, x12]
	tbz	w19, #14, LBB129_21
LBB129_58:
	add	w10, w9, #1
	add	x11, x8, w9, uxtw
	mov	w12, #4916                      ; =0x1334
	mov	w13, #14                        ; =0xe
	mov	w9, w10
	strb	w13, [x11, x12]
	cmp	w19, #8, lsl #12                ; =32768
	b.hs	LBB129_22
	b	LBB129_23
LBB129_59:
	adrp	x8, _device@PAGE+4888
	str	wzr, [x8, _device@PAGEOFF+4888]
	b	LBB129_44
	.loh AdrpAdd	Lloh941, Lloh942
	.loh AdrpLdr	Lloh943, Lloh944
	.loh AdrpAdd	Lloh945, Lloh946
	.loh AdrpAdd	Lloh947, Lloh948
	.loh AdrpAdd	Lloh949, Lloh950
	.loh AdrpLdr	Lloh951, Lloh952
                                        ; -- End function
	.globl	_D3DDevice_SetVertexData2f      ; -- Begin function D3DDevice_SetVertexData2f
	.p2align	4
_D3DDevice_SetVertexData2f:             ; @D3DDevice_SetVertexData2f
; %bb.0:
	sub	sp, sp, #176
	cmn	w0, #1
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	csel	w23, wzr, w0, eq
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
	cmp	w23, #15
	stp	x28, x27, [sp, #96]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	b.ls	LBB130_2
LBB130_1:
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB130_2:
Lloh953:
	adrp	x8, _device@PAGE+4888
Lloh954:
	adrp	x20, _device@PAGE
Lloh955:
	add	x20, x20, _device@PAGEOFF
Lloh956:
	ldr	w8, [x8, _device@PAGEOFF+4888]
	cbz	w8, LBB130_4
; %bb.3:
Lloh957:
	adrp	x8, _device@PAGE+4908
	mov	w9, #1                          ; =0x1
	lsl	w26, w9, w23
Lloh958:
	ldr	w8, [x8, _device@PAGEOFF+4908]
	tst	w8, w26
	b.eq	LBB130_16
LBB130_4:
	add	x8, x20, w23, sxtw #4
	mov	x9, #4575657221408423936        ; =0x3f80000000000000
	str	s0, [x8, #4632]
	str	s1, [x8, #4636]
	str	x9, [x8, #4640]
	cbnz	w23, LBB130_1
; %bb.5:
	ldr	w8, [x20, #4888]
	cbz	w8, LBB130_1
; %bb.6:
Lloh959:
	adrp	x8, _device@PAGE+4900
Lloh960:
	add	x8, x8, _device@PAGEOFF+4900
	ldp	w9, w11, [x8]
	ldr	w10, [x8, #12]
	lsl	w8, w9, #2
	add	w8, w8, #4
	mul	w8, w8, w10
	cmp	w8, w11
	b.ls	LBB130_11
; %bb.7:
	cmp	w11, #0
	mov	w9, #4096                       ; =0x1000
	csel	w9, w9, w11, eq
	.p2align	4, , 8
LBB130_8:                               ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB130_8
; %bb.9:
Lloh961:
	adrp	x8, _device@PAGE+4896
	lsl	w1, w19, #2
Lloh962:
	ldr	w0, [x8, _device@PAGEOFF+4896]
	bl	_realloc
	cbz	w0, LBB130_1
; %bb.10:
Lloh963:
	adrp	x8, _device@PAGE+4896
Lloh964:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #16]
	str	w0, [x8]
	str	w19, [x8, #8]
	adrp	x8, _device@PAGE+4900
	cbnz	w10, LBB130_12
	b	LBB130_15
LBB130_11:
Lloh965:
	adrp	x8, _device@PAGE+4896
Lloh966:
	ldr	w0, [x8, _device@PAGEOFF+4896]
Lloh967:
	adrp	x8, _device@PAGE+4900
	cbz	w10, LBB130_15
LBB130_12:
	mul	w9, w10, w9
	mov	w11, wzr
	mov	w10, #4916                      ; =0x1334
	mov	w12, #4632                      ; =0x1218
	add	w9, w0, w9, lsl #4
	.p2align	4, , 8
LBB130_13:                              ; =>This Inner Loop Header: Depth=1
	add	w13, w20, w11
	add	w11, w11, #1
	add	w13, w13, w10
	ldrb	w13, [x13]
	add	x13, x20, x13, lsl #4
	ldr	q0, [x13, x12]
	str	q0, [x9]
	add	w9, w9, #16
	ldr	w13, [x20, #4912]
	cmp	w11, w13
	b.lo	LBB130_13
; %bb.14:
	ldr	w9, [x8, _device@PAGEOFF+4900]
LBB130_15:
	add	w9, w9, #1
	str	w9, [x8, _device@PAGEOFF+4900]
	b	LBB130_1
LBB130_16:
Lloh968:
	adrp	x8, _device@PAGE+4900
Lloh969:
	add	x8, x8, _device@PAGEOFF+4900
	adrp	x25, _device@PAGE+4896
	ldr	w27, [x8, #12]
	ldp	w24, w9, [x8]
	madd	w8, w24, w27, w24
	lsl	w8, w8, #2
	cmp	w8, w9
	b.ls	LBB130_21
; %bb.17:
	fmov	s8, s0
	cmp	w9, #0
	fmov	s9, s1
	mov	w10, #4096                      ; =0x1000
	csel	w9, w10, w9, eq
	.p2align	4, , 8
LBB130_18:                              ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB130_18
; %bb.19:
	ldr	w0, [x25, _device@PAGEOFF+4896]
	lsl	w1, w19, #2
	bl	_realloc
	fmov	s1, s9
	fmov	s0, s8
	cbz	w0, LBB130_4
; %bb.20:
Lloh970:
	adrp	x8, _device@PAGE+4896
Lloh971:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w24, [x8, #4]
	str	w0, [x8]
	str	w19, [x8, #8]
LBB130_21:
	fmov	s8, s0
	stp	w26, w23, [sp, #12]             ; 8-byte Folded Spill
	fmov	s9, s1
	cbz	w24, LBB130_29
; %bb.22:
	ldr	w8, [sp, #16]                   ; 4-byte Reload
	lsl	w23, w27, #2
	add	w12, w23, #4
	mov	w28, w24
	ands	w11, w24, #0x3
	lsl	w19, w27, #4
	str	w27, [sp, #32]                  ; 4-byte Spill
	add	x26, x20, w8, sxtw #4
	b.eq	LBB130_26
; %bb.23:
	sub	w28, w24, #1
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	str	x23, [sp, #72]                  ; 8-byte Spill
	mul	w9, w28, w23
	mov	w23, w11
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldr	x10, [sp, #72]                  ; 8-byte Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	cmp	w23, #1
	ldr	q0, [x26, x9]
	add	w12, w10, #4
	sbfiz	x9, x10, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
	b.eq	LBB130_26
; %bb.24:
	sub	w28, w24, #2
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	str	w23, [sp, #68]                  ; 4-byte Spill
	mul	w9, w28, w10
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldr	x23, [sp, #72]                  ; 8-byte Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	w10, [sp, #68]                  ; 4-byte Reload
	ldr	q0, [x26, x9]
	add	w12, w23, #4
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	cmp	w10, #2
	str	q0, [x8, x9]
	b.eq	LBB130_26
; %bb.25:
	sub	w28, w24, #3
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	mul	w9, w28, w23
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w12, w23, #4
	ldr	q0, [x26, x9]
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
LBB130_26:
	ldr	w23, [sp, #32]                  ; 4-byte Reload
	cmp	w24, #4
	b.lo	LBB130_29
; %bb.27:
	sub	w8, w28, #4
	sub	w9, w28, #3
	lsl	w13, w23, #6
	mov	w24, wzr
	mul	w10, w23, w8
	mov	w27, wzr
	mul	w8, w8, w12
	str	w13, [sp, #72]                  ; 4-byte Spill
	lsl	w10, w10, #4
	mul	w11, w23, w9
	lsl	w8, w8, #2
	stp	w8, w10, [sp, #64]              ; 8-byte Folded Spill
	add	w8, w8, w19
	lsl	w10, w11, #4
	str	w8, [sp, #60]                   ; 4-byte Spill
	mul	w8, w9, w12
	eor	w9, w13, #0xffffffc0
	str	w10, [sp, #52]                  ; 4-byte Spill
	lsl	w11, w8, #2
	sub	w10, w28, #1
	str	w9, [sp, #56]                   ; 4-byte Spill
	sub	w9, w28, #2
	str	w11, [sp, #48]                  ; 4-byte Spill
	add	w11, w11, w19
	mul	w8, w9, w12
	mul	w9, w23, w9
	str	w11, [sp, #44]                  ; 4-byte Spill
	lsl	w11, w8, #2
	mul	w8, w10, w12
	str	w11, [sp, #40]                  ; 4-byte Spill
	add	w11, w11, w19
	lsl	w8, w8, #2
	mul	w10, w23, w10
	stp	w8, w11, [sp, #32]              ; 8-byte Folded Spill
	add	w8, w8, w19
	lsl	w11, w9, #4
	str	w8, [sp, #28]                   ; 4-byte Spill
	lsl	w8, w10, #4
	stp	w8, w11, [sp, #20]              ; 8-byte Folded Spill
	.p2align	4, , 8
LBB130_28:                              ; =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #32]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w10, [sp, #20]                  ; 4-byte Reload
	mov	w23, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldp	w10, w9, [sp, #24]              ; 8-byte Folded Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w8, w8, w9
	ldr	w9, [sp, #40]                   ; 4-byte Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #36]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w8, w8, w9
	ldp	w9, w10, [sp, #48]              ; 8-byte Folded Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #44]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	sub	w28, w28, #4
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w8, w8, w9
	ldp	w9, w10, [sp, #64]              ; 8-byte Folded Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #60]                   ; 4-byte Reload
	mov	w10, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x10]
	add	w9, w9, w24
	add	w8, w8, w9
	ldr	w9, [sp, #72]                   ; 4-byte Reload
	str	q0, [x8]
	sub	w27, w27, w9
	ldr	w9, [sp, #56]                   ; 4-byte Reload
	add	w24, w24, w9
	cbnz	w28, LBB130_28
LBB130_29:
	ldrsw	x8, [x20, #4912]
	fmov	s1, s9
	ldr	w9, [x20, #4908]
	fmov	s0, s8
	ldp	w12, w23, [sp, #12]             ; 8-byte Folded Reload
	mov	w11, #4916                      ; =0x1334
	add	w10, w8, #1
	add	x8, x20, x8
	orr	w9, w9, w12
	str	w10, [x20, #4912]
	strb	w23, [x8, x11]
	str	w9, [x20, #4908]
	b	LBB130_4
	.loh AdrpAdd	Lloh954, Lloh955
	.loh AdrpLdr	Lloh953, Lloh956
	.loh AdrpLdr	Lloh957, Lloh958
	.loh AdrpAdd	Lloh959, Lloh960
	.loh AdrpLdr	Lloh961, Lloh962
	.loh AdrpAdd	Lloh963, Lloh964
	.loh AdrpAdrp	Lloh965, Lloh967
	.loh AdrpLdr	Lloh965, Lloh966
	.loh AdrpAdd	Lloh968, Lloh969
	.loh AdrpAdd	Lloh970, Lloh971
                                        ; -- End function
	.globl	_D3DDevice_SetVertexData4f      ; -- Begin function D3DDevice_SetVertexData4f
	.p2align	4
_D3DDevice_SetVertexData4f:             ; @D3DDevice_SetVertexData4f
; %bb.0:
	sub	sp, sp, #192
	cmn	w0, #1
	stp	x24, x23, [sp, #144]            ; 16-byte Folded Spill
	csel	w23, wzr, w0, eq
	stp	d11, d10, [sp, #80]             ; 16-byte Folded Spill
	cmp	w23, #15
	stp	d9, d8, [sp, #96]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #112]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #160]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	b.ls	LBB131_2
LBB131_1:
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #96]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB131_2:
Lloh972:
	adrp	x8, _device@PAGE+4888
Lloh973:
	adrp	x20, _device@PAGE
Lloh974:
	add	x20, x20, _device@PAGEOFF
Lloh975:
	ldr	w8, [x8, _device@PAGEOFF+4888]
	cbz	w8, LBB131_4
; %bb.3:
Lloh976:
	adrp	x8, _device@PAGE+4908
	mov	w9, #1                          ; =0x1
	lsl	w26, w9, w23
Lloh977:
	ldr	w8, [x8, _device@PAGEOFF+4908]
	tst	w8, w26
	b.eq	LBB131_16
LBB131_4:
	add	x8, x20, w23, sxtw #4
	str	s0, [x8, #4632]
	str	s1, [x8, #4636]
	str	s2, [x8, #4640]
	str	s3, [x8, #4644]
	cbnz	w23, LBB131_1
; %bb.5:
	ldr	w8, [x20, #4888]
	cbz	w8, LBB131_1
; %bb.6:
Lloh978:
	adrp	x8, _device@PAGE+4900
Lloh979:
	add	x8, x8, _device@PAGEOFF+4900
	ldp	w9, w11, [x8]
	ldr	w10, [x8, #12]
	lsl	w8, w9, #2
	add	w8, w8, #4
	mul	w8, w8, w10
	cmp	w8, w11
	b.ls	LBB131_11
; %bb.7:
	cmp	w11, #0
	mov	w9, #4096                       ; =0x1000
	csel	w9, w9, w11, eq
	.p2align	4, , 8
LBB131_8:                               ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB131_8
; %bb.9:
Lloh980:
	adrp	x8, _device@PAGE+4896
	lsl	w1, w19, #2
Lloh981:
	ldr	w0, [x8, _device@PAGEOFF+4896]
	bl	_realloc
	cbz	w0, LBB131_1
; %bb.10:
Lloh982:
	adrp	x8, _device@PAGE+4896
Lloh983:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #16]
	str	w0, [x8]
	str	w19, [x8, #8]
	adrp	x8, _device@PAGE+4900
	cbnz	w10, LBB131_12
	b	LBB131_15
LBB131_11:
Lloh984:
	adrp	x8, _device@PAGE+4896
Lloh985:
	ldr	w0, [x8, _device@PAGEOFF+4896]
Lloh986:
	adrp	x8, _device@PAGE+4900
	cbz	w10, LBB131_15
LBB131_12:
	mul	w9, w10, w9
	mov	w11, wzr
	mov	w10, #4916                      ; =0x1334
	mov	w12, #4632                      ; =0x1218
	add	w9, w0, w9, lsl #4
	.p2align	4, , 8
LBB131_13:                              ; =>This Inner Loop Header: Depth=1
	add	w13, w20, w11
	add	w11, w11, #1
	add	w13, w13, w10
	ldrb	w13, [x13]
	add	x13, x20, x13, lsl #4
	ldr	q0, [x13, x12]
	str	q0, [x9]
	add	w9, w9, #16
	ldr	w13, [x20, #4912]
	cmp	w11, w13
	b.lo	LBB131_13
; %bb.14:
	ldr	w9, [x8, _device@PAGEOFF+4900]
LBB131_15:
	add	w9, w9, #1
	str	w9, [x8, _device@PAGEOFF+4900]
	b	LBB131_1
LBB131_16:
Lloh987:
	adrp	x8, _device@PAGE+4900
Lloh988:
	add	x8, x8, _device@PAGEOFF+4900
	adrp	x25, _device@PAGE+4896
	ldr	w27, [x8, #12]
	ldp	w24, w9, [x8]
	madd	w8, w24, w27, w24
	lsl	w8, w8, #2
	cmp	w8, w9
	b.ls	LBB131_21
; %bb.17:
	fmov	s8, s0
	cmp	w9, #0
	fmov	s9, s1
	mov	w10, #4096                      ; =0x1000
	fmov	s10, s2
	csel	w9, w10, w9, eq
	fmov	s11, s3
	.p2align	4, , 8
LBB131_18:                              ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB131_18
; %bb.19:
	ldr	w0, [x25, _device@PAGEOFF+4896]
	lsl	w1, w19, #2
	bl	_realloc
	fmov	s3, s11
	fmov	s2, s10
	fmov	s1, s9
	fmov	s0, s8
	cbz	w0, LBB131_4
; %bb.20:
Lloh989:
	adrp	x8, _device@PAGE+4896
Lloh990:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w24, [x8, #4]
	str	w0, [x8]
	str	w19, [x8, #8]
LBB131_21:
	fmov	s8, s0
	stp	w26, w23, [sp, #12]             ; 8-byte Folded Spill
	fmov	s9, s1
	fmov	s10, s2
	fmov	s11, s3
	cbz	w24, LBB131_29
; %bb.22:
	ldr	w8, [sp, #16]                   ; 4-byte Reload
	lsl	w23, w27, #2
	add	w12, w23, #4
	mov	w28, w24
	ands	w11, w24, #0x3
	lsl	w19, w27, #4
	str	w27, [sp, #32]                  ; 4-byte Spill
	add	x26, x20, w8, sxtw #4
	b.eq	LBB131_26
; %bb.23:
	sub	w28, w24, #1
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	str	x23, [sp, #72]                  ; 8-byte Spill
	mul	w9, w28, w23
	mov	w23, w11
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldr	x10, [sp, #72]                  ; 8-byte Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	cmp	w23, #1
	ldr	q0, [x26, x9]
	add	w12, w10, #4
	sbfiz	x9, x10, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
	b.eq	LBB131_26
; %bb.24:
	sub	w28, w24, #2
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	str	w23, [sp, #68]                  ; 4-byte Spill
	mul	w9, w28, w10
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldr	x23, [sp, #72]                  ; 8-byte Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	w10, [sp, #68]                  ; 4-byte Reload
	ldr	q0, [x26, x9]
	add	w12, w23, #4
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	cmp	w10, #2
	str	q0, [x8, x9]
	b.eq	LBB131_26
; %bb.25:
	sub	w28, w24, #3
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	mul	w9, w28, w23
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w12, w23, #4
	ldr	q0, [x26, x9]
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
LBB131_26:
	ldr	w23, [sp, #32]                  ; 4-byte Reload
	cmp	w24, #4
	b.lo	LBB131_29
; %bb.27:
	sub	w8, w28, #4
	sub	w9, w28, #3
	lsl	w13, w23, #6
	mov	w24, wzr
	mul	w10, w23, w8
	mov	w27, wzr
	mul	w8, w8, w12
	str	w13, [sp, #72]                  ; 4-byte Spill
	lsl	w10, w10, #4
	mul	w11, w23, w9
	lsl	w8, w8, #2
	stp	w8, w10, [sp, #64]              ; 8-byte Folded Spill
	add	w8, w8, w19
	lsl	w10, w11, #4
	str	w8, [sp, #60]                   ; 4-byte Spill
	mul	w8, w9, w12
	eor	w9, w13, #0xffffffc0
	str	w10, [sp, #52]                  ; 4-byte Spill
	lsl	w11, w8, #2
	sub	w10, w28, #1
	str	w9, [sp, #56]                   ; 4-byte Spill
	sub	w9, w28, #2
	str	w11, [sp, #48]                  ; 4-byte Spill
	add	w11, w11, w19
	mul	w8, w9, w12
	mul	w9, w23, w9
	str	w11, [sp, #44]                  ; 4-byte Spill
	lsl	w11, w8, #2
	mul	w8, w10, w12
	str	w11, [sp, #40]                  ; 4-byte Spill
	add	w11, w11, w19
	lsl	w8, w8, #2
	mul	w10, w23, w10
	stp	w8, w11, [sp, #32]              ; 8-byte Folded Spill
	add	w8, w8, w19
	lsl	w11, w9, #4
	str	w8, [sp, #28]                   ; 4-byte Spill
	lsl	w8, w10, #4
	stp	w8, w11, [sp, #20]              ; 8-byte Folded Spill
	.p2align	4, , 8
LBB131_28:                              ; =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #32]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w10, [sp, #20]                  ; 4-byte Reload
	mov	w23, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldp	w10, w9, [sp, #24]              ; 8-byte Folded Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w8, w8, w9
	ldr	w9, [sp, #40]                   ; 4-byte Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #36]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w8, w8, w9
	ldp	w9, w10, [sp, #48]              ; 8-byte Folded Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #44]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	sub	w28, w28, #4
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w8, w8, w9
	ldp	w9, w10, [sp, #64]              ; 8-byte Folded Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #60]                   ; 4-byte Reload
	mov	w10, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x10]
	add	w9, w9, w24
	add	w8, w8, w9
	ldr	w9, [sp, #72]                   ; 4-byte Reload
	str	q0, [x8]
	sub	w27, w27, w9
	ldr	w9, [sp, #56]                   ; 4-byte Reload
	add	w24, w24, w9
	cbnz	w28, LBB131_28
LBB131_29:
	ldrsw	x8, [x20, #4912]
	fmov	s3, s11
	ldr	w9, [x20, #4908]
	fmov	s2, s10
	ldp	w12, w23, [sp, #12]             ; 8-byte Folded Reload
	fmov	s1, s9
	mov	w11, #4916                      ; =0x1334
	fmov	s0, s8
	add	w10, w8, #1
	add	x8, x20, x8
	orr	w9, w9, w12
	str	w10, [x20, #4912]
	strb	w23, [x8, x11]
	str	w9, [x20, #4908]
	b	LBB131_4
	.loh AdrpAdd	Lloh973, Lloh974
	.loh AdrpLdr	Lloh972, Lloh975
	.loh AdrpLdr	Lloh976, Lloh977
	.loh AdrpAdd	Lloh978, Lloh979
	.loh AdrpLdr	Lloh980, Lloh981
	.loh AdrpAdd	Lloh982, Lloh983
	.loh AdrpAdrp	Lloh984, Lloh986
	.loh AdrpLdr	Lloh984, Lloh985
	.loh AdrpAdd	Lloh987, Lloh988
	.loh AdrpAdd	Lloh989, Lloh990
                                        ; -- End function
	.globl	_D3DDevice_SetVertexData2s      ; -- Begin function D3DDevice_SetVertexData2s
	.p2align	4
_D3DDevice_SetVertexData2s:             ; @D3DDevice_SetVertexData2s
; %bb.0:
	sub	sp, sp, #176
	cmn	w0, #1
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	csel	w23, wzr, w0, eq
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
	cmp	w23, #15
	stp	x28, x27, [sp, #96]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	b.ls	LBB132_2
LBB132_1:
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB132_2:
Lloh991:
	adrp	x8, _device@PAGE+4888
	scvtf	s8, w1
	scvtf	s9, w2
Lloh992:
	adrp	x20, _device@PAGE
Lloh993:
	add	x20, x20, _device@PAGEOFF
Lloh994:
	ldr	w8, [x8, _device@PAGEOFF+4888]
	cbz	w8, LBB132_4
; %bb.3:
Lloh995:
	adrp	x8, _device@PAGE+4908
	mov	w9, #1                          ; =0x1
	lsl	w26, w9, w23
Lloh996:
	ldr	w8, [x8, _device@PAGEOFF+4908]
	tst	w8, w26
	b.eq	LBB132_17
LBB132_4:
	add	x8, x20, w23, sxtw #4
	mov	x9, #4575657221408423936        ; =0x3f80000000000000
	str	s8, [x8, #4632]
	str	s9, [x8, #4636]
	str	x9, [x8, #4640]
	cbnz	w23, LBB132_1
; %bb.5:
	ldr	w8, [x20, #4888]
	cbz	w8, LBB132_1
; %bb.6:
Lloh997:
	adrp	x8, _device@PAGE+4900
Lloh998:
	add	x8, x8, _device@PAGEOFF+4900
	ldp	w9, w11, [x8]
	ldr	w10, [x8, #12]
	lsl	w8, w9, #2
	add	w8, w8, #4
	mul	w8, w8, w10
	cmp	w8, w11
	b.ls	LBB132_16
; %bb.7:
	cmp	w11, #0
	mov	w9, #4096                       ; =0x1000
	csel	w9, w9, w11, eq
	.p2align	4, , 8
LBB132_8:                               ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB132_8
; %bb.9:
Lloh999:
	adrp	x8, _device@PAGE+4896
	lsl	w1, w19, #2
Lloh1000:
	ldr	w0, [x8, _device@PAGEOFF+4896]
	bl	_realloc
	cbz	w0, LBB132_1
; %bb.10:
Lloh1001:
	adrp	x8, _device@PAGE+4896
Lloh1002:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #16]
	str	w0, [x8]
	str	w19, [x8, #8]
LBB132_11:
	adrp	x8, _device@PAGE+4900
	cbz	w10, LBB132_15
; %bb.12:
	mul	w9, w10, w9
	mov	w11, wzr
	mov	w10, #4916                      ; =0x1334
	mov	w12, #4632                      ; =0x1218
	add	w9, w0, w9, lsl #4
	.p2align	4, , 8
LBB132_13:                              ; =>This Inner Loop Header: Depth=1
	add	w13, w20, w11
	add	w11, w11, #1
	add	w13, w13, w10
	ldrb	w13, [x13]
	add	x13, x20, x13, lsl #4
	ldr	q0, [x13, x12]
	str	q0, [x9]
	add	w9, w9, #16
	ldr	w13, [x20, #4912]
	cmp	w11, w13
	b.lo	LBB132_13
; %bb.14:
	ldr	w9, [x8, _device@PAGEOFF+4900]
LBB132_15:
	add	w9, w9, #1
	str	w9, [x8, _device@PAGEOFF+4900]
	b	LBB132_1
LBB132_16:
Lloh1003:
	adrp	x8, _device@PAGE+4896
Lloh1004:
	ldr	w0, [x8, _device@PAGEOFF+4896]
	b	LBB132_11
LBB132_17:
Lloh1005:
	adrp	x8, _device@PAGE+4900
Lloh1006:
	add	x8, x8, _device@PAGEOFF+4900
	adrp	x25, _device@PAGE+4896
	ldr	w27, [x8, #12]
	ldp	w24, w9, [x8]
	madd	w8, w24, w27, w24
	lsl	w8, w8, #2
	cmp	w8, w9
	b.ls	LBB132_22
; %bb.18:
	cmp	w9, #0
	mov	w10, #4096                      ; =0x1000
	csel	w9, w10, w9, eq
	.p2align	4, , 8
LBB132_19:                              ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB132_19
; %bb.20:
	ldr	w0, [x25, _device@PAGEOFF+4896]
	lsl	w1, w19, #2
	bl	_realloc
	cbz	w0, LBB132_4
; %bb.21:
Lloh1007:
	adrp	x8, _device@PAGE+4896
Lloh1008:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w24, [x8, #4]
	str	w0, [x8]
	str	w19, [x8, #8]
LBB132_22:
	stp	w26, w23, [sp, #12]             ; 8-byte Folded Spill
	cbz	w24, LBB132_30
; %bb.23:
	ldr	w8, [sp, #16]                   ; 4-byte Reload
	lsl	w23, w27, #2
	add	w12, w23, #4
	mov	w28, w24
	ands	w11, w24, #0x3
	lsl	w19, w27, #4
	str	w27, [sp, #32]                  ; 4-byte Spill
	add	x26, x20, w8, sxtw #4
	b.eq	LBB132_27
; %bb.24:
	sub	w28, w24, #1
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	str	x23, [sp, #72]                  ; 8-byte Spill
	mul	w9, w28, w23
	mov	w23, w11
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldr	x10, [sp, #72]                  ; 8-byte Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	cmp	w23, #1
	ldr	q0, [x26, x9]
	add	w12, w10, #4
	sbfiz	x9, x10, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
	b.eq	LBB132_27
; %bb.25:
	sub	w28, w24, #2
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	str	w23, [sp, #68]                  ; 4-byte Spill
	mul	w9, w28, w10
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldr	x23, [sp, #72]                  ; 8-byte Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	w10, [sp, #68]                  ; 4-byte Reload
	ldr	q0, [x26, x9]
	add	w12, w23, #4
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	cmp	w10, #2
	str	q0, [x8, x9]
	b.eq	LBB132_27
; %bb.26:
	sub	w28, w24, #3
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	mul	w9, w28, w23
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w12, w23, #4
	ldr	q0, [x26, x9]
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
LBB132_27:
	ldr	w23, [sp, #32]                  ; 4-byte Reload
	cmp	w24, #4
	b.lo	LBB132_30
; %bb.28:
	sub	w8, w28, #4
	sub	w9, w28, #3
	lsl	w13, w23, #6
	mov	w24, wzr
	mul	w10, w23, w8
	mov	w27, wzr
	mul	w8, w8, w12
	str	w13, [sp, #72]                  ; 4-byte Spill
	lsl	w10, w10, #4
	mul	w11, w23, w9
	lsl	w8, w8, #2
	stp	w8, w10, [sp, #64]              ; 8-byte Folded Spill
	add	w8, w8, w19
	lsl	w10, w11, #4
	str	w8, [sp, #60]                   ; 4-byte Spill
	mul	w8, w9, w12
	eor	w9, w13, #0xffffffc0
	str	w10, [sp, #52]                  ; 4-byte Spill
	lsl	w11, w8, #2
	sub	w10, w28, #1
	str	w9, [sp, #56]                   ; 4-byte Spill
	sub	w9, w28, #2
	str	w11, [sp, #48]                  ; 4-byte Spill
	add	w11, w11, w19
	mul	w8, w9, w12
	mul	w9, w23, w9
	str	w11, [sp, #44]                  ; 4-byte Spill
	lsl	w11, w8, #2
	mul	w8, w10, w12
	str	w11, [sp, #40]                  ; 4-byte Spill
	add	w11, w11, w19
	lsl	w8, w8, #2
	mul	w10, w23, w10
	stp	w8, w11, [sp, #32]              ; 8-byte Folded Spill
	add	w8, w8, w19
	lsl	w11, w9, #4
	str	w8, [sp, #28]                   ; 4-byte Spill
	lsl	w8, w10, #4
	stp	w8, w11, [sp, #20]              ; 8-byte Folded Spill
	.p2align	4, , 8
LBB132_29:                              ; =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #32]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w10, [sp, #20]                  ; 4-byte Reload
	mov	w23, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldp	w10, w9, [sp, #24]              ; 8-byte Folded Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w8, w8, w9
	ldr	w9, [sp, #40]                   ; 4-byte Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #36]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w8, w8, w9
	ldp	w9, w10, [sp, #48]              ; 8-byte Folded Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #44]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	sub	w28, w28, #4
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w8, w8, w9
	ldp	w9, w10, [sp, #64]              ; 8-byte Folded Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #60]                   ; 4-byte Reload
	mov	w10, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x10]
	add	w9, w9, w24
	add	w8, w8, w9
	ldr	w9, [sp, #72]                   ; 4-byte Reload
	str	q0, [x8]
	sub	w27, w27, w9
	ldr	w9, [sp, #56]                   ; 4-byte Reload
	add	w24, w24, w9
	cbnz	w28, LBB132_29
LBB132_30:
	ldrsw	x8, [x20, #4912]
	mov	w11, #4916                      ; =0x1334
	ldr	w9, [x20, #4908]
	ldp	w12, w23, [sp, #12]             ; 8-byte Folded Reload
	add	w10, w8, #1
	add	x8, x20, x8
	orr	w9, w9, w12
	str	w10, [x20, #4912]
	strb	w23, [x8, x11]
	str	w9, [x20, #4908]
	b	LBB132_4
	.loh AdrpAdd	Lloh992, Lloh993
	.loh AdrpLdr	Lloh991, Lloh994
	.loh AdrpLdr	Lloh995, Lloh996
	.loh AdrpAdd	Lloh997, Lloh998
	.loh AdrpLdr	Lloh999, Lloh1000
	.loh AdrpAdd	Lloh1001, Lloh1002
	.loh AdrpLdr	Lloh1003, Lloh1004
	.loh AdrpAdd	Lloh1005, Lloh1006
	.loh AdrpAdd	Lloh1007, Lloh1008
                                        ; -- End function
	.globl	_D3DDevice_SetVertexData4ub     ; -- Begin function D3DDevice_SetVertexData4ub
	.p2align	4
_D3DDevice_SetVertexData4ub:            ; @D3DDevice_SetVertexData4ub
; %bb.0:
	sub	sp, sp, #176
	cmn	w0, #1
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	csel	w23, wzr, w0, eq
	stp	x28, x27, [sp, #96]             ; 16-byte Folded Spill
	cmp	w23, #15
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	b.ls	LBB133_2
LBB133_1:
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB133_2:
	ucvtf	s0, w1
	mov	w8, #1132396544                 ; =0x437f0000
	ucvtf	s1, w2
Lloh1009:
	adrp	x20, _device@PAGE
Lloh1010:
	add	x20, x20, _device@PAGEOFF
	ucvtf	s2, w3
	mov	v0.s[1], v1.s[0]
	ucvtf	s1, w4
	mov	v0.s[2], v2.s[0]
	mov	v0.s[3], v1.s[0]
	dup	v1.4s, w8
Lloh1011:
	adrp	x8, _device@PAGE+4888
Lloh1012:
	ldr	w8, [x8, _device@PAGEOFF+4888]
	fdiv	v0.4s, v0.4s, v1.4s
	cbz	w8, LBB133_4
; %bb.3:
Lloh1013:
	adrp	x8, _device@PAGE+4908
	mov	w9, #1                          ; =0x1
	lsl	w26, w9, w23
Lloh1014:
	ldr	w8, [x8, _device@PAGEOFF+4908]
	tst	w8, w26
	b.eq	LBB133_17
LBB133_4:
	add	x8, x20, w23, sxtw #4
	mov	w9, #4632                       ; =0x1218
	str	q0, [x8, x9]
	cbnz	w23, LBB133_1
; %bb.5:
	ldr	w8, [x20, #4888]
	cbz	w8, LBB133_1
; %bb.6:
Lloh1015:
	adrp	x8, _device@PAGE+4900
Lloh1016:
	add	x8, x8, _device@PAGEOFF+4900
	ldp	w9, w11, [x8]
	ldr	w10, [x8, #12]
	lsl	w8, w9, #2
	add	w8, w8, #4
	mul	w8, w8, w10
	cmp	w8, w11
	b.ls	LBB133_16
; %bb.7:
	cmp	w11, #0
	mov	w9, #4096                       ; =0x1000
	csel	w9, w9, w11, eq
	.p2align	4, , 8
LBB133_8:                               ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB133_8
; %bb.9:
Lloh1017:
	adrp	x8, _device@PAGE+4896
	lsl	w1, w19, #2
Lloh1018:
	ldr	w0, [x8, _device@PAGEOFF+4896]
	bl	_realloc
	cbz	w0, LBB133_1
; %bb.10:
Lloh1019:
	adrp	x8, _device@PAGE+4896
Lloh1020:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #16]
	str	w0, [x8]
	str	w19, [x8, #8]
LBB133_11:
	adrp	x8, _device@PAGE+4900
	cbz	w10, LBB133_15
; %bb.12:
	mul	w9, w10, w9
	mov	w11, wzr
	mov	w10, #4916                      ; =0x1334
	mov	w12, #4632                      ; =0x1218
	add	w9, w0, w9, lsl #4
	.p2align	4, , 8
LBB133_13:                              ; =>This Inner Loop Header: Depth=1
	add	w13, w20, w11
	add	w11, w11, #1
	add	w13, w13, w10
	ldrb	w13, [x13]
	add	x13, x20, x13, lsl #4
	ldr	q0, [x13, x12]
	str	q0, [x9]
	add	w9, w9, #16
	ldr	w13, [x20, #4912]
	cmp	w11, w13
	b.lo	LBB133_13
; %bb.14:
	ldr	w9, [x8, _device@PAGEOFF+4900]
LBB133_15:
	add	w9, w9, #1
	str	w9, [x8, _device@PAGEOFF+4900]
	b	LBB133_1
LBB133_16:
Lloh1021:
	adrp	x8, _device@PAGE+4896
Lloh1022:
	ldr	w0, [x8, _device@PAGEOFF+4896]
	b	LBB133_11
LBB133_17:
Lloh1023:
	adrp	x8, _device@PAGE+4900
Lloh1024:
	add	x8, x8, _device@PAGEOFF+4900
	adrp	x25, _device@PAGE+4896
	str	q0, [sp, #16]                   ; 16-byte Spill
	ldr	w27, [x8, #12]
	ldp	w24, w9, [x8]
	madd	w8, w24, w27, w24
	lsl	w8, w8, #2
	cmp	w8, w9
	b.ls	LBB133_22
; %bb.18:
	cmp	w9, #0
	mov	w10, #4096                      ; =0x1000
	csel	w9, w10, w9, eq
	.p2align	4, , 8
LBB133_19:                              ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB133_19
; %bb.20:
	ldr	w0, [x25, _device@PAGEOFF+4896]
	lsl	w1, w19, #2
	bl	_realloc
	ldr	q0, [sp, #16]                   ; 16-byte Reload
	cbz	w0, LBB133_4
; %bb.21:
Lloh1025:
	adrp	x8, _device@PAGE+4896
Lloh1026:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w24, [x8, #4]
	str	w0, [x8]
	str	w19, [x8, #8]
LBB133_22:
	stp	w26, w23, [sp, #8]              ; 8-byte Folded Spill
	cbz	w24, LBB133_30
; %bb.23:
	ldr	w8, [sp, #12]                   ; 4-byte Reload
	lsl	w23, w27, #2
	add	w12, w23, #4
	mov	w28, w24
	ands	w11, w24, #0x3
	lsl	w19, w27, #4
	str	w27, [sp, #48]                  ; 4-byte Spill
	add	x26, x20, w8, sxtw #4
	b.eq	LBB133_27
; %bb.24:
	sub	w28, w24, #1
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	stur	x23, [x29, #-72]                ; 8-byte Folded Spill
	mul	w9, w28, w23
	mov	w23, w11
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldur	x10, [x29, #-72]                ; 8-byte Folded Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	cmp	w23, #1
	ldr	q0, [x26, x9]
	add	w12, w10, #4
	sbfiz	x9, x10, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
	b.eq	LBB133_27
; %bb.25:
	sub	w28, w24, #2
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	stur	w23, [x29, #-76]                ; 4-byte Folded Spill
	mul	w9, w28, w10
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldur	x23, [x29, #-72]                ; 8-byte Folded Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldur	w10, [x29, #-76]                ; 4-byte Folded Reload
	ldr	q0, [x26, x9]
	add	w12, w23, #4
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	cmp	w10, #2
	str	q0, [x8, x9]
	b.eq	LBB133_27
; %bb.26:
	sub	w28, w24, #3
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	mul	w9, w28, w23
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w12, w23, #4
	ldr	q0, [x26, x9]
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
LBB133_27:
	ldr	w23, [sp, #48]                  ; 4-byte Reload
	cmp	w24, #4
	b.lo	LBB133_30
; %bb.28:
	sub	w8, w28, #4
	sub	w9, w28, #3
	lsl	w13, w23, #6
	mov	w24, wzr
	mul	w10, w23, w8
	mov	w27, wzr
	mul	w8, w8, w12
	stur	w13, [x29, #-72]                ; 4-byte Folded Spill
	mul	w11, w23, w9
	lsl	w10, w10, #4
	lsl	w8, w8, #2
	stur	w10, [x29, #-76]                ; 4-byte Folded Spill
	lsl	w10, w11, #4
	str	w8, [sp, #80]                   ; 4-byte Spill
	add	w8, w8, w19
	str	w10, [sp, #68]                  ; 4-byte Spill
	sub	w10, w28, #1
	str	w8, [sp, #76]                   ; 4-byte Spill
	mul	w8, w9, w12
	eor	w9, w13, #0xffffffc0
	lsl	w11, w8, #2
	str	w9, [sp, #72]                   ; 4-byte Spill
	sub	w9, w28, #2
	str	w11, [sp, #64]                  ; 4-byte Spill
	add	w11, w11, w19
	mul	w8, w9, w12
	mul	w9, w23, w9
	str	w11, [sp, #60]                  ; 4-byte Spill
	lsl	w11, w8, #2
	mul	w8, w10, w12
	str	w11, [sp, #56]                  ; 4-byte Spill
	add	w11, w11, w19
	lsl	w8, w8, #2
	mul	w10, w23, w10
	stp	w8, w11, [sp, #48]              ; 8-byte Folded Spill
	add	w8, w8, w19
	lsl	w11, w9, #4
	str	w8, [sp, #44]                   ; 4-byte Spill
	lsl	w8, w10, #4
	stp	w8, w11, [sp, #36]              ; 8-byte Folded Spill
	.p2align	4, , 8
LBB133_29:                              ; =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #48]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w10, [sp, #36]                  ; 4-byte Reload
	mov	w23, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldp	w10, w9, [sp, #40]              ; 8-byte Folded Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w8, w8, w9
	ldr	w9, [sp, #56]                   ; 4-byte Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #52]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w8, w8, w9
	ldp	w9, w10, [sp, #64]              ; 8-byte Folded Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #60]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	sub	w28, w28, #4
	ldr	q0, [x26, x23]
	ldur	w10, [x29, #-76]                ; 4-byte Folded Reload
	add	w9, w9, w24
	add	w8, w8, w9
	ldr	w9, [sp, #80]                   ; 4-byte Reload
	add	w10, w10, w27
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #76]                   ; 4-byte Reload
	mov	w10, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x10]
	add	w9, w9, w24
	add	w8, w8, w9
	ldur	w9, [x29, #-72]                 ; 4-byte Folded Reload
	str	q0, [x8]
	sub	w27, w27, w9
	ldr	w9, [sp, #72]                   ; 4-byte Reload
	add	w24, w24, w9
	cbnz	w28, LBB133_29
LBB133_30:
	ldrsw	x8, [x20, #4912]
	mov	w11, #4916                      ; =0x1334
	ldr	w9, [x20, #4908]
	ldp	w12, w23, [sp, #8]              ; 8-byte Folded Reload
	ldr	q0, [sp, #16]                   ; 16-byte Reload
	add	w10, w8, #1
	add	x8, x20, x8
	orr	w9, w9, w12
	str	w10, [x20, #4912]
	strb	w23, [x8, x11]
	str	w9, [x20, #4908]
	b	LBB133_4
	.loh AdrpLdr	Lloh1011, Lloh1012
	.loh AdrpAdd	Lloh1009, Lloh1010
	.loh AdrpLdr	Lloh1013, Lloh1014
	.loh AdrpAdd	Lloh1015, Lloh1016
	.loh AdrpLdr	Lloh1017, Lloh1018
	.loh AdrpAdd	Lloh1019, Lloh1020
	.loh AdrpLdr	Lloh1021, Lloh1022
	.loh AdrpAdd	Lloh1023, Lloh1024
	.loh AdrpAdd	Lloh1025, Lloh1026
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function D3DDevice_SetVertexDataColor
lCPI134_0:
	.long	4294967280                      ; 0xfffffff0
	.long	4294967288                      ; 0xfffffff8
	.long	0                               ; 0x0
	.long	4294967272                      ; 0xffffffe8
lCPI134_1:
	.long	255                             ; 0xff
	.long	255                             ; 0xff
	.long	255                             ; 0xff
	.long	4294967295                      ; 0xffffffff
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_D3DDevice_SetVertexDataColor
	.p2align	4
_D3DDevice_SetVertexDataColor:          ; @D3DDevice_SetVertexDataColor
; %bb.0:
	sub	sp, sp, #176
	cmn	w0, #1
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	csel	w23, wzr, w0, eq
	stp	x28, x27, [sp, #96]             ; 16-byte Folded Spill
	cmp	w23, #15
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	b.ls	LBB134_2
LBB134_1:
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB134_2:
Lloh1027:
	adrp	x8, lCPI134_0@PAGE
	dup	v0.4s, w1
Lloh1028:
	adrp	x20, _device@PAGE
Lloh1029:
	add	x20, x20, _device@PAGEOFF
Lloh1030:
	ldr	q1, [x8, lCPI134_0@PAGEOFF]
Lloh1031:
	adrp	x8, lCPI134_1@PAGE
	ushl	v0.4s, v0.4s, v1.4s
Lloh1032:
	ldr	q1, [x8, lCPI134_1@PAGEOFF]
	mov	w8, #1132396544                 ; =0x437f0000
	and	v0.16b, v0.16b, v1.16b
	dup	v1.4s, w8
Lloh1033:
	adrp	x8, _device@PAGE+4888
Lloh1034:
	ldr	w8, [x8, _device@PAGEOFF+4888]
	ucvtf	v0.4s, v0.4s
	fdiv	v0.4s, v0.4s, v1.4s
	cbz	w8, LBB134_4
; %bb.3:
Lloh1035:
	adrp	x8, _device@PAGE+4908
	mov	w9, #1                          ; =0x1
	lsl	w26, w9, w23
Lloh1036:
	ldr	w8, [x8, _device@PAGEOFF+4908]
	tst	w8, w26
	b.eq	LBB134_16
LBB134_4:
	add	x8, x20, w23, sxtw #4
	mov	w9, #4632                       ; =0x1218
	str	q0, [x8, x9]
	cbnz	w23, LBB134_1
; %bb.5:
	ldr	w8, [x20, #4888]
	cbz	w8, LBB134_1
; %bb.6:
Lloh1037:
	adrp	x8, _device@PAGE+4900
Lloh1038:
	add	x8, x8, _device@PAGEOFF+4900
	ldp	w9, w11, [x8]
	ldr	w10, [x8, #12]
	lsl	w8, w9, #2
	add	w8, w8, #4
	mul	w8, w8, w10
	cmp	w8, w11
	b.ls	LBB134_11
; %bb.7:
	cmp	w11, #0
	mov	w9, #4096                       ; =0x1000
	csel	w9, w9, w11, eq
	.p2align	4, , 8
LBB134_8:                               ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB134_8
; %bb.9:
Lloh1039:
	adrp	x8, _device@PAGE+4896
	lsl	w1, w19, #2
Lloh1040:
	ldr	w0, [x8, _device@PAGEOFF+4896]
	bl	_realloc
	cbz	w0, LBB134_1
; %bb.10:
Lloh1041:
	adrp	x8, _device@PAGE+4896
Lloh1042:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #16]
	str	w0, [x8]
	str	w19, [x8, #8]
	adrp	x8, _device@PAGE+4900
	cbnz	w10, LBB134_12
	b	LBB134_15
LBB134_11:
Lloh1043:
	adrp	x8, _device@PAGE+4896
Lloh1044:
	ldr	w0, [x8, _device@PAGEOFF+4896]
Lloh1045:
	adrp	x8, _device@PAGE+4900
	cbz	w10, LBB134_15
LBB134_12:
	mul	w9, w10, w9
	mov	w11, wzr
	mov	w10, #4916                      ; =0x1334
	mov	w12, #4632                      ; =0x1218
	add	w9, w0, w9, lsl #4
	.p2align	4, , 8
LBB134_13:                              ; =>This Inner Loop Header: Depth=1
	add	w13, w20, w11
	add	w11, w11, #1
	add	w13, w13, w10
	ldrb	w13, [x13]
	add	x13, x20, x13, lsl #4
	ldr	q0, [x13, x12]
	str	q0, [x9]
	add	w9, w9, #16
	ldr	w13, [x20, #4912]
	cmp	w11, w13
	b.lo	LBB134_13
; %bb.14:
	ldr	w9, [x8, _device@PAGEOFF+4900]
LBB134_15:
	add	w9, w9, #1
	str	w9, [x8, _device@PAGEOFF+4900]
	b	LBB134_1
LBB134_16:
Lloh1046:
	adrp	x8, _device@PAGE+4900
Lloh1047:
	add	x8, x8, _device@PAGEOFF+4900
	adrp	x25, _device@PAGE+4896
	str	q0, [sp, #16]                   ; 16-byte Spill
	ldr	w27, [x8, #12]
	ldp	w24, w9, [x8]
	madd	w8, w24, w27, w24
	lsl	w8, w8, #2
	cmp	w8, w9
	b.ls	LBB134_21
; %bb.17:
	cmp	w9, #0
	mov	w10, #4096                      ; =0x1000
	csel	w9, w10, w9, eq
	.p2align	4, , 8
LBB134_18:                              ; =>This Inner Loop Header: Depth=1
	mov	w19, w9
	lsl	w9, w9, #1
	cmp	w19, w8
	b.lo	LBB134_18
; %bb.19:
	ldr	w0, [x25, _device@PAGEOFF+4896]
	lsl	w1, w19, #2
	bl	_realloc
	ldr	q0, [sp, #16]                   ; 16-byte Reload
	cbz	w0, LBB134_4
; %bb.20:
Lloh1048:
	adrp	x8, _device@PAGE+4896
Lloh1049:
	add	x8, x8, _device@PAGEOFF+4896
	ldr	w24, [x8, #4]
	str	w0, [x8]
	str	w19, [x8, #8]
LBB134_21:
	stp	w26, w23, [sp, #8]              ; 8-byte Folded Spill
	cbz	w24, LBB134_29
; %bb.22:
	ldr	w8, [sp, #12]                   ; 4-byte Reload
	lsl	w23, w27, #2
	add	w12, w23, #4
	mov	w28, w24
	ands	w11, w24, #0x3
	lsl	w19, w27, #4
	str	w27, [sp, #48]                  ; 4-byte Spill
	add	x26, x20, w8, sxtw #4
	b.eq	LBB134_26
; %bb.23:
	sub	w28, w24, #1
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	stur	x23, [x29, #-72]                ; 8-byte Folded Spill
	mul	w9, w28, w23
	mov	w23, w11
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldur	x10, [x29, #-72]                ; 8-byte Folded Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	cmp	w23, #1
	ldr	q0, [x26, x9]
	add	w12, w10, #4
	sbfiz	x9, x10, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
	b.eq	LBB134_26
; %bb.24:
	sub	w28, w24, #2
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	stur	w23, [x29, #-76]                ; 4-byte Folded Spill
	mul	w9, w28, w10
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	ldur	x23, [x29, #-72]                ; 8-byte Folded Reload
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldur	w10, [x29, #-76]                ; 4-byte Folded Reload
	ldr	q0, [x26, x9]
	add	w12, w23, #4
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	cmp	w10, #2
	str	q0, [x8, x9]
	b.eq	LBB134_26
; %bb.25:
	sub	w28, w24, #3
	ldr	w8, [x25, _device@PAGEOFF+4896]
	mov	w2, w19
	mul	w9, w28, w23
	mul	w10, w28, w12
	add	x1, x8, w9, sxtw #2
	sbfiz	x27, x10, #2, #32
	add	x0, x8, x27
	bl	_memmove
	mov	w9, #4632                       ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w12, w23, #4
	ldr	q0, [x26, x9]
	sbfiz	x9, x23, #2, #32
	add	x8, x8, x27
	str	q0, [x8, x9]
LBB134_26:
	ldr	w23, [sp, #48]                  ; 4-byte Reload
	cmp	w24, #4
	b.lo	LBB134_29
; %bb.27:
	sub	w8, w28, #4
	sub	w9, w28, #3
	lsl	w13, w23, #6
	mov	w24, wzr
	mul	w10, w23, w8
	mov	w27, wzr
	mul	w8, w8, w12
	stur	w13, [x29, #-72]                ; 4-byte Folded Spill
	mul	w11, w23, w9
	lsl	w10, w10, #4
	lsl	w8, w8, #2
	stur	w10, [x29, #-76]                ; 4-byte Folded Spill
	lsl	w10, w11, #4
	str	w8, [sp, #80]                   ; 4-byte Spill
	add	w8, w8, w19
	str	w10, [sp, #68]                  ; 4-byte Spill
	sub	w10, w28, #1
	str	w8, [sp, #76]                   ; 4-byte Spill
	mul	w8, w9, w12
	eor	w9, w13, #0xffffffc0
	lsl	w11, w8, #2
	str	w9, [sp, #72]                   ; 4-byte Spill
	sub	w9, w28, #2
	str	w11, [sp, #64]                  ; 4-byte Spill
	add	w11, w11, w19
	mul	w8, w9, w12
	mul	w9, w23, w9
	str	w11, [sp, #60]                  ; 4-byte Spill
	lsl	w11, w8, #2
	mul	w8, w10, w12
	str	w11, [sp, #56]                  ; 4-byte Spill
	add	w11, w11, w19
	lsl	w8, w8, #2
	mul	w10, w23, w10
	stp	w8, w11, [sp, #48]              ; 8-byte Folded Spill
	add	w8, w8, w19
	lsl	w11, w9, #4
	str	w8, [sp, #44]                   ; 4-byte Spill
	lsl	w8, w10, #4
	stp	w8, w11, [sp, #36]              ; 8-byte Folded Spill
	.p2align	4, , 8
LBB134_28:                              ; =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #48]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w10, [sp, #36]                  ; 4-byte Reload
	mov	w23, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldp	w10, w9, [sp, #40]              ; 8-byte Folded Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w8, w8, w9
	ldr	w9, [sp, #56]                   ; 4-byte Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #52]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x23]
	add	w9, w9, w24
	add	w8, w8, w9
	ldp	w9, w10, [sp, #64]              ; 8-byte Folded Reload
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w10, w10, w27
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #60]                   ; 4-byte Reload
	mov	w2, w19
	ldr	w8, [x25, _device@PAGEOFF+4896]
	sub	w28, w28, #4
	ldr	q0, [x26, x23]
	ldur	w10, [x29, #-76]                ; 4-byte Folded Reload
	add	w9, w9, w24
	add	w8, w8, w9
	ldr	w9, [sp, #80]                   ; 4-byte Reload
	add	w10, w10, w27
	str	q0, [x8]
	ldr	w8, [x25, _device@PAGEOFF+4896]
	add	w9, w9, w24
	add	w0, w8, w9
	add	w1, w8, w10
	bl	_memmove
	ldr	w9, [sp, #76]                   ; 4-byte Reload
	mov	w10, #4632                      ; =0x1218
	ldr	w8, [x25, _device@PAGEOFF+4896]
	ldr	q0, [x26, x10]
	add	w9, w9, w24
	add	w8, w8, w9
	ldur	w9, [x29, #-72]                 ; 4-byte Folded Reload
	str	q0, [x8]
	sub	w27, w27, w9
	ldr	w9, [sp, #72]                   ; 4-byte Reload
	add	w24, w24, w9
	cbnz	w28, LBB134_28
LBB134_29:
	ldrsw	x8, [x20, #4912]
	mov	w11, #4916                      ; =0x1334
	ldr	w9, [x20, #4908]
	ldp	w12, w23, [sp, #8]              ; 8-byte Folded Reload
	ldr	q0, [sp, #16]                   ; 16-byte Reload
	add	w10, w8, #1
	add	x8, x20, x8
	orr	w9, w9, w12
	str	w10, [x20, #4912]
	strb	w23, [x8, x11]
	str	w9, [x20, #4908]
	b	LBB134_4
	.loh AdrpLdr	Lloh1033, Lloh1034
	.loh AdrpLdr	Lloh1031, Lloh1032
	.loh AdrpAdd	Lloh1028, Lloh1029
	.loh AdrpAdrp	Lloh1027, Lloh1031
	.loh AdrpLdr	Lloh1027, Lloh1030
	.loh AdrpLdr	Lloh1035, Lloh1036
	.loh AdrpAdd	Lloh1037, Lloh1038
	.loh AdrpLdr	Lloh1039, Lloh1040
	.loh AdrpAdd	Lloh1041, Lloh1042
	.loh AdrpAdrp	Lloh1043, Lloh1045
	.loh AdrpLdr	Lloh1043, Lloh1044
	.loh AdrpAdd	Lloh1046, Lloh1047
	.loh AdrpAdd	Lloh1048, Lloh1049
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function D3DDevice_Clear
lCPI135_0:
	.long	4294967280                      ; 0xfffffff0
	.long	4294967288                      ; 0xfffffff8
	.long	0                               ; 0x0
	.long	4294967272                      ; 0xffffffe8
lCPI135_1:
	.long	255                             ; 0xff
	.long	255                             ; 0xff
	.long	255                             ; 0xff
	.long	4294967295                      ; 0xffffffff
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_D3DDevice_Clear
	.p2align	4
_D3DDevice_Clear:                       ; @D3DDevice_Clear
; %bb.0:
	sub	sp, sp, #112
Lloh1050:
	adrp	x8, _device@PAGE+4936
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
Lloh1051:
	ldr	w8, [x8, _device@PAGEOFF+4936]
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	str	wzr, [sp, #12]
	cbz	w8, LBB135_25
; %bb.1:
	mov	w20, w0
	add	x0, sp, #12
	mov	w23, w4
	fmov	s8, s0
	mov	w24, w3
	mov	w25, w2
	mov	x19, x1
	bl	_targets_bind
	cbz	w0, LBB135_25
; %bb.2:
	ldr	w8, [sp, #12]
	ubfx	w9, w25, #4, #4
	tst	w25, #0xf0
	csel	w9, wzr, w9, eq
	tst	w25, #0x1
	cset	w10, eq
	tst	w25, #0x2
	cset	w11, eq
	cmp	w8, #0
	csinc	w8, w10, wzr, ne
	orr	w10, w9, #0x10
	csinc	w11, w11, wzr, ne
	cmp	w8, #0
	csel	w8, w9, w10, ne
	cmp	w11, #0
	orr	w9, w8, #0x20
	csel	w25, w8, w9, ne
	cbz	w25, LBB135_25
; %bb.3:
	adrp	x27, _stream_used@PAGE
	cmp	w20, #0
	cset	w8, ne
	cmp	w19, #0
	cset	w9, ne
	str	x19, [sp]                       ; 8-byte Spill
	ldr	w1, [x27, _stream_used@PAGEOFF]
	ands	w26, w8, w9
	lsl	w8, w20, #4
	mov	w9, #56                         ; =0x38
	add	w8, w8, #40
	csel	w28, w8, w9, ne
	add	w8, w1, w28
	cmp	w8, #1024, lsl #12              ; =4194304
	b.ls	LBB135_6
; %bb.4:
	adrp	x19, _stream@PAGE
	ldr	w0, [x19, _stream@PAGEOFF]
	cbz	w1, LBB135_7
; %bb.5:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh1052:
	adrp	x10, _streams@PAGE
Lloh1053:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x19, _stream@PAGEOFF]
	b	LBB135_7
LBB135_6:
Lloh1054:
	adrp	x8, _stream@PAGE
Lloh1055:
	ldr	w0, [x8, _stream@PAGEOFF]
LBB135_7:
Lloh1056:
	adrp	x8, lCPI135_0@PAGE
	dup	v0.4s, w24
	mov	w9, #2                          ; =0x2
	add	w10, w1, w28
Lloh1057:
	ldr	q1, [x8, lCPI135_0@PAGEOFF]
Lloh1058:
	adrp	x8, lCPI135_1@PAGE
	ushl	v0.4s, v0.4s, v1.4s
Lloh1059:
	ldr	q1, [x8, lCPI135_1@PAGEOFF]
	mov	w8, #1132396544                 ; =0x437f0000
	and	v0.16b, v0.16b, v1.16b
	dup	v1.4s, w8
	add	x8, x0, w1, sxtw
	stp	w9, w28, [x8]
	str	w10, [x27, _stream_used@PAGEOFF]
	ucvtf	v0.4s, v0.4s
	str	w25, [x8, #8]
	str	s8, [x8, #28]
	str	w23, [x8, #32]
	fdiv	v0.4s, v0.4s, v1.4s
	stur	q0, [x8, #12]
	tbz	w26, #0, LBB135_10
; %bb.8:
Lloh1060:
	adrp	x10, _target_scale.0@PAGE
Lloh1061:
	adrp	x9, _ui_offset@PAGE
Lloh1062:
	adrp	x13, _target_scale.1@PAGE
Lloh1063:
	add	x13, x13, _target_scale.1@PAGEOFF
Lloh1064:
	adrp	x12, _device@PAGE+140
Lloh1065:
	add	x12, x12, _device@PAGEOFF+140
Lloh1066:
	ldr	s0, [x10, _target_scale.0@PAGEOFF]
	add	x10, x8, #40
Lloh1067:
	ldr	w11, [x9, _ui_offset@PAGEOFF]
	cmp	w20, #1
	ldp	w16, w17, [x12]
	ldp	w0, w1, [x12, #8]
	ld1	{ v0.s }[1], [x13]
	b.ne	LBB135_11
; %bb.9:
	ldr	x23, [sp]                       ; 8-byte Reload
	mov	w12, wzr
	mov	w9, wzr
	b	LBB135_21
LBB135_10:
Lloh1068:
	adrp	x9, _target_scale.0@PAGE
Lloh1069:
	adrp	x10, _target_scale.1@PAGE
Lloh1070:
	ldr	s0, [x9, _target_scale.0@PAGEOFF]
Lloh1071:
	adrp	x9, _device@PAGE+140
Lloh1072:
	add	x9, x9, _device@PAGEOFF+140
Lloh1073:
	ldr	s2, [x10, _target_scale.1@PAGEOFF]
	mov	v3.16b, v0.16b
	ldr	d1, [x9]
	ucvtf	v1.2s, v1.2s
	mov	v3.s[1], v2.s[0]
	fmul	v1.2s, v3.2s, v1.2s
	movi	v3.2s, #63, lsl #24
	fadd	v1.2s, v1.2s, v3.2s
	fcvtms	v1.2s, v1.2s
	str	d1, [x8, #40]
	ldr	w10, [x9]
	ldr	w11, [x9, #8]
	add	w10, w11, w10
	fmov	w11, s1
	ucvtf	s3, w10
	fmul	s0, s0, s3
	fmov	s3, #0.50000000
	fadd	s0, s0, s3
	fcvtms	w10, s0
	sub	w10, w10, w11
	str	w10, [x8, #48]
	ldr	w10, [x9, #4]
	ldr	w9, [x9, #12]
	add	w9, w9, w10
	ucvtf	s0, w9
	mov	w9, v1.s[1]
	fmul	s5, s2, s0
	fadd	s0, s5, s3
	fcvtms	w10, s0
	sub	w10, w10, w9
	mov	w9, #1                          ; =0x1
	str	w10, [x8, #52]
	b	LBB135_24
LBB135_11:
	ldr	x23, [sp]                       ; 8-byte Reload
	movi	v1.2s, #63, lsl #24
	and	w14, w20, #0xfffffffe
	mov	w13, wzr
	mov	w9, wzr
	neg	w14, w14
	add	w15, w23, #16
	b	LBB135_13
	.p2align	4, , 8
LBB135_12:                              ;   in Loop: Header=BB135_13 Depth=1
	add	w15, w15, #32
	sub	w13, w13, #2
	cmp	w14, w13
	b.eq	LBB135_19
LBB135_13:                              ; =>This Inner Loop Header: Depth=1
	sub	w2, w15, #16
	sub	w3, w15, #12
	sub	w4, w15, #8
	sub	w5, w15, #4
	ldr	w2, [x2]
	ldr	w6, [x3]
	ldr	w7, [x4]
	ldr	w19, [x5]
	cmp	w2, w16
	csel	w3, w2, w16, hi
	cmp	w6, w17
	add	w2, w0, w16
	csel	w4, w6, w17, hi
	cmp	w7, w2
	add	w6, w1, w17
	csel	w5, w7, w2, lo
	cmp	w19, w6
	csel	w2, w19, w6, lo
	cmp	w3, w5
	b.ge	LBB135_16
; %bb.14:                               ;   in Loop: Header=BB135_13 Depth=1
	cmp	w4, w2
	b.ge	LBB135_16
; %bb.15:                               ;   in Loop: Header=BB135_13 Depth=1
	add	w16, w11, w3
	add	w17, w11, w5
	scvtf	s2, w4
	scvtf	s3, w2
	scvtf	s4, w16
	add	x16, x10, w9, sxtw #4
	scvtf	s5, w17
	add	w9, w9, #1
	mov	v4.s[1], v2.s[0]
	mov	v5.s[1], v3.s[0]
	fmul	v2.2s, v0.2s, v4.2s
	fmul	v3.2s, v0.2s, v5.2s
	fadd	v2.2s, v2.2s, v1.2s
	fadd	v3.2s, v3.2s, v1.2s
	fcvtms	v2.2s, v2.2s
	fcvtms	v3.2s, v3.2s
	sub	v3.2s, v3.2s, v2.2s
	stp	d2, d3, [x16]
	ldp	w16, w17, [x12]
	ldp	w0, w1, [x12, #8]
LBB135_16:                              ;   in Loop: Header=BB135_13 Depth=1
	add	w2, w15, #4
	add	w4, w15, #8
	ldr	w3, [x15]
	add	w5, w15, #12
	ldr	w2, [x2]
	ldr	w6, [x4]
	ldr	w7, [x5]
	cmp	w3, w16
	csel	w3, w3, w16, hi
	add	w5, w0, w16
	cmp	w2, w17
	csel	w4, w2, w17, hi
	cmp	w6, w5
	add	w2, w1, w17
	csel	w5, w6, w5, lo
	cmp	w7, w2
	csel	w2, w7, w2, lo
	cmp	w3, w5
	b.ge	LBB135_12
; %bb.17:                               ;   in Loop: Header=BB135_13 Depth=1
	cmp	w4, w2
	b.ge	LBB135_12
; %bb.18:                               ;   in Loop: Header=BB135_13 Depth=1
	add	w16, w11, w3
	add	w17, w11, w5
	scvtf	s2, w4
	scvtf	s3, w2
	scvtf	s4, w16
	add	x16, x10, w9, sxtw #4
	scvtf	s5, w17
	add	w9, w9, #1
	mov	v4.s[1], v2.s[0]
	mov	v5.s[1], v3.s[0]
	fmul	v2.2s, v0.2s, v4.2s
	fmul	v3.2s, v0.2s, v5.2s
	fadd	v2.2s, v2.2s, v1.2s
	fadd	v3.2s, v3.2s, v1.2s
	fcvtms	v2.2s, v2.2s
	fcvtms	v3.2s, v3.2s
	sub	v3.2s, v3.2s, v2.2s
	stp	d2, d3, [x16]
	ldp	w16, w17, [x12]
	ldp	w0, w1, [x12, #8]
	b	LBB135_12
LBB135_19:
	tbz	w20, #0, LBB135_24
; %bb.20:
	neg	w12, w13
LBB135_21:
	add	x12, x23, w12, sxtw #4
	ldp	w13, w14, [x12]
	ldp	w15, w12, [x12, #8]
	cmp	w13, w16
	csel	w13, w13, w16, hi
	cmp	w14, w17
	add	w16, w0, w16
	csel	w14, w14, w17, hi
	cmp	w15, w16
	add	w17, w1, w17
	csel	w15, w15, w16, lo
	cmp	w12, w17
	csel	w12, w12, w17, lo
	cmp	w13, w15
	b.ge	LBB135_24
; %bb.22:
	cmp	w14, w12
	b.ge	LBB135_24
; %bb.23:
	add	w13, w11, w13
	add	w11, w11, w15
	scvtf	s1, w14
	add	x10, x10, w9, sxtw #4
	scvtf	s2, w12
	add	w9, w9, #1
	scvtf	s3, w13
	scvtf	s4, w11
	mov	v3.s[1], v1.s[0]
	mov	v4.s[1], v2.s[0]
	movi	v1.2s, #63, lsl #24
	fmul	v2.2s, v0.2s, v3.2s
	fmul	v0.2s, v0.2s, v4.2s
	fadd	v2.2s, v2.2s, v1.2s
	fadd	v0.2s, v0.2s, v1.2s
	fcvtms	v1.2s, v2.2s
	fcvtms	v0.2s, v0.2s
	sub	v0.2s, v0.2s, v1.2s
	stp	d1, d0, [x10]
LBB135_24:
	str	w9, [x8, #36]
LBB135_25:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpLdr	Lloh1050, Lloh1051
	.loh AdrpAdd	Lloh1052, Lloh1053
	.loh AdrpLdr	Lloh1054, Lloh1055
	.loh AdrpLdr	Lloh1058, Lloh1059
	.loh AdrpAdrp	Lloh1056, Lloh1058
	.loh AdrpLdr	Lloh1056, Lloh1057
	.loh AdrpAdd	Lloh1064, Lloh1065
	.loh AdrpAdd	Lloh1062, Lloh1063
	.loh AdrpLdr	Lloh1061, Lloh1067
	.loh AdrpLdr	Lloh1060, Lloh1066
	.loh AdrpAdd	Lloh1071, Lloh1072
	.loh AdrpLdr	Lloh1069, Lloh1073
	.loh AdrpAdrp	Lloh1068, Lloh1071
	.loh AdrpLdr	Lloh1068, Lloh1070
                                        ; -- End function
	.p2align	4                               ; -- Begin function targets_bind
_targets_bind:                          ; @targets_bind
; %bb.0:
	sub	sp, sp, #160
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
Lloh1074:
	adrp	x20, _device@PAGE+132
Lloh1075:
	add	x20, x20, _device@PAGEOFF+132
	movi	v0.2d, #0000000000000000
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	mov	x19, x0
	add	x23, sp, #16
	add	x3, sp, #8
	ldr	w0, [x20]
	orr	x2, x23, #0x8
	mov	w1, wzr
	stp	x28, x27, [sp, #80]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	orr	x24, x23, #0x8
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	stp	q0, q0, [sp, #16]
	str	q0, [sp, #48]
	stur	q0, [sp, #60]
	bl	_surface_describe
	ldr	w0, [x20, #4]
	add	x2, x23, #32
	mov	x3, sp
	mov	w1, #1                          ; =0x1
	mov	w26, #1                         ; =0x1
	bl	_surface_describe
	ldr	w25, [sp, #44]
	mov	w0, wzr
	ldr	w20, [sp, #68]
	orr	w8, w25, w20
	cbz	w8, LBB136_44
; %bb.1:
	adrp	x28, _anti_aliasing_value@PAGE
	adrp	x27, _target_samples@PAGE
	ldr	w8, [x28, _anti_aliasing_value@PAGEOFF]
	str	w26, [x27, _target_samples@PAGEOFF]
	tbz	w8, #31, LBB136_3
; %bb.2:
	bl	_anti_aliasing_read
	ldr	w8, [x28, _anti_aliasing_value@PAGEOFF]
LBB136_3:
	adrp	x28, _anti_aliasing_samples@PAGE
	sub	w8, w8, #4
	ldr	w9, [x28, _anti_aliasing_samples@PAGEOFF]
	cmp	w9, #1
	ccmp	w8, #3, #2, hi
	b.hs	LBB136_25
; %bb.4:
	adrp	x14, _multisampled_count@PAGE
	cbz	w25, LBB136_7
; %bb.5:
	ldr	w26, [sp, #28]
	mov	x24, x14
	bl	_halo_screen_width
	mov	x14, x24
	orr	x24, x23, #0x8
	cmp	w26, w0
	b.ne	LBB136_7
; %bb.6:
	ldr	w8, [sp, #32]
	cmp	w8, #480
	b.eq	LBB136_10
LBB136_7:
	cbz	w20, LBB136_45
; %bb.8:
	ldr	w26, [sp, #52]
	mov	x24, x14
	bl	_halo_screen_width
	mov	x14, x24
	orr	x24, x23, #0x8
	cmp	w26, w0
	b.ne	LBB136_45
; %bb.9:
	ldr	w8, [sp, #56]
	cmp	w8, #480
	b.ne	LBB136_45
LBB136_10:
	ldr	w8, [x28, _anti_aliasing_samples@PAGEOFF]
	ldr	w9, [sp, #24]
	str	w8, [x27, _target_samples@PAGEOFF]
	cbz	w9, LBB136_17
; %bb.11:
	ldr	w10, [x14, _multisampled_count@PAGEOFF]
	cbz	w10, LBB136_16
; %bb.12:
	mov	w11, wzr
Lloh1076:
	adrp	x12, _multisampled@PAGE
Lloh1077:
	add	x12, x12, _multisampled@PAGEOFF
	.p2align	4, , 8
LBB136_13:                              ; =>This Inner Loop Header: Depth=1
	add	w13, w12, w11, lsl #2
	ldr	w13, [x13]
	cmp	w13, w9
	b.eq	LBB136_17
; %bb.14:                               ;   in Loop: Header=BB136_13 Depth=1
	add	w11, w11, #1
	cmp	w10, w11
	b.ne	LBB136_13
; %bb.15:
	cmp	w10, #63
	b.hi	LBB136_17
LBB136_16:
	add	w11, w10, #1
Lloh1078:
	adrp	x12, _multisampled@PAGE
Lloh1079:
	add	x12, x12, _multisampled@PAGEOFF
	str	w11, [x14, _multisampled_count@PAGEOFF]
	str	w9, [x12, w10, sxtw #2]
LBB136_17:
	ldr	w9, [sp, #48]
	cbz	w9, LBB136_24
; %bb.18:
	ldr	w10, [x14, _multisampled_count@PAGEOFF]
	cbz	w10, LBB136_23
; %bb.19:
	mov	w11, wzr
Lloh1080:
	adrp	x12, _multisampled@PAGE
Lloh1081:
	add	x12, x12, _multisampled@PAGEOFF
	.p2align	4, , 8
LBB136_20:                              ; =>This Inner Loop Header: Depth=1
	add	w13, w12, w11, lsl #2
	ldr	w13, [x13]
	cmp	w13, w9
	b.eq	LBB136_24
; %bb.21:                               ;   in Loop: Header=BB136_20 Depth=1
	add	w11, w11, #1
	cmp	w10, w11
	b.ne	LBB136_20
; %bb.22:
	cmp	w10, #63
	b.hi	LBB136_24
LBB136_23:
	add	w11, w10, #1
Lloh1082:
	adrp	x12, _multisampled@PAGE
Lloh1083:
	add	x12, x12, _multisampled@PAGEOFF
	str	w11, [x14, _multisampled_count@PAGEOFF]
	str	w9, [x12, w10, sxtw #2]
LBB136_24:
	str	w8, [sp, #72]
LBB136_25:
	cmp	w25, #0
	add	x8, sp, #8
	mov	x9, sp
	adrp	x26, _targets_known@PAGE
	csel	x8, x9, x8, eq
	adrp	x10, _target_scale.1@PAGE
	ldrb	w9, [x26, _targets_known@PAGEOFF]
	ldp	s1, s0, [x8]
	adrp	x8, _target_scale.0@PAGE
	str	s1, [x8, _target_scale.0@PAGEOFF]
	str	s0, [x10, _target_scale.1@PAGEOFF]
	cbz	w9, LBB136_39
; %bb.26:
Lloh1084:
	adrp	x8, _targets_told@PAGE+8
	ldr	w9, [sp, #24]
Lloh1085:
	ldr	w8, [x8, _targets_told@PAGEOFF+8]
	cmp	w9, w8
	b.ne	LBB136_39
; %bb.27:
Lloh1086:
	adrp	x8, _targets_told@PAGE+12
	ldr	w9, [sp, #28]
Lloh1087:
	ldr	w8, [x8, _targets_told@PAGEOFF+12]
	cmp	w9, w8
	b.ne	LBB136_39
; %bb.28:
Lloh1088:
	adrp	x8, _targets_told@PAGE+16
	ldr	w9, [sp, #32]
Lloh1089:
	ldr	w8, [x8, _targets_told@PAGEOFF+16]
	cmp	w9, w8
	b.ne	LBB136_39
; %bb.29:
Lloh1090:
	adrp	x8, _targets_told@PAGE+20
	ldr	w9, [sp, #36]
Lloh1091:
	ldr	w8, [x8, _targets_told@PAGEOFF+20]
	cmp	w9, w8
	b.ne	LBB136_39
; %bb.30:
Lloh1092:
	adrp	x8, _targets_told@PAGE+24
Lloh1093:
	add	x8, x8, _targets_told@PAGEOFF+24
	ldr	w9, [sp, #40]
	ldr	w10, [x8]
	cmp	w9, w10
	b.ne	LBB136_39
; %bb.31:
	ldr	w8, [x8, #4]
	cmp	w25, w8
	b.ne	LBB136_39
; %bb.32:
Lloh1094:
	adrp	x8, _targets_told@PAGE+32
	ldr	w9, [sp, #48]
Lloh1095:
	ldr	w8, [x8, _targets_told@PAGEOFF+32]
	cmp	w9, w8
	b.ne	LBB136_39
; %bb.33:
Lloh1096:
	adrp	x8, _targets_told@PAGE+36
	ldr	w9, [sp, #52]
Lloh1097:
	ldr	w8, [x8, _targets_told@PAGEOFF+36]
	cmp	w9, w8
	b.ne	LBB136_39
; %bb.34:
Lloh1098:
	adrp	x8, _targets_told@PAGE+40
	ldr	w9, [sp, #56]
Lloh1099:
	ldr	w8, [x8, _targets_told@PAGEOFF+40]
	cmp	w9, w8
	b.ne	LBB136_39
; %bb.35:
Lloh1100:
	adrp	x8, _targets_told@PAGE+44
	ldr	w9, [sp, #60]
Lloh1101:
	ldr	w8, [x8, _targets_told@PAGEOFF+44]
	cmp	w9, w8
	b.ne	LBB136_39
; %bb.36:
Lloh1102:
	adrp	x8, _targets_told@PAGE+48
Lloh1103:
	add	x8, x8, _targets_told@PAGEOFF+48
	ldr	w9, [sp, #64]
	ldr	w10, [x8]
	cmp	w9, w10
	b.ne	LBB136_39
; %bb.37:
	ldr	w8, [x8, #4]
	cmp	w20, w8
	b.ne	LBB136_39
; %bb.38:
Lloh1104:
	adrp	x8, _targets_told@PAGE+56
	ldr	w9, [sp, #72]
Lloh1105:
	ldr	w8, [x8, _targets_told@PAGEOFF+56]
	cmp	w9, w8
	b.eq	LBB136_43
LBB136_39:
	adrp	x27, _stream_used@PAGE
	adrp	x28, _stream@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
	ldr	w1, [x27, _stream_used@PAGEOFF]
	ldr	w0, [x28, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4037
	cmp	w8, w9
	b.hs	LBB136_41
; %bb.40:
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	adrp	x8, _stream_index@PAGE
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
	mov	w1, wzr
	ldr	w9, [x8, _stream_index@PAGEOFF]
	add	w9, w9, #1
	umull	x10, w9, w10
	lsr	x10, x10, #33
	add	w10, w10, w10, lsl #1
	sub	w9, w9, w10
Lloh1106:
	adrp	x10, _streams@PAGE
Lloh1107:
	add	x10, x10, _streams@PAGEOFF
	add	x0, x10, x9, lsl #22
	str	w9, [x8, _stream_index@PAGEOFF]
	str	w0, [x28, _stream@PAGEOFF]
LBB136_41:
	ldr	q0, [x24]
	add	x8, x0, w1, sxtw
	mov	x9, #1                          ; =0x1
	add	w10, w1, #60
	movk	x9, #60, lsl #32
	ldr	x11, [x24, #16]
	ldr	q2, [sp, #48]
	stur	q0, [x8, #8]
	ldur	q0, [x23, #32]
	str	x9, [x8]
	str	w10, [x27, _stream_used@PAGEOFF]
	ldur	x9, [x23, #48]
	ldr	w10, [sp, #72]
	str	q0, [x8, #32]
	ldp	q0, q1, [sp, #16]
	ldur	q3, [sp, #60]
	str	x11, [x8, #24]
	str	x9, [x8, #48]
	mov	w9, #1                          ; =0x1
	str	w10, [x8, #56]
Lloh1108:
	adrp	x8, _targets_told@PAGE
Lloh1109:
	add	x8, x8, _targets_told@PAGEOFF
	strb	w9, [x26, _targets_known@PAGEOFF]
	stp	q0, q1, [x8]
	str	q2, [x8, #32]
	stur	q3, [x8, #44]
	cbz	w25, LBB136_43
; %bb.42:
Lloh1110:
	adrp	x8, _device@PAGE+132
Lloh1111:
	ldr	w0, [x8, _device@PAGEOFF+132]
	bl	_rendered_note
LBB136_43:
	cmp	w20, #0
	mov	w0, #1                          ; =0x1
	cset	w8, ne
	str	w8, [x19]
LBB136_44:
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB136_45:
	ldr	w9, [sp, #24]
	ldr	w8, [x14, _multisampled_count@PAGEOFF]
	cbz	w9, LBB136_50
; %bb.46:
	cbz	w8, LBB136_50
; %bb.47:
	mov	w10, wzr
Lloh1112:
	adrp	x11, _multisampled@PAGE
Lloh1113:
	add	x11, x11, _multisampled@PAGEOFF
	.p2align	4, , 8
LBB136_48:                              ; =>This Inner Loop Header: Depth=1
	add	w12, w11, w10, lsl #2
	ldr	w12, [x12]
	cmp	w12, w9
	b.eq	LBB136_10
; %bb.49:                               ;   in Loop: Header=BB136_48 Depth=1
	add	w10, w10, #1
	cmp	w10, w8
	b.lo	LBB136_48
LBB136_50:
	ldr	w9, [sp, #48]
	cbz	w9, LBB136_25
; %bb.51:
	cbz	w8, LBB136_25
; %bb.52:
	mov	w10, wzr
Lloh1114:
	adrp	x11, _multisampled@PAGE
Lloh1115:
	add	x11, x11, _multisampled@PAGEOFF
	.p2align	4, , 8
LBB136_53:                              ; =>This Inner Loop Header: Depth=1
	add	w12, w11, w10, lsl #2
	ldr	w12, [x12]
	cmp	w12, w9
	b.eq	LBB136_10
; %bb.54:                               ;   in Loop: Header=BB136_53 Depth=1
	add	w10, w10, #1
	cmp	w10, w8
	b.lo	LBB136_53
	b	LBB136_25
	.loh AdrpAdd	Lloh1074, Lloh1075
	.loh AdrpAdd	Lloh1076, Lloh1077
	.loh AdrpAdd	Lloh1078, Lloh1079
	.loh AdrpAdd	Lloh1080, Lloh1081
	.loh AdrpAdd	Lloh1082, Lloh1083
	.loh AdrpLdr	Lloh1084, Lloh1085
	.loh AdrpLdr	Lloh1086, Lloh1087
	.loh AdrpLdr	Lloh1088, Lloh1089
	.loh AdrpLdr	Lloh1090, Lloh1091
	.loh AdrpAdd	Lloh1092, Lloh1093
	.loh AdrpLdr	Lloh1094, Lloh1095
	.loh AdrpLdr	Lloh1096, Lloh1097
	.loh AdrpLdr	Lloh1098, Lloh1099
	.loh AdrpLdr	Lloh1100, Lloh1101
	.loh AdrpAdd	Lloh1102, Lloh1103
	.loh AdrpLdr	Lloh1104, Lloh1105
	.loh AdrpAdd	Lloh1106, Lloh1107
	.loh AdrpAdd	Lloh1108, Lloh1109
	.loh AdrpLdr	Lloh1110, Lloh1111
	.loh AdrpAdd	Lloh1112, Lloh1113
	.loh AdrpAdd	Lloh1114, Lloh1115
                                        ; -- End function
	.globl	_D3DDevice_Present              ; -- Begin function D3DDevice_Present
	.p2align	4
_D3DDevice_Present:                     ; @D3DDevice_Present
; %bb.0:
	sub	sp, sp, #192
Lloh1116:
	adrp	x8, _device@PAGE+4936
	stp	x26, x25, [sp, #128]            ; 16-byte Folded Spill
	adrp	x25, _device@PAGE+4940
	stp	x28, x27, [sp, #112]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            ; 16-byte Folded Spill
Lloh1117:
	ldr	w8, [x8, _device@PAGEOFF+4936]
	stp	x20, x19, [sp, #160]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	cbz	w8, LBB137_16
; %bb.1:
	adrp	x24, _stream_used@PAGE
	adrp	x26, _stream@PAGE
	adrp	x27, _stream_index@PAGE
	mov	w9, #-4194305                   ; =0xffbfffff
	ldr	w1, [x24, _stream_used@PAGEOFF]
	ldr	w0, [x26, _stream@PAGEOFF]
	sub	w8, w1, #1023, lsl #12          ; =4190208
	sub	w8, w8, #4061
	cmp	w8, w9
	b.hs	LBB137_3
; %bb.2:
Lloh1118:
	adrp	x19, _streams@PAGE
Lloh1119:
	add	x19, x19, _streams@PAGEOFF
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_host_vk_submit
	ldr	w8, [x27, _stream_index@PAGEOFF]
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	mov	w1, wzr
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
	add	x0, x19, x8, lsl #22
	str	w8, [x27, _stream_index@PAGEOFF]
	str	w0, [x26, _stream@PAGEOFF]
LBB137_3:
	add	x28, x0, w1, sxtw
	mov	x8, #3                          ; =0x3
	movk	x8, #36, lsl #32
	add	w9, w1, #36
Lloh1120:
	adrp	x0, _device@PAGE+52
Lloh1121:
	add	x0, x0, _device@PAGEOFF+52
	add	x2, x28, #8
	sub	x3, x29, #76
	mov	w1, wzr
	str	x8, [x28]
	str	w9, [x24, _stream_used@PAGEOFF]
	bl	_surface_describe
	ldr	w8, [x28, #28]
	str	wzr, [x28, #32]
	cmp	w8, #1
	b.ne	LBB137_6
; %bb.4:
	bl	_map_pictures_capture_wanted
	cbz	w0, LBB137_6
; %bb.5:
	ldp	w19, w23, [x28, #20]
	mov	w1, #4                          ; =0x4
	mul	w0, w23, w19
	bl	_calloc
	mov	x20, x0
	str	w20, [x28, #32]
	ldr	w1, [x24, _stream_used@PAGEOFF]
	cbnz	w1, LBB137_7
	b	LBB137_8
LBB137_6:
	mov	x20, xzr
	mov	w19, wzr
	mov	w23, wzr
	ldr	w1, [x24, _stream_used@PAGEOFF]
	cbz	w1, LBB137_8
LBB137_7:
	ldr	w0, [x26, _stream@PAGEOFF]
	bl	_host_vk_submit
	ldr	w8, [x27, _stream_index@PAGEOFF]
	mov	w9, #43691                      ; =0xaaab
	movk	w9, #43690, lsl #16
	add	w8, w8, #1
	umull	x9, w8, w9
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
Lloh1122:
	adrp	x9, _streams@PAGE
Lloh1123:
	add	x9, x9, _streams@PAGEOFF
	add	w9, w9, w8, lsl #22
	str	w8, [x27, _stream_index@PAGEOFF]
	str	w9, [x26, _stream@PAGEOFF]
LBB137_8:
	str	wzr, [x24, _stream_used@PAGEOFF]
	cbz	w20, LBB137_10
; %bb.9:
	mov	x0, x20
	mov	w1, w19
	mov	w2, w23
	mov	w4, #1                          ; =0x1
	lsl	w3, w19, #2
	bl	_map_pictures_capture_take
	mov	x0, x20
	bl	_free
LBB137_10:
	adrp	x8, _targets_known@PAGE
	adrp	x9, _data_id@PAGE
Lloh1124:
	adrp	x0, _puts_this_frame@PAGE
Lloh1125:
	add	x0, x0, _puts_this_frame@PAGEOFF
	mov	w1, #1172                       ; =0x494
	strb	wzr, [x8, _targets_known@PAGEOFF]
	str	wzr, [x9, _data_id@PAGEOFF]
	bl	_bzero
	bl	_memory_watch_begin_frame
	bl	_vk_texture_cache_begin_frame
	ldr	w8, [x25, _device@PAGEOFF+4940]
	mov	w9, #61167                      ; =0xeeef
	adrp	x11, _stats@PAGE+8
	movk	w9, #61166, lsl #16
	mov	w10, #17476                     ; =0x4444
	movk	w10, #1092, lsl #16
	mul	w8, w8, w9
	ldr	w9, [x11, _stats@PAGEOFF+8]
	ror	w8, w8, #2
	add	w9, w9, #1
	cmp	w8, w10
	str	w9, [x11, _stats@PAGEOFF+8]
	b.ls	LBB137_33
LBB137_11:
	adrp	x8, _statistics_read@PAGE
	adrp	x19, _statistics_on@PAGE
	ldrb	w9, [x8, _statistics_read@PAGEOFF]
	cbz	w9, LBB137_13
; %bb.12:
	ldr	w0, [x19, _statistics_on@PAGEOFF]
	b	LBB137_14
LBB137_13:
	mov	w9, #1                          ; =0x1
Lloh1126:
	adrp	x0, l_.str.20@PAGE
Lloh1127:
	add	x0, x0, l_.str.20@PAGEOFF
	strb	w9, [x8, _statistics_read@PAGEOFF]
	bl	_config_boolean
	str	w0, [x19, _statistics_on@PAGEOFF]
LBB137_14:
Lloh1128:
	adrp	x8, _stats@PAGE+8
Lloh1129:
	ldr	w8, [x8, _stats@PAGEOFF+8]
	cmp	w8, #59
	ccmp	w0, #0, #4, hi
	b.eq	LBB137_16
; %bb.15:
Lloh1130:
	adrp	x19, _stats@PAGE
Lloh1131:
	add	x19, x19, _stats@PAGEOFF
	ldr	w11, [x25, _device@PAGEOFF+4940]
Lloh1132:
	adrp	x0, l_.str.21@PAGE
Lloh1133:
	add	x0, x0, l_.str.21@PAGEOFF
	ldp	w9, w10, [x19]
	ldur	q0, [x19, #12]
	str	w11, [sp]
	udiv	w9, w9, w8
	udiv	w8, w10, w8
	ldr	w10, [x19, #28]
	stur	q0, [sp, #12]
	str	w10, [sp, #28]
	stp	w9, w8, [sp, #4]
	bl	_platform_log
	ldp	x16, x17, [x19, #64]
	ldr	x0, [x19, #80]
	ldr	w9, [x19, #8]
	ldp	x8, x11, [x19, #32]
	lsr	x17, x17, #10
	lsr	x16, x16, #10
	ldp	x12, x15, [x19, #48]
	lsr	x0, x0, #10
	udiv	x17, x17, x9
	ldp	x1, x2, [x19, #112]
	udiv	x0, x0, x9
	lsr	x8, x8, #10
	ldp	w10, w13, [x19, #96]
	lsr	x11, x11, #10
	lsr	x12, x12, #10
	ldr	w14, [x19, #104]
	lsr	x15, x15, #10
	lsr	x1, x1, #10
	lsr	x2, x2, #10
	udiv	w10, w10, w9
	stp	x17, x0, [sp, #64]
	udiv	x8, x8, x9
Lloh1134:
	adrp	x0, l_.str.22@PAGE
Lloh1135:
	add	x0, x0, l_.str.22@PAGEOFF
	udiv	x11, x11, x9
	udiv	x12, x12, x9
	udiv	w14, w14, w9
	str	w10, [sp, #8]
	udiv	x15, x15, x9
	str	x8, [sp]
	udiv	w13, w13, w9
	udiv	x16, x16, x9
	stp	x11, x12, [sp, #16]
	udiv	x1, x1, x9
	str	w14, [sp, #32]
	udiv	x9, x2, x9
	str	x15, [sp, #40]
	str	w13, [sp, #48]
	str	x16, [sp, #56]
	stp	x1, x9, [sp, #80]
	bl	_platform_log
	movi	v0.2d, #0000000000000000
	stp	q0, q0, [x19]
	stp	q0, q0, [x19, #32]
	stp	q0, q0, [x19, #64]
	stp	q0, q0, [x19, #96]
LBB137_16:
	adrp	x19, _dump_folder.read_at@PAGE
	ldr	w20, [x19, _dump_folder.read_at@PAGEOFF]
	bl	_config_changes
	cmp	w20, w0
	b.ne	LBB137_18
; %bb.17:
Lloh1136:
	adrp	x8, _dump_folder.folder@PAGE
Lloh1137:
	ldr	w19, [x8, _dump_folder.folder@PAGEOFF]
	cbnz	w19, LBB137_20
	b	LBB137_128
LBB137_18:
	bl	_config_changes
	str	w0, [x19, _dump_folder.read_at@PAGEOFF]
Lloh1138:
	adrp	x0, l_.str.52@PAGE
Lloh1139:
	add	x0, x0, l_.str.52@PAGEOFF
	bl	_config_string
	mov	x19, x0
	adrp	x8, _dump_folder.folder@PAGE
	str	w19, [x8, _dump_folder.folder@PAGEOFF]
	cbz	w19, LBB137_128
; %bb.19:
	ldrb	w9, [x19]
	cbz	w9, LBB137_127
LBB137_20:
	adrp	x9, _dump_present_done@PAGE
	ldr	w8, [x25, _device@PAGEOFF+4940]
	ldrb	w10, [x9, _dump_present_done@PAGEOFF]
	cmp	w8, #60
	csinc	w11, w10, wzr, hs
	tbz	w11, #0, LBB137_22
; %bb.21:
	cbnz	w10, LBB137_29
	b	LBB137_128
LBB137_22:
	adrp	x20, _vertex_shaders_by_id_count@PAGE
	mov	w10, #1                         ; =0x1
	ldr	w8, [x20, _vertex_shaders_by_id_count@PAGEOFF]
	strb	w10, [x9, _dump_present_done@PAGEOFF]
	cbz	w8, LBB137_28
; %bb.23:
	adrp	x23, _vertex_shaders_by_id@PAGE
	mov	w24, wzr
	ldr	w9, [x23, _vertex_shaders_by_id@PAGEOFF]
	b	LBB137_25
	.p2align	4, , 8
LBB137_24:                              ;   in Loop: Header=BB137_25 Depth=1
	add	w24, w24, #1
	cmp	w24, w8
	b.hs	LBB137_28
LBB137_25:                              ; =>This Inner Loop Header: Depth=1
	add	w10, w9, w24, lsl #2
	ldr	w1, [x10]
	cbz	w1, LBB137_24
; %bb.26:                               ;   in Loop: Header=BB137_25 Depth=1
	ldr	w10, [x1, #8]
	cbz	w10, LBB137_24
; %bb.27:                               ;   in Loop: Header=BB137_25 Depth=1
	mov	x0, x19
	mov	w2, wzr
	bl	_dump_vertex_shader
	ldr	w9, [x23, _vertex_shaders_by_id@PAGEOFF]
	ldr	w8, [x20, _vertex_shaders_by_id_count@PAGEOFF]
	b	LBB137_24
LBB137_28:
	ldr	w8, [x25, _device@PAGEOFF+4940]
LBB137_29:
	mov	w9, #51555                      ; =0xc963
	movk	w9, #38447, lsl #16
	mul	w8, w8, w9
	mov	w9, #14854                      ; =0x3a06
	movk	w9, #109, lsl #16
	ror	w8, w8, #3
	cmp	w8, w9
	b.hi	LBB137_128
; %bb.30:
Lloh1140:
	adrp	x8, _dump_vertex_count@PAGE
	adrp	x10, _dump_present.logged_vertices@PAGE
Lloh1141:
	adrp	x9, _dump_pixel_count@PAGE
	adrp	x11, _dump_present.logged_pixels@PAGE
Lloh1142:
	ldr	w8, [x8, _dump_vertex_count@PAGEOFF]
	ldr	w12, [x10, _dump_present.logged_vertices@PAGEOFF]
Lloh1143:
	ldr	w9, [x9, _dump_pixel_count@PAGEOFF]
	cmp	w8, w12
	b.ne	LBB137_32
; %bb.31:
	ldr	w12, [x11, _dump_present.logged_pixels@PAGEOFF]
	cmp	w9, w12
	b.eq	LBB137_128
LBB137_32:
Lloh1144:
	adrp	x12, _dump_collisions@PAGE
Lloh1145:
	adrp	x0, l_.str.82@PAGE
Lloh1146:
	add	x0, x0, l_.str.82@PAGEOFF
	str	w8, [x10, _dump_present.logged_vertices@PAGEOFF]
	str	w9, [x11, _dump_present.logged_pixels@PAGEOFF]
Lloh1147:
	ldr	w12, [x12, _dump_collisions@PAGEOFF]
	stp	w8, w9, [sp]
	stp	w19, w12, [sp, #8]
	bl	_platform_log
	b	LBB137_128
LBB137_33:
	adrp	x8, _static_check_on.read@PAGE
	adrp	x19, _static_check_on.on@PAGE
	ldrb	w9, [x8, _static_check_on.read@PAGEOFF]
	tbnz	w9, #0, LBB137_36
; %bb.34:
	mov	w9, #1                          ; =0x1
Lloh1148:
	adrp	x0, l_.str.77@PAGE
Lloh1149:
	add	x0, x0, l_.str.77@PAGEOFF
	strb	w9, [x8, _static_check_on.read@PAGEOFF]
	bl	_config_boolean
	cmp	w0, #0
	cset	w8, ne
	str	w8, [x19, _static_check_on.on@PAGEOFF]
	cbz	w0, LBB137_11
; %bb.35:
Lloh1150:
	adrp	x0, l_.str.78@PAGE
Lloh1151:
	add	x0, x0, l_.str.78@PAGEOFF
	bl	_platform_log
LBB137_36:
	ldr	w8, [x19, _static_check_on.on@PAGEOFF]
	cbz	w8, LBB137_11
; %bb.37:
Lloh1152:
	adrp	x8, _static_lists@PAGE+4
Lloh1153:
	ldr	w28, [x8, _static_lists@PAGEOFF+4]
	cbz	w28, LBB137_82
; %bb.38:
Lloh1154:
	adrp	x8, _static_lists@PAGE
	mov	w27, wzr
Lloh1155:
	ldr	w26, [x8, _static_lists@PAGEOFF]
	b	LBB137_42
LBB137_39:                              ;   in Loop: Header=BB137_42 Depth=1
	mov	w10, wzr
	mov	w13, wzr
	mov	w8, wzr
	mov	w9, wzr
	mov	w11, wzr
LBB137_40:                              ;   in Loop: Header=BB137_42 Depth=1
	mov	w15, #1                         ; =0x1
Lloh1156:
	adrp	x0, l_.str.79@PAGE
Lloh1157:
	add	x0, x0, l_.str.79@PAGEOFF
	ldp	w12, w14, [x19, #24]
	str	w15, [x19, #20]
	stp	w23, w8, [sp, #8]
Lloh1158:
	adrp	x8, l_.str.81@PAGE
Lloh1159:
	add	x8, x8, l_.str.81@PAGEOFF
	stp	w14, w11, [sp, #32]
	stp	w13, w12, [sp, #24]
	stp	w9, w10, [sp, #16]
	stp	w8, w20, [sp]
	bl	_platform_log
Lloh1160:
	adrp	x8, _static_lists@PAGE
Lloh1161:
	add	x8, x8, _static_lists@PAGEOFF
	ldp	w26, w28, [x8]
	.p2align	4, , 8
LBB137_41:                              ;   in Loop: Header=BB137_42 Depth=1
	add	w27, w27, #1
	cmp	w27, w28
	b.hs	LBB137_82
LBB137_42:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB137_51 Depth 2
	sxtw	x8, w27
	add	x19, x26, x8, lsl #5
	ldr	w24, [x19, #16]
	cbz	w24, LBB137_41
; %bb.43:                               ;   in Loop: Header=BB137_42 Depth=1
	ldr	w8, [x19, #20]
	cbnz	w8, LBB137_41
; %bb.44:                               ;   in Loop: Header=BB137_42 Depth=1
	ldp	w20, w23, [x19]
	mov	x0, x24
	mov	x1, x20
	mov	w2, w23
	bl	_memcmp
	cbz	w0, LBB137_41
; %bb.45:                               ;   in Loop: Header=BB137_42 Depth=1
	cbz	w23, LBB137_39
; %bb.46:                               ;   in Loop: Header=BB137_42 Depth=1
	and	w12, w23, #0x3
	cmp	w23, #4
	b.hs	LBB137_48
; %bb.47:                               ;   in Loop: Header=BB137_42 Depth=1
	mov	w11, wzr
	mov	w9, wzr
	mov	w8, wzr
	mov	w13, wzr
	mov	w10, wzr
	mov	w14, wzr
	b	LBB137_68
LBB137_48:                              ;   in Loop: Header=BB137_42 Depth=1
	mov	w11, wzr
	mov	w9, wzr
	mov	w8, wzr
	mov	w13, wzr
	mov	w10, wzr
	and	w14, w23, #0xfffffffc
	add	w15, w20, #1
	add	w16, w24, #1
	mov	w17, #3                         ; =0x3
	b	LBB137_51
	.p2align	4, , 8
LBB137_49:                              ;   in Loop: Header=BB137_51 Depth=2
	mov	w13, w17
LBB137_50:                              ;   in Loop: Header=BB137_51 Depth=2
	add	w15, w15, #4
	add	w16, w16, #4
	add	w17, w17, #4
	subs	w14, w14, #4
	b.eq	LBB137_66
LBB137_51:                              ;   Parent Loop BB137_42 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w0, w16, #1
	sub	w1, w15, #1
	ldrb	w2, [x0]
	sub	w0, w17, #3
	ldrb	w1, [x1]
	cmp	w2, w1
	b.eq	LBB137_55
; %bb.52:                               ;   in Loop: Header=BB137_51 Depth=2
	cmp	w8, #0
	add	w13, w13, #1
	ldr	w1, [x19, #24]
	cset	w2, eq
	csel	w10, w0, w10, eq
	cmp	w0, w13
	csinc	w13, w2, wzr, ls
	add	w8, w8, #1
	add	w9, w9, w13
	cmp	w0, w1
	b.lo	LBB137_54
; %bb.53:                               ;   in Loop: Header=BB137_51 Depth=2
	ldr	w13, [x19, #28]
	cmp	w0, w13
	cinc	w11, w11, lo
LBB137_54:                              ;   in Loop: Header=BB137_51 Depth=2
	sub	w13, w17, #3
LBB137_55:                              ;   in Loop: Header=BB137_51 Depth=2
	ldrb	w1, [x16]
	ldrb	w2, [x15]
	cmp	w1, w2
	b.ne	LBB137_57
; %bb.56:                               ;   in Loop: Header=BB137_51 Depth=2
	mov	w1, w13
	b	LBB137_59
	.p2align	4, , 8
LBB137_57:                              ;   in Loop: Header=BB137_51 Depth=2
	sub	w1, w17, #2
	cmp	w8, #0
	add	w13, w13, #1
	cset	w2, eq
	ldr	w3, [x19, #24]
	csel	w10, w1, w10, eq
	cmp	w0, w13
	add	w8, w8, #1
	csinc	w13, w2, wzr, lo
	add	w9, w9, w13
	cmp	w1, w3
	b.lo	LBB137_59
; %bb.58:                               ;   in Loop: Header=BB137_51 Depth=2
	ldr	w13, [x19, #28]
	cmp	w1, w13
	cinc	w11, w11, lo
LBB137_59:                              ;   in Loop: Header=BB137_51 Depth=2
	add	w13, w16, #1
	add	w0, w15, #1
	ldrb	w13, [x13]
	ldrb	w0, [x0]
	cmp	w13, w0
	b.ne	LBB137_61
; %bb.60:                               ;   in Loop: Header=BB137_51 Depth=2
	mov	w13, w1
	b	LBB137_63
	.p2align	4, , 8
LBB137_61:                              ;   in Loop: Header=BB137_51 Depth=2
	sub	w13, w17, #1
	cmp	w8, #0
	add	w0, w1, #1
	cset	w1, eq
	ldr	w2, [x19, #24]
	csel	w10, w13, w10, eq
	cmp	w13, w0
	add	w8, w8, #1
	csinc	w0, w1, wzr, ls
	add	w9, w9, w0
	cmp	w13, w2
	b.lo	LBB137_63
; %bb.62:                               ;   in Loop: Header=BB137_51 Depth=2
	ldr	w0, [x19, #28]
	cmp	w13, w0
	cinc	w11, w11, lo
LBB137_63:                              ;   in Loop: Header=BB137_51 Depth=2
	add	w0, w16, #2
	add	w1, w15, #2
	ldrb	w0, [x0]
	ldrb	w1, [x1]
	cmp	w0, w1
	b.eq	LBB137_50
; %bb.64:                               ;   in Loop: Header=BB137_51 Depth=2
	cmp	w8, #0
	add	w13, w13, #1
	ldr	w0, [x19, #24]
	cset	w1, eq
	csel	w10, w17, w10, eq
	cmp	w17, w13
	csinc	w13, w1, wzr, ls
	add	w8, w8, #1
	add	w9, w9, w13
	cmp	w17, w0
	b.lo	LBB137_49
; %bb.65:                               ;   in Loop: Header=BB137_51 Depth=2
	ldr	w13, [x19, #28]
	cmp	w17, w13
	cinc	w11, w11, lo
	b	LBB137_49
LBB137_66:                              ;   in Loop: Header=BB137_42 Depth=1
	cbz	w12, LBB137_40
; %bb.67:                               ;   in Loop: Header=BB137_42 Depth=1
	sub	w14, w17, #3
LBB137_68:                              ;   in Loop: Header=BB137_42 Depth=1
	ldrb	w15, [x24, w14, sxtw]
	ldrb	w16, [x20, w14, sxtw]
	cmp	w15, w16
	b.eq	LBB137_72
; %bb.69:                               ;   in Loop: Header=BB137_42 Depth=1
	cmp	w8, #0
	add	w13, w13, #1
	ldr	w15, [x19, #24]
	cset	w16, eq
	csel	w10, w14, w10, eq
	cmp	w14, w13
	csinc	w13, w16, wzr, ls
	add	w8, w8, #1
	add	w9, w9, w13
	cmp	w14, w15
	b.lo	LBB137_71
; %bb.70:                               ;   in Loop: Header=BB137_42 Depth=1
	ldr	w13, [x19, #28]
	cmp	w14, w13
	cinc	w11, w11, lo
LBB137_71:                              ;   in Loop: Header=BB137_42 Depth=1
	mov	w13, w14
LBB137_72:                              ;   in Loop: Header=BB137_42 Depth=1
	cmp	w12, #1
	b.eq	LBB137_40
; %bb.73:                               ;   in Loop: Header=BB137_42 Depth=1
	add	w15, w14, #1
	ldrb	w16, [x24, w15, sxtw]
	ldrb	w17, [x20, w15, sxtw]
	cmp	w16, w17
	b.ne	LBB137_75
; %bb.74:                               ;   in Loop: Header=BB137_42 Depth=1
	mov	w15, w13
	b	LBB137_77
LBB137_75:                              ;   in Loop: Header=BB137_42 Depth=1
	cmp	w8, #0
	add	w13, w13, #1
	ldr	w16, [x19, #24]
	cset	w17, eq
	csel	w10, w15, w10, eq
	cmp	w14, w13
	csinc	w13, w17, wzr, lo
	add	w8, w8, #1
	add	w9, w9, w13
	cmp	w15, w16
	b.lo	LBB137_77
; %bb.76:                               ;   in Loop: Header=BB137_42 Depth=1
	ldr	w13, [x19, #28]
	cmp	w15, w13
	cinc	w11, w11, lo
LBB137_77:                              ;   in Loop: Header=BB137_42 Depth=1
	cmp	w12, #2
	b.eq	LBB137_79
; %bb.78:                               ;   in Loop: Header=BB137_42 Depth=1
	add	w13, w14, #2
	ldrb	w12, [x24, w13, sxtw]
	ldrb	w14, [x20, w13, sxtw]
	cmp	w12, w14
	b.ne	LBB137_80
LBB137_79:                              ;   in Loop: Header=BB137_42 Depth=1
	mov	w13, w15
	b	LBB137_40
LBB137_80:                              ;   in Loop: Header=BB137_42 Depth=1
	cmp	w8, #0
	add	w12, w15, #1
	ldr	w14, [x19, #24]
	cset	w15, eq
	csel	w10, w13, w10, eq
	cmp	w13, w12
	csinc	w12, w15, wzr, ls
	add	w8, w8, #1
	add	w9, w9, w12
	cmp	w13, w14
	b.lo	LBB137_40
; %bb.81:                               ;   in Loop: Header=BB137_42 Depth=1
	ldr	w12, [x19, #28]
	cmp	w13, w12
	cinc	w11, w11, lo
	b	LBB137_40
LBB137_82:
Lloh1162:
	adrp	x8, _static_lists@PAGE+16
Lloh1163:
	ldr	w28, [x8, _static_lists@PAGEOFF+16]
	cbz	w28, LBB137_11
; %bb.83:
Lloh1164:
	adrp	x8, _static_lists@PAGE+12
	mov	w27, wzr
Lloh1165:
	ldr	w26, [x8, _static_lists@PAGEOFF+12]
	b	LBB137_87
LBB137_84:                              ;   in Loop: Header=BB137_87 Depth=1
	mov	w10, wzr
	mov	w13, wzr
	mov	w8, wzr
	mov	w9, wzr
	mov	w11, wzr
LBB137_85:                              ;   in Loop: Header=BB137_87 Depth=1
	mov	w15, #1                         ; =0x1
Lloh1166:
	adrp	x0, l_.str.79@PAGE
Lloh1167:
	add	x0, x0, l_.str.79@PAGEOFF
	ldp	w12, w14, [x19, #24]
	str	w15, [x19, #20]
	stp	w23, w8, [sp, #8]
Lloh1168:
	adrp	x8, l_.str.80@PAGE
Lloh1169:
	add	x8, x8, l_.str.80@PAGEOFF
	stp	w14, w11, [sp, #32]
	stp	w13, w12, [sp, #24]
	stp	w9, w10, [sp, #16]
	stp	w8, w20, [sp]
	bl	_platform_log
Lloh1170:
	adrp	x8, _static_lists@PAGE+12
Lloh1171:
	add	x8, x8, _static_lists@PAGEOFF+12
	ldp	w26, w28, [x8]
	.p2align	4, , 8
LBB137_86:                              ;   in Loop: Header=BB137_87 Depth=1
	add	w27, w27, #1
	cmp	w27, w28
	b.hs	LBB137_11
LBB137_87:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB137_96 Depth 2
	sxtw	x8, w27
	add	x19, x26, x8, lsl #5
	ldr	w24, [x19, #16]
	cbz	w24, LBB137_86
; %bb.88:                               ;   in Loop: Header=BB137_87 Depth=1
	ldr	w8, [x19, #20]
	cbnz	w8, LBB137_86
; %bb.89:                               ;   in Loop: Header=BB137_87 Depth=1
	ldp	w20, w23, [x19]
	mov	x0, x24
	mov	x1, x20
	mov	w2, w23
	bl	_memcmp
	cbz	w0, LBB137_86
; %bb.90:                               ;   in Loop: Header=BB137_87 Depth=1
	cbz	w23, LBB137_84
; %bb.91:                               ;   in Loop: Header=BB137_87 Depth=1
	and	w12, w23, #0x3
	cmp	w23, #4
	b.hs	LBB137_93
; %bb.92:                               ;   in Loop: Header=BB137_87 Depth=1
	mov	w11, wzr
	mov	w9, wzr
	mov	w8, wzr
	mov	w13, wzr
	mov	w10, wzr
	mov	w14, wzr
	b	LBB137_113
LBB137_93:                              ;   in Loop: Header=BB137_87 Depth=1
	mov	w11, wzr
	mov	w9, wzr
	mov	w8, wzr
	mov	w13, wzr
	mov	w10, wzr
	and	w14, w23, #0xfffffffc
	add	w15, w20, #1
	add	w16, w24, #1
	mov	w17, #3                         ; =0x3
	b	LBB137_96
	.p2align	4, , 8
LBB137_94:                              ;   in Loop: Header=BB137_96 Depth=2
	mov	w13, w17
LBB137_95:                              ;   in Loop: Header=BB137_96 Depth=2
	add	w15, w15, #4
	add	w16, w16, #4
	add	w17, w17, #4
	subs	w14, w14, #4
	b.eq	LBB137_111
LBB137_96:                              ;   Parent Loop BB137_87 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w0, w16, #1
	sub	w1, w15, #1
	ldrb	w2, [x0]
	sub	w0, w17, #3
	ldrb	w1, [x1]
	cmp	w2, w1
	b.eq	LBB137_100
; %bb.97:                               ;   in Loop: Header=BB137_96 Depth=2
	cmp	w8, #0
	add	w13, w13, #1
	ldr	w1, [x19, #24]
	cset	w2, eq
	csel	w10, w0, w10, eq
	cmp	w0, w13
	csinc	w13, w2, wzr, ls
	add	w8, w8, #1
	add	w9, w9, w13
	cmp	w0, w1
	b.lo	LBB137_99
; %bb.98:                               ;   in Loop: Header=BB137_96 Depth=2
	ldr	w13, [x19, #28]
	cmp	w0, w13
	cinc	w11, w11, lo
LBB137_99:                              ;   in Loop: Header=BB137_96 Depth=2
	sub	w13, w17, #3
LBB137_100:                             ;   in Loop: Header=BB137_96 Depth=2
	ldrb	w1, [x16]
	ldrb	w2, [x15]
	cmp	w1, w2
	b.ne	LBB137_102
; %bb.101:                              ;   in Loop: Header=BB137_96 Depth=2
	mov	w1, w13
	b	LBB137_104
	.p2align	4, , 8
LBB137_102:                             ;   in Loop: Header=BB137_96 Depth=2
	sub	w1, w17, #2
	cmp	w8, #0
	add	w13, w13, #1
	cset	w2, eq
	ldr	w3, [x19, #24]
	csel	w10, w1, w10, eq
	cmp	w0, w13
	add	w8, w8, #1
	csinc	w13, w2, wzr, lo
	add	w9, w9, w13
	cmp	w1, w3
	b.lo	LBB137_104
; %bb.103:                              ;   in Loop: Header=BB137_96 Depth=2
	ldr	w13, [x19, #28]
	cmp	w1, w13
	cinc	w11, w11, lo
LBB137_104:                             ;   in Loop: Header=BB137_96 Depth=2
	add	w13, w16, #1
	add	w0, w15, #1
	ldrb	w13, [x13]
	ldrb	w0, [x0]
	cmp	w13, w0
	b.ne	LBB137_106
; %bb.105:                              ;   in Loop: Header=BB137_96 Depth=2
	mov	w13, w1
	b	LBB137_108
	.p2align	4, , 8
LBB137_106:                             ;   in Loop: Header=BB137_96 Depth=2
	sub	w13, w17, #1
	cmp	w8, #0
	add	w0, w1, #1
	cset	w1, eq
	ldr	w2, [x19, #24]
	csel	w10, w13, w10, eq
	cmp	w13, w0
	add	w8, w8, #1
	csinc	w0, w1, wzr, ls
	add	w9, w9, w0
	cmp	w13, w2
	b.lo	LBB137_108
; %bb.107:                              ;   in Loop: Header=BB137_96 Depth=2
	ldr	w0, [x19, #28]
	cmp	w13, w0
	cinc	w11, w11, lo
LBB137_108:                             ;   in Loop: Header=BB137_96 Depth=2
	add	w0, w16, #2
	add	w1, w15, #2
	ldrb	w0, [x0]
	ldrb	w1, [x1]
	cmp	w0, w1
	b.eq	LBB137_95
; %bb.109:                              ;   in Loop: Header=BB137_96 Depth=2
	cmp	w8, #0
	add	w13, w13, #1
	ldr	w0, [x19, #24]
	cset	w1, eq
	csel	w10, w17, w10, eq
	cmp	w17, w13
	csinc	w13, w1, wzr, ls
	add	w8, w8, #1
	add	w9, w9, w13
	cmp	w17, w0
	b.lo	LBB137_94
; %bb.110:                              ;   in Loop: Header=BB137_96 Depth=2
	ldr	w13, [x19, #28]
	cmp	w17, w13
	cinc	w11, w11, lo
	b	LBB137_94
LBB137_111:                             ;   in Loop: Header=BB137_87 Depth=1
	cbz	w12, LBB137_85
; %bb.112:                              ;   in Loop: Header=BB137_87 Depth=1
	sub	w14, w17, #3
LBB137_113:                             ;   in Loop: Header=BB137_87 Depth=1
	ldrb	w15, [x24, w14, sxtw]
	ldrb	w16, [x20, w14, sxtw]
	cmp	w15, w16
	b.eq	LBB137_117
; %bb.114:                              ;   in Loop: Header=BB137_87 Depth=1
	cmp	w8, #0
	add	w13, w13, #1
	ldr	w15, [x19, #24]
	cset	w16, eq
	csel	w10, w14, w10, eq
	cmp	w14, w13
	csinc	w13, w16, wzr, ls
	add	w8, w8, #1
	add	w9, w9, w13
	cmp	w14, w15
	b.lo	LBB137_116
; %bb.115:                              ;   in Loop: Header=BB137_87 Depth=1
	ldr	w13, [x19, #28]
	cmp	w14, w13
	cinc	w11, w11, lo
LBB137_116:                             ;   in Loop: Header=BB137_87 Depth=1
	mov	w13, w14
LBB137_117:                             ;   in Loop: Header=BB137_87 Depth=1
	cmp	w12, #1
	b.eq	LBB137_85
; %bb.118:                              ;   in Loop: Header=BB137_87 Depth=1
	add	w15, w14, #1
	ldrb	w16, [x24, w15, sxtw]
	ldrb	w17, [x20, w15, sxtw]
	cmp	w16, w17
	b.ne	LBB137_120
; %bb.119:                              ;   in Loop: Header=BB137_87 Depth=1
	mov	w15, w13
	b	LBB137_122
LBB137_120:                             ;   in Loop: Header=BB137_87 Depth=1
	cmp	w8, #0
	add	w13, w13, #1
	ldr	w16, [x19, #24]
	cset	w17, eq
	csel	w10, w15, w10, eq
	cmp	w14, w13
	csinc	w13, w17, wzr, lo
	add	w8, w8, #1
	add	w9, w9, w13
	cmp	w15, w16
	b.lo	LBB137_122
; %bb.121:                              ;   in Loop: Header=BB137_87 Depth=1
	ldr	w13, [x19, #28]
	cmp	w15, w13
	cinc	w11, w11, lo
LBB137_122:                             ;   in Loop: Header=BB137_87 Depth=1
	cmp	w12, #2
	b.eq	LBB137_124
; %bb.123:                              ;   in Loop: Header=BB137_87 Depth=1
	add	w13, w14, #2
	ldrb	w12, [x24, w13, sxtw]
	ldrb	w14, [x20, w13, sxtw]
	cmp	w12, w14
	b.ne	LBB137_125
LBB137_124:                             ;   in Loop: Header=BB137_87 Depth=1
	mov	w13, w15
	b	LBB137_85
LBB137_125:                             ;   in Loop: Header=BB137_87 Depth=1
	cmp	w8, #0
	add	w12, w15, #1
	ldr	w14, [x19, #24]
	cset	w15, eq
	csel	w10, w13, w10, eq
	cmp	w13, w12
	csinc	w12, w15, wzr, ls
	add	w8, w8, #1
	add	w9, w9, w12
	cmp	w13, w14
	b.lo	LBB137_85
; %bb.126:                              ;   in Loop: Header=BB137_87 Depth=1
	ldr	w12, [x19, #28]
	cmp	w13, w12
	cinc	w11, w11, lo
	b	LBB137_85
LBB137_127:
	str	wzr, [x8, _dump_folder.folder@PAGEOFF]
LBB137_128:
	bl	_platform_video_swap
	ldr	w8, [x25, _device@PAGEOFF+4940]
	add	w8, w8, #1
	str	w8, [x25, _device@PAGEOFF+4940]
	bl	_platform_pump_events
Lloh1172:
	adrp	x0, _vertical_blank_lock@PAGE
Lloh1173:
	add	x0, x0, _vertical_blank_lock@PAGEOFF
	bl	_pthread_mutex_lock
	bl	_halo_interpolation_enabled
	cbz	w0, LBB137_130
; %bb.129:
	adrp	x8, _flip_count@PAGE
	ldr	w9, [x8, _flip_count@PAGEOFF]
	add	w9, w9, #1
	str	w9, [x8, _flip_count@PAGEOFF]
	b	LBB137_140
LBB137_130:
	adrp	x20, _vertical_blank_thread_started@PAGE
	ldrb	w8, [x20, _vertical_blank_thread_started@PAGEOFF]
	tbnz	w8, #0, LBB137_136
; %bb.131:
Lloh1174:
	adrp	x19, _vertical_blank_lock@PAGE
Lloh1175:
	add	x19, x19, _vertical_blank_lock@PAGEOFF
	mov	x0, x19
	bl	_pthread_mutex_unlock
	mov	x0, x19
	bl	_pthread_mutex_lock
	ldrb	w8, [x20, _vertical_blank_thread_started@PAGEOFF]
	tbnz	w8, #0, LBB137_135
; %bb.132:
Lloh1176:
	adrp	x2, _vertical_blank_thread@PAGE
Lloh1177:
	add	x2, x2, _vertical_blank_thread@PAGEOFF
	sub	x0, x29, #68
	mov	x1, xzr
	mov	x3, xzr
	bl	_pthread_create
	cbz	w0, LBB137_134
; %bb.133:
Lloh1178:
	adrp	x0, l_.str.27@PAGE
Lloh1179:
	add	x0, x0, l_.str.27@PAGEOFF
	bl	_platform_log
	b	LBB137_135
LBB137_134:
	ldur	w0, [x29, #-68]
	bl	_pthread_detach
	mov	w8, #1                          ; =0x1
	strb	w8, [x20, _vertical_blank_thread_started@PAGEOFF]
LBB137_135:
	mov	x0, x19
	bl	_pthread_mutex_unlock
	mov	x0, x19
	bl	_pthread_mutex_lock
LBB137_136:
	adrp	x23, _pending_flips@PAGE
	ldr	w8, [x23, _pending_flips@PAGEOFF]
	cmp	w8, #2
	b.lo	LBB137_139
; %bb.137:
Lloh1180:
	adrp	x19, _vertical_blank_condition@PAGE
Lloh1181:
	add	x19, x19, _vertical_blank_condition@PAGEOFF
Lloh1182:
	adrp	x20, _vertical_blank_lock@PAGE
Lloh1183:
	add	x20, x20, _vertical_blank_lock@PAGEOFF
	.p2align	4, , 8
LBB137_138:                             ; =>This Inner Loop Header: Depth=1
	mov	x0, x19
	mov	x1, x20
	bl	_pthread_cond_wait
	ldr	w8, [x23, _pending_flips@PAGEOFF]
	cmp	w8, #1
	b.hi	LBB137_138
LBB137_139:
	add	w8, w8, #1
	str	w8, [x23, _pending_flips@PAGEOFF]
LBB137_140:
Lloh1184:
	adrp	x0, _vertical_blank_lock@PAGE
Lloh1185:
	add	x0, x0, _vertical_blank_lock@PAGEOFF
	bl	_pthread_mutex_unlock
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
	.loh AdrpLdr	Lloh1116, Lloh1117
	.loh AdrpAdd	Lloh1118, Lloh1119
	.loh AdrpAdd	Lloh1120, Lloh1121
	.loh AdrpAdd	Lloh1122, Lloh1123
	.loh AdrpAdd	Lloh1124, Lloh1125
	.loh AdrpAdd	Lloh1126, Lloh1127
	.loh AdrpLdr	Lloh1128, Lloh1129
	.loh AdrpAdd	Lloh1134, Lloh1135
	.loh AdrpAdd	Lloh1132, Lloh1133
	.loh AdrpAdd	Lloh1130, Lloh1131
	.loh AdrpLdr	Lloh1136, Lloh1137
	.loh AdrpAdd	Lloh1138, Lloh1139
	.loh AdrpLdr	Lloh1141, Lloh1143
	.loh AdrpLdr	Lloh1140, Lloh1142
	.loh AdrpAdd	Lloh1145, Lloh1146
	.loh AdrpLdr	Lloh1144, Lloh1147
	.loh AdrpAdd	Lloh1148, Lloh1149
	.loh AdrpAdd	Lloh1150, Lloh1151
	.loh AdrpLdr	Lloh1152, Lloh1153
	.loh AdrpLdr	Lloh1154, Lloh1155
	.loh AdrpAdd	Lloh1160, Lloh1161
	.loh AdrpAdd	Lloh1158, Lloh1159
	.loh AdrpAdd	Lloh1156, Lloh1157
	.loh AdrpLdr	Lloh1162, Lloh1163
	.loh AdrpLdr	Lloh1164, Lloh1165
	.loh AdrpAdd	Lloh1170, Lloh1171
	.loh AdrpAdd	Lloh1168, Lloh1169
	.loh AdrpAdd	Lloh1166, Lloh1167
	.loh AdrpAdd	Lloh1172, Lloh1173
	.loh AdrpAdd	Lloh1174, Lloh1175
	.loh AdrpAdd	Lloh1176, Lloh1177
	.loh AdrpAdd	Lloh1178, Lloh1179
	.loh AdrpAdd	Lloh1182, Lloh1183
	.loh AdrpAdd	Lloh1180, Lloh1181
	.loh AdrpAdd	Lloh1184, Lloh1185
                                        ; -- End function
	.globl	_D3DDevice_PersistDisplay       ; -- Begin function D3DDevice_PersistDisplay
	.p2align	4
_D3DDevice_PersistDisplay:              ; @D3DDevice_PersistDisplay
; %bb.0:
	mov	w0, wzr
	ret
                                        ; -- End function
	.p2align	4                               ; -- Begin function vertical_blank_thread
_vertical_blank_thread:                 ; @vertical_blank_thread
; %bb.0:
	sub	sp, sp, #96
	add	x1, sp, #8
	mov	w0, #1                          ; =0x1
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	bl	_clock_gettime
	mov	w24, #51712                     ; =0xca00
	adrp	x26, _vertical_blank_count@PAGE
	movk	w24, #15258, lsl #16
	adrp	x27, _pending_flips@PAGE
	adrp	x28, _vertical_blank_callback@PAGE
	adrp	x25, _flip_count@PAGE
Lloh1186:
	adrp	x19, _vertical_blank_lock@PAGE
Lloh1187:
	add	x19, x19, _vertical_blank_lock@PAGEOFF
Lloh1188:
	adrp	x20, _vertical_blank_condition@PAGE
Lloh1189:
	add	x20, x20, _vertical_blank_condition@PAGEOFF
	.p2align	4, , 8
LBB139_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	mov	w9, #20522                      ; =0x502a
	movk	w9, #254, lsl #16
	add	w9, w8, w9
	cmp	w9, w24
	str	w9, [sp, #12]
	b.lt	LBB139_3
; %bb.2:                                ;   in Loop: Header=BB139_1 Depth=1
	ldr	w9, [sp, #8]
	mov	w10, #34346                     ; =0x862a
	movk	w10, #50531, lsl #16
	add	w8, w8, w10
	add	w9, w9, #1
	stp	w9, w8, [sp, #8]
LBB139_3:                               ;   in Loop: Header=BB139_1 Depth=1
	add	x2, sp, #8
	mov	w0, #1                          ; =0x1
	mov	w1, #1                          ; =0x1
	mov	x3, xzr
	bl	_clock_nanosleep
	mov	x0, x19
	bl	_pthread_mutex_lock
	ldr	w9, [x26, _vertical_blank_count@PAGEOFF]
	ldr	w8, [x27, _pending_flips@PAGEOFF]
	add	w9, w9, #1
	str	w9, [x26, _vertical_blank_count@PAGEOFF]
	cbz	w8, LBB139_5
; %bb.4:                                ;   in Loop: Header=BB139_1 Depth=1
	sub	w8, w8, #1
	str	w8, [x27, _pending_flips@PAGEOFF]
	ldr	w8, [x25, _flip_count@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x25, _flip_count@PAGEOFF]
LBB139_5:                               ;   in Loop: Header=BB139_1 Depth=1
	ldr	w23, [x28, _vertical_blank_callback@PAGEOFF]
	mov	x0, x20
	bl	_pthread_cond_broadcast
	mov	x0, x19
	bl	_pthread_mutex_unlock
	cbz	w23, LBB139_1
; %bb.6:                                ;   in Loop: Header=BB139_1 Depth=1
	mov	w0, wzr
	blr	x23
	b	LBB139_1
	.loh AdrpAdd	Lloh1188, Lloh1189
	.loh AdrpAdd	Lloh1186, Lloh1187
                                        ; -- End function
	.p2align	4                               ; -- Begin function shader_self_test_one
_shader_self_test_one:                  ; @shader_self_test_one
; %bb.0:
	sub	sp, sp, #96
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	mov	x19, x0
	mov	x0, x3
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	mov	w20, w4
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	mov	x23, x3
	mov	x24, x2
	mov	w25, w1
	str	wzr, [sp, #28]
	bl	_strlen
	mov	w3, w0
	mov	w0, w25
	mov	x1, x24
	mov	w2, w23
	bl	_host_vk_shader_compile
	mov	w26, #1                         ; =0x1
	.p2align	4, , 8
LBB140_1:                               ; =>This Inner Loop Header: Depth=1
	add	x2, sp, #28
	mov	w0, w25
	mov	x1, x24
	bl	_host_vk_shader_find
	ldr	w8, [sp, #28]
	mov	w23, w0
	cbnz	w0, LBB140_5
; %bb.2:                                ;   in Loop: Header=BB140_1 Depth=1
	cmp	w8, #3
	b.eq	LBB140_5
; %bb.3:                                ;   in Loop: Header=BB140_1 Depth=1
	mov	w0, #10000                      ; =0x2710
	bl	_usleep
	add	w26, w26, #1
	cmp	w26, #501
	b.ne	LBB140_1
; %bb.4:
	ldr	w8, [sp, #28]
LBB140_5:
	cmp	w23, #0
Lloh1190:
	adrp	x9, l_.str.42@PAGE
Lloh1191:
	add	x9, x9, l_.str.42@PAGEOFF
	cset	w10, ne
	cmp	w20, w10
Lloh1192:
	adrp	x12, l_.str.41@PAGE
Lloh1193:
	add	x12, x12, l_.str.41@PAGEOFF
	cset	w11, eq
	cmp	w8, #3
Lloh1194:
	adrp	x0, l_.str.40@PAGE
Lloh1195:
	add	x0, x0, l_.str.40@PAGEOFF
	csinc	w10, w10, wzr, ne
	tst	w11, w10
	stp	w8, w26, [sp, #12]
	csel	x9, x12, x9, ne
	str	w19, [sp]
	stp	w9, w23, [sp, #4]
	bl	_platform_log
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh1194, Lloh1195
	.loh AdrpAdd	Lloh1192, Lloh1193
	.loh AdrpAdd	Lloh1190, Lloh1191
                                        ; -- End function
	.p2align	4                               ; -- Begin function rendered_note
_rendered_note:                         ; @rendered_note
; %bb.0:
	sub	sp, sp, #96
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	mov	x19, x0
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	cbz	w19, LBB141_13
; %bb.1:
	ldr	w8, [x19, #4]
	cbz	w8, LBB141_13
; %bb.2:
	ldp	w0, w1, [x19, #12]
	add	x2, sp, #12
	bl	_xgpu_texture_describe
	ldr	w8, [sp, #12]
	sub	w8, w8, #50
	cmn	w8, #9
	b.hi	LBB141_13
; %bb.3:
	adrp	x9, _rendered_count@PAGE
Lloh1196:
	adrp	x8, _rendered@PAGE
Lloh1197:
	add	x8, x8, _rendered@PAGEOFF
	ldp	w10, w12, [sp, #16]
	ldr	w11, [x9, _rendered_count@PAGEOFF]
	cbz	w11, LBB141_11
; %bb.4:
	ldr	w14, [x19, #4]
	mov	w13, wzr
Lloh1198:
	adrp	x15, _rendered@PAGE+8
Lloh1199:
	add	x15, x15, _rendered@PAGEOFF+8
	b	LBB141_6
	.p2align	4, , 8
LBB141_5:                               ;   in Loop: Header=BB141_6 Depth=1
	add	w13, w13, #1
	add	w15, w15, #16
	cmp	w11, w13
	b.eq	LBB141_10
LBB141_6:                               ; =>This Inner Loop Header: Depth=1
	sub	w16, w15, #8
	ldr	w16, [x16]
	cmp	w16, w14
	b.ne	LBB141_5
; %bb.7:                                ;   in Loop: Header=BB141_6 Depth=1
	sub	w16, w15, #4
	ldr	w16, [x16]
	cmp	w16, w10
	b.ne	LBB141_5
; %bb.8:                                ;   in Loop: Header=BB141_6 Depth=1
	ldr	w16, [x15]
	cmp	w16, w12
	b.ne	LBB141_5
; %bb.9:
	adrp	x9, _rendered_clock@PAGE
	ldr	w10, [x9, _rendered_clock@PAGEOFF]
	add	w12, w10, #1
	str	w12, [x9, _rendered_clock@PAGEOFF]
	b	LBB141_12
LBB141_10:
	cmp	w11, #256
	b.eq	LBB141_13
LBB141_11:
	adrp	x14, _rendered_clock@PAGE
	add	x16, x8, w11, sxtw #4
	ldr	w15, [x19, #4]
	add	w17, w11, #1
	ldr	w13, [x14, _rendered_clock@PAGEOFF]
	stp	w10, w12, [x16, #4]
	str	w15, [x16]
	str	w17, [x9, _rendered_count@PAGEOFF]
	add	w12, w13, #1
	mov	w13, w11
	str	w12, [x14, _rendered_clock@PAGEOFF]
LBB141_12:
	add	x8, x8, w13, sxtw #4
	str	w12, [x8, #12]
LBB141_13:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh1196, Lloh1197
	.loh AdrpAdd	Lloh1198, Lloh1199
                                        ; -- End function
	.p2align	4                               ; -- Begin function static_ref
_static_ref:                            ; @static_ref
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	mov	w8, #12                         ; =0xc
Lloh1200:
	adrp	x9, _static_lists@PAGE
Lloh1201:
	add	x9, x9, _static_lists@PAGEOFF
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	smaddl	x25, w2, w8, x9
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	mov	x19, x3
	mov	w24, w2
	mov	w23, w1
	mov	x20, x0
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	ldr	w8, [x25, #4]
	add	x29, sp, #64
	cbz	w8, LBB142_3
; %bb.1:
	ldr	w9, [x25]
	mov	w26, wzr
	.p2align	4, , 8
LBB142_2:                               ; =>This Inner Loop Header: Depth=1
	add	w10, w26, w8
	lsr	w10, w10, #1
	ubfiz	x11, x10, #5, #32
	ldr	w11, [x9, x11]
	cmp	w11, w20
	csel	w8, w10, w8, hi
	csinc	w26, w26, w10, hi
	cmp	w26, w8
	b.lo	LBB142_2
	b	LBB142_4
LBB142_3:
	mov	w26, wzr
LBB142_4:
	adrp	x8, _static_ref.read@PAGE
	adrp	x27, _static_ref.on@PAGE
	ldrb	w9, [x8, _static_ref.read@PAGEOFF]
	tbnz	w9, #0, LBB142_7
; %bb.5:
	mov	w9, #1                          ; =0x1
Lloh1202:
	adrp	x0, l_.str.75@PAGE
Lloh1203:
	add	x0, x0, l_.str.75@PAGEOFF
	strb	w9, [x8, _static_ref.read@PAGEOFF]
	bl	_config_boolean
	cmp	w0, #0
	cset	w8, ne
	str	w8, [x27, _static_ref.on@PAGEOFF]
	cbnz	w0, LBB142_7
; %bb.6:
Lloh1204:
	adrp	x0, l_.str.76@PAGE
Lloh1205:
	add	x0, x0, l_.str.76@PAGEOFF
	bl	_platform_log
LBB142_7:
	mov	w0, wzr
	cbz	w23, LBB142_13
; %bb.8:
	cbz	w26, LBB142_13
; %bb.9:
	ldr	w8, [x27, _static_ref.on@PAGEOFF]
	cbz	w8, LBB142_13
; %bb.10:
	ldr	w8, [x25]
	add	w25, w8, w26, lsl #5
	sub	w8, w25, #32
	sub	w9, w25, #28
	ldr	w0, [x8]
	ldr	w1, [x9]
	sub	w8, w20, w0
	subs	w9, w1, w8
	ccmp	w23, w9, #2, hs
	b.hi	LBB142_12
; %bb.11:
	cmp	w24, #0
	mov	w9, #3                          ; =0x3
	csinc	w9, w9, wzr, eq
	and	w8, w8, w9
	and	w9, w0, #0x3
	orr	w8, w8, w9
	cbz	w8, LBB142_14
LBB142_12:
	mov	w0, wzr
LBB142_13:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB142_14:
	sub	w8, w25, #24
	ldr	w8, [x8]
	cbz	w8, LBB142_21
LBB142_15:
	sub	w8, w25, #16
	ldr	w8, [x8]
	cbz	w8, LBB142_20
; %bb.16:
	sub	w8, w25, #32
	sub	w9, w25, #8
	ldr	w8, [x8]
	ldr	w9, [x9]
	sub	w8, w20, w8
	cmp	w8, w9
	b.hs	LBB142_18
; %bb.17:
	sub	w9, w25, #8
	str	w8, [x9]
LBB142_18:
	sub	w9, w25, #4
	add	w8, w8, w23
	ldr	w9, [x9]
	cmp	w8, w9
	b.ls	LBB142_20
; %bb.19:
	sub	w9, w25, #4
	str	w8, [x9]
LBB142_20:
	sub	w8, w25, #24
	sub	w9, w25, #32
	mov	w0, #1                          ; =0x1
	ldr	w8, [x8]
	str	w8, [x19]
	ldr	w8, [x9]
	sub	w8, w20, w8
	str	w8, [x19, #4]
	b	LBB142_13
LBB142_21:
	sub	w8, w25, #20
	ldr	w8, [x8]
	cbnz	w8, LBB142_12
; %bb.22:
	bl	_host_vk_static_make
	sub	w8, w25, #24
	str	w0, [x8]
	cbz	w0, LBB142_30
; %bb.23:
	adrp	x8, _static_check_on.read@PAGE
	adrp	x24, _static_check_on.on@PAGE
	ldrb	w9, [x8, _static_check_on.read@PAGEOFF]
	tbnz	w9, #0, LBB142_26
; %bb.24:
	mov	w9, #1                          ; =0x1
Lloh1206:
	adrp	x0, l_.str.77@PAGE
Lloh1207:
	add	x0, x0, l_.str.77@PAGEOFF
	strb	w9, [x8, _static_check_on.read@PAGEOFF]
	bl	_config_boolean
	cmp	w0, #0
	cset	w8, ne
	str	w8, [x24, _static_check_on.on@PAGEOFF]
	cbz	w0, LBB142_15
; %bb.25:
Lloh1208:
	adrp	x0, l_.str.78@PAGE
Lloh1209:
	add	x0, x0, l_.str.78@PAGEOFF
	bl	_platform_log
LBB142_26:
	ldr	w8, [x24, _static_check_on.on@PAGEOFF]
	cbz	w8, LBB142_15
; %bb.27:
	sub	w24, w25, #28
	ldr	w0, [x24]
	bl	_malloc
	ldr	w24, [x24]
	sub	w8, w25, #16
	str	w0, [x8]
	cbz	w0, LBB142_29
; %bb.28:
	sub	w8, w25, #32
	mov	w2, w24
	ldr	w1, [x8]
	bl	_memcpy
LBB142_29:
	sub	w8, w25, #8
	str	w24, [x8]
	b	LBB142_15
LBB142_30:
	sub	w8, w25, #20
	mov	w9, #1                          ; =0x1
	str	w9, [x8]
	b	LBB142_13
	.loh AdrpAdd	Lloh1200, Lloh1201
	.loh AdrpAdd	Lloh1202, Lloh1203
	.loh AdrpAdd	Lloh1204, Lloh1205
	.loh AdrpAdd	Lloh1206, Lloh1207
	.loh AdrpAdd	Lloh1208, Lloh1209
                                        ; -- End function
	.p2align	4                               ; -- Begin function dump_vertex_shader
_dump_vertex_shader:                    ; @dump_vertex_shader
; %bb.0:
	sub	sp, sp, #240
	ldr	w8, [x1, #4]
	stp	x26, x25, [sp, #176]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #192]            ; 16-byte Folded Spill
Lloh1210:
	adrp	x24, _dump_vertices@PAGE
Lloh1211:
	add	x24, x24, _dump_vertices@PAGEOFF
	stp	x20, x19, [sp, #208]            ; 16-byte Folded Spill
	sub	w9, w2, w8
	mov	x23, x1
	add	w9, w9, w8, lsl #5
	mov	w20, w2
	and	w25, w9, #0x3ff
	mov	x19, x0
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	ldr	w9, [x24, w25, uxtw #2]
	cbnz	w9, LBB143_4
LBB143_1:
	mov	w0, #1                          ; =0x1
	mov	w1, #12                         ; =0xc
	bl	_calloc
	cbz	w0, LBB143_6
; %bb.2:
	adrp	x9, _dump_vertex_count@PAGE
	lsl	w8, w25, #2
	ldr	w10, [x23, #4]
Lloh1212:
	adrp	x2, l_.str.53@PAGE
Lloh1213:
	add	x2, x2, l_.str.53@PAGEOFF
	ldr	w11, [x24, w8, uxtw]
	ldr	w12, [x9, _dump_vertex_count@PAGEOFF]
	mov	w1, #96                         ; =0x60
	str	w0, [x24, w8, uxtw]
	ldr	w8, [x23, #4]
	ldr	w13, [x23, #12]
	add	w12, w12, #1
	stp	w10, w20, [x0]
	str	w11, [x0, #8]
	add	x0, sp, #16
	str	w8, [sp]
	str	w12, [x9, _dump_vertex_count@PAGEOFF]
	stp	w13, w20, [sp, #4]
	bl	_snprintf
	ldp	w0, w1, [x23, #8]
	mov	w2, w20
	mov	x3, xzr
	mov	w4, wzr
	bl	_nv2a_vk_vertex_shader_to_glsl
	ldr	w8, [x23, #4]
	mov	x24, x0
Lloh1214:
	adrp	x2, l_.str.54@PAGE
Lloh1215:
	add	x2, x2, l_.str.54@PAGEOFF
	add	x0, sp, #112
	mov	w1, #64                         ; =0x40
	stp	w8, w20, [sp]
	bl	_snprintf
	mov	x0, x24
	bl	_strlen
	mov	w3, w0
	add	x1, sp, #112
	add	x4, sp, #16
	mov	x0, x19
	mov	x2, x24
	bl	_dump_file
	mov	x0, x24
	bl	_free
Lloh1216:
	adrp	x24, _xgpu_capabilities@GOTPAGE
Lloh1217:
	adrp	x8, l_.str.62@PAGE
Lloh1218:
	add	x8, x8, l_.str.62@PAGEOFF
	mov	w2, w20
	mov	x3, xzr
Lloh1219:
	ldr	w24, [x24, _xgpu_capabilities@GOTPAGEOFF]
	ldr	w25, [x24, #36]
	str	w8, [x24, #36]
	ldp	w0, w1, [x23, #8]
	bl	_nv2a_vertex_shader_to_glsl
	str	w25, [x24, #36]
Lloh1220:
	adrp	x2, l_.str.55@PAGE
Lloh1221:
	add	x2, x2, l_.str.55@PAGEOFF
	ldr	w8, [x23, #4]
	mov	x23, x0
	add	x0, sp, #112
	mov	w1, #64                         ; =0x40
	stp	w8, w20, [sp]
	bl	_snprintf
	mov	x0, x23
	bl	_strlen
	mov	w3, w0
	add	x1, sp, #112
	add	x4, sp, #16
	mov	x0, x19
	mov	x2, x23
	bl	_dump_file
	mov	x0, x23
	bl	_free
	b	LBB143_6
	.p2align	4, , 8
LBB143_3:                               ;   in Loop: Header=BB143_4 Depth=1
	ldr	w9, [x9, #8]
	cbz	w9, LBB143_1
LBB143_4:                               ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x9]
	cmp	w10, w8
	b.ne	LBB143_3
; %bb.5:                                ;   in Loop: Header=BB143_4 Depth=1
	ldr	w10, [x9, #4]
	cmp	w10, w20
	b.ne	LBB143_3
LBB143_6:
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
	.loh AdrpAdd	Lloh1210, Lloh1211
	.loh AdrpAdd	Lloh1220, Lloh1221
	.loh AdrpAdd	Lloh1217, Lloh1218
	.loh AdrpLdrGot	Lloh1216, Lloh1219
	.loh AdrpAdd	Lloh1214, Lloh1215
	.loh AdrpAdd	Lloh1212, Lloh1213
                                        ; -- End function
	.p2align	4                               ; -- Begin function shader_handle
_shader_handle:                         ; @shader_handle
; %bb.0:
	sub	sp, sp, #128
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	mov	w20, w0
	mov	x19, x1
	sxtw	x8, w20
Lloh1222:
	adrp	x9, _shader_entries@PAGE
Lloh1223:
	add	x9, x9, _shader_entries@PAGEOFF
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	add	x23, x9, x8, lsl #12
	and	w24, w19, #0x3ff
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	mov	x27, x6
	mov	w26, w4
	mov	w25, w3
	ldr	w0, [x23, w24, uxtw #2]
	mov	x28, x2
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	stp	w5, w7, [sp, #36]               ; 8-byte Folded Spill
	str	wzr, [sp, #44]
	cbz	w0, LBB144_3
	.p2align	4, , 8
LBB144_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x0]
	cmp	x8, x19
	b.eq	LBB144_5
; %bb.2:                                ;   in Loop: Header=BB144_1 Depth=1
	ldr	w0, [x0, #16]
	cbnz	w0, LBB144_1
LBB144_3:
	mov	w0, #1                          ; =0x1
	mov	w1, #24                         ; =0x18
	bl	_calloc
	cbz	w0, LBB144_8
; %bb.4:
	lsl	w8, w24, #2
	str	x19, [x0]
	ldr	w9, [x23, w8, uxtw]
	str	w0, [x23, w8, uxtw]
	str	w9, [x0, #16]
LBB144_5:
	ldr	w8, [x0, #8]
	cbnz	w8, LBB144_14
; %bb.6:
	ldrb	w8, [x0, #13]
	ldr	w23, [x29, #16]
	cbz	w8, LBB144_9
; %bb.7:
	mov	w9, #1                          ; =0x1
	mov	w8, wzr
	str	w9, [x23]
	b	LBB144_14
LBB144_8:
	mov	w8, wzr
	b	LBB144_14
LBB144_9:
	adrp	x8, _shader_import_logged@PAGE
	str	x0, [sp, #24]                   ; 8-byte Spill
	ldrb	w9, [x8, _shader_import_logged@PAGEOFF]
	tbnz	w9, #0, LBB144_11
; %bb.10:
	mov	w9, #1                          ; =0x1
Lloh1224:
	adrp	x0, l_.str.71@PAGE
Lloh1225:
	add	x0, x0, l_.str.71@PAGEOFF
	lsr	x10, x19, #32
	str	w20, [sp]
	strb	w9, [x8, _shader_import_logged@PAGEOFF]
	stp	w10, w19, [sp, #4]
	bl	_platform_log
LBB144_11:
	add	x2, sp, #44
	mov	w0, w20
	mov	x1, x19
	bl	_host_vk_shader_find
	cbz	w0, LBB144_15
; %bb.12:
	mov	w8, w0
LBB144_13:
	ldr	x9, [sp, #24]                   ; 8-byte Reload
	str	w8, [x9, #8]
LBB144_14:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	mov	w0, w8
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB144_15:
	ldr	w8, [sp, #44]
	ldr	x9, [sp, #24]                   ; 8-byte Reload
	cbz	w8, LBB144_18
; %bb.16:
	cmp	w8, #3
	b.ne	LBB144_26
; %bb.17:
	mov	w10, #1                         ; =0x1
	mov	w8, wzr
	strb	w10, [x9, #13]
	str	w10, [x23]
	b	LBB144_14
LBB144_18:
	ldrb	w8, [x9, #12]
	cmp	w8, #2
	b.hi	LBB144_26
; %bb.19:
	cbz	w20, LBB144_21
; %bb.20:
	mov	x0, x27
	bl	_nv2a_vk_pixel_shader_to_glsl
	b	LBB144_24
LBB144_21:
	ldr	w8, [x28, #156]
	cbz	w8, LBB144_23
; %bb.22:
	bl	_nv2a_vk_fixed_function_glsl
	b	LBB144_24
LBB144_23:
	add	x8, x28, #128
	cmp	w26, #0
	ldp	w0, w1, [x28, #8]
	csel	x3, xzr, x8, eq
	mov	w2, w25
	ldr	w4, [sp, #36]                   ; 4-byte Reload
	bl	_nv2a_vk_vertex_shader_to_glsl
LBB144_24:
	cbz	w0, LBB144_26
; %bb.25:
	mov	x24, x0
	bl	_strlen
	mov	w3, w0
	mov	w0, w20
	mov	x1, x19
	mov	w2, w24
	bl	_host_vk_shader_compile
	mov	x0, x24
	bl	_free
	ldr	x8, [sp, #24]                   ; 8-byte Reload
	ldrb	w9, [x8, #12]
	add	w9, w9, #1
	strb	w9, [x8, #12]
LBB144_26:
	ldr	w9, [sp, #40]                   ; 4-byte Reload
	mov	w8, wzr
	cbz	w9, LBB144_14
; %bb.27:
	ldr	w9, [sp, #44]
	sub	w9, w9, #5
	cmn	w9, #3
	b.hi	LBB144_14
; %bb.28:
	mov	w0, w20
	mov	x1, x19
	bl	_host_vk_shader_make
	mov	w8, w0
	cbnz	w0, LBB144_13
	b	LBB144_14
	.loh AdrpAdd	Lloh1222, Lloh1223
	.loh AdrpAdd	Lloh1224, Lloh1225
                                        ; -- End function
	.p2align	4                               ; -- Begin function vertex_shader_hash
_vertex_shader_hash:                    ; @vertex_shader_hash
; %bb.0:
	ldrb	w9, [x0, #120]
	mov	x10, #22372                     ; =0x5764
	movk	x10, #18328, lsl #16
	mov	x8, #435                        ; =0x1b3
	movk	x10, #51831, lsl #32
	movk	x8, #256, lsl #32
	movk	x10, #44330, lsl #48
	eor	x9, x9, x10
	ldrb	w10, [x0, #121]
	mul	x9, x9, x8
	eor	x9, x9, x10
	ldrb	w10, [x0, #122]
	mul	x9, x9, x8
	eor	x9, x9, x10
	ldrb	w10, [x0, #123]
	mul	x9, x9, x8
	eor	x9, x9, x10
	ldrb	w10, [x0, #124]
	mul	x9, x9, x8
	eor	x9, x9, x10
	ldrb	w10, [x0, #125]
	mul	x9, x9, x8
	eor	x9, x9, x10
	ldrb	w10, [x0, #126]
	mul	x9, x9, x8
	eor	x9, x9, x10
	ldrb	w10, [x0, #127]
	mul	x9, x9, x8
	eor	x9, x9, x10
	and	w10, w1, #0xff
	mul	x9, x9, x8
	eor	x9, x9, x10
	ubfx	w10, w1, #8, #8
	mul	x9, x9, x8
	eor	x9, x9, x10
	ubfx	w10, w1, #16, #8
	mul	x9, x9, x8
	eor	x9, x9, x10
	lsr	w10, w1, #24
	mul	x9, x9, x8
	eor	x9, x9, x10
	mul	x0, x9, x8
	mov	x9, #58153                      ; =0xe329
	movk	x9, #2, lsl #16
	movk	x9, #26112, lsl #32
	movk	x9, #3, lsl #48
	cbz	w2, LBB145_2
; %bb.1:
	mov	w10, #108                       ; =0x6c
	mov	w11, #105                       ; =0x69
	eor	x10, x0, x10
	mul	x10, x10, x8
	eor	x10, x10, x11
	mov	w11, #116                       ; =0x74
	mul	x10, x10, x8
	eor	x10, x10, x11
	mul	x0, x10, x9
LBB145_2:
	cbz	w3, LBB145_4
; %bb.3:
	eor	x10, x0, #0x70
	mov	w11, #108                       ; =0x6c
	mov	w12, #115                       ; =0x73
	mul	x10, x10, x8
	eor	x10, x10, x11
	mov	w11, #97                        ; =0x61
	mul	x10, x10, x8
	eor	x10, x10, x11
	mul	x10, x10, x8
	eor	x10, x10, x12
	mov	w12, #109                       ; =0x6d
	mul	x10, x10, x8
	eor	x10, x10, x12
	mul	x10, x10, x8
	eor	x10, x10, x11
	mul	x9, x10, x9
	and	w10, w3, #0xff
	eor	x9, x9, x10
	ubfx	w10, w3, #8, #8
	mul	x9, x9, x8
	eor	x9, x9, x10
	ubfx	w10, w3, #16, #8
	mul	x9, x9, x8
	eor	x9, x9, x10
	lsr	w10, w3, #24
	mul	x9, x9, x8
	eor	x9, x9, x10
	mul	x0, x9, x8
LBB145_4:
	ret
                                        ; -- End function
	.p2align	4                               ; -- Begin function dump_file
_dump_file:                             ; @dump_file
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #528
	mov	x25, x2
	mov	x20, x1
	mov	x23, x0
Lloh1226:
	adrp	x2, l_.str.56@PAGE
Lloh1227:
	add	x2, x2, l_.str.56@PAGEOFF
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	mov	x19, x4
	mov	w24, w3
	stp	w23, w20, [sp]
	bl	_snprintf
Lloh1228:
	adrp	x1, l_.str.57@PAGE
Lloh1229:
	add	x1, x1, l_.str.57@PAGEOFF
	add	x0, sp, #16
	bl	_fopen
	mov	x26, x0
	cbz	w26, LBB146_4
; %bb.1:
	mov	x0, x25
	mov	w1, #1                          ; =0x1
	mov	w2, w24
	mov	x3, x26
	bl	_fwrite
	mov	x0, x26
	bl	_fclose
	adrp	x24, _dump_manifest@PAGE
	ldr	w0, [x24, _dump_manifest@PAGEOFF]
	cbnz	w0, LBB146_3
; %bb.2:
Lloh1230:
	adrp	x2, l_.str.59@PAGE
Lloh1231:
	add	x2, x2, l_.str.59@PAGEOFF
	add	x0, sp, #16
	mov	w1, #512                        ; =0x200
	str	w23, [sp]
	bl	_snprintf
Lloh1232:
	adrp	x1, l_.str.60@PAGE
Lloh1233:
	add	x1, x1, l_.str.60@PAGEOFF
	add	x0, sp, #16
	bl	_fopen
	str	w0, [x24, _dump_manifest@PAGEOFF]
	cbz	w0, LBB146_5
LBB146_3:
Lloh1234:
	adrp	x1, l_.str.61@PAGE
Lloh1235:
	add	x1, x1, l_.str.61@PAGEOFF
	stp	w20, w19, [sp]
	bl	_fprintf
	ldr	w0, [x24, _dump_manifest@PAGEOFF]
	add	sp, sp, #528
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	b	_fflush
LBB146_4:
Lloh1236:
	adrp	x0, l_.str.58@PAGE
Lloh1237:
	add	x0, x0, l_.str.58@PAGEOFF
	add	x8, sp, #16
	str	w8, [sp]
	bl	_platform_log
LBB146_5:
	add	sp, sp, #528
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh1228, Lloh1229
	.loh AdrpAdd	Lloh1226, Lloh1227
	.loh AdrpAdd	Lloh1232, Lloh1233
	.loh AdrpAdd	Lloh1230, Lloh1231
	.loh AdrpAdd	Lloh1234, Lloh1235
	.loh AdrpAdd	Lloh1236, Lloh1237
                                        ; -- End function
	.p2align	4                               ; -- Begin function sampler_state_make
_sampler_state_make:                    ; @sampler_state_make
; %bb.0:
Lloh1238:
	adrp	x8, _D3D__TextureState@GOTPAGE
                                        ; kill: def $w0 killed $w0 def $x0
	sxtw	x9, w0
	mov	w10, #1                         ; =0x1
Lloh1239:
	ldr	w8, [x8, _D3D__TextureState@GOTPAGEOFF]
	add	x8, x8, x9, lsl #7
	cbz	w2, LBB147_2
; %bb.1:
	movi	d0, #0000000000000000
	mov	w11, #2                         ; =0x2
	movi	d1, #0000000000000000
	mov	w9, #2                          ; =0x2
	mov	w13, #1                         ; =0x1
	b	LBB147_6
LBB147_2:
	ldr	w9, [x8, #56]
	cbz	w1, LBB147_4
; %bb.3:
	ldr	w11, [x8, #60]
	b	LBB147_5
LBB147_4:
	mov	w11, wzr
LBB147_5:
	ldp	s1, s0, [x8, #64]
	ldr	w12, [x8, #52]
	ucvtf	s0, s0
	cmp	w12, #1
	cset	w13, ne
LBB147_6:
	cmp	w9, #1
	stur	xzr, [x3, #20]
	cset	w14, ne
	cmp	w11, #1
	cinc	w10, w10, ne
	cmp	w11, #0
	csel	w10, wzr, w10, eq
	stur	xzr, [x3, #12]
	str	wzr, [x3, #36]
	mov	w12, wzr
	stur	xzr, [x3, #28]
	stp	w14, w13, [x3]
	str	w10, [x3, #8]
	ldr	w10, [x8, #40]
	sub	w11, w10, #2
Lloh1240:
	adrp	x10, l_switch.table.sampler_state_make.85@PAGE
Lloh1241:
	add	x10, x10, l_switch.table.sampler_state_make.85@PAGEOFF
	cmp	w11, #3
	b.hi	LBB147_8
; %bb.7:
	ldrb	w12, [x10, w11, sxtw]
LBB147_8:
	str	w12, [x3, #12]
	ldr	w11, [x8, #44]
	sub	w11, w11, #2
	cmp	w11, #3
	b.hi	LBB147_10
; %bb.9:
	ldrb	w11, [x10, w11, sxtw]
	b	LBB147_11
LBB147_10:
	mov	w11, wzr
LBB147_11:
	str	w11, [x3, #16]
	ldr	w11, [x8, #48]
	sub	w11, w11, #2
	cmp	w11, #3
	b.hi	LBB147_13
; %bb.12:
	ldrb	w10, [x10, w11, sxtw]
	b	LBB147_14
LBB147_13:
	mov	w10, wzr
LBB147_14:
	fmov	s2, #1.00000000
	str	w10, [x3, #20]
	ldr	w10, [x8, #116]
	cmp	w9, #3
	stp	s1, s0, [x3, #28]
	str	w10, [x3, #24]
	b.ne	LBB147_16
; %bb.15:
	ldr	w8, [x8, #72]
	cmp	w8, #1
	csinc	w8, w8, wzr, hi
	ucvtf	s2, w8
LBB147_16:
	str	s2, [x3, #36]
	ret
	.loh AdrpLdrGot	Lloh1238, Lloh1239
	.loh AdrpAdd	Lloh1240, Lloh1241
                                        ; -- End function
	.p2align	4                               ; -- Begin function element_format
_element_format:                        ; @element_format
; %bb.0:
	sub	w8, w0, #17
	and	w9, w8, #0xff
	cmp	w9, #97
	b.hi	LBB148_2
; %bb.1:
	and	x8, x8, #0xff
Lloh1242:
	adrp	x9, l_switch.table.element_format@PAGE
Lloh1243:
	add	x9, x9, l_switch.table.element_format@PAGEOFF
	ldrb	w0, [x9, x8]
	ret
LBB148_2:
	mov	w0, #109                        ; =0x6d
	ret
	.loh AdrpAdd	Lloh1242, Lloh1243
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

	.comm	_D3D__RenderState,576,2         ; @D3D__RenderState
.zerofill __DATA,__bss,_screen_width,4,2 ; @screen_width
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @screen_scale.0
_screen_scale.0:
	.long	0x3f800000                      ; float 1

	.p2align	2, 0x0                          ; @screen_scale.1
_screen_scale.1:
	.long	0x3f800000                      ; float 1

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"screen: %ldx%d drawn at %.0fx%.0f"

.zerofill __DATA,__bss,_ui_offset,4,2   ; @ui_offset
.zerofill __DATA,__bss,_static_lists,24,2 ; @static_lists
.zerofill __DATA,__bss,_shadow_scale,4,2 ; @shadow_scale
.zerofill __DATA,__bss,_shadow_scale_read_at,4,2 ; @shadow_scale_read_at
l_.str.1:                               ; @.str.1
	.asciz	"shadow maps: %ldx%ld"

.zerofill __DATA,__bss,_flip_count,4,2  ; @flip_count
.zerofill __DATA,__bss,_vertical_blank_lock,24,2 ; @vertical_blank_lock
.zerofill __DATA,__bss,_vertical_blank_callback,4,2 ; @vertical_blank_callback
.zerofill __DATA,__bss,_vertical_blank_count,4,2 ; @vertical_blank_count
.zerofill __DATA,__bss,_vertical_blank_condition,48,2 ; @vertical_blank_condition
.zerofill __DATA,__bss,_stream_used,4,2 ; @stream_used
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @stream
_stream:
	.long	_streams

.zerofill __DATA,__bss,_data_id,4,2     ; @data_id
	.p2align	2, 0x0                          ; @halo_texture_clip_stage.mode
_halo_texture_clip_stage.mode:
	.long	4294967295                      ; 0xffffffff

.zerofill __DATA,__bss,_halo_texture_clip_stage.set_low,4,2 ; @halo_texture_clip_stage.set_low
.zerofill __DATA,__bss,_halo_texture_clip_stage.set_high,4,2 ; @halo_texture_clip_stage.set_high
	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"debug.gpu_texture_clip"

l_.str.3:                               ; @.str.3
	.asciz	"off"

l_.str.4:                               ; @.str.4
	.asciz	"wide"

l_.str.5:                               ; @.str.5
	.asciz	"%f,%f"

l_.str.6:                               ; @.str.6
	.asciz	"texture clip: %s (debug.gpu_texture_clip)"

.zerofill __DATA,__bss,_texture_clip.0,4,2 ; @texture_clip.0
.zerofill __DATA,__bss,_texture_clip.1,4,2 ; @texture_clip.1
.zerofill __DATA,__bss,_texture_clip.2,4,2 ; @texture_clip.2
.zerofill __DATA,__bss,_texture_clip_stage,4,2 ; @texture_clip_stage
.zerofill __DATA,__bss,_texture_clip_3d,4,2 ; @texture_clip_3d
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @halo_draw_scissor.enabled
_halo_draw_scissor.enabled:
	.long	4294967295                      ; 0xffffffff

	.section	__TEXT,__cstring,cstring_literals
l_.str.7:                               ; @.str.7
	.asciz	"debug.gpu_draw_scissor"

l_.str.8:                               ; @.str.8
	.asciz	"draw scissor: off (debug.gpu_draw_scissor)"

.zerofill __DATA,__bss,_draw_scissor_on,1,0 ; @draw_scissor_on
.zerofill __DATA,__bss,_draw_scissor.0,4,2 ; @draw_scissor.0
.zerofill __DATA,__bss,_draw_scissor.1,4,2 ; @draw_scissor.1
.zerofill __DATA,__bss,_draw_scissor.2,4,2 ; @draw_scissor.2
.zerofill __DATA,__bss,_draw_scissor.3,4,2 ; @draw_scissor.3
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @halo_screen_fast_warp.on
_halo_screen_fast_warp.on:
	.long	4294967295                      ; 0xffffffff

	.section	__TEXT,__cstring,cstring_literals
l_.str.9:                               ; @.str.9
	.asciz	"debug.original_zoom"

l_.str.10:                              ; @.str.10
	.asciz	"zoom: as the game draws it (debug.original_zoom)"

.zerofill __DATA,__bss,_warp_blend,1,0  ; @warp_blend
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @halo_screen_fast_blur.on
_halo_screen_fast_blur.on:
	.long	4294967295                      ; 0xffffffff

	.section	__TEXT,__cstring,cstring_literals
l_.str.11:                              ; @.str.11
	.asciz	"debug.original_blur"

l_.str.12:                              ; @.str.12
	.asciz	"screen blur: as the game draws it (debug.original_blur)"

.zerofill __DATA,__bss,_device,4952,2   ; @device
	.comm	_D3D__TextureState,512,2        ; @D3D__TextureState
l_.str.13:                              ; @.str.13
	.asciz	"debug.null_renderer"

l_.str.14:                              ; @.str.14
	.asciz	"Direct3D: the Vulkan renderer (phase 6: draws)"

l_.str.15:                              ; @.str.15
	.asciz	"Direct3D: running without a window (nothing is displayed)"

l_.str.16:                              ; @.str.16
	.asciz	"debug.vk_self_test"

.zerofill __DATA,__bss,_d3d8_renderer_description.description,64,0 ; @d3d8_renderer_description.description
l_.str.17:                              ; @.str.17
	.asciz	"Vulkan\r%s"

l_.str.18:                              ; @.str.18
	.asciz	"Vulkan"

.zerofill __DATA,__bss,_visibility_ended,32768,3 ; @visibility_ended
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @target_scale.0
_target_scale.0:
	.long	0x3f800000                      ; float 1

	.p2align	2, 0x0                          ; @target_scale.1
_target_scale.1:
	.long	0x3f800000                      ; float 1

	.p2align	2, 0x0                          ; @target_samples
_target_samples:
	.long	1                               ; 0x1

.zerofill __DATA,__bss,_visibility_pending,16384,2 ; @visibility_pending
.zerofill __DATA,__bss,_visibility_counted,32768,3 ; @visibility_counted
	.section	__TEXT,__cstring,cstring_literals
l_.str.19:                              ; @.str.19
	.asciz	"GPU: vertex shader %lu is not lit as the pixel shader would light it: lit for each vertex"

	.comm	_D3D__IndexData,4,2             ; @D3D__IndexData
.zerofill __DATA,__bss,_targets_known,1,2 ; @targets_known
.zerofill __DATA,__bss,_stats,128,3     ; @stats
.zerofill __DATA,__bss,_statistics_read,1,2 ; @statistics_read
l_.str.20:                              ; @.str.20
	.asciz	"debug.gpu_stats"

.zerofill __DATA,__bss,_statistics_on,4,2 ; @statistics_on
l_.str.21:                              ; @.str.21
	.asciz	"frame %lu: %lu draws, %lu immediate; skipped %lu no program, %lu no target, %lu shader not ready, %lu textured, %lu other"

l_.str.22:                              ; @.str.22
	.asciz	"vk: puts a frame: vertex %llu KB (%lu), expanded %llu KB, index %llu KB (%lu), constants %llu KB (%lu), parameters %llu KB, pixel %llu KB, immediate %llu KB; read from static copies: vertex %llu KB, index %llu KB"

.zerofill __DATA,__bss,_vertical_blank_thread_started,1,2 ; @vertical_blank_thread_started
.zerofill __DATA,__bss,_pending_flips,4,2 ; @pending_flips
	.comm	_xgpu_capabilities,40,2         ; @xgpu_capabilities
	.comm	_xgpu_reversed_depth,4,2        ; @xgpu_reversed_depth
	.comm	_D3D__StateBlockDirty,1024,0    ; @D3D__StateBlockDirty
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @model_detail_setting.read_at
_model_detail_setting.read_at:
	.long	4294967295                      ; 0xffffffff

.zerofill __DATA,__bss,_model_detail_setting.value,4,2 ; @model_detail_setting.value
	.section	__TEXT,__cstring,cstring_literals
l_.str.23:                              ; @.str.23
	.asciz	"display.model_detail"

l_.str.24:                              ; @.str.24
	.asciz	"native"

l_.str.25:                              ; @.str.25
	.asciz	"highest"

l_.str.26:                              ; @.str.26
	.asciz	"display.shadow_resolution"

l_.str.27:                              ; @.str.27
	.asciz	"cannot start the vertical blank thread"

.zerofill __DATA,__bss,_stream_index,4,2 ; @stream_index
.zerofill __DATA,__bss,_streams,12582912,2 ; @streams
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @anti_aliasing_value
_anti_aliasing_value:
	.long	4294967295                      ; 0xffffffff

	.section	__DATA,__const
	.p2align	2, 0x0                          ; @anti_aliasing_values
_anti_aliasing_values:
	.long	l_.str.3
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	l_.str.28
	.long	1                               ; 0x1
	.long	0                               ; 0x0
	.long	l_.str.29
	.long	1                               ; 0x1
	.long	0                               ; 0x0
	.long	l_.str.30
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	l_.str.31
	.long	2                               ; 0x2
	.long	2                               ; 0x2
	.long	l_.str.32
	.long	2                               ; 0x2
	.long	4                               ; 0x4
	.long	l_.str.33
	.long	2                               ; 0x2
	.long	8                               ; 0x8

	.section	__TEXT,__cstring,cstring_literals
l_.str.28:                              ; @.str.28
	.asciz	"fxaa"

l_.str.29:                              ; @.str.29
	.asciz	"smaa"

l_.str.30:                              ; @.str.30
	.asciz	"ssaa2x"

l_.str.31:                              ; @.str.31
	.asciz	"msaa2x"

l_.str.32:                              ; @.str.32
	.asciz	"msaa4x"

l_.str.33:                              ; @.str.33
	.asciz	"msaa8x"

l_.str.34:                              ; @.str.34
	.asciz	"a vertex shader that compiles"

l_.str.35:                              ; @.str.35
	.asciz	"#version 450\nvoid main()\n{\n\tgl_Position = vec4(0.0);\n}\n"

l_.str.36:                              ; @.str.36
	.asciz	"a pixel shader that compiles"

l_.str.37:                              ; @.str.37
	.asciz	"#version 450\nlayout(location = 0) out vec4 c;\nvoid main()\n{\n\tc = vec4(1.0);\n}\n"

l_.str.38:                              ; @.str.38
	.asciz	"a pixel shader that does not"

l_.str.39:                              ; @.str.39
	.asciz	"#version 450\nvoid main()\n{\n\tthis is not glsl;\n}\n"

l_.str.40:                              ; @.str.40
	.asciz	"shader service self-test: %s %s (handle %u, status %u, after %d tries)"

l_.str.41:                              ; @.str.41
	.asciz	"ok"

l_.str.42:                              ; @.str.42
	.asciz	"FAILED"

l_.str.43:                              ; @.str.43
	.asciz	"display.anti_aliasing"

	.section	__DATA,__data
	.p2align	2, 0x0                          ; @anti_aliasing_samples
_anti_aliasing_samples:
	.long	1                               ; 0x1

	.section	__TEXT,__cstring,cstring_literals
l_.str.44:                              ; @.str.44
	.asciz	"anti-aliasing: %s, which this device cannot draw: off"

l_.str.45:                              ; @.str.45
	.asciz	"anti-aliasing: %s, drawn with %lu samples a pixel"

l_.str.46:                              ; @.str.46
	.asciz	"anti-aliasing: \"%s\" is unknown, so off"

l_.str.47:                              ; @.str.47
	.asciz	"anti-aliasing: %s%s"

l_.str.48:                              ; @.str.48
	.asciz	" (FXAA here)"

l_.str.49:                              ; @.str.49
	.asciz	" (off here)"

l_.str.50:                              ; @.str.50
	.space	1

.zerofill __DATA,__bss,_multisampled_count,4,2 ; @multisampled_count
.zerofill __DATA,__bss,_rendered_count,4,2 ; @rendered_count
.zerofill __DATA,__bss,_rendered,4096,2 ; @rendered
.zerofill __DATA,__bss,_rendered_clock,4,2 ; @rendered_clock
.zerofill __DATA,__bss,_front_buffer_ready.failed,1,2 ; @front_buffer_ready.failed
.zerofill __DATA,__bss,_vertex_shaders_by_id_count,4,2 ; @vertex_shaders_by_id_count
.zerofill __DATA,__bss,_vertex_shaders_by_id,4,2 ; @vertex_shaders_by_id
.zerofill __DATA,__bss,_constants_serial,4,2 ; @constants_serial
.zerofill __DATA,__bss,_constant_log,1024,0 ; @constant_log
.zerofill __DATA,__bss,_plasma_draw,60,2 ; @plasma_draw
.zerofill __DATA,__bss,_plasma_images_told,8,3 ; @plasma_images_told
.zerofill __DATA,__bss,_targets_told,60,2 ; @targets_told
l_.str.51:                              ; @.str.51
	.asciz	"GPU: vertex shader %lu cannot be lit for each pixel here (refer to the host's shader log): lit for each vertex"

.zerofill __DATA,__bss,_fixed_function_program.program,160,3 ; @fixed_function_program.program
.zerofill __DATA,__bss,_fixed_function_program.no_instructions,16,2 ; @fixed_function_program.no_instructions
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @dump_folder.read_at
_dump_folder.read_at:
	.long	4294967295                      ; 0xffffffff

.zerofill __DATA,__bss,_dump_folder.folder,4,2 ; @dump_folder.folder
	.section	__TEXT,__cstring,cstring_literals
l_.str.52:                              ; @.str.52
	.asciz	"debug.gpu_dump_shaders"

.zerofill __DATA,__bss,_dump_vertices,4096,2 ; @dump_vertices
.zerofill __DATA,__bss,_dump_vertex_count,4,2 ; @dump_vertex_count
l_.str.53:                              ; @.str.53
	.asciz	"vertex shader %lu, %lu instructions, packed mask %lx"

l_.str.54:                              ; @.str.54
	.asciz	"vs_%lu_%lx.vert"

l_.str.55:                              ; @.str.55
	.asciz	"vs_%lu_%lx.gl.vert"

l_.str.56:                              ; @.str.56
	.asciz	"%s/%s"

l_.str.57:                              ; @.str.57
	.asciz	"wb"

l_.str.58:                              ; @.str.58
	.asciz	"shader dump: cannot write %s"

.zerofill __DATA,__bss,_dump_manifest,4,2 ; @dump_manifest
l_.str.59:                              ; @.str.59
	.asciz	"%s/manifest.txt"

l_.str.60:                              ; @.str.60
	.asciz	"a"

l_.str.61:                              ; @.str.61
	.asciz	"%s %s\n"

l_.str.62:                              ; @.str.62
	.asciz	"310 es"

.zerofill __DATA,__bss,_dump_pixels,4096,2 ; @dump_pixels
.zerofill __DATA,__bss,_dump_pixel_count,4,2 ; @dump_pixel_count
.zerofill __DATA,__bss,_dump_collisions,4,2 ; @dump_collisions
l_.str.63:                              ; @.str.63
	.asciz	"pixel shader, key hash %08lx%s"

l_.str.64:                              ; @.str.64
	.asciz	" (a collision)"

l_.str.65:                              ; @.str.65
	.asciz	"ps_%08lx_%lu"

l_.str.66:                              ; @.str.66
	.asciz	"ps_%08lx"

l_.str.67:                              ; @.str.67
	.asciz	"%s.key"

l_.str.68:                              ; @.str.68
	.asciz	"%s.frag"

l_.str.69:                              ; @.str.69
	.asciz	"%s.gl.frag"

	.section	__DATA,__data
	.p2align	2, 0x0                          ; @per_pixel_lighting.read_at
_per_pixel_lighting.read_at:
	.long	4294967295                      ; 0xffffffff

.zerofill __DATA,__bss,_per_pixel_lighting.enabled,4,2 ; @per_pixel_lighting.enabled
	.section	__TEXT,__cstring,cstring_literals
l_.str.70:                              ; @.str.70
	.asciz	"display.per_pixel_lighting"

.zerofill __DATA,__bss,_shader_entries,8192,2 ; @shader_entries
.zerofill __DATA,__bss,_shader_import_logged,1,2 ; @shader_import_logged
l_.str.71:                              ; @.str.71
	.asciz	"vk shaders: the first host_vk_shader_find: stage %u, hash %08x%08x (the host logs its own)"

l_.str.72:                              ; @.str.72
	.asciz	"GPU: vertex shader %lu's dynamic lighting variant failed to compile (refer to the host's shader log): stock from now on"

.zerofill __DATA,__bss,_composites_sent_count,4,2 ; @composites_sent_count
.zerofill __DATA,__bss,_composites_sent,4096,2 ; @composites_sent
.zerofill __DATA,__bss,_puts_this_frame,1172,2 ; @puts_this_frame
.zerofill __DATA,__bss,_format_supported.known,100,0 ; @format_supported.known
l_.str.74:                              ; @.str.74
	.asciz	"vk: vertex format %u is not readable by the device as a vertex attribute; those attributes are expanded to four floats"

.zerofill __DATA,__bss,_static_ref.read,1,2 ; @static_ref.read
.zerofill __DATA,__bss,_static_ref.on,4,2 ; @static_ref.on
l_.str.75:                              ; @.str.75
	.asciz	"debug.vk_static_geometry"

l_.str.76:                              ; @.str.76
	.asciz	"vk: static geometry is put at each draw (debug.vk_static_geometry false)"

.zerofill __DATA,__bss,_static_check_on.read,1,2 ; @static_check_on.read
.zerofill __DATA,__bss,_static_check_on.on,4,2 ; @static_check_on.on
l_.str.77:                              ; @.str.77
	.asciz	"debug.vk_static_check"

l_.str.78:                              ; @.str.78
	.asciz	"vk: static geometry is checked every 60 frames (debug.vk_static_check)"

.zerofill __DATA,__bss,_multisampled,256,2 ; @multisampled
l_.str.79:                              ; @.str.79
	.asciz	"vk: STATIC CHANGED: the %s range at 0x%08lx, %lu bytes: %lu bytes changed in %lu spans, from %lu to %lu; draws have read %lu to %lu, %lu of the changed bytes in it"

l_.str.80:                              ; @.str.80
	.asciz	"index"

l_.str.81:                              ; @.str.81
	.asciz	"vertex"

.zerofill __DATA,__bss,_dump_present.logged_vertices,4,2 ; @dump_present.logged_vertices
.zerofill __DATA,__bss,_dump_present.logged_pixels,4,2 ; @dump_present.logged_pixels
.zerofill __DATA,__bss,_dump_present_done,1,2 ; @dump_present_done
l_.str.82:                              ; @.str.82
	.asciz	"shader dump: %lu vertex shaders and %lu pixel shaders written to %s (%lu key hash collisions)"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @switch.table.draw_make
l_switch.table.draw_make:
	.ascii	"\000\001\002\002\003\004\005\003\004\005"

	.p2align	2, 0x0                          ; @switch.table.draw_make.83
l_switch.table.draw_make.83:
	.byte	4                               ; 0x4
	.byte	8                               ; 0x8
	.byte	12                              ; 0xc
	.byte	16                              ; 0x10
	.space	1
	.space	1
	.byte	12                              ; 0xc

	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ; @switch.table.sampler_state_make.85
l_switch.table.sampler_state_make.85:
	.ascii	"\001\002\003\002"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @switch.table.element_format
l_switch.table.element_format:
	.ascii	"Gdm\tIbmmmmmmmmmmNgm\020PmmmmmmmmmmmUjm\027Wmmmmmmmmmm,\\mm%^mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmj"

	.cg_profile _D3DDevice_SetVerticalBlankCallback, _pthread_mutex_lock, 11
	.cg_profile _D3DDevice_SetVerticalBlankCallback, _pthread_mutex_unlock, 11
	.cg_profile _D3DDevice_SetVerticalBlankCallback, _vertical_blank_start, 11
	.cg_profile _D3DDevice_SetViewport, _xgpu_texture_describe, 696972
	.cg_profile _D3DDevice_SetShaderConstantMode, _viewport_update_constants, 11
	.cg_profile _D3DDevice_SetVertexData2f, _realloc, 32938961
	.cg_profile _D3DDevice_SetVertexData4f, _realloc, 3158297
	.cg_profile _D3DDevice_SetVertexData2s, _realloc, 1338959
	.cg_profile _D3DDevice_SetVertexData4ub, _realloc, 234388
	.cg_profile _D3DDevice_SetVertexDataColor, _realloc, 16233308
.subsections_via_symbols
