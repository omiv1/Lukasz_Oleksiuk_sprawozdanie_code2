ALL = code2 code2.o pole.o objetosc.o libpole.a libobjetosc.so
all: $(ALL)

code2.o: code2.c
	gcc -c $<
	
pole.o: pole.c
	gcc -c $<
	
objetosc.o: objetosc.c
	gcc -fPIC -c $<
	
libpole.a: pole.o
	ar rs $@ $<
	
libobjetosc.so: objetosc.o
	gcc -shared -o $@ $<

code2: code2.o libpole.a libobjetosc.so
	gcc -o $@ $^
