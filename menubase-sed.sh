#!/bin/bash

# Definimos un array con las opciones del menú. Cada opción es una cadena con dos partes separadas por el carácter '|': el nombre de la opción y el comando correspondiente.
opciones=(
    "Mostrar directorio:|ls -lth"
    "Mostrar calendario:|cal"
    "Mostrar fecha de hoy:|date"
    "Sustituir palabra puedo por voy: | echo 'Este es un mensaje de prueba con el simbolo | puedo ejecutar otro comando' | sed 's/puedo/voy/g'"
    "Mostrar el archivo out.txt con cat:|cat out.txt"
    "Mostrar las lineas del 3 al 7 del archivo out.txt con sed:|cat out.txt | sed -n '3,7 p'"
    "Mostrar todas las lineas del archivo out.txt con sed:|cat out.txt | sed '3d'"
    "Eliminar todas las lineas del 3 al 7 del archivo out.txt con sed:|cat out.txt | sed '3,7d'"
    "Mostrar solo las lineas del 3 al 7:|cat out.txt | sed '3,7!d'"
    "Sustituir una palabra por otra en out.txt:|cat out.txt | sed 's/todoreal/real/g'"
    "Sustituir una palabra en la línea 8 en out.txt:|cat out.txt | sed '/8/ cprueba'"
    "Menos la línea 8, introduce la palabra con sed:|cat out.txt | sed '/8/ !cprueba'"
    "Insertar palabra después de la línea 8:|cat out.txt | sed '/8/ aprueba'"
    "Insertar palabra antes de la línea 8:|cat out.txt | sed '/8/ iprueba'"
    "Eliminar una línea antes de la última línea e introduce palabra:|cat out.txt | sed '$1 prueba'"
    "Agregar una línea al final e introduce palabra:|cat out.txt | sed '$a prueba'"
    "Mostrar la 1º línea de out.txt con sed:|cat out.txt | sed -n '1p'"
    "Mostrar la 8º línea de out.txt con sed:|cat out.txt | sed -n '8p'"
    "Mostrar la última línea de out.txt con sed:|sed -n '$p' out.txt"
    "Salir:|exit 0"
)

while true; do
    clear
    echo "MENU SCRIPT V.1"
    echo "==============================="
    echo "Escoja una opción:"
    for ((i = 0; i < ${#opciones[@]}; i++)); do
        echo "$i. ${opciones[i]%%:*}" # Imprimimos el índice y el nombre de la opción (sin el comando).
    done
    echo "==============================="
    read -p "Ingrese el número de la opción: " opcion

    if [[ $opcion =~ ^[0-9]+$ ]] && [ "$opcion" -ge 0 ] && [ "$opcion" -lt ${#opciones[@]} ]; then
        clear
        seleccion="${opciones[$opcion]#*|}" # Obtenemos el comando correspondiente a la opción seleccionada.
        if [ "$opcion" -eq 3 ]; then
            # Si la opción seleccionada es la de "Manipular archivos", ejecutamos el script del segundo menú.
            ./menu_segundo.sh
        else
            eval "$seleccion" # Ejecutamos el comando.
        fi
        read -p "Presione Enter para continuar..."
    else
        echo "Opción inválida. Presione Enter para continuar..."
        read -p "Presione Enter para"
    fi
done
