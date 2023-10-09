SELECT
    a.name AS "animal",
    extract('YEAR' FROM a.birthdate) AS birth_year,
    at.animal_type
FROM
    animals AS a
        JOIN animal_types AS at
            ON a.animal_type_id = at.id
WHERE
    a.owner_id IS NULL
    AND
    age('01/01/2022', a.birthdate) <= '5 YEARS'
    AND
    at.animal_type NOT LIKE 'Birds'
ORDER BY
    a.name;
