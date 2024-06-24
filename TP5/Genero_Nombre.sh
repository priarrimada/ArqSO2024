echo "--- GENERO DE ACUERDO AL NOMBRE ---"
read -p "Ingrese un nombre: " nombre_ingresado



if [[ -z "$nombre_ingresado" ]]; then
    echo "ERROR. No se ingreso ningun nombre."
    exit 1
fi


URL="https://api.genderize.io/?name=$nombre_ingresado"

respuesta=$(curl -s "$URL")

nombre_api=$(echo "$respuesta" | jq -r '.name')
genero=$(echo "$respuesta" | jq -r '.gender')

if [[ "$genero" == "male" ]]; then
    echo "El genero de '$nombre_ingresado' es masculino. "
elif [[ "$genero" == "female" ]]; then
    echo "El genero de '$nombre_ingresado' es femenino. "
else
    echo "ERROR al buscar un genero para '$nombre_ingresado'."
fi
