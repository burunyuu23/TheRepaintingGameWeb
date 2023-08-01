INSERT INTO users_palettes (palettes_id,
                            user_id)
SELECT 1,
       '2'
WHERE NOT EXISTS (SELECT palettes_id
                  FROM users_palettes
                  WHERE palettes_id = 1
                    AND user_id =
                        '2');

INSERT INTO users_palettes (palettes_id,
                            user_id)
SELECT 1,
       '3'
WHERE NOT EXISTS (SELECT palettes_id
                  FROM users_palettes
                  WHERE palettes_id = 1
                    AND user_id =
                        '3');

INSERT INTO users_palettes (palettes_id,
                            user_id)
SELECT 2,
       '3'
WHERE NOT EXISTS (SELECT palettes_id
                  FROM users_palettes
                  WHERE palettes_id = 2
                    AND user_id = '3');