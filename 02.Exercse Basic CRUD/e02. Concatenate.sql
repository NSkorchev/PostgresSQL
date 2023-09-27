ALTER TABLE
	cities
RENAME COLUMN
	area TO "Area (km2)";
SELECT 
	CONCAT(name, ' ', state) AS "Cities Information",
	"Area (km2)"
FROM cities;