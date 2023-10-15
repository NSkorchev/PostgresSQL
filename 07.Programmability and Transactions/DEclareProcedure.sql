CREATE PROCEDURE sp_add_person(first_name VARCHAR, last_name VARCHAR, city_name VARCHAR)
AS
$$
    DECLARE
        city_id INT;
    BEGIN
        INSERT INTO persons(first_name, last_name, city_id)
        VALUES (first_name, last_name, fn_get_city(city_name));
    END;
$$
LANGUAGE plpgsql;

CALL sp_add_person('Milcho', 'Kolev', 'Burgas');
