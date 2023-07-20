INSERT INTO friends (who_add_user_id,
                     who_accept_user_id,
                     is_accept)
SELECT '2',
       '3',
       false
WHERE NOT EXISTS (SELECT who_add_user_id, who_accept_user_id
                  FROM friends
                  WHERE who_add_user_id = '2'
                    AND who_accept_user_id = '3');

INSERT INTO friends (who_add_user_id,
                     who_accept_user_id,
                     is_accept)
SELECT '4',
       '3',
       true
WHERE NOT EXISTS (SELECT who_add_user_id, who_accept_user_id
                  FROM friends
                  WHERE who_add_user_id = '4'
                    AND who_accept_user_id = '3');


