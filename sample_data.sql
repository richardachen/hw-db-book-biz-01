INSERT INTO `book` VALUES('Hello World', 'Education', 1234567890, 1);
INSERT INTO `book` VALUES('Knowing God', 'Spiritual', 2345678900, 2);
INSERT INTO `book` VALUES('Mr. Sam''s Day', 'Children', 3456789000, 3);

INSERT INTO `author` VALUES(1, 'Lebron', 'James', 'lebron@gmail.com', 9876543210);
INSERT INTO `author` VALUES(2, 'Kevin', 'Love', 'klove@gmail.com', 8765432109);
INSERT INTO `author` VALUES(3, 'Mickey', 'Mouse', 'mickey@gmail.com', 7654321098);
INSERT INTO `author` VALUES(4, 'Michael', 'Jordan', 'mj@gmail.com', 6543210987);
INSERT INTO `author` VALUES(5, 'Bigfoot', 'Saskatchewan', 'bigfoot@gmail.com', 5432109876);

INSERT INTO `royalties` VALUES(1234567890, 1, 1.00);
INSERT INTO `royalties` VALUES(1234567890, 3, 2.50);
INSERT INTO `royalties` VALUES(2345678900, 1, 1.50);
INSERT INTO `royalties` VALUES(2345678900, 2, 10.00);
INSERT INTO `royalties` VALUES(2345678900, 3, 20.00);
INSERT INTO `royalties` VALUES(2345678900, 4, 5.25);
INSERT INTO `royalties` VALUES(2345678900, 5, 3.75);
INSERT INTO `royalties` VALUES(3456789000, 2, 1.00);
INSERT INTO `royalties` VALUES(3456789000, 5, 2.00);

INSERT INTO `editor` VALUES(1, 'Klay', 'Thompson', 'klay@gmail.com', 1357902468);
INSERT INTO `editor` VALUES(2, 'Stephen', 'Curry', 'steph@gmail.com', 8642097531);
INSERT INTO `editor` VALUES(3, 'Payton', 'Pritchard', 'prabbit@gmail.com', 9753186420);

INSERT INTO `booksauthors` VALUES(1234567890, 1);
INSERT INTO `booksauthors` VALUES(1234567890, 3);
INSERT INTO `bookseditors` VALUES(1234567890, 2);
INSERT INTO `booksorders` VALUES(1234567890, 3);
INSERT INTO `booksorders` VALUES(1234567890, 4);
INSERT INTO `booksorders` VALUES(1234567890, 5);
INSERT INTO `booksauthors` VALUES(2345678900, 1);
INSERT INTO `booksauthors` VALUES(2345678900, 2);
INSERT INTO `booksauthors` VALUES(2345678900, 3);
INSERT INTO `booksauthors` VALUES(2345678900, 4);
INSERT INTO `booksauthors` VALUES(2345678900, 5);
INSERT INTO `bookseditors` VALUES(2345678900, 3);
INSERT INTO `booksorders` VALUES(2345678900, 1);
INSERT INTO `booksorders` VALUES(2345678900, 2);
INSERT INTO `booksorders` VALUES(2345678900, 4);
INSERT INTO `booksauthors` VALUES(3456789000, 2);
INSERT INTO `booksauthors` VALUES(3456789000, 5);
INSERT INTO `bookseditors` VALUES(3456789000, 1);
INSERT INTO `bookseditors` VALUES(3456789000, 2);
INSERT INTO `booksorders` VALUES(3456789000, 1);
INSERT INTO `booksorders` VALUES(3456789000, 3);
INSERT INTO `booksorders` VALUES(3456789000, 4);
INSERT INTO `booksorders` VALUES(3456789000, 5);
INSERT INTO `booksorders` VALUES(3456789000, 6);

INSERT INTO `publisher` VALUES(1, 'Random House');
INSERT INTO `publisher` VALUES(2, 'Penguin Books');
INSERT INTO `publisher` VALUES(3, 'MIT Press');

INSERT INTO `ordered` VALUES(1, 3);
INSERT INTO `ordered` VALUES(2, 4);
INSERT INTO `ordered` VALUES(3, 1);
INSERT INTO `ordered` VALUES(4 ,1);
INSERT INTO `ordered` VALUES(5, 4);
INSERT INTO `ordered` VALUES(6, 2);

INSERT INTO `customer` VALUES(1, 'Joe', 'Johnson', 'joe@gmail.com', 1375092864);
INSERT INTO `customer` VALUES(2, 'Kelly', 'Oubre Jr.', 'kelly@gmail.com', 1573092864);
INSERT INTO `customer` VALUES(3, 'Nate', 'McMillan', 'nate@gmail.com', 5731098642);
INSERT INTO `customer` VALUES(4, 'James', 'Borrego', 'borrego@gmail.com', 0986425731);