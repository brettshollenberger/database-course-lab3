CREATE DATABASE marathon;

USE marathon;

CREATE TABLE runners (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  place integer NOT NULL,
  time time NOT NULL,
  pace time NOT NULL,
  group_place integer NOT NULL,
  group_name varchar(100) NOT NULL,
  age integer NOT NULL,
  sex varchar(100) NOT NULL,
  bib_number integer NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL,
  town varchar(100) NOT NULL,
  state varchar(10) NOT NULL,
  UNIQUE KEY place (place)
);
