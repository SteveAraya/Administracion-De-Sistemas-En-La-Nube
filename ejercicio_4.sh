echo "Ejercicio 4"

# Escribid un script que copie un archivo sobre otro, garantizando que solo reciba dos parámetros.


# Verificar que se proporcionen exactamente dos argumentos
if [ $# -ne 2 ]; then # si el número de argumentos ($#) no es igual (-ne) a 2, entonces mostrar error
  echo "Error: Se deben proporcionar exactamente dos parámetros."
  exit 1
fi

origenFile="$1"
destinoFile="$2"

# Verificar si el archivo de origen existe
if [ ! -f "$origenFile" ]; then # ! operador lógico de negación,
  echo "Error: El archivo de origen '$origenFile' no existe."
  exit 1
fi

# Copiar el archivo de origen al destino
cp "$origenFile" "$destinoFile"
echo "El archivo '$origenFile' ha sido copiado exitosamente a '$destinoFile'."