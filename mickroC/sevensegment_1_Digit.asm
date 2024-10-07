
_main:

;sevensegment_1_Digit.c,4 :: 		void main() {
;sevensegment_1_Digit.c,6 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevensegment_1_Digit.c,7 :: 		TRISB = 0x00;  // set portb as output
	CLRF       TRISB+0
;sevensegment_1_Digit.c,8 :: 		portb=0x00;
	CLRF       PORTB+0
;sevensegment_1_Digit.c,9 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;sevensegment_1_Digit.c,13 :: 		while(1)
L_main0:
;sevensegment_1_Digit.c,16 :: 		if(portd.f0==1 && i<9)
	BTFSS      PORTD+0, 0
	GOTO       L_main4
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main19:
;sevensegment_1_Digit.c,18 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;sevensegment_1_Digit.c,20 :: 		if(portd.f0==1 && i<9)
	BTFSS      PORTD+0, 0
	GOTO       L_main8
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
L__main18:
;sevensegment_1_Digit.c,22 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevensegment_1_Digit.c,23 :: 		}
L_main8:
;sevensegment_1_Digit.c,24 :: 		}
L_main4:
;sevensegment_1_Digit.c,25 :: 		if(portd.f1==1 && i>0)
	BTFSS      PORTD+0, 1
	GOTO       L_main11
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main11
L__main17:
;sevensegment_1_Digit.c,27 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
;sevensegment_1_Digit.c,29 :: 		if(portd.f1==1 && i>0)
	BTFSS      PORTD+0, 1
	GOTO       L_main15
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main24:
	BTFSC      STATUS+0, 0
	GOTO       L_main15
L__main16:
;sevensegment_1_Digit.c,31 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;sevensegment_1_Digit.c,32 :: 		}
L_main15:
;sevensegment_1_Digit.c,33 :: 		}
L_main11:
;sevensegment_1_Digit.c,35 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevensegment_1_Digit.c,38 :: 		}
	GOTO       L_main0
;sevensegment_1_Digit.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
