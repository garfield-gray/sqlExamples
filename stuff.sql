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
  
  PRIMARY KEY (`trauma`)
);




