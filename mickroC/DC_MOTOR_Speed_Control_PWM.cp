#line 1 "E:/CSE 4-2/Controller/mickroC/DC_MOTOR_Speed_Control_PWM.c"
void main() {
 short duty = 0;
 TRISB = 0x00;
 TRISD = 0xFF;
 PORTB.F0 = 0xFF;
 PORTB.F1 = 0x00;

 PWM1_Init(1000);
 PWM1_Start();
 PWM1_Set_Duty(duty);

 while (1) {

 if (PORTD.F0 == 1 && duty < 250) {
 Delay_ms(1000);
 if (PORTD.F0 == 1 && duty < 250) {
 duty += 10;
 PWM1_Set_Duty(duty);
 }
 }


 if (PORTD.F1 == 1 && duty > 0) {
 Delay_ms(1000);
 if (PORTD.F1 == 1 && duty > 0) {
 duty -= 10;
 PWM1_Set_Duty(duty);
 }
 }
 }
}
