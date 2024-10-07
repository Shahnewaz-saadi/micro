
_main:

;Analag_To_Digital_con.c,4 :: 		void main() {
;Analag_To_Digital_con.c,6 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;Analag_To_Digital_con.c,7 :: 		ADC_Init();
	CALL       _ADC_Init+0
;Analag_To_Digital_con.c,8 :: 		while(1)
L_main0:
;Analag_To_Digital_con.c,10 :: 		valADC = ADC_Read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _valADC+0
	MOVF       R0+1, 0
	MOVWF      _valADC+1
;Analag_To_Digital_con.c,11 :: 		IntToStr(valADC,x);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Analag_To_Digital_con.c,13 :: 		UART1_Write_Text("analog value = ");
	MOVLW      ?lstr1_Analag_To_Digital_con+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Analag_To_Digital_con.c,14 :: 		UART1_Write_Text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Analag_To_Digital_con.c,16 :: 		strcpy(x,"");
	MOVLW      _x+0
	MOVWF      FARG_strcpy_to+0
	MOVLW      ?lstr2_Analag_To_Digital_con+0
	MOVWF      FARG_strcpy_from+0
	CALL       _strcpy+0
;Analag_To_Digital_con.c,17 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;Analag_To_Digital_con.c,18 :: 		Delay_ms(1000);
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
;Analag_To_Digital_con.c,21 :: 		}
	GOTO       L_main0
;Analag_To_Digital_con.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
