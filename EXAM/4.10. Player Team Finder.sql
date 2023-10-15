CREATE OR REPLACE PROCEDURE sp_players_team_name(
    IN player_name VARCHAR(50),
    OUT team_name VARCHAR(45)
)
AS
$$
    BEGIN
        SELECT
            t.name INTO team_name
        FROM
            teams AS t
        JOIN
            players AS p
        ON
            t.id = p.team_id
        WHERE
            concat(p.first_name, ' ', p. last_name) = player_name;
        IF
            team_name IS NULL THEN team_name := 'The player currently has no team';
        ELSE
            team_name := team_name;
        END IF;
    END
$$
LANGUAGE plpgsql;