UPDATE
    countries
SET
    country_name = 'Burma'
WHERE
    country_name = 'Myanmar';

INSERT INTO
    monasteries(monastery_name, country_code)
VALUES
    ('Hanga Abbey', (SELECT country_code FROM countries WHERE country_name = 'Tanzania')),
    ('Myin-Tin-Daik',(SELECT country_code FROM countries WHERE country_name = 'Maynmar'));

-- ALTER TABLE
--     monasteries
-- ADD CONSTRAINT fk_monasteries_countries
--     FOREIGN KEY (country_code)
--     REFERENCES countries(country_code);

SELECT
    co.continent_name,
    c.country_name,
    count(m.id) AS monasteries_count
FROM
    countries AS c
LEFT JOIN
    monasteries AS m
USING
    (country_code)
LEFT JOIN
    continents AS co
USING
    (continent_code)
WHERE
    c.three_rivers IS NULL
GROUP BY
    continent_name,
    country_name
ORDER BY
    monasteries_count DESC,
    country_name;
