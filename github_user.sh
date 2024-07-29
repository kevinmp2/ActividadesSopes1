#!/bin/bash

GITHUB_USER=$1

if [ -z "$GITHUB_USER" ]; then
	echo "Ingrese su nombre de usuario: "
	exit 1
fi

RESPONSE=$(curl -s https://api.github.com/users/$GITHUB_USER)

USER_ID=$(echo $RESPONSE | jq -r '.id')
CREATED_AT=$(echo $RESPONSE | jq -r '.created_at')

if [ "$USER_ID" == "null" ]; then
	echo "Usuario no encontrado"
	exit 1
fi


MESSAGE="Hola $GITHUB_USER. User ID: $USER_ID, Cuenta fue creada el: $CREATED_AT, "
echo $MESSAGE


LOG_DIR="/tmp/$(date +%Y-%m-%d)"
mkdir -p $LOG_DIR
LOG_FILE="$LOG_DIR/saludos.log"

echo $MESSAGE >> $LOG_FILE
