SELECT 
	last_name AS "Last Name",
	TO_CHAR(born AT TIME ZONE 'UTC', 'DD (Dy) Mon YYYY') AS "Date of Birth"
FROM
	authors;