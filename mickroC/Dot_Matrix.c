

void main() {
   TRISB = 0x00;   // Set PORTB as output (columns)
   TRISD = 0x00;   // Set PORTD as output (rows)

   while(1) {
     // Row 1: Activate row 1 (bit 7 of PORTD), and set columns to 0
     PORTD = 0b10000000;
     PORTB = 0b00000000;
     delay_ms(5);

     // Row 2: Activate row 2 (bit 6 of PORTD), and set columns to all 1s
     PORTD = 0b01000000;
     PORTB = 0b11111111;
     delay_ms(5);

     // Row 3: Activate row 3 (bit 5 of PORTD), and set columns to all 1s
     PORTD = 0b00100000;
     PORTB = 0b11111111;
     delay_ms(5);

     // Row 4: Activate row 4 (bit 4 of PORTD), and set columns to 00011000
     PORTD = 0b00010000;
     PORTB = 0b00011000;
     delay_ms(5);

     // Row 5: Activate row 5 (bit 3 of PORTD), and set columns to 00011000
     PORTD = 0b00001000;
     PORTB = 0b00011000;
     delay_ms(5);

     // Row 6: Activate row 6 (bit 2 of PORTD), and set columns to all 1s
     PORTD = 0b00000100;
     PORTB = 0b11111111;
     delay_ms(5);

     // Row 7: Activate row 7 (bit 1 of PORTD), and set columns to all 1s
     PORTD = 0b00000010;
     PORTB = 0b11111111;
     delay_ms(5);

     // Row 8: Activate row 8 (bit 0 of PORTD), and set columns to 0
     PORTD = 0b00000001;
     PORTB = 0b00000000;
     delay_ms(5);
   }
}



