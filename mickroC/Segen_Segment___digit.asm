
_main:

;Segen_Segment___digit.c,5 :: 		void main() {
;Segen_Segment___digit.c,7 :: 		TRISB=0x00;
	CLRF       TRISB+0
;Segen_Segment___digit.c,8 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;Segen_Segment___digit.c,10 :: 		while(1)
L_main0:
;Segen_Segment___digit.c,12 :: 		for(i=0;i<=9;i++)
	CLRF       R1+0
	CLRF       R1+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVF       R1+0, 0
	SUBLW      9
L__main7:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;Segen_Segment___digit.c,13 :: 		{     portb=array[i];
	MOVF       R1+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Segen_Segment___digit.c,14 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Segen_Segment___digit.c,12 :: 		for(i=0;i<=9;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;Segen_Segment___digit.c,16 :: 		}
	GOTO       L_main2
L_main3:
;Segen_Segment___digit.c,17 :: 		}
	GOTO       L_main0
;Segen_Segment___digit.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
