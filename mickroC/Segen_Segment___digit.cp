#line 1 "E:/CSE 4-2/Controller/mickroC/Segen_Segment___digit.c"


char array[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

void main() {
 int i;
 TRISB=0x00;
 portb=0xff;

 while(1)
 {
 for(i=0;i<=9;i++)
 { portb=array[i];
 delay_ms(500);

 }
 }
}
