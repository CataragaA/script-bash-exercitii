#!/bin/bash
#Exemple 1
echo "Enter Your Name"
read name
echo "Welcome $name to Linux"
echo =========================

#Exemple 2
echo "Enter username"
read username
echo "Enter password"
read password
if [[ ( $username == "admin" && $password == "secret" ) ]]; 
then
    echo "valid user"
else
    echo "invalid user"
fi
echo =========================

#Exemple 3
echo "Enter your lucky number"
read n
if [[ ( $n -eq 15 || $n  -eq 45 ) ]]
then
echo "You won the game"
else
echo "You lost the game :P"
fi
echo ========================

#Exemple 4
echo "Enter another lucky number"
read n
if [ $n -eq 101 ];
then
echo "You got 1st prize"
elif [ $n -eq 510 ];
then
echo "You got 2nd prize"
elif [ $n -eq 999 ];
then
echo "You got 3rd prize"
else
echo "Sorry, try for the next time :("
fi
echo ========================

#Exemple 5

patience=5
 
read -t "$patience" -p "Apasa 'Enter' daca ti-e foame rau"
status="$?"
 
if [[ $status -eq 0 ]]
then 
	echo "Iuhuu, hai sa comandam o pizza :-)"
elif [[ $status -eq 1 ]]
then
	echo -e "(\nexit status=$status) You are welcome to try Unix or Linux :-)"
else
	echo -e "\nNu ai reactionat in primele $patience secunde. Anyway, hai sa infulecam ceva :-)"
fi
        echo -e  "\nCele mai bune preparate se gasesc pe foodpanda.ro ;)"

