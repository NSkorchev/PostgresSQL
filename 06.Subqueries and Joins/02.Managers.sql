SELECT
    e.employee_id,
    concat(e.first_name, ' ', e.last_name) AS full_name,
    d.department_id,
    d.name AS department_name
FROM
    employees AS e
JOIN
    departments AS d
ON
    e.employee_id = d.manager_id
WHERE
    e.manager_id IS NOT NULL
ORDER BY
    e.employee_id
LIMIT 5;