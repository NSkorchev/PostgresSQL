UPDATE
    animals
SET
    owner_id = 4
WHERE
    owner_id IS NULL
RETURNING *;

UPDATE  
    animals
SET 
    owner_id = (SELECT ID FROM owners WHERE name = 'Kaloqn Stoqnov')
WHERE 
    owner_id IS NULL;