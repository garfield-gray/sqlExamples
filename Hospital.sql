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
  FOREIGN KEY (`trauma`) REFERENCES `Trauma` (`trauma`) 
) ;

CREATE TABLE `suffers` (
  `pat` varchar(50) ,
  `trauma` varchar(50) ,
  PRIMARY KEY (`pat`, `trauma`),
  FOREIGN KEY (`pat`) REFERENCES `InPatient` (`pat`),
  FOREIGN KEY (`trauma`) REFERENCES `Trauma` (`trauma`) 
) ;

CREATE TABLE `treated with` (
  `pname` varchar(50) ,
  `trauma` varchar(50) ,
  `when` DATE ,
  `success` BOOL ,
  PRIMARY KEY (`pname`, `trauma`),
  FOREIGN KEY (`pname`) REFERENCES `Procedure` (`pname`),
  FOREIGN KEY (`trauma`) REFERENCES `Trauma` (`trauma`) 
) ;


CREATE TABLE `type of` (
  `tname` varchar(50) ,
  `trauma` varchar(50) ,
  PRIMARY KEY (`tname`, `trauma`),
  FOREIGN KEY (`tname`) REFERENCES `TraumaType` (`tname`),
  FOREIGN KEY (`trauma`) REFERENCES `Trauma` (`trauma`) 
) ;

