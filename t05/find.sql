use ucode_web;
SELECT 
    heroes.name, teams.name
FROM
    heroes
        JOIN
    races ON races.hero_id = heroes.id
        JOIN
    teams ON teams.hero_id = heroes.id
WHERE
    races.name != 'human'
        AND heroes.name LIKE '%a%'
        AND (heroes.class_role = 'healer'
        OR heroes.class_role = 'tankman')
HAVING COUNT(*) > 1
LIMIT 1; 


