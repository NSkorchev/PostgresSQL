SELECT 
	REPLACE (title, SUBSTRING(title , 'The'), '***')
FROM
	books
WHERE 
	left(title, 3) = 'The'	
ORDER BY
	id;
