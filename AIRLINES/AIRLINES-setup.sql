CREATE DATABASE airlines;

USE airlines;

CREATE TABLE airlines (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  abbreviation varchar(25) NOT NULL,
  country varchar(100) NOT NULL,
  UNIQUE KEY name (name)
);

CREATE TABLE airports (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  city varchar(100) NOT NULL,
  code varchar(100) NOT NULL,
  name varchar(100) NOT NULL,
  country varchar(100) NOT NULL,
  country_abbreviation varchar(25) NOT NULL,
  UNIQUE KEY code (code)
);

CREATE TABLE flights (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  airline_id integer NOT NULL,
  number integer NOT NULL,
  origin_airport_id varchar(100) NOT NULL,
  destination_airport_id varchar(100) NOT NULL,
  UNIQUE KEY airline_id_flight_number (airline_id, number),
  FOREIGN KEY (origin_airport_id) REFERENCES airports(code)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (destination_airport_id) REFERENCES airports(code)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
