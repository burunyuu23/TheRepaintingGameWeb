INSERT INTO comment_likes (comment_id,
                      user_id
                      )
SELECT 1,
       '2'
WHERE NOT EXISTS (SELECT comment_id,user_id
                  FROM comments
                  WHERE comment_id = 1 AND user_id = '2');
INSERT INTO comment_likes (comment_id,
                           user_id
)
SELECT 1,
       '3'
WHERE NOT EXISTS (SELECT comment_id,user_id
                  FROM comments
                  WHERE comment_id = 1 AND user_id = '3');

INSERT INTO comment_likes (comment_id,
                           user_id
)
SELECT 1,
       '1'
WHERE NOT EXISTS (SELECT comment_id,user_id
                  FROM comments
                  WHERE comment_id = 1 AND user_id = '1');