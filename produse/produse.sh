#!/bin/bash
#Avem tabel cu urmatorul format: Data,Tip_produs,Nr_bucati,pret/buc,total_euro
#Cerinta 1 : Care este totalul in euro al vanzarilor?
#Cerinta 2 : Calculeaza total vanzari pe fiecare produs in parte.
#Cerinta 3 : Care este totalul vanzarilor > 350 euro.
#Cerinta 4 : Care este produsul cel mai vandut, dupa nr de bucati? 

sume_euro=$(cut -d "," -f 5 produse.txt | tr "\n" "+" | cut -c 12-)
suma_totala=$(($sume_euro+0))
echo "1.Total vanzari: $suma_totala euro"
echo "================"

Sosete=$(cut -d "," -f 2,5 produse.txt | tr "," "=" | grep "sosete" | tr "\n" "+" | cut -d "=" -f2,3 | tr -d "sosete" | tr -d "=")
Tricou=$(cut -d "," -f 2,5 produse.txt | tr "," "=" | grep "tricou" | tr "\n" "+" | cut -d "=" -f2,3 | tr -d "tricou" | tr -d "=")

suma_sosete=$(($Sosete+0))
suma_tricou=$(($Tricou+0))

lista_produse_euro="$(cut -d "," -f 2,5 produse.txt | tr "," "=" | sed -e '/tricou/d' -e '/sosete/d')"
echo -e "2.Total vanzari pe fiecare produs, euro:\n$lista_produse_euro \nsosete=$suma_sosete \ntricou=$suma_tricou"
echo "================"


lista_euro=$(grep -E ",[3-9][5-9][0-9]" produse.txt | cut -d "," -f 5 | tr "\n" "+")
vanzari_peste350=$(($lista_euro+0))
echo -e "3.Total vanzari produse > 350 euro: \n$vanzari_peste350 euro"
echo "================"

lista_bucati=$(cut -d "," -f 2,3 produse.txt | sort -t',' -rnk2 | sed -n "1p") 
echo -e "4.Cel mai vandut produs dupa numarul de bucati este :\n$lista_bucati bucati"

echo "================"
