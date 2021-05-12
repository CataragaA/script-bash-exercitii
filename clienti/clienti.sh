#!/bin/bash
: '
anul_nasterii_marcel=$(grep -i "marcel" clienti.txt | cut -d , -f 2)
echo "Marcel s-a nascut in anul $anul_nasterii_marcel"
anul_actual=$(date | cut -d " " -f 4 | tr "," " ")
#echo $anul_actual

varsta_marcel=$(($anul_actual-$anul_nasterii_marcel))

echo "Marcel are $varsta_marcel ani"
#====================================


nr_id_marcel=$(grep -i "marcel" clienti.txt | cut -d , -f1)
echo "Id-ul lui Marcel este $nr_id_marcel"

comenzi_efectuate_marcel=$(grep "7" comenzi.txt | cut -d , -f 3 | tr "\n" "+")
total_comenzi_marcel=$(($comenzi_efectuate_marcel+0))
echo "Totalul comenzilor lui Marcel este : $total_comenzi_marcel"
#==================================
'
#!/bin/bash

data_azi=$((date +"%d-%m-%Y") | cut -d - -f1-2)
nume_clienti_aniversati=$(grep "$data_azi" clienti.txt | cut -d , -f 2,3)

an_nastere_client1=$( echo "$nume_clienti_aniversati" | sed -n "1p" | cut -d , -f 1 | cut -d - -f 3)
an_nastere_client2=$( echo "$nume_clienti_aniversati" | sed -n "2p" | cut -d , -f 1 | cut -d - -f 3)

anul_actual=`date "+%Y"`

if [ $an_nastere_client1 -le $anul_actual ] || [ $an_nastere_client2 -le $anul_actual ]
then
varsta_client1=$(($anul_actual - $an_nastere_client1))
varsta_client2=$(($anul_actual - $an_nastere_client2))
fi

    final1="$( echo "$nume_clienti_aniversati" | sed -n "1p" ),${varsta_client1}"
    final2="$( echo "$nume_clienti_aniversati" | sed -n "2p" ),${varsta_client2}"
    echo -e "Clienti care isi sarbatoresc aniversarea astazi:\n$final1 ani \n$final2 ani" 
