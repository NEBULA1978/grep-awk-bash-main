#!/bin/bash

# Preguntamos al usuario la letra que quiere buscar
echo "¿Qué letra quieres buscar? (minúsculas o mayúsculas)"
read letra

# Definimos la variable con el valor introducido por el usuario
letra_buscar=$letra

# Preguntamos al usuario si quiere ignorar mayúsculas y minúsculas
echo "¿Quieres ignorar mayúsculas y minúsculas? (s/n)"
read ignorar_mayusculas

# Preguntamos al usuario el archivo a buscar
echo "¿En qué archivo quieres buscar? (ruta completa)"
read archivo_buscar

# Comprobamos si el archivo existe
if [[ -f $archivo_buscar ]]; then
  # Ejecutamos el comando "grep" con la variable
  grep -i "$letra_buscar" "$archivo_buscar"
else
  echo "El archivo '$archivo_buscar' no existe."
fi
