#!/bin/bash
lineasmax=`cat precipitaciones.txt | wc -l`
contador=0
while [ $contador -le $lineasmax ]; do
dia=`cat precipitaciones.txt | head -contador | tail -1 | awk '{print $1}'`
l=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $2}`
if [ $l -eq 0 ]; then
echo "No llovió el dia $dia (`./diasem.sh $dia`)"
fi
contador=$((contador+1))
done