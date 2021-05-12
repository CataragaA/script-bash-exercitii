#!/bin/bash
rm -rf output 
mkdir -p output

echo "1.Se da folderul <input> ce contine fisierul files.txt in care se afla mai multe nume de fisiere(cate un fisier pe fiecare linie noua)

Dintr-o singura comanda creaza (in output) fisierele, care vor avea denumirea identica cu continutul fisierului files.txt. "
echo -e "\n"

cat ./input/files.txt | xargs touch
status="$?"
if  [ $status == "0" ]
then
	echo "Status 0 : Comanda a fost efectuata cu succes"
elif [ $status == "1" ] 
then
	echo "Status 1 : Comanda a rulat cu o eroare"
else
	echo "Status : alta eroare proces in afara de 0 si 1"
fi
 
echo "===fisierele au fost create==="
echo "=============="


# Daca continutul fisierului files.txt ar reprezenta un singur rand separat prin ; 
# Atunci vom utiliza urmatoarea comanda: cat ./input/files.txt | tr ";" "\n" | xargs touch`
# Astfel caracterul `;` va fi inlocuit cu caracterul `enter` prin comenda tr.

read -p " apasa enter"
echo -e "\n"

echo "2.Cu o singura comanda, sterge toate fisierele din output care incep cu litera “a”. "

find ./output/ -name "a*" | xargs rm

echo "===fisierele cautate au fost sterse==="
ls -1 output
echo "=============="
echo -e "\n"

echo "3.Afiseaza toate numerele din aceeasi linie cu Ana din fisierele cu numele ei."
find ./input/problema_2/ -name "ana*" | xargs cat | grep -i ",ana$" | cut -d , -f 1
echo "===numerele sunt afisate==="
echo "=============="
echo -e "\n"

