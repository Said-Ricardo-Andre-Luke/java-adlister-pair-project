USE adlister_pair_project;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email    VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

select *
from users;

CREATE TABLE ads
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id      INT UNSIGNED NOT NULL,
    category     varchar(40),
    title        VARCHAR(240) NOT NULL,
    description  TEXT         NOT NULL,
    price        FLOAT UNSIGNED,
    date_created DATETIME default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    photo       VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
        ON DELETE CASCADE
);

select *
from ads;