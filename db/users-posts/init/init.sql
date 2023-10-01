drop table if exists users CASCADE;
CREATE TABLE IF NOT EXISTS users
(
    user_id   VARCHAR(36) PRIMARY KEY,
    profile_image_url varchar(255) NOT NULL DEFAULT 'https://i.ibb.co/LNdXxj0/default-profile.png',
    banner_image_url varchar(255) NOT NULL DEFAULT 'https://i.ibb.co/b6cZ0Rr/defalut-banner.png',
    birthdate date         NOT NULL
);

drop table if exists friends CASCADE;
CREATE TABLE IF NOT EXISTS friends
(
    who_add_user_id           VARCHAR(36) NOT NULL,
    who_should_accept_user_id VARCHAR(36) NOT NULL,
    is_accept                 BOOLEAN     NOT NULL,

    PRIMARY KEY (who_add_user_id, who_should_accept_user_id),
    FOREIGN KEY (who_add_user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (who_should_accept_user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


drop table if exists posts CASCADE;
CREATE TABLE IF NOT EXISTS posts
(
    post_id INT PRIMARY KEY generated always as identity,
    user_id VARCHAR(36),
    title   VARCHAR(255) NOT NULL,
    body    VARCHAR(255) NOT NULL,
    
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

drop table if exists post_tags CASCADE;
CREATE TABLE IF NOT EXISTS post_tags
(
    post_id             INT          NOT NULL,
    tag_id              INT          NOT NULL,
    tag_additional_name VARCHAR(255) NULL,

    PRIMARY KEY (tag_id, post_id),
    FOREIGN KEY (tag_id) REFERENCES tags(tag_id) ON DELETE CASCADE,
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE
);

drop table if exists comments CASCADE;
CREATE TABLE IF NOT EXISTS comments
(
    comment_id INT PRIMARY KEY generated always as identity,
    post_id    INT          NOT NULL,
    user_id    VARCHAR(36)  NOT NULL,
    body       VARCHAR(255) NOT NULL,

    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

drop table if exists comment_likes CASCADE;
CREATE TABLE IF NOT EXISTS comment_likes
(
    comment_id INT         NOT NULL,
    user_id    VARCHAR(36) NOT NULL,

    PRIMARY KEY (comment_id, user_id),
    FOREIGN KEY (comment_id) REFERENCES comments(comment_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

drop table if exists post_likes CASCADE;
CREATE TABLE IF NOT EXISTS post_likes
(
    post_id INT         NOT NULL,
    user_id VARCHAR(36) NOT NULL,

    PRIMARY KEY (post_id, user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);
