drop table if exists users CASCADE;
CREATE TABLE IF NOT EXISTS users
(
    user_id VARCHAR(36) PRIMARY KEY,
    image_url varchar(255) NOT NULL
);

drop table if exists palettes CASCADE;
CREATE TABLE IF NOT EXISTS palettes
(
    palettes_id     INT PRIMARY KEY,
    palette         JSONB       NOT NULL,
    created_user_id VARCHAR(36) NOT NULL,

    FOREIGN KEY (created_user_id) REFERENCES users (user_id) ON DELETE CASCADE
);

drop table if exists game CASCADE;
CREATE TABLE IF NOT EXISTS game
(
    game_id     INT PRIMARY KEY,
    user_id     VARCHAR(36) NOT NULL,
    map         JSONB       NOT NULL,
    max_rounds  INT         NOT NULL,
    palettes_id INT         NOT NULL,
    is_rating   BOOLEAN     NOT NULL,
    is_end      BOOLEAN     NOT NULL DEFAULT FALSE,
    is_win      BOOLEAN     NULL,
    rating      INT         NULL,
    start_time  TIMESTAMP   NOT NULL,

    FOREIGN KEY (palettes_id) REFERENCES palettes (palettes_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE
);

drop table if exists game_story CASCADE;
CREATE TABLE IF NOT EXISTS game_story
(
    game_id      INT       NOT NULL,
    round        INT       NOT NULL,
    chosen_color INT       NOT NULL,
    step_time    TIMESTAMP NOT NULL,

    PRIMARY KEY (game_id, round),
    FOREIGN KEY (game_id) REFERENCES game (game_id) ON DELETE CASCADE
);

drop table if exists users_palettes CASCADE;
CREATE TABLE IF NOT EXISTS users_palettes
(
    palettes_id INT         NOT NULL,
    user_id     VARCHAR(36) NOT NULL,

    PRIMARY KEY (user_id, palettes_id),
    FOREIGN KEY (palettes_id) REFERENCES palettes (palettes_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE
);

drop table if exists friends CASCADE;
CREATE TABLE IF NOT EXISTS friends
(
    who_add_user_id    VARCHAR(36) NOT NULL,
    who_should_accept_user_id VARCHAR(36) NOT NULL,
    is_accept          BOOLEAN     NOT NULL,

    PRIMARY KEY (who_add_user_id, who_should_accept_user_id),
    FOREIGN KEY (who_add_user_id) REFERENCES users (user_id) ON DELETE CASCADE,
    FOREIGN KEY (who_should_accept_user_id) REFERENCES users (user_id) ON DELETE CASCADE
);


drop table if exists posts CASCADE;
CREATE TABLE IF NOT EXISTS posts
(
    post_id INT PRIMARY KEY,
    title   VARCHAR(255) NOT NULL,
    body    VARCHAR(255) NOT NULL
);

drop table if exists tags CASCADE;
CREATE TABLE IF NOT EXISTS tags
(
    tag_id   INT PRIMARY KEY,
    tag_name VARCHAR(255) NOT NULL
);


drop table if exists users_posts CASCADE;
CREATE TABLE IF NOT EXISTS users_posts
(
    user_id VARCHAR(36),
    post_id INT NOT NULL,

    PRIMARY KEY (user_id, post_id),
    FOREIGN KEY (post_id) REFERENCES posts (post_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE
);

drop table if exists post_tags CASCADE;
CREATE TABLE IF NOT EXISTS post_tags
(
    post_id             INT          NOT NULL,
    tag_id              INT          NOT NULL,
    tag_additional_name VARCHAR(255) NULL,

    PRIMARY KEY (tag_id, post_id),
    FOREIGN KEY (tag_id) REFERENCES tags (tag_id) ON DELETE CASCADE,
    FOREIGN KEY (post_id) REFERENCES posts (post_id) ON DELETE CASCADE
);

drop table if exists comments CASCADE;
CREATE TABLE IF NOT EXISTS comments
(
    comment_id INT PRIMARY KEY,
    post_id    INT          NOT NULL,
    user_id    VARCHAR(36)  NOT NULL,
    body       VARCHAR(255) NOT NULL,

    FOREIGN KEY (post_id) REFERENCES posts (post_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE
);

drop table if exists comment_likes CASCADE;
CREATE TABLE IF NOT EXISTS comment_likes
(
    comment_id INT         NOT NULL,
    user_id    VARCHAR(36) NOT NULL,

    PRIMARY KEY (comment_id, user_id),
    FOREIGN KEY (comment_id) REFERENCES comments (comment_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE
);

drop table if exists post_likes CASCADE;
CREATE TABLE IF NOT EXISTS post_likes
(
    post_id INT         NOT NULL,
    user_id VARCHAR(36) NOT NULL,

    PRIMARY KEY (post_id, user_id),
    FOREIGN KEY (post_id) REFERENCES posts (post_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE
);


