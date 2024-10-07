
_main:

;Stepper_Motor11.c,1 :: 		void main() {
;Stepper_Motor11.c,2 :: 		TRISD = 0x00;   // Set PORTD as output
	CLRF       TRISD+0
;Stepper_Motor11.c,3 :: 		PORTD = 0xFF;   // Set all bits of PORTD to high (11111111)
	MOVLW      255
	MOVWF      PORTD+0
;Stepper_Motor11.c,5 :: 		while(1) {
L_main0:
;Stepper_Motor11.c,6 :: 		PORTD = 0b00000011;   // Set specific bits on PORTD
	MOVLW      3
	MOVWF      PORTD+0
;Stepper_Motor11.c,7 :: 		delay_ms(1000);        // Delay for 500 ms
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Stepper_Motor11.c,9 :: 		PORTD = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;Stepper_Motor11.c,10 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Stepper_Motor11.c,12 :: 		PORTD = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;Stepper_Motor11.c,13 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Stepper_Motor11.c,15 :: 		PORTD = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;Stepper_Motor11.c,16 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;Stepper_Motor11.c,18 :: 		PORTD = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;Stepper_Motor11.c,19 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Stepper_Motor11.c,20 :: 		}
	GOTO       L_main0
;Stepper_Motor11.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
