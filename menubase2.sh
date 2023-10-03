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
    echo "5. Concatenar la 3 primeras lineas del archivo prueba1.txt y las del archivo prueba2.txt en archivo out.txt"
    echo "6. Ver el archivo out.txt"
    echo "7. Cambiar una palabra por otra con awk"
    echo "8. Cambiar el campo nº1,etc por la palabra hola,etc con awk"
    echo "9. Crear archivo en carpeta actual"
    echo "10. Eliminar archivo en carpeta actual"
    echo "11. Listar archivos del directorio raiz /"
    echo "12. Listar la 1ºcolumna de los archivos del directorio raiz /"
    echo "13. Ver el archivo passwd"
    echo "14. Ver el archivo passwd la 1º columna"
    echo "15. Ver el archivo passwd la 1º columna y la 5º columna es espacio ocupa"
    echo "16. Ver el archivo passwd la 3º columna(usr) y la 4º columna(userid)"
    echo "17. Ver el archivo passwd la 1ºcolumna(nombre) la 3º columna(usr) y la 4º columna(userid)"
    echo "18. Mostrar los tamaños de los archivos de la carpeta raiz en bytes"
    echo "19. Mostrar los tamaños de los archivos de la carpeta raiz en kilobytes"
    echo "20. Entrada de un numero con awk"
    echo "21. Sumar dos numero con echo y awk sumamos 2+3=5"
    echo "22. Concatenar dos numero con echo y awk sumamos 23"
    echo "23. Mostrar dos numero con echo y awk separados 2 3"
    echo "24. Mostrar la ultima (elemento)palabra de una frase con echo y awk"
    echo "25. Mostrar todas las(elementos)palabras de una frase con echo y awk"
    echo "26. Mostrar el primer(elemento)palabra de una frase con echo y awk"
    echo "27. Mostrar el segundo(elemento)palabra de una frase con echo y awk"
    echo "28. Sumar 3numeros con echo y awk sumamos 2+3+4=9"
    echo "29. Obtener el promedio de 3numeros con echo y awk sumamos 2+3+4=9"
    echo "30. Obtener la suma de 5numeros con echo y awk sumamos 2 3 4 9 8"
    echo "31. Mostrar linea encabezado y de fin de linea de la carpeta raiz del resultado de ls -l"
    echo "32. Mostrar linea encabezado y de fin de linea de la carpeta raiz del resultado de ls -l queremos sumar el tamaño total de todos los archivos con awk"
    echo "33. Mostrar linea encabezado y de fin de linea de la carpeta raiz del resultado de ls -l queremos el promedio el tamaño total de todos los archivos con awk"
    echo "34. Bucle while awk,me cierra el menu de bash al salir con control c"
    echo "35. Bucle while awk con echo | mostramos los numero de un en uno"
    echo "36. Bucle while awk con echo | mostramos los numeros de dos en dos"
    echo "37. Bucle while awk con echo | mostramos frase con el nº de la frase"
    echo "38. Bucle for con awk para separar palabras de una frase una debajo de la otra"
    echo "39. Bucle for con awk para separar palabras de una frase una debajo de la otra con mismo simbolo en todos los saltos de linea"
    echo "40. Bucle for con awk para separar palabras de una frase con un espacio en blanco"
    echo "41. Bucle for con awk para separar palabras de una frase con un espacio en blanco las palabras aparecen cada segundo"
    echo "42. Bucle for con awk para separar palabras de una frase con un espacio en blanco las palabras aparecen cada segundo añadimos al final de la frase ;"
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
        echo "Concatenar la 3 primeras lineas del archivo prueba1.txt y las del archivo prueba2.txt en archivo out.txt"
        
        head -3 menubase.sh >> out.txt
        head -3  comandos-Arch.sh  >> out.txt

        read foo
        ;;
    6)
        echo "Ver el archivo out.txt"
        
        cat out.txt
        read foo
        ;;
    7)
        echo "Cambiar una palabra por otra con awk"
        echo "Hola jorge" | awk '{$2="carlos"; print $0}'
        
        read foo
        ;;
    8)
        echo "Cambiar el campo nº1,etc por la palabra hola,etc con awk"
        awk -F";" '{$1="hola"; print $1 $2}' out.txt
        
        read foo
        ;;
    9)
        echo "Crear archivo en carpeta actual"
        echo -n "Escribe un nombre de archivo con su extension: "
        read limite
        touch $limite
        
        read foo
        ;;
    10)
        echo "eliminar un archivo en carpeta actual"
        echo -n "Escribe un nombre de archivo con su extension: "
        read limite
        rm -r $limite
        
        read foo
        ;;
    11)
        echo "Listar archivos del directorio raiz /"
        ls -l /
        
        read foo
        ;;
    12)
        echo "Listar la 1ºcolumna de los archivos del directorio raiz /"
        # El limitador es el espacio o tabulado
        ls -l / | awk '{print $1}'
        
        read foo
        ;;
    13)
        echo "Ver el archivo passwd"
        # El limitador es el espacio o tabulado
        cat /etc/passwd
        
        read foo
        ;;
    14)
        echo "Ver el archivo passwd la 1º columna"
        # El limitador es el espacio o tabulado
        cat /etc/passwd |awk -F':' '{print $1}'
        
        read foo
        ;;
    15)
        echo "Ver el archivo passwd la 1º columna y la 5º columna es espacio ocupa"
        # El limitador es el espacio o tabulado
        cat /etc/passwd |awk -F':' '{print $1, $5}'
        
        read foo
        ;;
    16)
        echo "Ver el archivo passwd la 3º columna y la 4º columna"
        # El limitador es el espacio o tabulado
        cat /etc/passwd |awk -F':' '{print $3, $4}'
        
        read foo
        ;;
    17)
        echo "Ver el archivo passwd la 1ºcolumna(nombre) la 3º columna(usr) y la 4º columna(userid)"
        # El limitador es el espacio o tabulado
        cat /etc/passwd |awk -F':' '{print $1, $3, $4}'
        
        read foo
        ;;
    18)
        echo "Mostrar los tamaños de los archivos de la carpeta raiz en bytes"
        # El limitador es el espacio o tabulado
        ls -l / | awk '{print $5}'
        
        read foo
        ;;
    19)
        echo "Mostrar los tamaños de los archivos de la carpeta raiz en kilobytes"
        # El limitador es el espacio o tabulado
        ls -l / | awk '{print "Ocupa: "$5/1024" kilobytes"}'
        
        read foo
        ;;
    20)
        echo "Entrada de un numero con awk"
        # El limitador es el espacio o tabulado
        echo 3456 | awk '{ print ($1/1024)" kilobytes" }'
        
        read foo
        ;;
    21)
        echo "Sumar dos numero con echo y awk sumamos 2+3"
        # El limitador es el espacio o tabulado
        echo 2 3 | awk '{print $1 + $2}'
       
        
        read foo
        ;;
    22)
        echo "Sumar dos numero con echo y awk sumamos 2+3"
        # El limitador es el espacio o tabulado
      
        echo 2 3 | awk '{print $1  $2}'
      
        
        read foo
        ;;
    23)
        echo "Mostrar dos numero con echo y awk separados 2 3"
        # El limitador es el espacio o tabulado
        echo 2 3 | awk '{print $1, $2}'
        
        read foo
        ;;
    24)
        echo "Mostrar la ultima palabra de una frase con echo y awk"
        # El limitador es el espacio o tabulado
        echo "hola mundo, que tal" | awk '{print $NF}'
        
        read foo
        ;;
    25)
        echo "Mostrar todas las(elementos)palabras de una frase con echo y awk"
        # El limitador es el espacio o tabulado
        echo "hola mundo, que tal" | awk '{print $0}'
        
        read foo
        ;;
    26)
        echo "Mostrar el primer(elemento)palabra de una frase con echo y awk"
        # El limitador es el espacio o tabulado
        echo "hola mundo, que tal" | awk '{print $1}'
        
        read foo
        ;;
    27)
        echo "Mostrar el segundo(elemento)palabra de una frase con echo y awk"
        # El limitador es el espacio o tabulado
        echo "hola mundo, que tal" | awk '{print $2}'
        
        read foo
        ;;
    28)
        echo "Sumar 3numeros con echo y awk sumamos 2+3+4=9"
        # El limitador es el espacio o tabulado
        echo "11 22 33 " | awk '{total=0; for(i=1;i<=NF;i++) total+=$i; print total}'
        
        read foo
        ;;
    29)
        echo "Obtener el promedio de 3numeros con echo y awk sumamos 2 3 4"
        # El limitador es el espacio o tabulado
        echo "11 22 33" | awk '{ total=0; for (i=1;i<=NF;i++) total += $1; print total/NF}'
        
        read foo
        ;;
    30)
        echo "Obtener la suma de 5numeros con echo y awk sumamos 2 3 4 9 8"
        # El limitador es el espacio o tabulado
        echo "11 22 33 33 44" | awk '{ total=0; for (i=1;i<=NF;i++) total += $1; print total}'
        
        read foo
        ;;
    31)
        echo "Mostrar linea encabezado y de fin de linea de la carpeta raiz del resultado de ls -l /"
        # El limitador es el espacio o tabulado
        ls -l / | awk 'BEGIN {print "Tamanios de los archivos: "} {print $9, $5} END {print "Fin de la lista"}'
        
        read foo
        ;;
    32)
        echo "Mostrar linea encabezado y de fin de linea de la carpeta raiz del resultado de ls -l queremos sumar el tamaño total de todos los archivos con awk"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        ls -l / | awk 'BEGIN {print "Tamanios de los archivos: "} {print $9, $5; total += $5} END {print "Fin de la lista, suma total: " total}'
        
        read foo
        ;;
    33)
        echo "Mostrar linea encabezado y de fin de linea de la carpeta raiz del resultado de ls -l queremos el promedio el tamaño total de todos los archivos con awk"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        ls -l / | awk 'BEGIN {print "Tamanios de los archivos: "} {print $9, $5; total += $5; n++} END {print "Fin de la lista, suma total: " total/n}'
        
        read foo
        ;;
    34)
        echo "Bucle while awk,me cierra el menu de bash al salir con control c"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        awk '{ i=0; while(i<10) {print i; i++} }'

        read foo
        ;;
    35)
        echo "Bucle while awk con echo | "
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        echo | awk '{ i=0; while(i<10) {print i; i++} }'

        read foo
        ;;
    36)
        echo "Bucle while awk con echo | mostramos los numeros de dos en dos"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        echo | awk '{ i=0; while(i<10) {print i*2; i++} }'

        read foo
        ;;
    37)
        echo "Bucle while awk con echo | mostramos frase con el nº de la frase"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        echo | awk '{ i=0; while(i<10) {print "hola mundo, mensaje", i; i++;} }'

        read foo
        ;;
    38)
        echo "Bucle for con awk para separar palabras de una frase una debajo de la otra"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        echo "HAsta la proxima amigos" | awk '{ for(i=1;i<=NF;i++) {print $i } }'

        read foo
        ;;
    39)
        echo "Bucle for con awk para separar palabras de una frase una debajo de la otra con mismo simbolo en todos los saltos de linea"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        echo "HAsta la proxima amigos" | awk '{ for(i=1;i<=NF;i++) print "%s ",$i }'

        read foo
        ;;
    40)
        echo "Bucle for con awk para separar palabras de una frase una debajo de la otra con mismo simbolo en todos los saltos de linea"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        echo "HAsta la proxima amigos" | awk '{ for(i=1;i<=NF;i++) {printf "%s ",$i} }'

        read foo
        ;;
    41)
        echo "Bucle for con awk para separar palabras de una frase con un espacio en blanco las palabras aparecen cada egundo"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        echo "HAsta la proxima amigos" | awk '{for(i=1;i<=NF;i++) {printf "%s ", $i; system("sleep 1")} }'

        read foo
        ;;
    42)
        echo "Bucle for con awk para separar palabras de una frase con un espacio en blanco las palabras aparecen cada segundo añadimos al final de la frase ;"
        # El limitador es el espacio o tabulado
        # $5 es el tamaño en bytes la 5columna
        echo "HAsta la proxima amigos" | awk '{for(i=1;i<=NF;i++) {printf "%s ", $i; system("sleep 1")}; print "!! ;-)" }'

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
