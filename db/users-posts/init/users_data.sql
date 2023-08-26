INSERT INTO users (
                      user_id,
                   birthdate)
SELECT '559cf93b-36ea-4a38-9575-3bb7e5967606',
       '2003-05-30'
WHERE NOT EXISTS (SELECT user_id
                  FROM users
                  WHERE user_id = '559cf93b-36ea-4a38-9575-3bb7e5967606');

