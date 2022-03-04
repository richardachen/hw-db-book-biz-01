-- determine number of books per author
-- SELECT a.AuthorID, a.FirstName, a.LastName, a.Email, a.Phone, ba.AuthorID, ba.ISBN, b.Title, b.Genre, b.ISBN, b.PublisherID 
-- FROM author a
-- JOIN booksauthors ba
-- on a.AuthorID = ba.AuthorID
-- JOIN book b
-- ON ba.ISBN = b.ISBN

-- determine number of authors per book
-- SELECT b.Title, b.Genre, b.ISBN, b.PublisherID, ba.ISBN, ba.AuthorID, a.AuthorID, a.FirstName, a.LastName, a.Email, a.Phone 
-- FROM author a
-- JOIN booksauthors ba
-- on a.AuthorID = ba.AuthorID
-- JOIN book b
-- ON ba.ISBN = b.ISBN

-- determine number of royalties per book
-- SELECT b.Title, b.Genre, b.ISBN, b.PublisherID, r.AuthorID, r.ISBN, r.Amount
-- FROM royalties r
-- JOIN book b
-- ON r.ISBN = b.ISBN

-- determine number of royalties per author
-- SELECT a.AuthorID, a.FirstName, a.LastName, a.Email, a.Phone, r.AuthorID, r.ISBN, r.Amount 
-- FROM author a
-- JOIN royalties r
-- on a.AuthorID = r.AuthorID

-- determine number of books per genre
-- SELECT b.Title, b.Genre, b.ISBN
-- FROM book b

-- determine number of books published per publisher
-- SELECT b.Title, b.Genre, b.ISBN, b.PublisherID, p.Title
-- FROM book b
-- INNER JOIN publisher p
-- ON b.PublisherID = p.PublisherID

-- determine number of books per editor
-- SELECT e.EditorID, e.FirstName, e.LastName, e.Email, e.Phone, be.EditorID, be.ISBN, b.Title, b.Genre, b.ISBN, b.PublisherID 
-- FROM editor e
-- JOIN bookseditors be
-- on e.EditorID = be.EditorID
-- JOIN book b
-- ON be.ISBN = b.ISBN

-- determine number of editors per book
-- SELECT b.Title, b.Genre, b.ISBN, b.PublisherID, be.ISBN, be.EditorID, e.EditorID, e.FirstName, e.LastName, e.Email, e.Phone
-- FROM editor e
-- JOIN bookseditors be
-- on e.EditorID = be.EditorID
-- JOIN book b
-- ON be.ISBN = b.ISBN

-- determine number of orders per book
-- SELECT b.Title, b.Genre, b.ISBN, b.PublisherID, bo.ISBN, bo.OrderID, o.OrderID, o.CustomerID
-- FROM book b
-- JOIN booksorders bo
-- ON b.ISBN = bo.ISBN
-- JOIN ordered o
-- ON bo.OrderID = o.OrderID

-- determine number of books per order
-- SELECT o.OrderID, o.CustomerID, bo.OrderID, bo.ISBN, b.Title, b.Genre, b.ISBN, b.PublisherID
-- FROM book b
-- JOIN booksorders bo
-- ON b.ISBN = bo.ISBN
-- JOIN ordered o
-- ON bo.OrderID = o.OrderID

-- List out customer orders
-- SELECT o.OrderID, o.CustomerID, c.CustomerID, c.FirstName, c.LastName, c.Email, c.Phone
-- FROM customer c
-- INNER JOIN ordered o
-- ON o.CustomerID = c.CustomerID

-- determine number of orders per customer
-- SELECT c.CustomerID, c.FirstName, c.LastName, c.Email, c.Phone, o.OrderID, o.CustomerID
-- FROM customer c
-- INNER JOIN ordered o
-- ON o.CustomerID = c.CustomerID