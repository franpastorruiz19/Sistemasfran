#!/bin/bash
while [ $numero –le 0 ]; do
echo “Escribe un número mayor que 0”
read numero
if [ $numero –le 0 ]
then
“Escribe un número mayor que 0”
fi
done
if [ $numero % 2 –eq 0 ]
then 
echo “$numero es par”
else
echo “$numero es impar”
fi
