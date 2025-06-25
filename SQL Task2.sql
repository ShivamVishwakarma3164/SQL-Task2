Use LibraryDB;

INSERT INTO Author (name) VALUES 
('J.K. Rowling'),
('George Orwell'),
('J.R.R. Tolkien');


INSERT INTO Book (title, publication_year) VALUES 
('Harry Potter', 1997),
('1984', 1949),
('The Hobbit', 1937),
('Unknown Book', NULL);  -- Missing publication year

INSERT INTO Member (name, email) VALUES 
('Alice', 'alice@example.com'),
('Bob', NULL),  -- Missing email
('Charlie', 'charlie@example.com');


INSERT INTO Book_Author (book_id, author_id) VALUES 
(1, 1), -- Harry Potter by Rowling
(2, 2), -- 1984 by Orwell
(3, 3), -- The Hobbit by Tolkien
(4, 1); -- Unknown Book by Rowling

INSERT INTO Borrow (book_id, member_id, borrow_date, return_date) VALUES 
(1, 1, '2025-06-01', '2025-06-15'),
(2, 2, '2025-06-05', NULL),  -- Not yet returned
(3, 3, '2025-06-10', '2025-06-20');


SET SQL_SAFE_UPDATES = 0;



UPDATE Member
SET email = 'bob@example.com'
WHERE name = 'Bob';

UPDATE Book
SET publication_year = 2000
WHERE title = 'Unknown Book';

DELETE FROM Member
WHERE email = 'wrong@example.com';


DELETE FROM Borrow
WHERE borrow_id = 3;

SELECT * FROM Author;
SELECT * FROM Book;
SELECT * FROM Member;
SELECT * FROM Borrow;



