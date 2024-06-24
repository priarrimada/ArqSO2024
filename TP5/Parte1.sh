numero_secreto=$(( (RANDOM % 100) + 1 ))

echo "Bienvenido al juego de adivinar el número!"
echo "Intenta adivinar un número entre 1 y 100."

intentos=0
while true; do
    read -p "Introduce tu adivinanza: " intento

    if ! [[ "$intento" =~ ^[0-9]+$ ]]; then
        echo "Por favor, introduce un número entero válido."
        continue
    fi

    ((intentos++))

    if (( intento < numero_secreto )); then
        echo "El número secreto es mayor."
    elif (( intento > numero_secreto )); then
        echo "El número secreto es menor."
    else
        echo "¡Felicidades! Has adivinado el número secreto $numero_secreto en $intentos intentos."
        break
    fi
done

