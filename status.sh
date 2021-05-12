#!/bin/bash
echo "Introduceti un folder din directorul curent:"
read cale 

echo -e "\nContinutul folderului selectat: \n$(ls -1 $cale)\n"

status="$?"

if [[ $status == 0 ]]
then 
    echo "Comanda a fost efectuata cu succes"
elif [[ $status == 1 ]]
then
    echo "Comanda a rulat cu o eroare"
else
    echo "Comanda a rulat cu o alta eroare"
fi
