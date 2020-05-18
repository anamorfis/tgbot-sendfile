#!/bin/bash

# скрипт мониторит наличие новых файлов и отправляет их в телеграм
# необхоидмо установить: apt-get install inotify-tools

MONITOR_DIR=
CHAT_ID=
BOT_TOKEN=



sendfile(){
curl -s -F "chat_id=$CHAT_ID" -F document=@$1 https://api.telegram.org/bot$BOT_TOKEN/sendDocument
}

# Мониторим директорию на наличие новых файлов
inotifywait -e close_write --format '%w%f' -m -r $MONITOR_DIR |\

(
while read
do
    # Получаем имя директории
    DIR=$(echo $REPLY )
    # Передаем путь до файла на выгрузку
    sendfile $DIR
done
)