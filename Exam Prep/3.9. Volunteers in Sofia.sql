SELECT
    v.name AS "volunteers",
    v.phone_number,
    substring(ltrim(replace(v.address, 'Sofia', '')), 2)
FROM
    volunteers AS v
        JOIN volunteers_departments AS vd
            ON v.department_id = vd.id
WHERE
    vd.department_name = 'Education program assistant'
AND
   v.address ILIKE '%Sofia%'
ORDER BY
    v.name;