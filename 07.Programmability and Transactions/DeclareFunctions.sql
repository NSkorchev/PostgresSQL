DROP FUNCTION fn_full_name(VARCHAR, VARCHAR)

CREATE OR REPLACE FUNCTION fn_full_name(VARCHAR, VARCHAR)
RETURNS VARCHAR AS
$$
  DECLARE 
      first_name ALIAS FOR $1;
      last_name ALIAS FOR $2;
    BEGIN
        RETURN concat(first_name, ' ',last_name);
    END
$$
LANGUAGE plpgsql;

SELECT fn_full_name('Kumcho', 'Vulcho');

DROP FUNCTION fn_full_name(VARCHAR, VARCHAR);

CREATE OR REPLACE FUNCTION fn_full_name(first_name VARCHAR, last_name VARCHAR)
RETURNS VARCHAR AS
$$
  DECLARE
      full_name VARCHAR;
    BEGIN
        IF first_name IS NULL AND last_name IS NULL THEN
            full_name := NULL;
        ELSIF first_name IS NULL THEN
            full_name := last_name;
        ELSIF last_name IS NULL THEN
            full_name := first_name;
        ELSE
            full_name := concat(first_name, ' ', last_name);
        END IF;
        RETURN full_name;
    END
$$
LANGUAGE plpgsql;

SELECT fn_full_name( NULL, 'Vulcho');