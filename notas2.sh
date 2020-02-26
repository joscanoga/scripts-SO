#!/bin/bash

 argumento=$1

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
        contador=0
        if [ -d $file ]; then
            listai=$(ls $file)
            
            for j in $listai; do
            contador=$[$contador+1]
            done
            echo "en la carpeta $i hay $contador archivos"
        fi
    done
else
    carpeta=$argumento
    archivo=$2
    #esta ruta puede cambiar de acuerdo a donde se vayan a guardar los archivos
    file="/home/johan/Documentos/$carpeta"
    #echo $file
    rutaarchivo="$file/$archivo"
    #echo $rutaarchivo
    #echo "funciona"
    #carpeta no existe
    if ! [[ -d $file ]]; then
        #echo "funciona primer if"
        mkdir $file
        echo "Carpeta $carpeta creada"
        touch $rutaarchivo
        nano $rutaarchivo
        #carpeta existe archivo no
    else if ! [[ -f $rutaarchivo ]]; then
        touch $rutaarchivo
        nano $rutaarchivo
    #carpeta y archivo existe
    else
        nano $rutaarchivo
    fi
    fi
fi
fi