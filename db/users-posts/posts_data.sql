INSERT INTO posts (title,
                   body,
                   author)
SELECT 'Test Title',
       'Test body.',
       '11111111-1111-1111-1111111111111111'
WHERE NOT EXISTS (SELECT *
                  FROM posts
                  WHERE title = 'Test Title');

INSERT INTO posts (title,
                   body,
                   author)
SELECT 'Another Title',
       'Test body 2.',
       '11111111-1111-1111-1111111111111111'
WHERE NOT EXISTS (SELECT *
                  FROM posts
                  WHERE title = 'Another Title');

INSERT INTO posts (title,
                   body,
                   author)
SELECT 'Another one Title',
       'Test body 3.',
       '0cd6e3b6-7352-49e6-b423-7e48653e8cf0'
WHERE NOT EXISTS (SELECT *
                  FROM posts
                  WHERE title = 'Another one Title');