ALL = code2 code2.o pole.o objetosc.o libpole.a libobjetosc.so
.PHONY: clean

all: $(ALL)

vpath %.c src
vpath %.h include2
vpath %.a lib
vpath %.so lib

%2.o: %2.c 
	gcc -c $< -L ./lib -I ./include2
%e.o: %e.c
	gcc -c $<
%c.o: %c.c
	gcc -fPIC -c $<
%e.a:
	ar rs ./lib/$@ $<
%c.so: 
	gcc -shared -o ./lib/$@ $<
%2:
	gcc -o ./bin/$@ $^ -L ./lib
	
code2.o: code2.c libobjetosc.h libpole.h
objetosc.o: objetosc.c
Pole.o: pole.c
libpole.a: pole.o
libobjetosc.so: objetosc.o
code2: code2.o libpole.a libobjetosc.so

clean:
	rm -f code2 *.o *.a *.so ./bin/code2 ./include2/*.o ./lib/*.a ./lib/*.so
