
_main:

;nultiplixing_7_seg_4_digit.c,4 :: 		void main() {
;nultiplixing_7_seg_4_digit.c,6 :: 		TRISB=0x00;
	CLRF       TRISB+0
;nultiplixing_7_seg_4_digit.c,7 :: 		TRISC=0x00;
	CLRF       TRISC+0
;nultiplixing_7_seg_4_digit.c,8 :: 		portb=0x00;
	CLRF       PORTB+0
;nultiplixing_7_seg_4_digit.c,9 :: 		portc=0x00;
	CLRF       PORTC+0
;nultiplixing_7_seg_4_digit.c,10 :: 		while(1){
L_main0:
;nultiplixing_7_seg_4_digit.c,12 :: 		for( i=0;i<=9999;i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	XORLW      39
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       main_i_L0+0, 0
	SUBLW      15
L__main13:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;nultiplixing_7_seg_4_digit.c,13 :: 		{    digit1 = i/1000;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_digit1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_digit1_L0+1
;nultiplixing_7_seg_4_digit.c,14 :: 		digit2 = (i/100)%10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_digit2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_digit2_L0+1
;nultiplixing_7_seg_4_digit.c,15 :: 		digit3= (i/10)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_digit3_L0+0
	MOVF       R0+1, 0
	MOVWF      main_digit3_L0+1
;nultiplixing_7_seg_4_digit.c,16 :: 		digit4=i%10  ;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_digit4_L0+0
	MOVF       R0+1, 0
	MOVWF      main_digit4_L0+1
;nultiplixing_7_seg_4_digit.c,17 :: 		for (j=0;j<50;j++)
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main5:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVLW      50
	SUBWF      main_j_L0+0, 0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;nultiplixing_7_seg_4_digit.c,21 :: 		portc.f0=0xff;
	BSF        PORTC+0, 0
;nultiplixing_7_seg_4_digit.c,22 :: 		portb=array[digit1];
	MOVF       main_digit1_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;nultiplixing_7_seg_4_digit.c,23 :: 		delay_ms(5);
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
;nultiplixing_7_seg_4_digit.c,25 :: 		portc.f0=0x00;
	BCF        PORTC+0, 0
;nultiplixing_7_seg_4_digit.c,28 :: 		portc.f1=0xff;
	BSF        PORTC+0, 1
;nultiplixing_7_seg_4_digit.c,29 :: 		portb=array[digit2];
	MOVF       main_digit2_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;nultiplixing_7_seg_4_digit.c,30 :: 		delay_ms(5);
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
;nultiplixing_7_seg_4_digit.c,32 :: 		portc.f1=0x00;
	BCF        PORTC+0, 1
;nultiplixing_7_seg_4_digit.c,34 :: 		portc.f2=0xff;
	BSF        PORTC+0, 2
;nultiplixing_7_seg_4_digit.c,35 :: 		portb=array[digit3];
	MOVF       main_digit3_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;nultiplixing_7_seg_4_digit.c,36 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
;nultiplixing_7_seg_4_digit.c,38 :: 		portc.f2=0x00;
	BCF        PORTC+0, 2
;nultiplixing_7_seg_4_digit.c,40 :: 		portc.f3=0xff;
	BSF        PORTC+0, 3
;nultiplixing_7_seg_4_digit.c,41 :: 		portb=array[digit4];
	MOVF       main_digit4_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;nultiplixing_7_seg_4_digit.c,42 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;nultiplixing_7_seg_4_digit.c,44 :: 		portc.f3=0x00;
	BCF        PORTC+0, 3
;nultiplixing_7_seg_4_digit.c,17 :: 		for (j=0;j<50;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;nultiplixing_7_seg_4_digit.c,45 :: 		}
	GOTO       L_main5
L_main6:
;nultiplixing_7_seg_4_digit.c,12 :: 		for( i=0;i<=9999;i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;nultiplixing_7_seg_4_digit.c,46 :: 		}
	GOTO       L_main2
L_main3:
;nultiplixing_7_seg_4_digit.c,49 :: 		}
	GOTO       L_main0
;nultiplixing_7_seg_4_digit.c,55 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
