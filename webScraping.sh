#!/bin/bash


if [ -z "$1" ]; then
	echo "Error: se necesita una url"
	exit 1
fi

URL="$1"
COMENTARIOS="comentarios.txt"
CORREOS="correos.txt"

curl -s "$URL" | grep -oP '' >> "$COMENTARIOS"


curl -s "$URL" | grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" >> "$CORREOS"
