CREATE TABLE users
(
    user_id VARCHAR(36) PRIMARY KEY,
    profile_image_url VARCHAR(255) NOT NULL,
    banner_image_url VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL
);


CREATE TABLE friends
(
    who_add_user_id VARCHAR(36) NOT NULL,
    who_should_accept_user_id VARCHAR(36) NOT NULL,
    is_accept BOOLEAN NOT NULL,

    PRIMARY KEY (who_add_user_id, who_should_accept_user_id),
    FOREIGN KEY (who_add_user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (who_should_accept_user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


CREATE TABLE posts
(
    post_id INT PRIMARY KEY,
    user_id VARCHAR(36),
    title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL,
    
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


CREATE TABLE tags
(
    tag_id INT,
    tag_name VARCHAR(255),
    
    PRIMARY KEY (tag_id),
);

CREATE TABLE post_tags
(
    post_id INT NOT NULL,
    tag_id INT NOT NULL,
    tag_additional_name VARCHAR(255) NULL,

    PRIMARY KEY (tag_id, post_id),
    FOREIGN KEY (tag_id) REFERENCES tags(tag_id) ON DELETE CASCADE,
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE
);


CREATE TABLE comments
(
    comment_id INT PRIMARY KEY,
    post_id INT NOT NULL,
    user_id VARCHAR(36) NOT NULL,
    body VARCHAR(255) NOT NULL,

    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


CREATE TABLE comment_likes
(
    comment_id INT NOT NULL,
    user_id VARCHAR(36) NOT NULL,

    PRIMARY KEY (comment_id, user_id),
    FOREIGN KEY (comment_id) REFERENCES comments(comment_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


CREATE TABLE post_likes
(
    post_id INT NOT NULL,
    user_id VARCHAR(36) NOT NULL,

    PRIMARY KEY (post_id, user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);