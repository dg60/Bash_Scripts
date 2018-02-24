#!/bin/bash
# Grundrechnungsarten
clear; 
echo -e "Welche Operation möchten Sie ausführen?\nBitte den
ersten Buchstaben eingeben und mit Eingabe bestätigen!\n"

echo -e "[a]ddieren
[s]ubtrahieren
[m]ultiplizieren
[d]ividieren "
read operator

clear; echo -e "\nGeben Sie jetzt den ersten Wert ein "
read a
clear; echo -e "\nGeben Sie jetzt den zweiten Wert ein "
read b

if [ $operator = a ]; then
    let c=a+b
    clear; echo $a + $b = $c
elif [ $operator = s ]; then
    let c=a-b
    clear; echo $a – $b = $c
elif [ $operator = m ]; then
    let c=a*b
    clear; echo $a "*" $b = $c
elif [ $operator = d ]; then
    let c=a/b
    clear; echo $a / $b = $c
else 
    clear; echo -e "\nSie haben einen ungültigen Operator angegeben!"
exit 1
fi
exit 0



