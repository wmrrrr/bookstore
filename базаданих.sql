CREATE DATABASE IF NOT EXISTS bookstore;
USE bookstore;
CREATE TABLE Author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

CREATE TABLE Genre (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

CREATE TABLE Publisher (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(150) NOT NULL
);

CREATE TABLE Book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    publication_year INT CHECK (publication_year >= 0),
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    stock_quantity INT DEFAULT 0 CHECK (stock_quantity >= 0),
    genre_id INT,
    publisher_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (publisher_id) REFERENCES Publisher(publisher_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Book_Author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    employee_surname VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Sale (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATETIME NOT NULL,
    book_id INT,
    employee_id INT,
    quantity INT NOT NULL CHECK (quantity > 0),
    total_amount DECIMAL(10,2) NOT NULL CHECK (total_amount >= 0),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
        ON DELETE SET NULL
ON UPDATE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

