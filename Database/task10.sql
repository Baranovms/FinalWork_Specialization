TRUNCATE TABLE 'Верблюды';

CREATE TABLE 'Парнокопытные' AS
SELECT * FROM 'Лошади'
UNION
SELECT * FROM 'Ослы';