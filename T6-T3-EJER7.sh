#!/bin/bash
if [ -d $1 ]; then
echo `./6.sh $1`
else
echo "$1 no existe"
fi