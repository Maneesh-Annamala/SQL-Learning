CREATE DATABASE library;

USE library;

CREATE TABLE book(
book_id INT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
author VARCHAR(100),
price INT CHECK (price > 0),
stock INT CHECK (stock > 0)
);

INSERT INTO book(book_id,title,author,price,stock)
VALUES
(1,'Great','maneesh',200,5),
(2,'Born With Fire','Virat' ,1000,10),
(3,'Cricket','Sikhar Dawan',800,9),
(4,'harry potter','rowlin',1200,3),
(5,'One Piece','Oda',999,50);

SELECT * FROM book WHERE price > 500;

SELECT * FROM book ORDER BY price DESC;

UPDATE book 
SET price = 500 
WHERE book_id = 1;

DELETE FROM book
WHERE book_id = 3;

SELECT COUNT( * ) FROM book;

