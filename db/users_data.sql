INSERT INTO users (
                      user_id,
                      image_url)
SELECT '0cd6e3b6-7352-49e6-b423-7e48653e8cf0',
       'https://i.ibb.co/2qsCvXy/2023-07-13-13-49.png'
WHERE NOT EXISTS (SELECT user_id
                  FROM users
                  WHERE user_id = '0cd6e3b6-7352-49e6-b423-7e48653e8cf0');

