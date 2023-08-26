INSERT INTO comment_likes (comment_id,
                           user_id)
SELECT 1,
       '22222222-2222-2222-2222222222222222'
WHERE NOT EXISTS (SELECT comment_id, user_id
                  FROM comment_likes
                  WHERE comment_id = 1
                    AND user_id = '22222222-2222-2222-2222222222222222');

INSERT INTO comment_likes (comment_id,
                           user_id)
SELECT 1,
       '11111111-1111-1111-1111111111111111'
WHERE NOT EXISTS (SELECT comment_id, user_id
                  FROM comment_likes
                  WHERE comment_id = 1
                    AND user_id = '11111111-1111-1111-1111111111111111');

INSERT INTO comment_likes (comment_id,
                           user_id)
SELECT 1,
       '11111111-1111-1111-1111111111111111'
WHERE NOT EXISTS (SELECT comment_id, user_id
                  FROM comment_likes
                  WHERE comment_id = 1
                    AND user_id = '11111111-1111-1111-1111111111111111');