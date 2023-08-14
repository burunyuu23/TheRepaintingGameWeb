
INSERT INTO post_likes (post_id,
                           user_id
)
SELECT 1,
       '11111111-1111-1111-1111111111111111'
WHERE NOT EXISTS (SELECT post_id,user_id
                  FROM post_likes
                  WHERE post_id = 1 AND user_id = '11111111-1111-1111-1111111111111111');
INSERT INTO post_likes (post_id,
                        user_id
)
SELECT 1,
       '22222222-2222-2222-2222222222222222'
WHERE NOT EXISTS (SELECT post_id,user_id
                  FROM post_likes
                  WHERE post_id = 1 AND user_id = '22222222-2222-2222-2222222222222222');
INSERT INTO post_likes (post_id,
                        user_id
)
SELECT 1,
       '22222222-2222-2222-2222222222222222'
WHERE NOT EXISTS (SELECT post_id,user_id
                  FROM post_likes
                  WHERE post_id = 1 AND user_id = '22222222-2222-2222-2222222222222222');