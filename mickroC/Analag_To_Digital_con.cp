#line 1 "E:/CSE 4-2/Controller/mickroC/Analag_To_Digital_con.c"
int valADC;
char x[4];

void main() {

 UART1_Init(9600);
 ADC_Init();
 while(1)
 {
 valADC = ADC_Read(3);
 IntToStr(valADC,x);

 UART1_Write_Text("analog value = ");
 UART1_Write_Text(x);

 strcpy(x,"");
 UART1_Write(13);
 Delay_ms(1000);


 }

}
