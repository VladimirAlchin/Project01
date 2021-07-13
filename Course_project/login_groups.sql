CREATE VIEW `login_groups` AS
    SELECT 
        users.login,
        profiles.firstname,
        profiles.email,
        users_group.*
    FROM
        users
            INNER JOIN
        profiles ON users.id = profiles.users_id
            INNER JOIN
        users_group ON users.id = users_group.users_id
            INNER JOIN
        groups_has_data_mart AS a ON users_group.groups_id = a.groups_id