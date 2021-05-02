1. Se da folderul `input` ce contine fisierul files.txt in care se afla mai multe nume de fisiere(cate un fisier pe fiecare linie noua). Dintr-o singura comanda creeaza (in output) fisierele, care vor avea denumirea identica cu continutul fisierului files.txt. "

    1.1. Daca continutul fisierului files.txt reprezinta un singur rand separat prin ,,;" , vom utiliza urmatoarea comanda:\
`cat ./input/files.txt | tr ";" "\n" | xargs touch`

Astfel caracterul `;` va fi inlocuit cu caracterul `enter` prin comenda tr.


1. Cu o singura comanda, sterge toate fisierele din output care incep cu litera “a”. 