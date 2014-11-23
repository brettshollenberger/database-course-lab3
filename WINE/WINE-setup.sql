CREATE DATABASE wines;

USE wines;

CREATE TABLE appelations (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  county varchar(100),
  state varchar(100) NOT NULL,
  area varchar(100),
  isAVA boolean NOT NULL,
  UNIQUE KEY name (name)
);

CREATE TABLE grapes (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  color varchar(50) NOT NULL,
  UNIQUE KEY name (name)
);

CREATE TABLE wines (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  grape varchar(100) NOT NULL,
  winery varchar(100) NOT NULL,
  appelation varchar(100) NOT NULL,
  name varchar(100) NOT NULL,
  year integer NOT NULL,
  price integer NOT NULL,
  score integer NOT NULL,
  cases integer,
  UNIQUE KEY natural_key (name, year, winery, appelation, grape),
  FOREIGN KEY (grape) REFERENCES grapes(name)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (appelation) REFERENCES appelations(name)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
