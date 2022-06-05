##Sprawozdanie
Łukasz Oleksiuk grupa 5.9

##Nr_zadania
Zadanie2

##Spis_commitów
commits:
1) inicjalizacja repo i dodanie podstawowych plików
2) stworzenie i dodanie pierwszego prostego pliku makefile
3) rozwinięcie pliku makefile o zmienne automatyczne
4) rozwinięcie pliku makefile tak aby wykorzystywał biblioteki (statyczna i dynamiczną)
5) rozwinięcie pliku makefile o reguły przyrostków
6) rozwinięcie pliku makefile o reguły wzorców
7) dodanie metody clean do pliku makefile (umożliwia usunięcie plików .o .so i pliku code2)
8) dodanie pliku README.md do repozytorium
9) przekształcenie repo do struktóry drzewiastej
10) dodanie pliku README_extra.md (i aktualizacja README.md)


##Dodanie_biblioteki
Aby plik makefile zadziałał poprawinie należy załączyć bibliotekę dynamiczną libobjetosc.so
(np przyklad poprzez użycie komendy "export LD_LIBRARY_PATH=$(pwd)").

##Dane_wjesciowe
Program końcowy po uruchomieniu będzie oczekiwał liczby całkowitej która będzie bokiem kwadratu i bokiem sześcianu.

##Opis
Plik makefile tworzy plik binarny na podstawie między innymi biblioteki dynamicznej służącej do obliczenia objętości sześcianu i biblioteki statycznej słóżącej do obliczenia pola kwadratu o podanym boku. Programu zostały napisane w języku C, a funkcje są funkcjami typu całkowitego.

#Przykład

	Podaj bok: 4
	Pole kwadratu o boku a wynosi: 16
	Objetosc szescianu o boku a wynosi: 64

