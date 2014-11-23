CREATE DATABASE bakery;

USE bakery;

CREATE TABLE customers (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL
);

CREATE TABLE goods (
  id varchar(100) PRIMARY KEY NOT NULL,
  flavor varchar(100) NOT NULL,
  food varchar(100) NOT NULL,
  price float NOT NULL
);

CREATE TABLE receipts (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  date date NOT NULL,
  customer_id integer NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE receipt_items (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  receipt_id integer NOT NULL,
  ordinal integer NOT NULL,
  good_id varchar(100) NOT NULL,
  UNIQUE KEY receipt_item_number (receipt_id, ordinal),
  FOREIGN KEY (receipt_id) REFERENCES receipts(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  FOREIGN KEY (good_id) REFERENCES goods(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
