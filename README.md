# Administracion-De-Sistemas-En-La-Nube

## Actividad grupal: Programación en Bash

### Ejercicio 1 (Andres)
Escribir un script en Bash que acepte una ruta a un fichero o un directorio e imprima por pantalla si es un fichero normal, un directorio u otro tipo de fichero. Finalmente, el script ejecutará el comando ls sobre esta ruta en formato largo.

El ejercicio contiene comentarios con las explicaciones de uso y funcionamiento. Para correr el script, seguir los pasos mostrados a continuación.
- En terminal bash, posicionarse en la ubicación del script y correr el siguiente comando para verificar si la ruta es un fichero:
```
bash ejercicio_1.sh ./nombreArchivo.tipoArchivo
```
- Ingresar el siguiente comando si se quiere comprobar si es directorio:
```
bash ejercicio_1.sh ./nombreDirectorio
```
Como resultado, se mostrará un mensaje que deescriba si no se ingrersó el argumento esperado, o si es un directorio/fichero.

### Ejercicio 2 (Enrique)
Escribir un script que ejecute cierta acción en función de la extensión de un archivo que recibe como parámetro. Si se trata de un JPG, copiar dicho archivo en la carpeta ~/fotos. Si resulta ser de otro formato, avisar al usuario sin hacer nada.

### Ejercicio 3 (Steve)
Escribir un script que imprima en este orden y en líneas diferentes:
* El nombre del script que se está ejecutando.
* El número de argumentos que se han pasado al script.
* El primer y segundo argumentos, ambos en la misma línea.
* Si hay más de dos argumentos, los argumentos a partir del tercero (este incluido) cada uno en una línea. 

Ejecutar el siguiente comando para probar con más de 2 parámetros:
```
bash ejercicio_3.sh Hola Mundo Son Las 4:00pm
```

Ejecutar el siguiente comando para probar con 2 parámetros:
```
bash ejercicio_3.sh Hola Mundo
```

### Ejercicio 4 (Andres)
Escribir un script que copie un archivo sobre otro, garantizando que solo reciba dos parámetros.

El ejercicio contiene comentarios con las explicaciones de uso y funcionamiento. Para correr el script, seguir los pasos mostrados a continuación.
- En terminal bash, posicionarse en la ubicación del script y correr el comando:
```
bash ejercicio_4.sh ./rutaArchivoOrigen ./rutaArchivoDestino
```
Como resultado, se realizará una copia del archivo origen y se copiará a uno nuevo/existente en la ruta de destino.

### Ejercicio 5 (Enrique)
Escribir un script que renombre todos los ficheros con extensión JPG del directorio actual, añadiendo un prefijo con la fecha en formato año, mes, día. Por ejemplo, un fichero con nombre imagen1.jpg pasaría a llamarse 20200413-image1.jpg, si el script se ejecuta el 13 de abril de 2020.