-- entity 1: book, properties: ISBN number (PK), Authors (FK), Editors (FK), Publisher (FK), Orders (FK), Royalties (FK), Genre  
-- entity 2: author, properties: AuthorID (PK), FirstName, LastName, Email, Phone
-- entity 3: editor, properties: EditorID (PK), FirstName, LastName, Email, Phone
-- entity 4: publisher, properties: PublisherID (PK)
-- entity 5: order, properties: OrderID (PK)
-- entity 6: customer, properties: CustomerID (PK), FirstName, LastName, Email, Phone
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
    `ISBN`          int NOT NULL,
    `Authors`       int NULL,
    `Editors`       int NULL,
    `Publisher`     int NULL,
    `Orders`        int NULL,
    `Royalties`     int NULL,
    `Genre`         varchar(15) NULL,
    PRIMARY KEY (`ISBN`),

) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;