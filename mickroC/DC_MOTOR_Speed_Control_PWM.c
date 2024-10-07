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
      // Increase duty cycle
      if (PORTD.F0 == 1 && duty < 250) {
         Delay_ms(1000);   // Debouncing delay
         if (PORTD.F0 == 1 && duty < 250) {  // Check button press again
            duty += 10;                     // Increment duty cycle
            PWM1_Set_Duty(duty);            // Update PWM duty cycle
         }
      }

      // Decrease duty cycle
      if (PORTD.F1 == 1 && duty > 0) {
         Delay_ms(1000);   // Debouncing delay
         if (PORTD.F1 == 1 && duty > 0) {   // Check button press again
            duty -= 10;                     // Decrement duty cycle
            PWM1_Set_Duty(duty);            // Update PWM duty cycle
         }
      }
   }
}

