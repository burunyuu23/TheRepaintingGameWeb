INSERT INTO game_story (game_id,
                        round,
                        chosen_color,
                        step_time)
SELECT 1,
       1,
       1,
       TIMESTAMP '2023-07-19 21:18:22'
WHERE NOT EXISTS (SELECT game_id
                  FROM game_story
                  WHERE game_id = 1 AND round = 1);

INSERT INTO game_story (game_id,
                        round,
                        chosen_color,
                        step_time)
SELECT 1,
       2,
       2,
       TIMESTAMP '2023-07-19 21:18:25'
WHERE NOT EXISTS (SELECT game_id
                  FROM game_story
                  WHERE game_id = 1 AND round = 2);

INSERT INTO game_story (game_id,
                        round,
                        chosen_color,
                        step_time)
SELECT 2,
       1,
       1,
       TIMESTAMP '2023-07-19 21:18:22'
WHERE NOT EXISTS (SELECT game_id
                  FROM game_story
                  WHERE game_id = 2 AND round = 1);

INSERT INTO game_story (game_id,
                        round,
                        chosen_color,
                        step_time)
SELECT 3,
       1,
       2,
       TIMESTAMP '2023-07-19 21:18:27'
WHERE NOT EXISTS (SELECT game_id
                  FROM game_story
                  WHERE game_id = 3 AND round = 1);