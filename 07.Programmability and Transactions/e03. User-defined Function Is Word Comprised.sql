CREATE OR REPLACE FUNCTION fn_is_word_comprised(
    IN set_of_letters VARCHAR(50),
    IN word VARCHAR(50)
)
RETURNS BOOLEAN
AS
$$
    DECLARE
        i INT;
        char_check CHAR;
    BEGIN
        set_of_letters:= LOWER(REGEXP_REPLACE(set_of_letters, '[^a-z]', '', 'g'));
        word := LOWER(REGEXP_REPLACE(word, '[^a-z]', '', 'g'));
        i := 1;
        WHILE i <= LENGTH(word) LOOP
            char_check := SUBSTRING(word FROM i FOR 1);
            IF char_check <> '' AND POSITION(char_check IN set_of_letters) = 0 THEN RETURN FALSE;
            END IF;
            i := i + 1;
        end loop;

    RETURN TRUE;
--         RETURN TRIM(LOWER(word), LOWER(set_of_letters)) = '';
    END;
$$
LANGUAGE plpgsql;