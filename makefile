ALL = code2 code2.o pole.o objetosc.o libpole.a libobjetosc.so

all: $(ALL)

.c.o:
	gcc -fPIC -c $<
	
.o:
	gcc -o $@ $^
	
code2.o: code2.c
objetosc.o: objetosc.c
pole.o: pole.c
code2: code2.o libpole.a libobjetosc.so

libpole.a: pole.o
	ar rs $@ $<
	
libobjetosc.so: objetosc.o
	gcc -shared -o $@ $<
