#!/bin/bash
rm -rf output/
mkdir -p output

echo "1.Scrie intr-un fisier nou creat, numit ’sume_trimise_ana’, toate sumele  trimise de ana."
find . -name "ana*" | cut -d - -f 2 > output/sume_trimise_ana.txt
echo " ===Rezultat obtinut==="
cat output/sume_trimise_ana.txt
echo "=========="
echo -e "\n"

echo "2.Scrie intr-un fisier nou creat, numit ‘lista_sume_monede_trimise_ana’, toate sumele si monedele trimise de ana."
find . -name "ana*" | cut -d - -f 2,3 > output/lista_sume_monede_trimise_ana.txt
echo " ===Rezultat obtinut==="
cat output/lista_sume_monede_trimise_ana.txt
echo "=========="
echo -e "\n"

echo "3.Scrie intr-un fisier nou creat, numit ‘sume_monede_trimise_nu_ana’, toate sumele si monedele care sunt trimise de altcineva decat ana."
find ./input/ -type f ! -name "ana*" | cut -d - -f 2,3 > output/sume_monede_trimise_nu_ana.txt
echo " ===Rezultat obtinut==="
cat output/sume_monede_trimise_nu_ana.txt
echo "=========="
echo -e "\n"

echo "4.Scrie intr-un fisier nou creat, ‘lista_sume_monede_primite_ana’, toate sumele si monedele primite de ana."
find ./input -name "*-ana.txt" | cut -d - -f 2,3 > output/lista_sume_monede_primite_ana.txt
echo " ===Rezultat obtinut==="
cat output/lista_sume_monede_primite_ana.txt
echo "=========="
echo -e "\n"

echo "5.Scrie intr-un fisier nou creat, ‘info_sume_monede_primite_ana’, numele expeditorului si al destinatarului."
find ./input -name "*-ana.txt" | cut -d - -f 1,4 | cut -d / -f 3 | cut -d . -f 1 | tr "-" "," > output/info_sume_monede_primite_ana.txt
echo " ===Rezultat obtinut==="
cat output/info_sume_monede_primite_ana.txt
echo "=========="
echo -e "\n"

echo "6.Scrie intr-un fisier nou creat  ‘lista_monede’, lista tuturor monedelor folosite."
ls -1 input/ | cut -d - -f 3 | sort | uniq > output/lista_monede.txt
echo " ===Rezultat obtinut==="
cat output/lista_monede.txt
echo "=========="
echo -e "\n"


echo "7.Scrie intr-un fisier "drepturi_fisiere", drepturile fiecarui fisier de input, urmat de numele fisierului."
find ./input -type f -name "*" | xargs ls -l | tr -s " " | cut -d " " -f 1,9 > output/drepturi_fisiere.txt
echo " ===Rezultat obtinut==="
cat output/drepturi_fisiere.txt
echo "=========="
echo -e "\n"

echo "8.Gaseste fisierele in care se fac transferuri de 100 si 200."
find ./input/ -type f -name "*100*" -o -name "*200*"
# metoda 2 :  find ./input/ -regex ".*[100][200].*"
# metoda 3 :find ./input/ -type f -name "*" | grep -e "100" -e "200"
# metoda 3.1. : find ./input/ -type f -name "*" | grep -e "100\|200"
echo "=========="


