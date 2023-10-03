import os

# Definimos las opciones del menú en una lista similar a la original.
opciones = [
    "Mostrar directorio: ls -lth",
    "Mostrar calendario: cal",
    "Mostrar fecha de hoy: date",
    "Sustituir palabra puedo por voy",
    "Mostrar el archivo out.txt con cat",
    "Mostrar las lineas del 3 al 7 del archivo out.txt con sed",
    "Mostrar todas las lineas del archivo out.txt con sed",
    "Eliminar todas las lineas del 3 al 7 del archivo out.txt con sed",
    "Mostrar solo las lineas del 3 al 7",
    "Sustituir una palabra por otra en out.txt",
    "Sustituir una palabra en la línea 8 en out.txt",
    "Menos la línea 8, introduce la palabra con sed",
    "Insertar palabra después de la línea 8",
    "Insertar palabra antes de la línea 8",
    "Eliminar una línea antes de la última línea e introduce palabra",
    "Agregar una línea al final e introduce palabra",
    "Mostrar la 1º línea de out.txt con sed",
    "Mostrar la 8º línea de out.txt con sed",
    "Mostrar la última línea de out.txt con sed",
    "Salir"
]

while True:
    # Limpiamos la pantalla en cada iteración para simular el "clear".
    os.system('clear')

    print("MENU SCRIPT V.1")
    print("===============================")
    print("Escoja una opción:")
    
    for i, opcion in enumerate(opciones):
        print(f"{i}. {opcion}")

    print("===============================")
    opcion = input("Ingrese el número de la opción: ")

    if opcion.isdigit():
        opcion = int(opcion)
        if 0 <= opcion < len(opciones):
            if opcion == 3:
                # Si la opción seleccionada es la de "Sustituir palabra puedo por voy",
                # solicita la palabra a sustituir y realiza la sustitución.
                palabra = input("Ingrese la palabra a sustituir: ")
                comando = f"echo 'Este es un mensaje de prueba con el simbolo | puedo ejecutar otro comando' | sed 's/{palabra}/voy/g'"
                os.system(comando)
            elif opcion == 18:
                # Si la opción seleccionada es "Salir", salimos del bucle.
                break
            else:
                # Ejecutamos el comando correspondiente a la opción seleccionada.
                comando = opciones[opcion].split(": ")[1]
                os.system(comando)
            
            input("Presione Enter para continuar...")
        else:
            input("Opción inválida. Presione Enter para continuar...")
    else:
        input("Opción inválida. Presione Enter para continuar...")

