CREATE TABLE 'Парнокопытные' AS
SELECT *, TIMESTAMPDIFF(MONTH, дата_рождения, CURDATE()) AS 'возраст_в_месяцах'
FROM (
    SELECT 'Собаки' AS 'тип_животного', 'имя', 'команда', 'дата_рождения' FROM 'Собаки'
    UNION ALL
    SELECT 'Кошки' AS 'тип_животного', 'имя', 'команда', 'дата_рождения' FROM 'Кошки'
    UNION ALL
    SELECT 'Хомяки' AS 'тип_животного', 'имя', 'команда', 'дата_рождения' FROM 'Хомяки'
    UNION ALL
    SELECT 'Лошади' AS 'тип_животного', 'имя', 'команда', 'дата_рождения' FROM 'Лошади'
    UNION ALL
    SELECT 'Ослы' AS 'тип_животного', 'имя', 'команда', 'дата_рождения' FROM 'Ослы'
) AS 'животные'
WHERE 'дата_рождения' >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR)
AND 'дата_рождения' <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
