echo "Ejercicio 1"

# Escribid un script en Bash que acepte una ruta a un fichero o un directorio e
# imprima por pantalla si es un fichero normal, un directorio u otro tipo de fichero.
# Finalmente, el script ejecutará el comando ls sobre esta ruta en formato largo.

#!/bin/bash

# Verificar si se adjuntó un archivo o directorio al correr el comando -> bash: ejercicio_1.sh ejemplo.txt
# La varuible del argumento debe ser declarada como $1 para que se interprete como un espacio de argumento esperado
if [ -z "$1" ]; then  #if true, -z considera como argumento/cadena vacía
  echo "Error: Se debe proporcionar una ruta como argumento."
  exit 1
fi
ruta="$1"

# Verificar si es fichero o directorio
if [ -f "$ruta" ]; then #if true, -f = existe file/fichero
  echo "$ruta es un fichero normal."

elif [ -d "$ruta" ]; then #if true, -d = existe directorio
  echo "$ruta es un directorio."
else
  echo "$ruta es otro tipo de archivo."1
fi

# Ejecutar 'ls' en formato largo sobre la ruta | -l returna más datos
ls -l "$ruta"

read -p "Presiona una tecla para salir" #Prevenir que se cierre la ventana al compilar el script