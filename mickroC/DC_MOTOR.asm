
_main:

;DC_MOTOR.c,1 :: 		void main() {
;DC_MOTOR.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;DC_MOTOR.c,3 :: 		portb=0x00;
	CLRF       PORTB+0
;DC_MOTOR.c,6 :: 		while(1){
L_main0:
;DC_MOTOR.c,8 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;DC_MOTOR.c,9 :: 		portb.f1=0x00;
	BCF        PORTB+0, 1
;DC_MOTOR.c,12 :: 		}
	GOTO       L_main0
;DC_MOTOR.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
