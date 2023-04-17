CC = gcc
CFLAGS = -Wall -Wextra -pedantic

validar_cpf: validar_cpf.o
	$(CC) $(CFLAGS) -o validar_cpf validar_cpf.o

validar_cpf.o: validar_cpf.c
	$(CC) $(CFLAGS) -c validar_cpf.c

clean:
	rm -f validar_cpf validar_cpf.o

