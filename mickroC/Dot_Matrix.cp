#line 1 "E:/CSE 4-2/Controller/mickroC/Dot_Matrix.c"


void main() {
 TRISB = 0x00;
 TRISD = 0x00;

 while(1) {

 PORTD = 0b10000000;
 PORTB = 0b00000000;
 delay_ms(5);


 PORTD = 0b01000000;
 PORTB = 0b11111111;
 delay_ms(5);


 PORTD = 0b00100000;
 PORTB = 0b11111111;
 delay_ms(5);


 PORTD = 0b00010000;
 PORTB = 0b00011000;
 delay_ms(5);


 PORTD = 0b00001000;
 PORTB = 0b00011000;
 delay_ms(5);


 PORTD = 0b00000100;
 PORTB = 0b11111111;
 delay_ms(5);


 PORTD = 0b00000010;
 PORTB = 0b11111111;
 delay_ms(5);


 PORTD = 0b00000001;
 PORTB = 0b00000000;
 delay_ms(5);
 }
}
