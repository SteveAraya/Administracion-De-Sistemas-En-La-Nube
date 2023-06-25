echo "Ejercicio 3"
#!/bin/bash

# Escribir un script que imprima en este orden y en líneas diferentes:
# 1- El nombre del script que se está ejecutando.
echo "Nombre de Script:" $(basename "$0")

# 2- El número de argumentos que se han pasado al script.
echo "Número de argumentos: $#"

# 3- El primer y segundo argumentos, ambos en la misma línea.
echo "Primer argumento: $1, Segundo argumento: $2"

# 4- Si hay más de dos argumentos, los argumentos a partir del tercero (este incluido) cada uno en una línea.
if [[ -n "$3" ]]
then
    for(( i=3; i<=$#; i++))
    do
      echo "Argumento ${i}: ${!i}"
    done
else
    echo "La cantidad de argumentos no supera los 2 argumentos."
fi