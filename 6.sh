#!/bin/bash
echo "Escribe los litros de agua"
read $litros
if [ $litros -le 50 ]
then
echo "20 euros"
if [ $litros -gt 50 && $litros -le 200 ]
then
operacion = $((20 \* $litros/100))
echo "$operacion euros"
else
operacion2 = $((10 \* $litros/100))
echo "$operacion2 euros"
fi