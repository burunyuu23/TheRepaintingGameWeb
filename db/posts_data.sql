INSERT INTO posts (post_id,
                     title,
                     body)
SELECT 1,
       'Test Title',
       'Test body.'
WHERE NOT EXISTS (SELECT post_id
                  FROM posts
                  WHERE post_id = 1);

INSERT INTO posts (post_id,
                   title,
                   body)
SELECT 2,
       'Another Title',
       'Test body 2.'
WHERE NOT EXISTS (SELECT post_id
                  FROM posts
                  WHERE post_id = 2);

INSERT INTO posts (post_id,
                   title,
                   body)
SELECT 3,
       'Another one Title',
       'Test body 3.'
WHERE NOT EXISTS (SELECT post_id
                  FROM posts
                  WHERE post_id = 3);