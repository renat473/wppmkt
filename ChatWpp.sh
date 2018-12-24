#!/bin/bash

######################################################################
# FUNÇÃO SCRIPT.: ENVIAR WHATSAPP MARKERTING                         #
#                                                                    #
#------------------------------------------------------------------- #
#       DEPENDÊNCIAS.:..                                             #
#       1-criar o arquivo numero.csv                                 #
#       2-entre apas duplas colocar a msg que sera enviado           #
#                                                                    #
#       DESENVOLVIMENTO.: RENATO SIQUEIRA                            #
#       EMAIL.: RENATO.473@GMAIL.COM                                 #
#       DATA CRIACAO.: 24/12/2018                                    #
#       VERSAO.: 1.0                                                 #
#                                                                    #
######################################################################


LOGFILE="/tmp/whatsapp.log"
HORA=$(date +%d/%m/%Y\ %H:%M:%S)
lista_numero="numero.csv"

clear

for arq in `cat $lista_numero`; do

curl -d '{"phone": "'$arq'","body": "Teste De Envio"}' -H "Content-Type: application/json" -X POST  https://foo.chat-api.com/message?token=83763g87x

done

      echo "$HORA – Mensagem: $MSG - Enviada para: $arq" >> ${LOGFILE}

echo -e " \033[41;1;37m PROCESSO REALIZADOO COM SUCESSO!    \033[0m"
