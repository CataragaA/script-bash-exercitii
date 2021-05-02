#!/bin/bash
rm -rf output 
mkdir -p output
touch ./output/ana.txt
touch ./output/abc.txt
touch ./output/bcd.txt

echo " 1.Se da folder-ul output ce contine urmatoarele fisiere:  
abc.txt 
bcd.txt
ana.txt
Cu o singura comanda, sterge toate fisierele din output care incep cu litera “a”. "

find ./output/ -name "a*" | xargs rm
echo "Comanda utilizata este : find ./output/ -name "a*" | xargs rm"

echo " ===fisierele au fost sterse==="
echo " =============="
echo -e "\n"

echo "2.Se da folderul <input> ce contine fisierul files.txt,si in care se afla urmatorul text:
./out/abc.txt
./out/bcd.txt
./out/ana.txt

Creaza si un folder gol out.
Dintr-o singura comanda creaza (in out) fisierele, care vor avea denumirea identica cu continutul fisierului files.txt. "
cat ./input/files.txt | xargs touch
echo "Comanda utilizata este : cat ./input/files.txt | xargs touch"
echo " ===fisierele au fost create==="
echo " =============="
echo -e "\n"
