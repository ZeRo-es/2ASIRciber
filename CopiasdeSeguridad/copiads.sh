#!/bin/bash
# Este script crea copias de seguridad

echo "Bienvenido al script de copias de seguridad"

echo -e "Abriendo ficheros [ \e[32mOK\e[0m ]"
echo -e "Abriendo Bases de Datos[ \e[31mERROR\e[0m ]"

while IFS= read -r pepe
do
    #va a copiar todos los archivos del fichero a el directorio deseado
    cp /etc/cosasimportantes/${pepe} /etc/cosasimportantes/copiasdeseguridad/${pepe}_bck

    if [[ $? == 0 ]]
    then
        echo "!Copiado el archivo $pepe con éxito¡"
    else
        echo -e "\e[31mERROR \e[0m al realizar la copia del archivo $pepe"
    fi

done < /etc/cosasimportantes/copiasdeseguridad/ficheros.txt

