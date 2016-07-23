
# Creates the database
CREATE DATABASE root_quest;
USE root_quest;

# Creates the table
CREATE TABLE game (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    xpos INT(6) NOT NULL,
    ypos INT(6) NOT NULL,
    lastmove TIME(6) NOT NULL
);

INSERT INTO game (name, xpos, ypos) VALUES("player",2,2);

# Creates the user
#CREATE USER 'gameuser'@'localhost' IDENTIFIED BY 'chatpass';
#GRANT ALL PRIVILEGES ON root_quest.game TO 'gameuser'@'localhost';
#FLUSH PRIVILEGES;