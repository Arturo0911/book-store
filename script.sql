CREATE DATABASE bookstore;


CREATE TABLE users (
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    user_lname VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    preferences VARCHAR(100) NOT NULL,
    state INT default 1
);


CREATE TABLE books (
    book_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(100) NOT NULL,
    author_name VARCHAR(100) NOT NULL,
    publisher_name VARCHAR(255) NOT NULL,
    book_published datetime,
    price numeric(19.0)
);