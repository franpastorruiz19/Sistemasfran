#!/bin/bash
lineasmax=`cat precipitaciones.txt | wc -l`
contador=0
contador1=0
media=0
while [ $contador -le $lineasmax ]; do
l=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $2}`
contador1=$((contador1+l))
contador=$((contador+1))
done
media=$((contador1/contador))
echo "la media de precipitaciones es de $media litros"
