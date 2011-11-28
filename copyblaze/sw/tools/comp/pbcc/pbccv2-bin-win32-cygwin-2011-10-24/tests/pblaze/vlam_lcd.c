// definice portu
extern char PBLAZEPORT[];
 
#define port_led 0x80
#define port_lcd_low  0x70 // Port address
#define port_lcd_high 0x71 // Port address  71 + 70 LE|LRS  LD                  

// INFO:
//  PORT[x] = y se mapuje automaticky na dvojici instrukci LOAD s?, y; OUTPUT s?, x
//  alokace registru se provadi dle aktualniho obsazeni
#define set_led(val) PBLAZEPORT[port_led] = val

#define led_on() set_led(0)
#define led_off() set_led(1)

volatile unsigned char x;        
/*

#define lcd_cmd(cmd) { PBLAZEPORT[port_lcd_high] = 0; PBLAZEPORT[port_lcd_low] = cmd; delayms(); PBLAZEPORT[port_lcd_high] = 2; delayms(); PBLAZEPORT[port_lcd_high] = 0;}
#define lcd_wr(cmd) { x=1; PBLAZEPORT[port_lcd_high] = x; x=cmd; PBLAZEPORT[port_lcd_low] = x; delayms(); x=3; PBLAZEPORT[port_lcd_high] = x; delayms(); x=1; PBLAZEPORT[port_lcd_high] = x;}

*/
#define lcd_cmd(cmd) { PBLAZEPORT[port_lcd_high] = 0; PBLAZEPORT[port_lcd_low] = cmd; delayms(); PBLAZEPORT[port_lcd_high] = 2; delayms(); PBLAZEPORT[port_lcd_high] = 0;}
#define lcd_wr(cmd) { PBLAZEPORT[port_lcd_high] = 0; PBLAZEPORT[port_lcd_low] = cmd; delayms(); PBLAZEPORT[port_lcd_high] = 3; delayms(); PBLAZEPORT[port_lcd_high] = 1;}

#define LCD_CLEAR_DISPLAY  0x01
#define LCD_CURSOR_AT_HOME 0x02 

//cekaci smycka ~ 1ms
void delayms() {
  volatile unsigned char i;
  volatile unsigned char j;

  for (i = 0; i < 100; i++)
      for (j = 0; j < 255; j++);

}

//cekaci smycka ~ 1s
void delay1s() {
  volatile unsigned char i;

  for (i = 0; i < 100; i++) 
      delayms();
}


void lcd_init() {
  lcd_cmd(LCD_CLEAR_DISPLAY);
  lcd_cmd(LCD_CURSOR_AT_HOME);
  lcd_cmd(0x38); // LCD function set - osmibitovy prenos, displej slozen ze dvou polovin, font 5x8
  lcd_cmd(0x0E); // LCD display - zobrazeni kurzoru, zapnuti displeje
  lcd_cmd(0x06); // LCD entry mode - automaticka inkrementace adresy kurzoru

}

void lcd_upd(unsigned char val) {
  lcd_cmd(0x80); //cursor zac  
  lcd_wr('V');
  lcd_wr('L');
  lcd_wr('A');
  lcd_wr('M');
  lcd_wr(' ');
  val = val & 0xF;
  val = (val > 9) ? 55 + val : 48 + val;
  lcd_wr(val);
}

// hlavni program
// blikani s LED, perioda 1 sekunda
void main() {
  unsigned char val = 0;

  lcd_init();

  while (1) {
     lcd_upd(val);
     set_led(val++);
     delay1s(); 
/*
     led_on();
     delay1s(); 
     led_off();
     delay1s();
*/     
  }
}


