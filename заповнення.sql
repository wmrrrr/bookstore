INSERT INTO Genre (genre_name) VALUES
('Fantasy'),
('Science Fiction'),
('Mystery'),
('Romance'),
('Non-fiction'),
('Horror');

INSERT INTO Author (author_name) VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('Agatha Christie'),
('Stephen King'),
('Isaac Asimov'),
('Jane Austen');

INSERT INTO Publisher (publisher_name) VALUES
('Penguin Random House'),
('HarperCollins'),
('Simon & Schuster'),
('Hachette Book Group'),
('Macmillan Publishers');

INSERT INTO Book (title, publication_year, price, stock_quantity, genre_id, publisher_id) VALUES
('Harry Potter and the Philosopher''s Stone', 1997, 19.99, 50, 1, 1),
('A Game of Thrones', 1996, 25.50, 30, 1, 2),
('Murder on the Orient Express', 1934, 14.99, 20, 3, 3),
('Pride and Prejudice', 1813, 9.99, 40, 4, 4),
('Foundation', 1951, 18.50, 25, 2, 5),
('The Shining', 1977, 22.00, 15, 6, 1);

INSERT INTO Book_Author (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 6),
(5, 5),
(6, 4);

INSERT INTO Employee (employee_name, employee_surname, position, email, phone) VALUES
('Olga', 'Babiy', 'Sales Manager', 'olga.babiy@bookstore.com', '+380501112233'),
('Ivan', 'Petrov', 'Cashier', 'ivan.petrov@bookstore.com', '+380671234567'),
('Maria', 'Kovalenko', 'Store Assistant', 'maria.kovalenko@bookstore.com', '+380981112233');

INSERT INTO Sale (sale_date, book_id, employee_id, quantity, total_amount) VALUES
('2025-09-28 10:30:00', 1, 1, 2, 39.98),
('2025-09-28 12:15:00', 3, 2, 1, 14.99),
('2025-09-29 14:00:00', 2, 1, 1, 25.50),
('2025-09-30 16:45:00', 5, 3, 3, 55.50),
('2025-09-30 17:30:00', 4, 2, 2, 19.98),
('2025-10-01 09:00:00', 6, 1, 1, 22.00);