CC=	gcc

main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	gcc main.o get_student_id.o -o main

main.o: main.c
	gcc -c -g main.c

get_student_id.o: get_student_id.c get_student_id.h
	gcc -c -g get_student_id.c

clean:
	rm *.o main main.out
