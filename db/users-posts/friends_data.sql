INSERT INTO friends (who_add_user_id,
                     who_should_accept_user_id,
                     is_accept)
SELECT '11111111-1111-1111-1111111111111111',
       '22222222-2222-2222-2222222222222222',
       false
WHERE NOT EXISTS (SELECT who_add_user_id, who_should_accept_user_id
                  FROM friends
                  WHERE who_add_user_id = '11111111-1111-1111-1111111111111111'
                    AND who_should_accept_user_id = '22222222-2222-2222-2222222222222222');

INSERT INTO friends (who_add_user_id,
                     who_should_accept_user_id,
                     is_accept)
SELECT '0cd6e3b6-7352-49e6-b423-7e48653e8cf0',
       '11111111-1111-1111-1111111111111111',
       true
WHERE NOT EXISTS (SELECT who_add_user_id, who_should_accept_user_id
                  FROM friends
                  WHERE who_add_user_id = '0cd6e3b6-7352-49e6-b423-7e48653e8cf0'
                    AND who_should_accept_user_id = '11111111-1111-1111-1111111111111111');


