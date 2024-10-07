#line 1 "E:/CSE 4-2/Controller/mickroC/DC_MOTOR_Speed_Control_PWM12.c"
void main() {
 short duty = 0;
 TRISB = 0x00;
 TRISD = 0xFF;
 PORTB.F0 = 0xFF;
 PORTB.F1 = 0x00;

 PWM2_Init(1000);
 PWM2_Start();
 PWM2_Set_Duty(duty);

 while (1) {

 if (PORTD.F0 == 1 && duty < 240) {
 Delay_ms(1000);
 if (PORTD.F0 == 1 && duty < 240) {
 duty += 10;

 }
 }


 if (PORTD.F1 == 1 && duty > 0) {
 Delay_ms(1000);
 if (PORTD.F1 == 1 && duty > 0) {
 duty -= 10;

 }
 }
 }
}
