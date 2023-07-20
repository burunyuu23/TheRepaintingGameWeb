
INSERT INTO post_likes (post_id,
                           user_id
)
SELECT 1,
       '1'
WHERE NOT EXISTS (SELECT post_id,user_id
                  FROM post_likes
                  WHERE post_id = 1 AND user_id = '1');
INSERT INTO post_likes (post_id,
                        user_id
)
SELECT 1,
       '2'
WHERE NOT EXISTS (SELECT post_id,user_id
                  FROM post_likes
                  WHERE post_id = 1 AND user_id = '2');
INSERT INTO post_likes (post_id,
                        user_id
)
SELECT 1,
       '3'
WHERE NOT EXISTS (SELECT post_id,user_id
                  FROM post_likes
                  WHERE post_id = 1 AND user_id = '3');