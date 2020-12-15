#!/bin/bash                                                                                                                echo “introduce un numero”
read numero1
echo “introduce el numero a comparar”
read numero2
if [ $numero1 –gt $numero2 ]
then 
echo “el mayor es $numero1”
if [ $numero1 –eq $numero2 ]
then
echo “$numero1 y $numero2 son iguales”
else
echo “$numero2 es mayor que $numero1”
fi
fi
