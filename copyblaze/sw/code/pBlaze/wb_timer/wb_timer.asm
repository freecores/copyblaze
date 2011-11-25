; project	: copyBlaze 8 bit processor
; file name	: wb_timer.asm
; author	: abdAllah Meziti
; licence	: LGPL

; this programm test the wishbone copyBlaze instruction.
; it use this module : 
; 			wb_timer_08.vhd

		WB_TIMER_TRC0		.EQU	0x00
		WB_TIMER_COMPARE0	.EQU	0x04
		WB_TIMER_COUNTER0	.EQU	0x08
		WB_TIMER_TRC1		.EQU	0x0C
		WB_TIMER_COMPARE1	.EQU	0x10
		WB_TIMER_COUNTER1	.EQU	0x14
		
		wb_data_to_wb		.EQU   s0
		wb_data_from_wb		.EQU   s1

		;

		; ==========================================================
start:
		; ==========================================================
		EINT                          ; ENABLE INTERRUPT
;		DINT                          ; DISABLE INTERRUPT

		LOAD		wb_data_to_wb,		0x80				; 
		WBWRSING	wb_data_to_wb,		WB_TIMER_COMPARE0	; COMPARE0 = 0x80

		LOAD		wb_data_to_wb,		0x0e				; 
		WBWRSING	wb_data_to_wb,		WB_TIMER_TRC0		; TRC0 = 0x0e : en0=1, ar0=1, irq0en=1

end:		
		JUMP	end
		;

;	*************************
;	Interrupt Service Routine
;	*************************
ISR:
		WBRDSING	wb_data_from_wb,	WB_TIMER_TRC0		; access on TCR0 (reset trig0)

		RETI      ENABLE              ; RETURNI
;		RETI      DISABLE
;	*************************
;	End ISR Interrupt Handler
;	*************************

		.ORG	0x3FF
VECTOR:
		JUMP	ISR
