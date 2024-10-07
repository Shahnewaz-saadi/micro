void main() {
   short duty = 0;         // Initialize duty cycle variable
   TRISB = 0x00;           // Set PORTB as output
   TRISD = 0xFF;           // Set PORTD as input (for buttons)
   PORTB.F0 = 0xFF;        // Set initial value for PORTB.F0
   PORTB.F1 = 0x00;        // Set initial value for PORTB.F1

   PWM2_Init(1000);        // Initialize PWM1 at 1 kHz frequency
   PWM2_Start();           // Start PWM1
   PWM2_Set_Duty(duty);    // Set initial duty cycle to 0

   while (1) {
      // Increase duty cycle
      if (PORTD.F0 == 1 && duty < 240) {
         Delay_ms(1000);   // Debouncing delay
         if (PORTD.F0 == 1 && duty < 240) {  // Check button press again
            duty += 10;                     // Increment duty cycle
            //PWM2_Set_Duty(duty);            // Update PWM duty cycle
         }
      }

      // Decrease duty cycle
      if (PORTD.F1 == 1 && duty > 0) {
         Delay_ms(1000);   // Debouncing delay
         if (PORTD.F1 == 1 && duty > 0) {   // Check button press again
            duty -= 10;                     // Decrement duty cycle
            //PWM2_Set_Duty(duty);            // Update PWM duty cycle
         }
      }
   }
}
