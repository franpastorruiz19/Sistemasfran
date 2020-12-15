#!/bin/bash
Contador = 0
Contador2 = 0
while [ $numero –ne 0 ];do
echo “Escribe un número”
read numero
Suma = $(($contador + $numero))
$Contador2 = $(($contador2 + 1))
done
echo “La suma de todos los numeros es $Suma”
media = $(($Suma / $Contador2))
echo “La media es $Media”
