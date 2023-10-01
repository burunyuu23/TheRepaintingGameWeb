CREATE TABLE users
(
    user_id varchar(36),

    PRIMARY KEY (user_id),
);

CREATE TABLE palettes
(
    palettes_id     INT PRIMARY KEY,
    palette         jsonb       NOT NULL,
    created_user_id VARCHAR(36) NOT NULL,

    FOREIGN KEY (created_user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE non_rating_game
(
    game_id     varchar(255) PRIMARY KEY,
    user_id     VARCHAR(36) NOT NULL,
    map         jsonb       NOT NULL,
    max_rounds  INT         NOT NULL,
    palettes_id INT         NULL,
    is_end      BOOLEAN     NOT NULL DEFAULT FALSE,
    is_win      BOOLEAN     NULL,
    start_time  TIMESTAMP   NOT NULL,

    FOREIGN KEY (palettes_id) REFERENCES palettes(palettes_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE rating_game
(
    game_id     varchar(255) PRIMARY KEY,
    user_id     VARCHAR(36) NOT NULL,
    map         jsonb       NOT NULL,
    palettes_id INT         NULL,
    is_end      BOOLEAN     NOT NULL DEFAULT FALSE,
    is_win      BOOLEAN     NULL,
    rating      INT         NULL,
    start_time  TIMESTAMP   NOT NULL,

    FOREIGN KEY (palettes_id) REFERENCES palettes(palettes_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE non_rating_game_story
(
    game_id      varchar(255) NOT NULL,
    round_map    jsonb        NOT NULL,
    round        INT          NOT NULL,
    chosen_color INT          NOT NULL,
    step_time    TIMESTAMP    NOT NULL,

    PRIMARY KEY (game_id, round),
    FOREIGN KEY (game_id) REFERENCES non_rating_game(game_id) ON DELETE CASCADE
);

CREATE TABLE rating_game_story
(
    game_id       varchar(255) NOT NULL,
    round_map     jsonb        NOT NULL,
    round         INT          NOT NULL,
    rating_change INT          NOT NULL,
    chosen_color  INT          NOT NULL,
    step_time     TIMESTAMP    NOT NULL,

    PRIMARY KEY (game_id, round),
    FOREIGN KEY (game_id) REFERENCES rating_game(game_id) ON DELETE CASCADE
);

CREATE TABLE users_palettes
(
    palettes_id INT         NOT NULL,
    user_id     VARCHAR(36) NOT NULL,

    PRIMARY KEY (user_id, palettes_id),
    FOREIGN KEY (palettes_id) REFERENCES palettes(palettes_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


