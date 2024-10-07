
_main:

;DC_MOTOR_Speed_Control_PWM12.c,1 :: 		void main() {
;DC_MOTOR_Speed_Control_PWM12.c,2 :: 		short duty = 0;         // Initialize duty cycle variable
	CLRF       main_duty_L0+0
;DC_MOTOR_Speed_Control_PWM12.c,3 :: 		TRISB = 0x00;           // Set PORTB as output
	CLRF       TRISB+0
;DC_MOTOR_Speed_Control_PWM12.c,4 :: 		TRISD = 0xFF;           // Set PORTD as input (for buttons)
	MOVLW      255
	MOVWF      TRISD+0
;DC_MOTOR_Speed_Control_PWM12.c,5 :: 		PORTB.F0 = 0xFF;        // Set initial value for PORTB.F0
	BSF        PORTB+0, 0
;DC_MOTOR_Speed_Control_PWM12.c,6 :: 		PORTB.F1 = 0x00;        // Set initial value for PORTB.F1
	BCF        PORTB+0, 1
;DC_MOTOR_Speed_Control_PWM12.c,12 :: 		while (1) {
L_main0:
;DC_MOTOR_Speed_Control_PWM12.c,14 :: 		if (PORTD.F0 == 1 && duty < 250) {
	BTFSS      PORTD+0, 0
	GOTO       L_main4
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main19:
;DC_MOTOR_Speed_Control_PWM12.c,15 :: 		Delay_ms(1000);   // Debouncing delay
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
;DC_MOTOR_Speed_Control_PWM12.c,16 :: 		if (PORTD.F0 == 1 && duty < 250) {  // Check button press again
	BTFSS      PORTD+0, 0
	GOTO       L_main8
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
L__main18:
;DC_MOTOR_Speed_Control_PWM12.c,17 :: 		duty += 10;                     // Increment duty cycle
	MOVLW      10
	ADDWF      main_duty_L0+0, 1
;DC_MOTOR_Speed_Control_PWM12.c,19 :: 		}
L_main8:
;DC_MOTOR_Speed_Control_PWM12.c,20 :: 		}
L_main4:
;DC_MOTOR_Speed_Control_PWM12.c,23 :: 		if (PORTD.F1 == 1 && duty > 0) {
	BTFSS      PORTD+0, 1
	GOTO       L_main11
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main11
L__main17:
;DC_MOTOR_Speed_Control_PWM12.c,24 :: 		Delay_ms(1000);   // Debouncing delay
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;DC_MOTOR_Speed_Control_PWM12.c,25 :: 		if (PORTD.F1 == 1 && duty > 0) {   // Check button press again
	BTFSS      PORTD+0, 1
	GOTO       L_main15
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main15
L__main16:
;DC_MOTOR_Speed_Control_PWM12.c,26 :: 		duty -= 10;                     // Decrement duty cycle
	MOVLW      10
	SUBWF      main_duty_L0+0, 1
;DC_MOTOR_Speed_Control_PWM12.c,28 :: 		}
L_main15:
;DC_MOTOR_Speed_Control_PWM12.c,29 :: 		}
L_main11:
;DC_MOTOR_Speed_Control_PWM12.c,30 :: 		}
	GOTO       L_main0
;DC_MOTOR_Speed_Control_PWM12.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
