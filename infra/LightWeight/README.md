# LightWeight
## Описание

Тестируем новую систему аутентификации. Где-то на домене task.permctf.ertelecom.ru. Креды тебе cn=admin,dc=permctf,dc=flag - StrongAdmin

## Решение
ldapsearch -x -b dc=permctf,dc=flag -D "cn=admin,dc=permctf,dc=flag" -w StrongAdmin| grep erth

## Флаг
erth_not_that_lightweight
