CREATE OR REPLACE VIEW
	view_continents_countries_currencies_details 
AS SELECT 
	CONCAT_WS(': ', a.continent_name, a.continent_code) 
	AS "Continent Details",
	CONCAT_WS(' - ', b.country_name, b.capital, b.area_in_sq_km, 'km2') 
	AS "Country Information",
	CONCAT(c.description, ' (', c.currency_code, ')') AS "Currencies"
FROM 
	continents AS a,
	countries AS b,
	currencies AS c
WHERE 
	a.continent_code = b.continent_code
		AND
	b.currency_code = c.currency_code
ORDER BY
	"Country Information" ASC,
	"Currencies" ASC;