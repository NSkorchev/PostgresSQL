SELECT
    o.name,
    count(a.owner_id) AS "count_of_animals"
FROM
    owners as o
JOIN
    animals as a
        ON
    o.id = a.owner_id
GROUP BY
    o.name,
    a.owner_id
ORDER BY
    count_of_animals DESC,
    name
LIMIT
    5;
