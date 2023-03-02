# LightWeight
## Описание

Тестируем новую систему аутентификации, но наша модная веб панель отпалилась. Надо искать другой метод где-то на домене task.permctf.ertelecom.ru. Креды тебе cn=admin,dc=permctf,dc=flag - StrongAdmin

## Решение
1. Цепляемся к ldap серверу с кредами и парсим весь ldap
2. ldapsearch -x -b dc=permctf,dc=flag -D "cn=admin,dc=permctf,dc=flag" -w StrongAdmin| grep erth

## Флаг
erth_not_that_lightweight
