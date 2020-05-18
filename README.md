# tgbot-sendfile.sh

Скрипт сканирует каталог на наличие новых файлов и отправляет их в телеграм.
Установить:
```
apt-get install inotify-tools
```

MONITOR_DIR= Каталог который надо сканировать
BOT_TOKEN= Получаем у BotFather при регистрации нового бота или уже сушествующего

Получить CHAT_ID в урл подсталвяем BOT_TOKEN:
```
curl https://api.telegram.org/bot<BOT_TOKEN>/getUpdates
```

# tgbot-sendfile.service
Дополнительно можно указать пользователя и группу на директорию сканирования

```
[Service]
User=
Group=
```