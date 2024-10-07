char array[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90}  ;


void main() {

           int i=0;
           TRISB = 0x00;  // set portb as output
           portb=0x00;  
           TRISD=0xff;
           


           while(1)
           {
           
             if(portd.f0==1 && i<9)
             {
                 delay_ms(200);
             
                 if(portd.f0==1 && i<9)
                 {
                     i++;
                 }
             }
             if(portd.f1==1 && i>0)
             {
               delay_ms(200);

                 if(portd.f1==1 && i>0)
                 {
                     i--;
                 }
             }
             
               portb=array[i];
             
             
           }
           

}