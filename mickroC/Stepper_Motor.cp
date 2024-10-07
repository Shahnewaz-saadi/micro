#line 1 "E:/CSE 4-2/Controller/mickroC/Stepper_Motor.c"


void main() {
 TRISD = 0x00;
 PORTD = 0xFF;

 while(1) {
 PORTD = 0b00000011;
 delay_ms(2000);

 PORTD = 0b00000110;
 delay_ms(2000);

 PORTD = 0b00000011;
 delay_ms(2000);

 PORTD = 0b00001100;
 delay_ms(2000);

 PORTD = 0b00001001;
 delay_ms(2000);
 }
}
