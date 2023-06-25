# Escribir un script que renombre todos los archivos con extensión JPG del directorio
# actual, añadiendo un prefijo con la fecha en formato año, mes, día. Por ejemplo,
# un archivo con nombre imagen1.jpg pasaría a llamarse 20200413-image1.jpg, si el
# script se ejecuta el 13 de abril del año 2020.

#!/bin/bash

# Obtener la fecha en formato año, mes, día
fecha=$(date +%Y%m%d)

# Recorrer todos los archivos con extensión .jpg en la carpeta actual
for archivo in *.jpg; do
  # Verificar si el archivo es un archivo regular
  if [ -f "$archivo" ]; then
    # Obtener el nombre del archivo sin la extensión
    nombre=$(basename "$archivo" .jpg)
    
    # Renombrar el archivo con el prefijo de fecha
    nuevo_nombre="${fecha}-${nombre}.jpg"
    
    # Renombrar el archivo
    mv "$archivo" "$nuevo_nombre"
    
    echo "Archivo $archivo renombrado como $nuevo_nombre"
  fi
done
