#!/bin/bash
linmax=`cat listado.txt | wc -l`
numlinea=1
windows=0
linux=0
windowsprocesos=0
linuxprocesos=0
while [ $numlinea -le $linmax ]; do
linea=`cat listado.txt | head -$numlinea | tail -1
usuario=`echo $linea | awk '{print $1}'
so=`echo $linea | awk '{print $2}'
procesos=`echo $linea | awk '{print $3}'
if [ $so = "Windows" ]; then
windows=$((windows+1))
windowsprocesos=$((windowsprocesos+procesos))
fi
if [ $so = "Linux" ]; then
linux=$((linux+1))
linuxprocesos=$((linuxprocesos+procesos))
fi
numlinea=$((numlinea+1))
done
echo "Windows -> $windows $windowsprocesos"
echo "Linux -> $linux $linuxprocesos"
