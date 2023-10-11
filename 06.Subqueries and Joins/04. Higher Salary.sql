SELECT
    count(employee_id) AS count
FROM
    employees
WHERE
    salary > (SELECT avg(salary) FROM employees);