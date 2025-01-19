#!/bin/bash

# Ruta a la carpeta principal que contiene las subcarpetas
base_dir="/ruta/a/la/carpeta/principal"

# Recorrer todas las subcarpetas
for folder in "$base_dir"/*/; do
    # Verificar si hay archivos .mx3 y .ovf en la carpeta
    mx3_file="$folder"*.mx3
    ovf_file="$folder"*.ovf
    
    if [[ -f "$mx3_file" && -f "$ovf_file" ]]; then
        echo "Ejecutando el archivo .mx3: $mx3_file"
        # Ejecutar el archivo .mx3 (ajustar según el comando necesario)
        # Si es un archivo ejecutable, simplemente usamos:
        "$mx3_file"
        
        # Esperar a que el proceso termine antes de continuar
        wait
    else
        echo "No se encontraron archivos .mx3 y .ovf correspondientes en la carpeta $folder"
    fi
done

echo "Proceso completado."




#PARA HACERLO EJECUTABLE: chmod +x ejecutar_mx3.sh

#LUEGO: ./ejecutar_mx3.sh
