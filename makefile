ALL = code2 code2.o pole.o objetosc.o libpole.a libobjetosc.so
all: $(ALL)

code2.o: code2.c
	gcc -c code2.c
	
pole.o: pole.c
	gcc -c pole.c
	
objetosc.o: objetosc.c
	gcc -fPIC -c objetosc.c
	
libpole.a: pole.o
	ar rs libpole.a pole.o
	
libobjetosc.so: objetosc.o
	gcc -shared -o libobjetosc.so objetosc.o

code2: code2.o libpole.a libobjetosc.so
	gcc -o code2 pole.c objetosc.c code2.c
