char i; // Loop variable

// LCD module connections
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
// End LCD module connections

char txt1[] = "Temperature = "; // Text to display on the LCD
 //int valADC;
 float temperature,valADC,result;
 char x[4];
// Delay function to control moving speed


void main(){
  ADCON1 = 0x06; // Configure AN pins as digital I/O
  CMCON = 0x07;  // Disable comparators
   ADC_Init();
  Lcd_Init(); 
               // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);     // Clear display
  // Cursor off

  Lcd_Out(1, 6, "showing Tep");     // Write text in the first row (6th position)
            // Wait for a while
            delay_ms(2000);
            Lcd_Cmd(_LCD_CLEAR);

  while(1)
    {
    valADC = ADC_Read(3);

    
    temperature=    (valADC*4.88)/10;
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
