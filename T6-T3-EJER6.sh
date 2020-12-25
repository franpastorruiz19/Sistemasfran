#!/bin/bash
num=`ls $1/*.txt | wc -w`
echo "Tenemos $num ficheros txt que vamos a borrar de $1"
rm $1/*.txt
echo "El contenido de $1 tras el borrado"
ls -l $1