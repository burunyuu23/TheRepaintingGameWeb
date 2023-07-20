INSERT INTO palettes (palettes_id,
                      palette,
                      created_user_id)
SELECT '1',
       '[
         {
           "id": 0,
           "hexCode": "#ffffff"
         },
         {
           "id": 1,
           "hexCode": "#ffffff"
         },
         {
           "id": 2,
           "hexCode": "#ffffff"
         },
         {
           "id": 3,
           "hexCode": "#ffffff"
         },
         {
           "id": 4,
           "hexCode": "#ffffff"
         },
         {
           "id": 5,
           "hexCode": "#ffffff"
         }
       ]'::jsonb,
       '1'
WHERE NOT EXISTS (SELECT palettes_id
                  FROM palettes
                  WHERE palettes_id = 0);
INSERT INTO palettes (palettes_id,
                      palette,
                      created_user_id)
SELECT '2',
       '[
         {
           "id": 0,
           "hexCode": "#ffffff"
         },
         {
           "id": 1,
           "hexCode": "#ffffff"
         },
         {
           "id": 2,
           "hexCode": "#ffffff"
         },
         {
           "id": 3,
           "hexCode": "#ffffff"
         },
         {
           "id": 4,
           "hexCode": "#ffffff"
         },
         {
           "id": 5,
           "hexCode": "#ffffff"
         }
       ]'::jsonb,
       '1'
WHERE NOT EXISTS (SELECT palettes_id
                  FROM palettes
                  WHERE palettes_id = 2);
INSERT INTO palettes (palettes_id,
                      palette,
                      created_user_id)
SELECT '3',
       '[
         {
           "id": 0,
           "hexCode": "#ffffff"
         },
         {
           "id": 1,
           "hexCode": "#ffffff"
         },
         {
           "id": 2,
           "hexCode": "#ffffff"
         },
         {
           "id": 3,
           "hexCode": "#ffffff"
         },
         {
           "id": 4,
           "hexCode": "#ffffff"
         },
         {
           "id": 5,
           "hexCode": "#ffffff"
         }
       ]'::jsonb,
       '2'
WHERE NOT EXISTS (SELECT palettes_id
                  FROM palettes
                  WHERE palettes_id = 3);