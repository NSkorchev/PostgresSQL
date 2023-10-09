SELECT
    concat(o.name, ' - ', a.name),
    o.phone_number AS "Phone Number",
    ac.cage_id AS "Cage ID"
FROM
    owners AS o
        JOIN animals AS a
            ON o.id = a.owner_id
                JOIN animals_cages AS ac
                   ON a.id = ac.animal_id
WHERE
    a.animal_type_id = (SELECT ID FROM animal_types WHERE animal_type = 'Mammals' )
ORDER BY
    o.name,
    a.name DESC;