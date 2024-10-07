
_main:

;Dot_Matrix.c,3 :: 		void main() {
;Dot_Matrix.c,4 :: 		TRISB = 0x00;   // Set PORTB as output (columns)
	CLRF       TRISB+0
;Dot_Matrix.c,5 :: 		TRISD = 0x00;   // Set PORTD as output (rows)
	CLRF       TRISD+0
;Dot_Matrix.c,7 :: 		while(1) {
L_main0:
;Dot_Matrix.c,9 :: 		PORTD = 0b10000000;
	MOVLW      128
	MOVWF      PORTD+0
;Dot_Matrix.c,10 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Dot_Matrix.c,11 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;Dot_Matrix.c,14 :: 		PORTD = 0b01000000;
	MOVLW      64
	MOVWF      PORTD+0
;Dot_Matrix.c,15 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;Dot_Matrix.c,16 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;Dot_Matrix.c,19 :: 		PORTD = 0b00100000;
	MOVLW      32
	MOVWF      PORTD+0
;Dot_Matrix.c,20 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;Dot_Matrix.c,21 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;Dot_Matrix.c,24 :: 		PORTD = 0b00010000;
	MOVLW      16
	MOVWF      PORTD+0
;Dot_Matrix.c,25 :: 		PORTB = 0b00011000;
	MOVLW      24
	MOVWF      PORTB+0
;Dot_Matrix.c,26 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;Dot_Matrix.c,29 :: 		PORTD = 0b00001000;
	MOVLW      8
	MOVWF      PORTD+0
;Dot_Matrix.c,30 :: 		PORTB = 0b00011000;
	MOVLW      24
	MOVWF      PORTB+0
;Dot_Matrix.c,31 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;Dot_Matrix.c,34 :: 		PORTD = 0b00000100;
	MOVLW      4
	MOVWF      PORTD+0
;Dot_Matrix.c,35 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;Dot_Matrix.c,36 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;Dot_Matrix.c,39 :: 		PORTD = 0b00000010;
	MOVLW      2
	MOVWF      PORTD+0
;Dot_Matrix.c,40 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;Dot_Matrix.c,41 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;Dot_Matrix.c,44 :: 		PORTD = 0b00000001;
	MOVLW      1
	MOVWF      PORTD+0
;Dot_Matrix.c,45 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Dot_Matrix.c,46 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;Dot_Matrix.c,47 :: 		}
	GOTO       L_main0
;Dot_Matrix.c,48 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
