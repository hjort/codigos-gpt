#!/bin/bash

echo -n "Digite o CPF (apenas números): "
read cpf

# verificando se o CPF possui 11 dígitos
if [[ ${#cpf} -ne 11 ]]; then
    echo "CPF inválido."
    exit 1
fi

# verificando se o CPF possui apenas números
if ! [[ $cpf =~ ^[0-9]+$ ]]; then
    echo "CPF inválido."
    exit 1
fi

# calculando o primeiro dígito verificador
soma=0
for (( i=0, j=10; i<9; i++, j-- )); do
    soma=$(( soma + ${cpf:$i:1} * j ))
done
digito1=$(( soma % 11 ))
if [[ $digito1 -lt 2 ]]; then
    digito1=0
else
    digito1=$(( 11 - digito1 ))
fi

# calculando o segundo dígito verificador
soma=0
for (( i=0, j=11; i<10; i++, j-- )); do
    soma=$(( soma + ${cpf:$i:1} * j ))
done
digito2=$(( soma % 11 ))
if [[ $digito2 -lt 2 ]]; then
    digito2=0
else
    digito2=$(( 11 - digito2 ))
fi

# verificando se os dígitos verificadores estão corretos
if [[ ${cpf:9:1} -ne $digito1 || ${cpf:10:1} -ne $digito2 ]]; then
    echo "CPF inválido."
    exit 1
fi

echo "CPF válido."
exit 0

