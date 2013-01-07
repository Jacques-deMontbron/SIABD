-- Initialisation if needed --
 
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS announces_read;
DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS subscriptions;
DROP TABLE IF EXISTS logins;
DROP TABLE IF EXISTS themes;
DROP TABLE IF EXISTS users;
 
-- Tables definition --
 
CREATE TABLE users (
        id_user INTEGER NOT NULL AUTO_INCREMENT,
        user_rank VARCHAR(15) NOT NULL,
        rights INTEGER NOT NULL,
        surname VARCHAR(30) NOT NULL,
        name VARCHAR(30) NOT NULL,
        PRIMARY KEY(id_user)
);
 
CREATE TABLE themes (
        id_theme INTEGER NOT NULL AUTO_INCREMENT,
        title VARCHAR(128) NOT NULL,
        PRIMARY KEY(id_theme)
);
 
CREATE TABLE logins (
        id_login INTEGER NOT NULL AUTO_INCREMENT,
        id_user INTEGER NOT NULL,
        password VARCHAR(100),
        PRIMARY KEY(id_login),
        FOREIGN KEY(id_user) REFERENCES users(id_user)
);
 
CREATE TABLE subscriptions (
        id_sub INTEGER NOT NULL AUTO_INCREMENT,
        id_user INTEGER NOT NULL,
        id_theme INTEGER NOT NULL,
        PRIMARY KEY(id_sub),
        FOREIGN KEY(id_user) REFERENCES users(id_user),
        FOREIGN KEY(id_theme) REFERENCES themes(id_theme)
);
 
CREATE TABLE messages (
        id_message INTEGER NOT NULL AUTO_INCREMENT,
        id_user INTEGER NOT NULL,
        id_theme INTEGER NOT NULL,
        date_post DATETIME NOT NULL,
		title VARCHAR(256),
        answer_to INTEGER NOT NULL,
        is_announce BOOLEAN NOT NULL,
        is_news BOOLEAN NOT NULL,
        is_censored BOOLEAN NOT NULL,
        content TEXT,
        PRIMARY KEY(id_message),
        FOREIGN KEY(id_user) REFERENCES users(id_user),
        FOREIGN KEY(id_theme) REFERENCES themes(id_theme)
);
 
CREATE TABLE announces_read (
        id_read INTEGER NOT NULL AUTO_INCREMENT,
        id_user INTEGER NOT NULL,
        id_message INTEGER NOT NULL,
        PRIMARY KEY(id_read),
        FOREIGN KEY(id_user) REFERENCES users(id_user),
        FOREIGN KEY(id_message) REFERENCES messages(id_message)
);
 
CREATE TABLE comments (
        id_comment INTEGER NOT NULL AUTO_INCREMENT,
        id_message INTEGER NOT NULL,
        id_user INTEGER NOT NULL,
        date_post DATETIME NOT NULL,
        content TEXT,
        PRIMARY KEY(id_comment),
        FOREIGN KEY(id_message) REFERENCES messages(id_message),
        FOREIGN KEY(id_user) REFERENCES users(id_user)
);
 
CREATE TABLE likes (
        id_like INTEGER NOT NULL AUTO_INCREMENT,
        id_message INTEGER NOT NULL,
        id_user INTEGER NOT NULL,
        PRIMARY KEY(id_like),
        FOREIGN KEY(id_message) REFERENCES messages(id_message),
        FOREIGN KEY(id_user) REFERENCES users(id_user)
);
