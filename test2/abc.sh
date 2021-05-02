#!/bin/bash
rm -rf output 
mkdir -p output

echo "1.Se da folderul <input> ce contine fisierul files.txt in care se afla mai multe nume de fisiere(cate un fisier pe fiecare linie noua)

Dintr-o singura comanda creaza (in output) fisierele, care vor avea denumirea identica cu continutul fisierului files.txt. "

cat ./input/files.txt | xargs touch 
echo "Comanda utilizata este : cat ./input/files.txt | xargs touch"
echo " ===fisierele au fost create==="
echo " =============="

# Daca continutul fisierului files.txt ar reprezenta un singur rand separat prin ; 
# Atunci vom utiliza urmatoarea comanda: cat ./input/files.txt | tr ";" "\n" | xargs touch`
# Astfel caracterul `;` va fi inlocuit cu caracterul `enter` prin comenda tr.

echo -e "\n"

echo "2.Cu o singura comanda, sterge toate fisierele din output care incep cu litera “a”. "

find ./output/ -name "a*" | xargs rm
echo "Comanda utilizata este : find ./output/ -name "a*" | xargs rm"

echo " ===fisierele au fost sterse==="
echo " =============="
echo -e "\n"

