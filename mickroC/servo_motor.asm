
_servoRotate0:

;servo_motor.c,1 :: 		void servoRotate0()
;servo_motor.c,6 :: 		for (i=0;i<50;i++)
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate00:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate021
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate021:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate01
;servo_motor.c,7 :: 		{   PORTB.F0=1;
	BSF        PORTB+0, 0
;servo_motor.c,8 :: 		Delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_servoRotate03:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate03
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate03
	NOP
;servo_motor.c,9 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;servo_motor.c,10 :: 		Delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_servoRotate04:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate04
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate04
	NOP
	NOP
;servo_motor.c,6 :: 		for (i=0;i<50;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor.c,12 :: 		}
	GOTO       L_servoRotate00
L_servoRotate01:
;servo_motor.c,14 :: 		}
L_end_servoRotate0:
	RETURN
; end of _servoRotate0

_servoRotate90:

;servo_motor.c,15 :: 		void servoRotate90()
;servo_motor.c,20 :: 		for (j=0;j<50;j++)
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate905:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate9023
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate9023:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate906
;servo_motor.c,21 :: 		{   PORTB.F0=1;
	BSF        PORTB+0, 0
;servo_motor.c,22 :: 		Delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_servoRotate908:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate908
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate908
	NOP
;servo_motor.c,23 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;servo_motor.c,24 :: 		Delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_servoRotate909:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate909
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate909
	NOP
	NOP
;servo_motor.c,20 :: 		for (j=0;j<50;j++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor.c,26 :: 		}
	GOTO       L_servoRotate905
L_servoRotate906:
;servo_motor.c,28 :: 		}
L_end_servoRotate90:
	RETURN
; end of _servoRotate90

_servoRotate180:

;servo_motor.c,30 :: 		void servoRotate180()
;servo_motor.c,35 :: 		for (i=0;i<50;i++)
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate18010:
	MOVLW      0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate18025
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate18025:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate18011
;servo_motor.c,36 :: 		{   PORTB.F0=1;
	BSF        PORTB+0, 0
;servo_motor.c,37 :: 		Delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_servoRotate18013:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate18013
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate18013
	NOP
	NOP
;servo_motor.c,38 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;servo_motor.c,39 :: 		Delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_servoRotate18014:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate18014
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate18014
	NOP
;servo_motor.c,35 :: 		for (i=0;i<50;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor.c,41 :: 		}
	GOTO       L_servoRotate18010
L_servoRotate18011:
;servo_motor.c,43 :: 		}
L_end_servoRotate180:
	RETURN
; end of _servoRotate180

_main:

;servo_motor.c,49 :: 		void main() {
;servo_motor.c,50 :: 		TRISB=0x00;
	CLRF       TRISB+0
;servo_motor.c,51 :: 		PORTB=0x00;
	CLRF       PORTB+0
;servo_motor.c,53 :: 		while(1)
L_main15:
;servo_motor.c,54 :: 		{  servoRotate0();
	CALL       _servoRotate0+0
;servo_motor.c,55 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
;servo_motor.c,56 :: 		servoRotate90();
	CALL       _servoRotate90+0
;servo_motor.c,57 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
;servo_motor.c,58 :: 		servoRotate180();
	CALL       _servoRotate180+0
;servo_motor.c,59 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;servo_motor.c,60 :: 		}
	GOTO       L_main15
;servo_motor.c,63 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
