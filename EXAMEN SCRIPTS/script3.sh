#!/bin/bash

#obteniu la vostra ip pública amb la comanda curl ifconfig.me i guardau-la en la variable IP
IP=$(curl ifconfig.me)
TOKEN="6298021924:AAHXuKjLLyjxTwLeIsEL1mZVTw1BEwAFk7c"
ID="1370560076"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

#enviau aquesta ip pública al vostre bot de telegram.
MENSAJE="Bon día, la meva IP es: ${IP}"
#envia al bot de telegram el token del teu bot
MENSAJE2="El meu token es: ${TOKEN}"
#envia al bot de telegram el teu id
MENSAJE3="El meu ID es: ${ID}"
#envia al bot de telegram el teu nom
MENSAJE4="El meu Nom es Samuel"

# Todo junto
curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE,
$MENSAJE2,
$MENSAJE3,
$MENSAJE4"

# Todo separado en diferentes mensajes.
curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"
curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE2"
curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE3"
curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE4"