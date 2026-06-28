CREATE DATABASE book_store;

USE book_store;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    category VARCHAR(50),
    price INT,
    stock INT,
    rating DECIMAL(2,1)
);

INSERT INTO books VALUES
(1,'Atomic Habits','James Clear','Self Help',550,30,4.9),
(2,'Deep Work','Cal Newport','Productivity',450,20,4.8),
(3,'Clean Code','Robert Martin','Programming',900,15,4.9),
(4,'The Alchemist','Paulo Coelho','Fiction',350,40,4.7),
(5,'Rich Dad Poor Dad','Robert Kiyosaki','Finance',500,25,4.8),
(6,'The Psychology of Money','Morgan Housel','Finance',600,18,4.9),
(7,'Harry Potter','J.K. Rowling','Fantasy',700,35,4.9),
(8,'The Hobbit','J.R.R. Tolkien','Fantasy',650,28,4.8),
(9,'SQL Cookbook','Anthony Molinaro','Programming',850,12,4.7),
(10,'Think and Grow Rich','Napoleon Hill','Self Help',400,22,4.6),
(11,'Ikigai','Hector Garcia','Self Help',480,27,4.8),
(12,'The Pragmatic Programmer','Andrew Hunt','Programming',950,10,4.9),
(13,'Zero to One','Peter Thiel','Business',520,19,4.7),
(14,'Start With Why','Simon Sinek','Business',580,17,4.8),
(15,'1984','George Orwell','Fiction',380,45,4.8);

SELECT * FROM books;

SELECT * FROM books WHERE category = 'programming';

SELECT title,price FROM books WHERE price > 600;

SELECT title,rating FROM books WHERE rating > 4.8;

SELECT title,stock FROM books WHERE stock < 20;

SELECT category,COUNT(*) FROM books GROUP BY category;

SELECT category,AVG(price) AS average_price FROM books GROUP BY category;

SELECT category,MAX(price) AS highest_price FROM books GROUP BY category;

SELECT category,MIN(price) AS lowest_price FROM books GROUP BY category;

SELECT category,SUM(price) AS total_price FROM books GROUP BY category;

SELECT category,AVG(price) AS average_price FROM books GROUP BY category HAVING average_price > 600;

SELECT category,COUNT(*) AS book_count FROM books GROUP BY category HAVING book_count > 2;

SELECT category,SUM(stock) AS total_stock FROM books GROUP BY category HAVING total_stock > 50;

SELECT category,MAX(rating) AS top_rating FROM books GROUP BY category HAVING top_rating > 4.8;

SELECT category,SUM(price) AS total_price FROM books GROUP BY category HAVING total_price > 1500;

SELECT category,AVG(price) AS average_price FROM books WHERE rating>4.7 GROUP BY category;

SELECT category,SUM(stock) AS total_stock FROM books WHERE stock>15 GROUP BY category HAVING total_stock > 40;

SELECT category FROM books WHERE price > 500 GROUP BY category HAVING AVG(rating) > 4.8;

SELECT category ,AVG(price) AS highest_avg_price FROM books GROUP BY category ORDER BY highest_avg_price DESC LIMIT 1;

SELECT category ,AVG(price) AS lowest_avg_price FROM books GROUP BY category ORDER BY AVG(price) LIMIT 1;

SELECT category,stock AS least_stock  FROM books ORDER BY stock LIMIT 1;

SELECT category,SUM(stock) AS total_highest_stock FROM books GROUP BY category ORDER BY total_highest_stock DESC LIMIT 1;


















