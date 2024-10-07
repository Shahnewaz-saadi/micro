#line 1 "E:/CSE 4-2/Controller/mickroC/LED_Blinkong.c"
void main() {
 TRISB = 0x00;

 while(1){
 PORTB=0xFF;
 delay_ms(1000);
 PORTB=0x00;
 delay_ms(1000);




 }
}
