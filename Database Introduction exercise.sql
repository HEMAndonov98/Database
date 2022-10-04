CREATE TABLE Minions(
	minion_id INT PRIMARY KEY,
    name VARCHAR(30),
    age INT
);
CREATE TABLE Towns(
	town_id INT PRIMARY KEY,
    name VARCHAR(40)
);

ALTER TABLE Minions
ADD COLUMN town_id INT,
ADD FOREIGN KEY (town_id)
REFERENCES Towns(town_id) 
ON DELETE SET NULL;


INSERT INTO Towns
VALUES (1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna');

INSERT INTO Minions
VALUES (1, 'Kevin', 22, 1),
(2, 'Bob', 15, 3),
(3, 'Steward', NULL, 2);

DELETE FROM Minions
LIMIT 3;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Minions;
DROP TABLE IF EXISTS Towns;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE people(
	person_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    picture TEXT(65535) NULL,
    height DECIMAL(3, 2) NULL,
    weight DECIMAL(3, 2) NULL,
    gender VARCHAR(1) NOT NULL
);

CREATE TABLE users(
	user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL,
    profile_picture TEXT(65535),
    last_login_time DATETIME,
    isDeleted BIT
);

ALTER TABLE users
AUTO_INCREMENT = 100;

-- ADD 5 entries

INSERT INTO users (username, password, profile_picture, last_login_time, isDeleted)
VALUES
('Tania', 'resorce666', 'https://images.statusfacebook.com/profile_pictures/Awesome/awesome-profile-picture-95.jpg', '2012-12-12', 1);

ALTER TABLE users
CHANGE COLUMN user_id user_id BIGINT NOT NULL;

ALTER TABLE users
DROP PRIMARY KEY;

ALTER TABLE users
CHANGE COLUMN user_id user_id BIGINT AUTO_INCREMENT NOT NULL,
AUTO_INCREMENT = 104,
ADD PRIMARY KEY(user_id, username);

ALTER TABLE users
ADD CONSTRAINT Min_Password_Length CHECK  (CHAR_LENGTH(users.password) >= 5);

ALTER TABLE users
CHANGE COLUMN last_login_time last_login_time DATETIME DEFAULT CURRENT_TIMESTAMP();

ALTER TABLE users
ADD CONSTRAINT Min_username_length CHECK (CHAR_LENGTH(users.username) >= 3);

ALTER TABLE users
DROP PRIMARY KEY,
ADD PRIMARY KEY(user_id);


