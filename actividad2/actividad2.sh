#!bin/bash

# Verificar si la libreria del json esta instalada
# JQ imprime en la terminal, se usa el /dev/null porque ahi se pueden enviar bits basura de manera segura
if ! command -v jq &> /dev/null
then
    echo "La librería jq no está instalada. Instalando a continuación:"
    sudo apt-get update && sudo apt-get install -y jq
    echo "Instalación finalizada."
fi

# Lectura del usuario
# La tercera linea verifica que sea nulo para saber si usa o no el valor por default
DEFAULT_USER = "JJONK19"
read -p "Introduzca su username de github: " GITHUB_USER
GITHUB_USER=${GITHUB_USER:-$DEFAULT_USER}

# Concatenar el usuario y añadirlo a la url
response=$(curl -s "https://api.github.com/users/${GITHUB_USER}")

# Validar si la respuesta es vacia
# Exit finaliza el script y el 1 es por el codigo de retorno (error en este caso)
if echo "$response" | jq -e '.message == "Not Found"' > /dev/null; then
    echo "El usuario ${GITHUB_USER} no existe."
    exit 1
fi

# Extraer del JSON los valores. Se maneja una pipeline para pasarle el texto del json y luego se extrae el valor
# de id y la fecha. El user ya se tenía con el usuario.
ID=$(echo $response | jq -r '.id')
FECHA_CREACION=$(echo $response | jq -r '.created_at')

# Tomar el mensaje y guardarlo en una variable
# Mostrarlo en pantalla y guardarlo en el log
# Las comillas en mensaje se colocan porque al tener caracteres especiales y espacios, bash puede 
# interpretarlo como diferentes argumentos o hacer cosas raras con los signos.
MENSAJE="Hola ${GITHUB_USER}. User ID: ${ID}. Cuenta fue creada el: ${FECHA_CREACION}."
FECHA=$(date +%d-%m-%Y)
echo "$MENSAJE"
mkdir /tmp/${FECHA}
echo "$MENSAJE" >> /tmp/${FECHA}/saludos.log