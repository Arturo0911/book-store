CREATE TABLE users (
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    user_identificator VARCHAR(20) NOT NULL,
    user_name VARCHAR(100) NOT NULL,
    user_lname VARCHAR(100) NOT NULL,
    user_email VARCHAR(100) UNIQUE NOT NULL,
    user_password VARCHAR(100) NOT NULL,
    user_created_at timestamp NOT NULL DEFAULT current_timestamp,
    user_state INT default 1
);

CREATE TABLE books (
    book_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(100) NOT NULL,
    book_author_name VARCHAR(100) NOT NULL,
    book_publisher_name VARCHAR(255) NOT NULL,
    book_inserted_time timestamp NOT NULL DEFAULT current_timestamp,
    book_published VARCHAR(30) NOT NULL,
    book_state VARCHAR(30) NOT NULL,
    book_price numeric(19.0)
);

CREATE TABLE stock (
    stock_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    stock_item TEXt NOT NULL,
    stock_number INT NOT NULL,
    stock_description TEXT NOT NULL,
    stock_book_id INT(11) NOT NULL,
    CONSTRAINT fk_stock_book FOREIGN KEY (stock_book_id) REFERENCES books(book_id)
);

CREATE TABLE rent (
    rent_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    rent_book_id INT(11) NOT NULL,
    rent_user_id INT(11) NOT NULL,
    rent_user_name VARCHAR(100) NOT NULL,
    rent_user_lname VARCHAR(100) NOT NULL,
    rent_state  VARCHAR(30) NOT NULL,
    rent_date_delivery DATE,
    rent_date_receptio DATE,
    rent_days_left int default 0,
    CONSTRAINT fk_rent_book FOREIGN KEY (rent_book_id) REFERENCES books(book_id),
    CONSTRAINT fk_rent_user FOREIGN KEY (rent_user_id) REFERENCES users(user_id)
);

CREATE TABLE category (
    cat_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    cat_name VARCHAR(30) NOT NULL,
    cat_description TEXT NOT NULL,
    cat_book_id INT(11) NOT NULL,
    cat_book_name VARCHAR(100) NOT NULL,
    CONSTRAINT fk_cat_book FOREIGN KEY (cat_book_id) REFERENCES books(book_id)
);

CREATE TABLE editorial(
    edit_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    edit_name VARCHAR(30) NOT NULL,
    edit_description TEXT NOT NULL,
    edit_book_id INT(11) NOT NULL,
    edit_book_name VARCHAR(100) NOT NULL,
    CONSTRAINT fk_edit_book FOREIGN KEY (edit_book_id) REFERENCES books(book_id)
);


DROP DATABASE bookstore;
CREATE DATABASE bookstore;
USE bookstore;



INSERT INTO users (user_identificator, user_name, 
    user_lname, user_email,
    user_password, user_preferences) values ("0918237421", "Arturo Francesco", "Negreiros Samanez", "arthur@arthur.com", "123456789", "hentai");


INSERT INTO books (book_title, book_author_name, book_publisher_name,
book_published, book_state, book_price) values 
("The Chihiro Travel", "un chino", "otro chino", "2000", "new", 25);