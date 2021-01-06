#!/bin/bash
echo "1- Saber número de veces que se ha logueado un usuario"
echo "2- Lista de los dias que se han conectado en un mes"
echo "3- Saber los usuarios que se han logueado en una fecha"
echo "4- Fecha de la última vez que se ha logueado un usuario"
echo ""
echo "Escribe una opción (1..4)"
read opcion
if [ $opcion -eq 1 ]
then
contador=0
echo "escribe el nombre del usuario"
read usuario
for i in $(cat usuarios.txt); do
if [ $i = $usuario ]; then
contador=$(($contador+1))
fi
done
if [ $contador -gt 0 ]; then
echo "El usuario $usuario se ha logueado $contador veces"
else
echo "No se ha logueado"
fi
echo "pulsa para salir"
read salir
else
if [ $opcion -eq 2 ]
then
maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
contador=0
echo "Escribe un mes del año"
read mes
echo "Los dias del mes de $mes"
while [ $numlinea -le $maxlineas ]
do
linea=`cat usuarios.txt | head -$numlinea | tail -1 | awk '{print $2 " " $3}'`
dia=`echo $linea | awk '{print $1}'`
meses=`echo $linea | awk '{print $2}'`
if [ $meses = $mes ]
then
contador=$(($contador+1))
echo $dia
fi
numlinea=$(($numlinea+1))
done
if [ $contador -eq 0 ]
then
echo "No se han logueado este mes"
fi
echo "pulsa para salir"
read salir
else
if [ $opcion -eq 3 ]
then
maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
contador=0
echo "Escribe el dia"
read dia
echo "escribe el mes"
read mes
while [ $numlinea -le $maxlineas ]; do
nombres=`cat usuarios.txt | head -$numlinea | tail -1 | awk '{print $1}'`
dias=`cat usuarios.txt | head -$numlinea | tail -1 | awk '{print $2}'`
meses=`cat usuarios.txt | head -$numlinea | tail -1 | awk '{print $3}'`
if [ $dia -eq $dias ] && [ $mes = $meses ]
then
echo "Se ha registrado $nombres"
contador=$(($contador+1))
fi
numlinea=$(($numlinea+1))
done
if [ $contador -eq 0 ]
then
echo "Nadie se ha registrado el $dia de $mes"
fi
echo "pulsa para salir"
read salir
else
if [ $opcion -eq 4 ] 
then
maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
contmes=0
echo "escribe el nombre del usuario"
read user
while [ $numlinea -le $maxlineas ]; do
cont=0
nombres=`cat usuarios.txt | head -$numlinea | tail -1 | awk '{print $1}'`
dias=`cat usuarios.txt | head -$numlinea | tail -1 | awk '{print $2}'`
meses=`cat usuarios.txt | head -$numlinea | tail -1 | awk '{print $3}'`
if [ $nombres = $user ]; then
for i in enero febrero abril mayo julio agosto septiembre
do
cont=$(($cont+1))
if [ $meses = $i ] && [ $cont -gt $contmes ]
then
contmes=$cont
ultimodia=$dias
ultimomes=$meses
fi
done
fi
numlinea=$(($numlinea+1))
done
echo "la ultima vez que $user se conectó fue el $ultimodia de $ultimomes"
read salir
else
echo "El numero introducido no es ninguna opción"
fi
fi
fi
fi




