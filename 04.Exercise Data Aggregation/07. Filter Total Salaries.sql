SELECT
    department_id,
    sum(salary) as total_salaries
FROM
    employees
GROUP BY 
    department_id
HAVING
	sum(salary) < 4200
ORDER BY 
    department_id;