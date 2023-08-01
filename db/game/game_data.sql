INSERT INTO game (game_id,
                  user_id,
                        map,
                        max_rounds,
                  palettes_id,
                  is_rating,
                  is_end,
                  is_win,
                  rating,
                  start_time)
SELECT 1,
       1,
       '[
         [
           {
             "value": 0,
             "captured": true
           },
           {
             "value": 1,
             "captured": false
           }
         ],
         [
           {
             "value": 2,
             "captured": false
           },
           {
             "value": 2,
             "captured": false
           }
         ]
       ]'::jsonb,
    22,
    1,
    false,
    false,
    null,
    null,
       TIMESTAMP '2023-07-19 21:15:22'
WHERE NOT EXISTS (SELECT game_id
                  FROM game
                  WHERE game_id = 1);

INSERT INTO game (game_id,
                  user_id,
                  map,
                  max_rounds,
                  palettes_id,
                  is_rating,
                  is_end,
                  is_win,
                  rating,
                  start_time)
SELECT 2,
       2,
       '[
         [
           {
             "value": 0,
             "captured": true
           },
           {
             "value": 1,
             "captured": false
           }
         ],
         [
           {
             "value": 3,
             "captured": false
           },
           {
             "value": 2,
             "captured": false
           }
         ]
       ]'::jsonb,
       22,
       1,
       false,
       true,
       true,
       null,
       TIMESTAMP '2023-07-19 21:16:22'
WHERE NOT EXISTS (SELECT game_id
                  FROM game
                  WHERE game_id = 2);

INSERT INTO game (game_id,
                  user_id,
                  map,
                  max_rounds,
                  palettes_id,
                  is_rating,
                  is_end,
                  is_win,
                  rating,
                  start_time)
SELECT 3,
       2,
       '[
         [
           {
             "value": 0,
             "captured": true
           },
           {
             "value": 1,
             "captured": false
           }
         ],
         [
           {
             "value": 3,
             "captured": false
           },
           {
             "value": 2,
             "captured": false
           }
         ]
       ]'::jsonb,
       22,
       1,
       true,
       true,
       true,
       20,
       TIMESTAMP '2023-07-19 21:18:22'
WHERE NOT EXISTS (SELECT game_id
                  FROM game
                  WHERE game_id = 3);