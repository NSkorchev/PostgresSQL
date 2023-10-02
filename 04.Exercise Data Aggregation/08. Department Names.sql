-- SELECT
--     concat(first_name, ' ', last_name),
--     CASE
--         WHEN city_id = 1 THEN 'Sofia'
--         WHEN city_id = 2 THEN 'Pernik'
--     END AS city
-- FROM
--     person;
-- SELECT
--     concat(first_name, ' ', last_name),
--     CASE city_id
--         WHEN 1 THEN 'Sofia'
--         WHEN 2 THEN 'Pernik'
--     END AS city
-- FROM
--     person;
SELECT
    id,
	first_name,
	last_name,
	TRUNC(salary, 2),
	department_id,
	CASE department_id
		WHEN 1 THEN 'Management'
		WHEN 2 THEN 'Kitchen Staff'
		WHEN 3 THEN 'Service Staff'
		ELSE 'Other'
	END AS department_name
FROM
    employees;