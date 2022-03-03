-- entity 1: book, properties: Title, Genre, ISBN number (PK), Authors (FK), Editors (FK), Publisher (FK), Orders (FK), Royalties (FK)  
-- entity 2: author, properties: AuthorID (PK), FirstName, LastName, Email, Phone
-- entity 3: editor, properties: EditorID (PK), FirstName, LastName, Email, Phone
-- entity 4: publisher, properties: PublisherID (PK), PublisherName
-- entity 5: order, properties: OrderID (PK), CustomerID (FK)
-- entity 6: customer, properties: CustomerID (PK), Orders, FirstName, LastName, Email, Phone
-- 1 to 2: 1:N
-- 1 to 3: 1:N
-- 1 to 4: 1:1
-- 1 to 5: 1:N
-- 5 to 6: N:1
DROP DATABASE IF EXISTS `books`;
CREATE DATABASE IF NOT EXISTS `books`;
USE `books`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

CREATE TABLE `book` (
    `Title`         varchar(70) NOT NULL,
    `Genre`         varchar(20) NULL,
    `ISBN`          int NOT NULL,
    `Authors`       int NULL,
    `Editors`       int NULL,
    `Publisher`     int NULL,
    `Orders`        int NULL,
    `Royalties`     int NULL,
    PRIMARY KEY (`ISBN`),
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `author` (
    `AuthorID`      int NOT NULL,
    `FirstName`     varchar(15) NOT NULL,
    `LastName`      varchar(15) NOT NULL,
    `Email`         varchar(25) NULL,
    `Phone`         varchar(10) NULL,
    PRIMARY KEY (`AuthorID`),
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `editor` (
    `EditorID`      int NOT NULL,
    `FirstName`     varchar(15) NOT NULL,
    `LastName`      varchar(15) NOT NULL,
    `Email`         varchar(25) NULL,
    `Phone`         varchar(10) NULL,
    PRIMARY KEY (`EditorID`),
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `publisher` (
    `PublisherID`       int NOT NULL,
    `Name`              varchar(25) NOT NULL,
    PRIMARY KEY (`PublisherID`),
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `order` (
    `OrderID`       int NOT NULL,
    `CustomerID`    int NOT NULL,
    PRIMARY KEY (`OrderID`),
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer` (
    `CustomerID`    int NOT NULL,
    `Orders`        int NULL,
    `FirstName`     varchar(15) NOT NULL,
    `LastName`      varchar(15) NOT NULL,
    `Email`         varchar(25) NULL,
    `Phone`         varchar(10) NULL,
    PRIMARY KEY (`CustomerID`),
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `book` ('Hello World', 'Education', 1234567890, 2, 1, 1, 2, 2)
INSERT INTO `book` ('Knowing God', 'Spiritual', 2345678900, 5, 3, 2, 3, 5)
INSERT INTO `book` ('Mr. Sam''s Day', 'Children', 345678900, 2, 2, 3, 5, 2)
INSERT INTO `author` (1, 'Lebron', 'James', 'lebron@gmail.com', 9876543210)
INSERT INTO `author` (2, 'Kevin', 'Love', 'klove@gmail.com', 8765432109)
INSERT INTO `author` (3, 'Mickey', 'Mouse', 'mickey@gmail.com', 7654321098)
INSERT INTO `author` (4, 'Michael', 'Jordan', 'mj@gmail.com', 6543210987)
INSERT INTO `author` (5, 'Bigfoot', 'Saskatchewan', 'bigfoot@gmail.com', 5432109876)
INSERT INTO `editor` (1, 'Klay', 'Thompson', 'klay@gmail.com', 1357902468)
INSERT INTO `editor` (2, 'Stephen', 'Curry', 'steph@gmail.com', 8642097531)
INSERT INTO `editor` (3, 'Payton', 'Pritchard', 'prabbit@gmail.com', 9753186420)
INSERT INTO `publisher` (1, 'Random House')
INSERT INTO `publisher` (2, 'Penguin Books')
INSERT INTO `publisher` (3, 'MIT Press')
INSERT INTO `order` (1, 3)
INSERT INTO `order` (2, 4)
INSERT INTO `order` (3, 1)
INSERT INTO `order` (4 ,1)
INSERT INTO `order` (5, 4)
INSERT INTO `order` (6, 2)
INSERT INTO `customer` (1, 'Joe', 'Johnson', 'joe@gmail.com', 1375092864)
INSERT INTO `customer` (2, 'Kelly', 'Oubre Jr.', 'kelly@gmail.com', 1573092864)
INSERT INTO `customer` (3, 'Nate', 'McMillan', 'nate@gmail.com', 5731098642)
INSERT INTO `customer` (4, 'James', 'Borrego', 'borrego@gmail.com', 0986425731)