// test bitových operací všeho druhu (pBlazeIDE)
#include "port.h"

void main()
{
	volatile unsigned char c = 1;
  volatile unsigned char d = 1;
  volatile unsigned char e = 15;
	
	c <<= 4;
	
	c >>= 3;
	
  c |= c;
  
  c |= d + 1;
  
  c = c & d;
  
  d = ~e;
  
  e = c ^ d;
  
  c = !c && d || e;
  c = c || e;
 	 
  if (!c)
  {
    c = -e;
  }
}
