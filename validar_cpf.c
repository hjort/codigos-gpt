#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main() {
    char cpf[12]; // alocando espaço para armazenar o CPF como uma string

    printf("Digite o CPF (apenas números): ");
    scanf("%s", cpf);

    int i, j, digito1 = 0, digito2 = 0;

    // verificando se o CPF possui 11 dígitos
    if (strlen(cpf) != 11) {
        printf("CPF inválido.\n");
        return 0;
    }

    // verificando se o CPF possui apenas números
    for (i = 0; i < 11; i++) {
        if (!isdigit(cpf[i])) {
            printf("CPF inválido.\n");
            return 0;
        }
    }

    // calculando o primeiro dígito verificador
    for (i = 0, j = 10; i < 9; i++, j--) {
        digito1 += (cpf[i] - '0') * j;
    }
    digito1 %= 11;
    digito1 = digito1 < 2 ? 0 : 11 - digito1;

    // calculando o segundo dígito verificador
    for (i = 0, j = 11; i < 10; i++, j--) {
        digito2 += (cpf[i] - '0') * j;
    }
    digito2 %= 11;
    digito2 = digito2 < 2 ? 0 : 11 - digito2;

    // verificando se os dígitos verificadores estão corretos
    if (cpf[9] - '0' != digito1 || cpf[10] - '0' != digito2) {
        printf("CPF inválido.\n");
        return 0;
    }

    printf("CPF válido.\n");
    return 0;
}

