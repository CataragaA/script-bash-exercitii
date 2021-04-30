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

