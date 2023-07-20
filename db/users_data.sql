INSERT INTO users (
                      user_id,
                      image_url)
SELECT '1',
       'https://i.ibb.co/w04Prt6/c1f64245afb2.gif'
WHERE NOT EXISTS (SELECT user_id
                  FROM users
                  WHERE user_id = '1');
INSERT INTO users (
    user_id,
    image_url)
SELECT '2',
       'https://i.ibb.co/w04Prt6/c1f64245afb2.gif'
WHERE NOT EXISTS (SELECT user_id
                  FROM users
                  WHERE user_id = '2');
INSERT INTO users (
    user_id,
    image_url)
SELECT '3',
       'https://i.ibb.co/w04Prt6/c1f64245afb2.gif'
WHERE NOT EXISTS (SELECT user_id
                  FROM users
                  WHERE user_id = '3');
INSERT INTO users (
    user_id,
    image_url)
SELECT '4',
       'https://i.ibb.co/w04Prt6/c1f64245afb2.gif'
WHERE NOT EXISTS (SELECT user_id
                  FROM users
                  WHERE user_id = '4');

