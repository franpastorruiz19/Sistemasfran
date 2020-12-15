#!/bin/bash
while [ $valor –le 0 ]; do
echo “escribe un número mayor que 0”
read $valor
if [ $valor –le 0 ]
echo “Escribe un valor mayor que 0”
fi
done
for i in `seq 1 $valor`
do
echo “$i”
done
