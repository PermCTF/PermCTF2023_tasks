# ЛегковесныйПротокол
## Описание

Тестируем новую систему аутентификации. Где-то на домене task.permctf.ertelecom.ru. Креды тебе cn=admin,dc=permctf,dc=flag

## Решение
ldapsearch -x -b dc=permctf,dc=flag -D "cn=admin,dc=permctf,dc=flag" -w StrongAdminPassw0rd | grep erth

## Флаг
erth_not_that_lightweight
