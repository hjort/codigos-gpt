#!/bin/bash -x

as -o hello.o hello.s   # Monta o código e gera o arquivo objeto

ld -o hello hello.o     # Liga o arquivo objeto e gera o executável

./hello                # Executa o programa "Hello World"
