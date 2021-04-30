#!/bin/bash
mkdir -p output

echo "Scrie intr-un fisier nou creat, numit ’sume_trimise_ana’, toate sumele  trimise de ana."
find . -name "ana*" | cut -d - -f 2 > output/sume_trimise_ana.txt
echo " ===Rezultat obtinut==="
cat output/sume_trimise_ana.txt
echo "=========="
echo -e "\n"

echo "Scrie intr-un fisier nou creat, numit ‘lista_sume_monede_trimise_ana’, toate sumele si monedele trimise de ana."
find . -name "ana*" | cut -d - -f 2,3 > output/lista_sume_monede_trimise_ana.txt
echo " ===Rezultat obtinut==="
cat output/lista_sume_monede_trimise_ana.txt
echo "=========="
echo -e "\n"

echo "Scrie intr-un fisier nou creat, numit ‘sume_monede_trimise_nu_ana’, toate sumele si monedele care sunt trimise de altcineva decat ana."
find ./input/ -type f ! -name "ana*" | cut -d - -f 2,3 > output/sume_monede_trimise_nu_ana.txt
echo " ===Rezultat obtinut==="
cat output/sume_monede_trimise_nu_ana.txt
echo "=========="
echo -e "\n"

echo "Scrie intr-un fisier nou creat, ‘lista_sume_monede_primite_ana’, toate sumele si monedele primite de ana."
find ./input -name "*ana.txt" | cut -d - -f 2,3 > output/lista_sume_monede_primite_ana.txt
echo " ===Rezultat obtinut==="
cat output/lista_sume_monede_primite_ana.txt
echo "=========="
echo -e "\n"

echo "Scrie intr-un fisier nou creat, ‘info_sume_monede_primite_ana’, numele destinatarului si al expeditorului."
find ./input -name "*ana.txt" | cut -d - -f -1,4- | cut -d / -f 3 | cut -d . -f 1 > output/info_sume_monede_primite_ana.txt
echo " ===Rezultat obtinut==="
cat output/info_sume_monede_primite_ana.txt
echo "=========="
echo -e "\n"

