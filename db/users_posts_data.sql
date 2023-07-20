INSERT INTO users_posts (user_id,
                         post_id)
SELECT '1',
       1
WHERE NOT EXISTS (SELECT user_id, post_id
                  FROM users_posts
                  WHERE user_id = '1' AND post_id = 1);

INSERT INTO users_posts (user_id,
                         post_id)
SELECT '1',
       2
WHERE NOT EXISTS (SELECT user_id, post_id
                  FROM users_posts
                  WHERE user_id = '1' AND post_id = 2);

INSERT INTO users_posts (user_id,
                         post_id)
SELECT '2',
       3
WHERE NOT EXISTS (SELECT user_id, post_id
                  FROM users_posts
                  WHERE user_id = '2' AND post_id = 3);