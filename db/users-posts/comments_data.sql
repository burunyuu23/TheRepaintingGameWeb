INSERT INTO comments (post_id,
                      user_id,
                      body)
SELECT 1,
       '0cd6e3b6-7352-49e6-b423-7e48653e8cf0',
       'ТЫ ЖУЛЬНИЧАЛ, КОЧЕРЫЖКА'
WHERE NOT EXISTS (SELECT body
                  FROM comments
                  WHERE body = 'ТЫ ЖУЛЬНИЧАЛ, КОЧЕРЫЖКА');

INSERT INTO comments (post_id,
                      user_id,
                      body)
SELECT 1,
       '11111111-1111-1111-1111111111111111',
       'ясно хакер'
WHERE NOT EXISTS (SELECT body
                  FROM comments
                  WHERE body = 'ясно хакер');

INSERT INTO comments (post_id,
                      user_id,
                      body)
SELECT 2,
       '11111111-1111-1111-1111111111111111',
       'вонючи'
WHERE NOT EXISTS (SELECT body
                  FROM comments
                  WHERE body = 'вонючи');