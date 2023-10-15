UPDATE
    coaches
SET
    salary = salary * coach_level
WHERE
    first_name ILIKE 'C%'
    AND
    (SELECT count(coach_id) FROM players_coaches JOIN coaches ON players_coaches.coach_id = coaches.id) > 2;