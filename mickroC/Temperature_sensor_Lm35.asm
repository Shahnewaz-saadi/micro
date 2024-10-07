
_main:

;Temperature_sensor_Lm35.c,26 :: 		void main(){
;Temperature_sensor_Lm35.c,27 :: 		ADCON1 = 0x06; // Configure AN pins as digital I/O
	MOVLW      6
	MOVWF      ADCON1+0
;Temperature_sensor_Lm35.c,28 :: 		CMCON = 0x07;  // Disable comparators
	MOVLW      7
	MOVWF      CMCON+0
;Temperature_sensor_Lm35.c,29 :: 		ADC_Init();
	CALL       _ADC_Init+0
;Temperature_sensor_Lm35.c,30 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Temperature_sensor_Lm35.c,32 :: 		Lcd_Cmd(_LCD_CLEAR);     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Temperature_sensor_Lm35.c,35 :: 		Lcd_Out(1, 6, "showing Tep");     // Write text in the first row (6th position)
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Temperature_sensor_Lm35+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_sensor_Lm35.c,37 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;Temperature_sensor_Lm35.c,38 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Temperature_sensor_Lm35.c,40 :: 		while(1)
L_main1:
;Temperature_sensor_Lm35.c,42 :: 		valADC = ADC_Read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _valADC+0
	MOVF       R0+1, 0
	MOVWF      _valADC+1
	MOVF       R0+2, 0
	MOVWF      _valADC+2
	MOVF       R0+3, 0
	MOVWF      _valADC+3
;Temperature_sensor_Lm35.c,45 :: 		temperature=    (valADC*4.88)/10;
	MOVLW      246
	MOVWF      R4+0
	MOVLW      40
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _temperature+0
	MOVF       R0+1, 0
	MOVWF      _temperature+1
	MOVF       R0+2, 0
	MOVWF      _temperature+2
	MOVF       R0+3, 0
	MOVWF      _temperature+3
;Temperature_sensor_Lm35.c,46 :: 		FloatToStr(temperature,x);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _x+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;Temperature_sensor_Lm35.c,49 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Temperature_sensor_Lm35.c,50 :: 		Lcd_Out(1, 1,"temp=");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Temperature_sensor_Lm35+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_sensor_Lm35.c,51 :: 		Lcd_Out(1, 8,x);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _x+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_sensor_Lm35.c,52 :: 		lcd_chr(1,16,223);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Temperature_sensor_Lm35.c,53 :: 		lcd_out_cp( "c");
	MOVLW      ?lstr3_Temperature_sensor_Lm35+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;Temperature_sensor_Lm35.c,54 :: 		strcpy(x,"");
	MOVLW      _x+0
	MOVWF      FARG_strcpy_to+0
	MOVLW      ?lstr4_Temperature_sensor_Lm35+0
	MOVWF      FARG_strcpy_from+0
	CALL       _strcpy+0
;Temperature_sensor_Lm35.c,56 :: 		Delay_ms(1000);
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
;Temperature_sensor_Lm35.c,59 :: 		}
	GOTO       L_main1
;Temperature_sensor_Lm35.c,60 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
