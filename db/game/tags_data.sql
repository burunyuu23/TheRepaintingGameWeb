INSERT INTO tags (tag_id,
                   tag_name)
SELECT 1,
       'победа'
WHERE NOT EXISTS (SELECT tag_id
                  FROM tags
                  WHERE tag_id = 1);

INSERT INTO tags (tag_id,
                  tag_name)
SELECT 2,
       'лузер'
WHERE NOT EXISTS (SELECT tag_id
                  FROM tags
                  WHERE tag_id = 2);

INSERT INTO tags (tag_id,
                  tag_name)
SELECT 3,
       'один'
WHERE NOT EXISTS (SELECT tag_id
                  FROM tags
                  WHERE tag_id = 3);