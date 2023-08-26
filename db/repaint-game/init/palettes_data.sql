INSERT INTO palettes (palettes_id,
                      palette,
                      created_user_id)
SELECT '0',
       '[
         {
           "id": 0,
           "hexCode": "#a5260a"
         },
         {
           "id": 1,
           "hexCode": "#f36223"
         },
         {
           "id": 2,
           "hexCode": "#ff9218"
         },
         {
           "id": 3,
           "hexCode": "#3caa3c"
         },
         {
           "id": 4,
           "hexCode": "#1fcecb"
         },
         {
           "id": 5,
           "hexCode": "#7442c8"
         }
       ]'::jsonb,
       '559cf93b-36ea-4a38-9575-3bb7e5967606'
WHERE NOT EXISTS (SELECT palettes_id
                  FROM palettes
                  WHERE palettes_id = 0);

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
       '559cf93b-36ea-4a38-9575-3bb7e5967606'
WHERE NOT EXISTS (SELECT palettes_id
                  FROM palettes
                  WHERE palettes_id = 1);