#!/bin/bash
while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Grep con -i mayusculas y minusculas"
    echo "6. Grep con -i mayusculas y minusculas todas las palabras que no contengan la h"
    echo "7. Grep con -i mayusculas y minusculas todas las palabras que no contengan la h con -n -h despues nombre archivo"
    echo "8. Grep con -i mayusculas y minusculas todas las palabras que no contengan la h con 2repeticiones con -n -h despues nombre archivo"
    echo "9. Grep con -i mayusculas y minusculas todas las palabras que no contengan la h de 1 a 3repeticiones con -n -h despues nombre archivo"
    echo "10. Buscar la palabra prueba con letras delante o atras en el archivo comandos-Arch.sh"
    echo "11. Buscar solo la palabra prueba en el archivo comandos-Arch.sh"
    echo "12. Buscar solo la palabra y la linea prueba en el archivo comandos-Arch.sh"
    echo "13. Buscar dos palabras prueba y caso en el archivo comandos-Arch.sh"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
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

        read foo
        ;;
    6)
        echo "Grep con -i mayusculas y minusculas todas las palabras que no contengan la h"
        echo "Nos muestra todas las palabras que  no contiene la letra h"
        grep -i "[h]" comandos-Arch.sh
        read foo
        ;;
    7)
        echo "Grep con -i mayusculas y minusculas todas las palabras que no contengan la h"
        echo "Nos muestra todas las palabras que  no contiene la letra h"
        grep -i "[h]" comandos-Arch.sh -n -H
        read foo
        ;;
    8)
        echo "Grep con -i mayusculas y minusculas todas las palabras que no contengan la h con 2repeticiones con -n -h despues nombre archivo"
        echo "Nos muestra todas las palabras que  no contiene la letra h"
        grep -i "h\{2\}" comandos-Arch.sh -n -H
        read foo
        ;;
    9)
        echo "Grep con -i mayusculas y minusculas todas las palabras que no contengan la h de 1 a 3repeticiones con -n -h despues nombre archivo"

        grep -i "h\{1,3\}" comandos-Arch.sh -n -H
        read foo
        ;;
    10)
        echo "Buscar la palabra prueba en el archivo comandos-Arch.sh"

        grep -i "prueba" comandos-Arch.sh -n -H
        read foo
        ;;
    11)
        echo "Buscar solo la palabra prueba en el archivo comandos-Arch.sh"

        grep -i -o "prueba" comandos-Arch.sh -n -H
        read foo
        ;;
    12)
        echo "Buscar solo la palabra y la linea prueba en el archivo comandos-Arch.sh"

        grep -i -w "prueba" comandos-Arch.sh -n -H
        read foo
        ;;
    13)
        echo "Buscar dos palabras prueba y caso en el archivo comandos-Arch.sh"

        grep -i -e "prueba" -e "caso" comandos-Arch.sh
        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
