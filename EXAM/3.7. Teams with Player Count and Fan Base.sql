SELECT
    t.id AS team_id,
    t.name AS team_name,
    count(p.id) AS players_count,
    t.fan_base
FROM
    teams AS t
LEFT JOIN
    players AS p
ON
    t.id = p.team_id
WHERE
    t.fan_base > 30000
GROUP BY
    t.id,
    t.name,
    t.fan_base
ORDER BY
    players_count DESC,
    fan_base DESC;

