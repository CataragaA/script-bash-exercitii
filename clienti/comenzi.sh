#!/bin/bash

suma1=$(grep "08-04-2021" comenzi.txt | cut -d , -f 3 | tr "\n" "+")
#echo $suma1

#suma2=$(grep "08-04-2021" comenzi.txt | cut -d , -f 3 | tr "\n" " " | cut -d " " -f2)
#echo $suma2

suma_totala=$(($suma1+0))
echo "Valoarea totala a comenzilor din 8 aprilie este : $suma_totala"