INSERT INTO post_tags (post_id,
                         tag_id,
                         tag_additional_name)
SELECT 1,
       2,
       NULL
WHERE NOT EXISTS (SELECT post_id, tag_id
                  FROM post_tags
                  WHERE post_id = 1 AND tag_id = 2);

INSERT INTO post_tags (post_id,
                       tag_id,
                       tag_additional_name)
SELECT 1,
       1,
       'ПОБЕДА'
WHERE NOT EXISTS (SELECT post_id, tag_id
                  FROM post_tags
                  WHERE post_id = 1 AND tag_id = 1);

INSERT INTO post_tags (post_id,
                       tag_id,
                       tag_additional_name)
SELECT 2,
       1,
       'Победа'
WHERE NOT EXISTS (SELECT post_id, tag_id
                  FROM post_tags
                  WHERE post_id = 2 AND tag_id = 1);