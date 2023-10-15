CREATE OR REPLACE FUNCTION log_items()
RETURNS TRIGGER AS
$$
    BEGIN
        INSERT INTO items_log(status, create_date)
        VALUES (new.status, new.create_date);
        RETURN new;
    END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER log_items_trigger
AFTER INSERT ON items
FOR EACH ROW
EXECUTE PROCEDURE log_items();

INSERT INTO items(status, create_date)
VALUES
    (1, now()),
    (2, now()),
    (3, now());
=====================================================================================
CREATE OR REPLACE FUNCTION delete_last_item_log()
RETURNS TRIGGER AS
$$
    BEGIN
        WHILE (SELECT count(*) FROM items_log) > 10 LOOP
            DELETE FROM items_log WHERE id = (SELECT min(id) FROM items_log);
        END LOOP;
        RETURN new;
    END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER clear_item_log
AFTER INSERT ON items_log
FOR EACH STATEMENT 
EXECUTE PROCEDURE delete_last_item_log();