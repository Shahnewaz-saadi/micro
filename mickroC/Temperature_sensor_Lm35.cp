#line 1 "E:/CSE 4-2/Controller/mickroC/Temperature_sensor_Lm35.c"
char i;


sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;


char txt1[] = "Temperature = ";

 float temperature,valADC,result;
 char x[4];



void main(){
 ADCON1 = 0x06;
 CMCON = 0x07;
 ADC_Init();
 Lcd_Init();

 Lcd_Cmd(_LCD_CLEAR);


 Lcd_Out(1, 6, "showing Tep");

 delay_ms(2000);
 Lcd_Cmd(_LCD_CLEAR);

 while(1)
 {
 valADC = ADC_Read(3);


 temperature= (valADC*4.88)/10;
 FloatToStr(temperature,x);


 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1,"temp=");
 Lcd_Out(1, 8,x);
 lcd_chr(1,16,223);
 lcd_out_cp( "c");
 strcpy(x,"");

 Delay_ms(1000);


 }
}
