/* code2.c */
#include "stdio.h"
#include "libpole.h"
#include "libobjetosc.h"
int main() 
{ 
int a;
printf("Podaj bok: ");
scanf("%d",&a);
int p,o;
p=pole(a); 
o=objetosc(a); 
printf("Pole kwadratu o boku a wynosi: %d\n", p);
printf("Objetosc szescianu o boku a wynosi: %d\n", o);
return 0;
}
