-- entity 1: book, properties: Title, Genre, ISBN number (PK), Authors (FK), Editors (FK), Publisher (FK), Orders (FK), Royalties (FK)  
-- entity 2: author, properties: AuthorID (PK), FirstName, LastName, Email, Phone
-- entity 3: editor, properties: EditorID (PK), FirstName, LastName, Email, Phone
-- entity 4: publisher, properties: PublisherID (PK), PublisherName
-- entity 5: order, properties: OrderID (PK)
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

-- INSERT INTO 