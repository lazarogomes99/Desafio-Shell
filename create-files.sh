# Seu desafio
# Escreva um script do Bash com base nos seguintes requisitos:

# 01 - Cria 25 arquivos vazios (0 KB). 
# 02 - Os nomes dos arquivos deveriam ser <yourName><number>, <yourName><number+1>, <yourName><number+2>, e assim por diante.
# 03 - Escreva o script de forma que cada vez que você executá-lo, ele crie o próximo lote de 25 arquivos com números crescentes,
# 04 - começando com o último número ou o número máximo que já existir.
# 05 - Não insira esses números manualmente no código. Você precisa gerá-los usando automação.
# 06- Teste o script. Exiba uma longa lista do diretório e seu conteúdo para validar que o script criou os arquivos esperados.





#!/bin/bash

nome="LazaroG"
ultimo=$(ls ${nome}* | sort -V | tail -n 1 | grep -o -E '[0-9]+')

if [ -z $ultimo ]; 
then
   ultimo=0 
else
   echo $ultimo
fi

for (( contador=1; contador<=25; contador++ ))
do 
   proximo=$((ultimo + contador))
   touch "${nome}${proximo}"
done