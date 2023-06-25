# Escribir un script que ejecute cierta acción en función de la extensión de un archivo
# que recibe como parámetro. Si se trata de un JPG, copiar dicho archivo en la carpeta
# ~/fotos. Si resulta ser de otro formato, avisar al usuario sin hacer nada.

#!/bin/bash

archivo="$1"   # El archivo se pasa como parámetro al script

# Verificar si el archivo existe
if [ -f "$archivo" ]; then
  # Obtener la extensión del archivo
  extension="${archivo##*.}"

  # Verificar la extensión y ejecutar la acción correspondiente
  case "$extension" in
    jpg|JPG)
      # Copiar el archivo en la carpeta ~/fotos
      cp "$archivo" ~/fotos/
      echo "Archivo copiado en ~/fotos."
      ;;
    *)
      # Otro formato de archivo
      echo "El archivo no es de formato JPG."
      ;;
  esac

else
  echo "El archivo no existe."
fi
