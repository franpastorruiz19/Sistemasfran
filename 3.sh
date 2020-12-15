#!/bin/bash
while [ $nota –lt 0 || $nota –gt 10 ]; do
echo “Escribe tu nota”
read nota
if [ $nota –lt 0 || $nota –gt 10 ]
then
echo “Nota incorrecta”
fi
done
if [ $nota –lt 5 ]
then 
echo “Estas suspendido”
else
if [$nota –ge 9]
then 
echo “Enhorabuena tienes un sobresaliente”
else
if [$nota –eq 6]
then 
echo “Tienes un bien”
else
If [$nota –eq 5]
then
echo “Tienes un aprobado”
else
echo “Tienes un notable
fi
