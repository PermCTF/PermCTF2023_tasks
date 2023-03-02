# VHost
## Описание

Настроил веб-сервер на доменное имя test.demo, но что-то не открывается. Можешь посмотреть?
http://188.186.145.211

## Решение
1. Добавляем хост в /etc/hosts или прописывает HOST заголовок в curl
2. curl 'http://188.186.145.211:8080/' -H 'Host: test.demo' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5'  -H 'Connection: keep-alive' -H 'Upgrade-Insecure-Requests: 1' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache'

## Флаг
erth_impossible_to_hack
