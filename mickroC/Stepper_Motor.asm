
_main:

;Stepper_Motor.c,3 :: 		void main() {
;Stepper_Motor.c,4 :: 		TRISD = 0x00;   // Set PORTD as output
	CLRF       TRISD+0
;Stepper_Motor.c,5 :: 		PORTD = 0xFF;   // Set all bits of PORTD to high (11111111)
	MOVLW      255
	MOVWF      PORTD+0
;Stepper_Motor.c,7 :: 		while(1) {
L_main0:
;Stepper_Motor.c,8 :: 		PORTD = 0b00000011;   // Set specific bits on PORTD
	MOVLW      3
	MOVWF      PORTD+0
;Stepper_Motor.c,9 :: 		delay_ms(2000);        // Delay for 500 ms
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;Stepper_Motor.c,11 :: 		PORTD = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;Stepper_Motor.c,12 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;Stepper_Motor.c,14 :: 		PORTD = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;Stepper_Motor.c,15 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;Stepper_Motor.c,17 :: 		PORTD = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;Stepper_Motor.c,18 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;Stepper_Motor.c,20 :: 		PORTD = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;Stepper_Motor.c,21 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;Stepper_Motor.c,22 :: 		}
	GOTO       L_main0
;Stepper_Motor.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
