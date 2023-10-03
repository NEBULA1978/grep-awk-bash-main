#!/bin/bash

# Preguntamos al usuario el archivo a mostrar
echo "¿En qué archivo quieres mostrar las líneas? (ruta completa)"
read archivo_mostrar

# Comprobamos si el archivo existe
if [[ -f $archivo_mostrar ]]; then
  # Solicitamos al usuario el número de línea inicial
  echo "Ingresa el número de línea inicial:"
  read linea_inicial

  # Solicitamos al usuario el número de línea final
  echo "Ingresa el número de línea final:"
  read linea_final

  # Validamos que los números de línea sean válidos
  if [[ $linea_inicial -gt 0 && $linea_final -ge $linea_inicial ]]; then
    # Usamos sed para mostrar las líneas en el rango especificado
    sed -n "${linea_inicial},${linea_final}p" "$archivo_mostrar"
  else
    echo "Los números de línea no son válidos."
  fi
else
  echo "El archivo '$archivo_mostrar' no existe."
fi
