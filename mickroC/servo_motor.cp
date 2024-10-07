#line 1 "E:/CSE 4-2/Controller/mickroC/servo_motor.c"
void servoRotate0()
{

 int i;

 for (i=0;i<50;i++)
 { PORTB.F0=1;
 Delay_us(800);
 PORTB.F0=0;
 Delay_us(19200);

 }

}
void servoRotate90()
{

 int j;

 for (j=0;j<50;j++)
 { PORTB.F0=1;
 Delay_us(1500);
 PORTB.F0=0;
 Delay_us(18500);

 }

}

void servoRotate180()
{

 unsigned int i;

 for (i=0;i<50;i++)
 { PORTB.F0=1;
 Delay_us(2200);
 PORTB.F0=0;
 Delay_us(17800);

 }

}





void main() {
 TRISB=0x00;
 PORTB=0x00;

 while(1)
 { servoRotate0();
 delay_ms(2000);
 servoRotate90();
 delay_ms(2000);
 servoRotate180();
 delay_ms(2000);
 }


}
