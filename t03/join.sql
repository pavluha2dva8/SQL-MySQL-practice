/*
* похожденіє в іншу таблицю за данними називається JOIN'ом
*/
use ucode_web;
SELECT 
    heroes.name, teams.name
FROM
    heroes
        LEFT JOIN
    teams ON heroes.id = teams.hero_id;

SELECT 
    heroes.name, powers.name
FROM
    heroes
        LEFT JOIN
    powers ON heroes.id = powers.hero_id;

SELECT 
    heroes.name, powers.name, teams.name
FROM
    heroes
        JOIN
    powers ON powers.hero_id = heroes.id
        JOIN
    teams ON teams.hero_id = heroes.id
GROUP BY heroes.name;