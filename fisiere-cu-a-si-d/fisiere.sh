#!/bin/bash

fisiere_selectate=$(find . -type f -name "a*" -o -name "d*")
#echo $fisiere_selectate

fisiere_selectate_a=$(echo "$fisiere_selectate" |  grep "/a" | xargs grep -i "^ana")
#echo "$fisiere_selectate_a"

fisiere_selectate_d=$(echo "$fisiere_selectate" |  grep "/d" | xargs grep -i "^dana")
#echo "$fisiere_selectate_d"

echo -e "Rezultatul final:\n==Fisierele care incep cu a si contin numele->ana==\n$fisiere_selectate_a\n\n==Fisierele care incep cu d si contin numele->dana==\n$fisiere_selectate_d"

: '
ana3="Ana merge la piata"
ana4=5
echo $ana3
echo $ana4

if  [ $ana4 == "ana" ]
then
	echo "Ana are valoarea 4"
else
	echo "Ana NU are valoarea 4"
fi
'

