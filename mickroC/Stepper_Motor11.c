void main() {
    TRISD = 0x00;   // Set PORTD as output
    PORTD = 0xFF;   // Set all bits of PORTD to high (11111111)

    while(1) {
        PORTD = 0b00000011;   // Set specific bits on PORTD
        delay_ms(1000);        // Delay for 500 ms

        PORTD = 0b00000110;
        delay_ms(1000);

        PORTD = 0b00000011;
        delay_ms(1000);

        PORTD = 0b00001100;
        delay_ms(1000);

        PORTD = 0b00001001;
        delay_ms(1000);
    }
}