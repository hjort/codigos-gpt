#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

int main() {
    // Configuração do gerador de números aleatórios
    srand(time(NULL));

    while (1) {
        for (int i = 0; i < 50; i++) {
            // Gera caracteres aleatórios em verde
            int random_char = rand() % 94 + 33; // ASCII 33-126
            printf("\033[0;32m%c\033[0m", random_char);
        }
        printf("\n");

        // Atraso de 100 milissegundos
        usleep(100000);
    }

    return 0;
}

