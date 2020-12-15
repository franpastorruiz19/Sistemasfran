#!/bin/bash
echo "Escribe el dia del mes"
read fecha
j = 0
While [ j -ne $fecha ];do
for i in lunes martes miercoles jueves viernes sabado domingo
do 
$j = $(($j+1)) 
done
done
echo "El dia $fecha cae $i"