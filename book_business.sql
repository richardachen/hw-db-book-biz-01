DROP DATABASE IF EXISTS `books`;
CREATE DATABASE IF NOT EXISTS `books`;
USE `books`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

CREATE TABLE `book` (
    `Title`         varchar(70) NOT NULL,
    `Genre`         varchar(20) NULL,
    `ISBN`          BIGINT NOT NULL,
    `PublisherID`     int NULL,
    -- `Royalties`     JSON,
    PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `author` (
    `AuthorID`      int NOT NULL,
    `FirstName`     varchar(15) NOT NULL,
    `LastName`      varchar(15) NOT NULL,
    `Email`         varchar(25) NULL,
    `Phone`         varchar(10) NULL,
    PRIMARY KEY (`AuthorID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `royalties` (
	`ISBN`			BIGINT NOT NULL,
    `AuthorID`		int NOT NULL,
    `Amount`		decimal(10,2) NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `booksauthors` (
    `ISBN`          BIGINT NOT NULL,
    `AuthorID`      int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `editor` (
    `EditorID`      int NOT NULL,
    `FirstName`     varchar(15) NOT NULL,
    `LastName`      varchar(15) NOT NULL,
    `Email`         varchar(25) NULL,
    `Phone`         varchar(10) NULL,
    PRIMARY KEY (`EditorID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bookseditors` (
    `ISBN`          BIGINT NOT NULL,
    `EditorID`      int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `publisher` (
    `PublisherID`		int NOT NULL,
    `Title`             varchar(25) NOT NULL,
    PRIMARY KEY (`PublisherID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ordered` (
    `OrderID`       int NOT NULL,
    `CustomerID`    int NOT NULL,
    PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `booksorders` (
    `ISBN`          BIGINT NOT NULL,
    `OrderID`       int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer` (
    `CustomerID`    int NOT NULL,
    `FirstName`     varchar(15) NOT NULL,
    `LastName`      varchar(15) NOT NULL,
    `Email`         varchar(25) NULL,
    `Phone`         varchar(10) NULL,
    PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;