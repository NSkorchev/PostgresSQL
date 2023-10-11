SELECT
    mountain_range,
    peak_name,
    elevation
FROM
    mountains
JOIN
        peaks
ON
    mountains.id = mountain_id
WHERE
    mountain_id = 17
ORDER BY
    elevation DESC;