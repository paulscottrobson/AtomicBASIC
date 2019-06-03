; *******************************************************************************************
; *******************************************************************************************
;
;		Name : 		bitwise.asm
;		Purpose : 	Bitwise operators
;		Date :		3rd June 2019
;		Author : 	paul@robsons.org.uk
;
; *******************************************************************************************
; *******************************************************************************************

; *******************************************************************************************
;
;												32 bit and
;
; *******************************************************************************************

Binary_And: ;; &
	lda		EXSValueL+0,x
	and 	EXSValueL+2,x
	sta 	EXSValueL+0,x
	lda		EXSValueH+0,x
	and 	EXSValueH+2,x
	sta 	EXSValueH+0,x
	rts
	
; *******************************************************************************************
;
;												32 bit or
;
; *******************************************************************************************

Binary_Or: ;; |
	lda		EXSValueL+0,x
	ora 	EXSValueL+2,x
	sta 	EXSValueL+0,x
	lda		EXSValueH+0,x
	ora 	EXSValueH+2,x
	sta 	EXSValueH+0,x
	rts

; *******************************************************************************************
;
;												32 bit xor
;
; *******************************************************************************************

Binary_Xor: ;; ^
	lda		EXSValueL+0,x
	eor 	EXSValueL+2,x
	sta 	EXSValueL+0,x
	lda		EXSValueH+0,x
	eor 	EXSValueH+2,x
	sta 	EXSValueH+0,x
	rts
