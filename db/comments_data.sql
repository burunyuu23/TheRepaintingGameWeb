INSERT INTO comments (comment_id,
                       post_id,
                       user_id,
                       body)
SELECT 1,
       1,
       '2',
       'ТЫ ЖУЛЬНИЧАЛ, КОЧЕРЫЖКА'
WHERE NOT EXISTS (SELECT comment_id
                  FROM comments
                  WHERE comment_id = 1);

INSERT INTO comments (comment_id,
                      post_id,
                      user_id,
                      body)
SELECT 2,
       1,
       '1',
       'ясно хакер'
WHERE NOT EXISTS (SELECT comment_id
                  FROM comments
                  WHERE comment_id = 2);

INSERT INTO comments (comment_id,
                      post_id,
                      user_id,
                      body)
SELECT 3,
       2,
       '1',
       'вонючи'
WHERE NOT EXISTS (SELECT comment_id
                  FROM comments
                  WHERE comment_id = 3);