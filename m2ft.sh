#!/bin/bash

# Prompt para escolher a conversão desejada
echo "Escolha uma opção:"
echo "1 - Converter de metros para pés"
echo "2 - Converter de pés para metros"
read opcao

if [ $opcao -eq 1 ]; then
  # Converter de metros para pés
  echo "Digite a medida em metros:"
  read metros
  pes=$(echo "$metros * 3.28084" | bc)
  echo "$metros metros é igual a $pes pés"
elif [ $opcao -eq 2 ]; then
  # Converter de pés para metros
  echo "Digite a medida em pés:"
  read pes
  metros=$(echo "$pes / 3.28084" | bc)
  echo "$pes pés é igual a $metros metros"
else
  # Opção inválida
  echo "Opção inválida!"
fi

