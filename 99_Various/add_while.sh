#!/bin/bash
#Addiert beliebig viele Zahlen
summe=0

while test $# -gt 0
do
    let summe=summe+$1
    shift
done
echo Die Summe Ihrer Eingaben ist $summe
unset summe
exit 0