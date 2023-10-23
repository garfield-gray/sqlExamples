DROP DATABASE IF EXISTS `Library`;
CREATE DATABASE `Library`; 
USE `Library`;

CREATE TABLE `book` (
  `ISBN` int(50) NOT NULL ,
  `price` varchar(50) NOT NULL ,
  `name` varchar(50) NOT NULL ,
  PRIMARY KEY (`ISBN`)
);

CREATE TABLE `writer` (
  `SSN` int(50) NOT NULL ,
  `address` varchar(50) NOT NULL ,
  `name` varchar(50) NOT NULL ,
  PRIMARY KEY (`SSN`)
);

CREATE TABLE `written by` (
  `ISBN` int(11) ,
  `SSN` int(50) ,
  PRIMARY KEY (`ISBN`, `SSN`),
  FOREIGN KEY (`SSN`) REFERENCES `writer` (`SSN`),
  FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`) 
) ;

CREATE TABLE `kids`(
    `ISBN` int(50) PRIMARY KEY,
    `minAge` int(50),
    `maxAge` int(50),
    FOREIGN KEY (`ISBN`) REFERENCES `book`(`ISBN`)
);

CREATE TABLE `educational`(
    `ISBN` int(50) PRIMARY KEY,
    `level` varchar(50),
    FOREIGN KEY (`ISBN`) REFERENCES `book`(`ISBN`)
);

CREATE TABLE `CD` (
  `duration` int(50) NOT NULL ,
  `name` varchar(50) NOT NULL ,
  PRIMARY KEY (`name`)
);

CREATE TABLE `hasCD` (
  `ISBN` int(50) ,
  `name` varchar(50) NOT NULL ,
  FOREIGN KEY (`ISBN`) REFERENCES `educational`(`ISBN`) ,
  FOREIGN KEY (`name`) REFERENCES `CD`(`name`)
);

CREATE TABLE `publisher` (
  `address` varchar(50) NOT NULL ,
  `name` varchar(50) NOT NULL ,
  PRIMARY KEY (`name`)
);

CREATE TABLE `published by` (
  `ISBN` int(11) ,
  `name` varchar(50) ,
  `date` DATE ,
  `number` int(11) ,
  PRIMARY KEY (`ISBN`, `name`),
  FOREIGN KEY (`name`) REFERENCES `publisher` (`name`) ,
  FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`) 
) ;

