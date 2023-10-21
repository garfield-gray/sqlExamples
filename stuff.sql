DROP DATABASE IF EXISTS `Hospital`;
CREATE DATABASE `Hospital`; 
USE `Hospital`;

CREATE TABLE `Physician` (
  `phy` varchar(50) NOT NULL ,
  PRIMARY KEY (`phy`)
);

CREATE TABLE `InPatient` (
  `pat` varchar(50) NOT NULL ,
  PRIMARY KEY (`pat`)
);

CREATE TABLE `TraumaType` (
  `tname` varchar(50) NOT NULL ,
  PRIMARY KEY (`tname`)
);

CREATE TABLE `Procedure` (
  `pname` varchar(50) NOT NULL ,
  PRIMARY KEY (`pname`)
);

CREATE TABLE `Trauma` (
  `trauma` varchar(50) NOT NULL ,
  `severity` varchar(50) ,
  PRIMARY KEY (`trauma`)
);

CREATE TABLE `treated by` (
  `ptime` int(11) ,
  `phy` varchar(50) ,
  `trauma` varchar(50) ,
  PRIMARY KEY (`phy`, `trauma`),
  FOREIGN KEY (`phy`) REFERENCES `Physician` (`phy`),
  FOREIGN KEY (`trauma`) REFERENCES `Trauma` (`trauma`) ON UPDATE DELETE
) ;




