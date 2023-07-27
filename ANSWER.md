1.

<details>
    <summary>Команды Bash (развернуть)</summary>

```bash
cat > "Домашние животные"
Собаки
Кошки
Хомяки

'Ctrl+d'
```

```bash
cat > "Вьючные животные"
Лошади
Верблюды
Ослы

'Ctrl+d'
```

```bash
cat "Домашние животные" "Вьючные животные" > Животные
cat "Животные"
mv "Животные" "Друзья человека"
```

</details>

![pictures for project](https://github.com/Baranovms/FinalWork_Specialization/blob/main/image/Снимок%20экрана%20от%202023-07-27%2012-16-18.png)

2.

<details>
    <summary>Команды Bash (развернуть)</summary>

```bash
mkdir task2
mv 'Друзья человека' task2/
ls
cd task2
ls
```

</details>

![pictures for project](https://github.com/Baranovms/FinalWork_Specialization/blob/main/image/Снимок%20экрана%20от%202023-07-27%2012-18-25.png)

3.

<details>
    <summary>Команды Bash (развернуть)</summary>

```bash
sudo apt-get update
sudo apt update
sudo apt install mysql-server
sudo service mysql status
```

</details>

![pictures for project](https://github.com/Baranovms/FinalWork_Specialization/blob/main/image/Снимок%20экрана%20от%202023-07-27%2012-25-27.png)
![pictures for project](https://github.com/Baranovms/FinalWork_Specialization/blob/main/image/Снимок%20экрана%20от%202023-07-27%2012-26-23.png)

4.

<details>
    <summary>Команды Bash (развернуть)</summary>

```bash
wget https://dev.mysql.com/get/mysql-apt-config_0.8.25-1_all.deb
dpkg -i mysql-apt-config_0.8.16-1_all.deb
sudo dpkg -r mysql-apt-config
```

</details>

![pictures for project](https://github.com/Baranovms/FinalWork_Specialization/blob/main/image/Снимок%20экрана%20от%202023-07-27%2012-42-11.png)

![pictures for project](https://github.com/Baranovms/FinalWork_Specialization/blob/main/image/Снимок%20экрана%20от%202023-07-27%2012-42-32.png)


5.

![pictures for project](https://github.com/Baranovms/FinalWork_Specialization/blob/main/image/Снимок%20экрана%20от%202023-07-27%2012-43-22.png)


6.
![pictures for project](https://github.com/Baranovms/FinalWork_Specialization/blob/main/image/diagramm.jpg)
[ФАЙЛ С ДИАГРАММОЙ](https://drive.google.com/file/d/17M6EzWHvJLDDk2AnlI2ikh8p1wo53_jI/view?usp=sharing)

7 - 8.

[Файл в формате SQL](https://github.com/Baranovms/FinalWork_Specialization/blob/main/Database/task7-8.sql)

<details>
    <summary>Команды SQL для задания 7 (развернуть)</summary>

```bash
DROP DATABASE IF EXISTS `Друзья человека`;

CREATE DATABASE IF NOT EXISTS `Друзья человека`;
```

</details>

<details>
    <summary>Команды SQL для задания 8 (развернуть)</summary>

```bash
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
```

</details>



