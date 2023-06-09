CREATE DATABASE H3rmesBBDD;
USE H3rmesBBDD;

CREATE USER 'h3rmes'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON H3rmesBBDD.* TO 'h3rmes'@'localhost';

CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	sent_messages INT NOT NULL DEFAULT 0,
	PRIMARY KEY (id)
);

CREATE TABLE received_emails (
	id INT NOT NULL AUTO_INCREMENT,
	receiver_id INT NOT NULL,
	sender_name VARCHAR(255) NOT NULL,
	sender_email VARCHAR(255) NOT NULL,
	subject VARCHAR(255) NOT NULL,
	content TEXT NOT NULL,
	sent_date DATETIME NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (receiver_id)
    	REFERENCES users(id)
);

CREATE TABLE sent_messages (
	id INT NOT NULL AUTO_INCREMENT,
	sender VARCHAR(255) NOT NULL,
	recipient VARCHAR(255) NOT NULL,
	subject VARCHAR(255) NOT NULL,
	body TEXT NOT NULL,
	timestamp DATETIME NOT NULL,
	PRIMARY KEY (id)
);


