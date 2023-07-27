DROP DATABASE IF EXISTS `Друзья человека`;

CREATE DATABASE IF NOT EXISTS `Друзья человека`;
USE `Друзья человека`;
CREATE TABLE 'Родительский_класс' (
  'id' INT PRIMARY KEY AUTO_INCREMENT,
  'тип' VARCHAR(50)
);


CREATE TABLE 'Домашние_животные' (
  'id' INT PRIMARY KEY,
  'вид' VARCHAR(50),
  FOREIGN KEY (`id`) REFERENCES 'Родительский_класс'(`id`)
);


CREATE TABLE 'Собаки' (
  'id' INT PRIMARY KEY,
  'имя' VARCHAR(50),
  'команда' VARCHAR(50),
  'дата_рождения' DATE,
  FOREIGN KEY (`id`) REFERENCES 'Домашние_животные'(`id`)
);


CREATE TABLE 'Кошки' (
  'id' INT PRIMARY KEY,
  'имя' VARCHAR(50),
  'команда' VARCHAR(50),
  'дата_рождения' DATE,
  FOREIGN KEY (`id`) REFERENCES 'Домашние_животные'(`id`)
);


CREATE TABLE 'Хомяки' (
  'id' INT PRIMARY KEY,
  'имя' VARCHAR(50),
  'команда' VARCHAR(50),
  'дата_рождения' DATE,
  FOREIGN KEY (`id`) REFERENCES 'Домашние_животные'(`id`)
);


CREATE TABLE 'Вьючные_животные' (
  'id' INT PRIMARY KEY,
  'вид' VARCHAR(50),
  FOREIGN KEY (`id`) REFERENCES 'Родительский_класс'(`id`)
);


CREATE TABLE 'Лошади' (
  'id' INT PRIMARY KEY,
  'имя' VARCHAR(50),
  'команда' VARCHAR(50),
  'дата_рождения' DATE,
  FOREIGN KEY (`id`) REFERENCES 'Вьючные_животные'(`id`)
);


CREATE TABLE 'Верблюды' (
  'id' INT PRIMARY KEY,
  'имя' VARCHAR(50),
  'команда' VARCHAR(50),
  'дата_рождения' DATE,
  FOREIGN KEY (`id`) REFERENCES 'Вьючные_животные'(`id`)
);


CREATE TABLE 'Ослы' (
  'id' INT PRIMARY KEY,
  'имя' VARCHAR(50),
  'команда' VARCHAR(50),
  'дата_рождения' DATE,
  FOREIGN KEY (`id`) REFERENCES 'Вьючные_животные'(`id`)
);

show databases;
show tables;