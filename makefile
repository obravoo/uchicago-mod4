compile: setup count.o list.o main.o
	gcc ./obj/main.o ./obj/count.o ./obj/list.o -o ./bin/hola

setup:
	mkdir ./obj
	mkdir ./bin

count.o: ./src/count.c
	gcc -c ./src/count.c -o ./obj/count.o

list.o: ./src/list.c
	gcc -c ./src/list.c -o ./obj/list.o

main.o: ./src/main.c
	gcc -c ./src/main.c -o ./obj/main.o

clean:
	rm -rf ./obj
	rm -rf ./bin
