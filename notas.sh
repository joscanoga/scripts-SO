#!/bin/bash
echo "escriba el argumento"
read argumento

vacio=""
ayuda="-h"
base="/home/johan/"
if [ "$argumento" = "$ayuda" ] || [ -z $argumento ]; then
    echo "pantalla de ayuda"

else if [ "$argumento" = "-v" ]; then
    lista=$(ls ~/)
    
    for i in $lista; do
        file="$base$i"
        #echo $file
        
        if [ -d $file ]; then
            listai=$(ls $file)
            
            for j in $listai; do
            echo "$j esta en la carpeta $i"
            done
        fi
    done
else
    touch "/home/johan/Documentos/$argumento"
fi
fi