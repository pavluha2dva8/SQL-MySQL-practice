create database ucode_web;
create user 'pkolomiets'@'localhost' identified by 'securepass';
grant all privileges on ucode_web . * to 'pkolomiets'@'localhost';

/*
* створюємо БД ucode_web
* створюємо юзера pkolomiets і пароль securepass
* надаємо всі права на використання БД ucode_web
*/