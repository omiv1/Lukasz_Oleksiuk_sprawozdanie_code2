ALL = code2 code2.o pole.o objetosc.o libpole.a libobjetosc.so
.PHONY: clean

all: $(ALL)

%e.o: %e.c
	gcc -c $<

%c.o:  %c.c
	gcc -fPIC -c $<
	
%2.o: %2.c 
	gcc -c $<
	
%e.a:
	ar rs $@ $<
	
%c.so: 
	gcc -shared -o $@ $<
	
%2:
	gcc -o $@ $^
	
code2.o: code2.c libobjetosc.h libpole.h
objetosc.o: objetosc.c
Pole.o: pole.c
libpole.a: pole.o
libobjetosc.so: objetosc.o
code2: code2.o libpole.a libobjetosc.so

clean:
	rm -f code2 *.o *.a *.so
