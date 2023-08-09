# Prueba Técnica - Raymundo Torres Ramírez

## Problemas durante la prueba:

- Tenía un problema de CORS, el cual se resolvió agregando un proxy en el package.json de la carpeta de frontend, así como cambiando la ruta completa de la consulta.
- En el archivo de consulta.php, se utilizaron alias en los campos para poder utilizarlos como indice en el arreglo "row"

## Detalles

- Se agregó bootstrap al proyecto a través de su repositorio de npm
- Se agregó axios a través de su repositorio de npm
- La consulta toma los campos 1 y 2 de la tabla 1; campos 2 y 3 de la tabla 2; y campos 3 y 4 de la tabla 3. Los campos son relacionados a la fila de cada tabla, indicada por el id.
- Para evitar conflictos con el git del proyecto de React, se eliminó la carpeta .git que viene por default al crear un proyecto nuevo.
- Se eliminaron otros archivos que no se iban a utilizar del proyecto original de React.
- Todo la prueba fue probada desde la ejecución de React en la termina con su comando npm start, y el PHP y MySQL desde una instalación de XAMPP.
