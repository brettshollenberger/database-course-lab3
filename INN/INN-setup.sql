CREATE DATABASE inn;

USE inn;

CREATE TABLE rooms (
  id varchar(3) PRIMARY KEY NOT NULL,
  name varchar(100) NOT NULL,
  beds integer NOT NULL,
  bed_type varchar(25) NOT NULL,
  max_occupancy integer NOT NULL,
  base_price integer NOT NULL,
  decor varchar(100),
  UNIQUE KEY name (name)
);

CREATE TABLE reservations (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  code integer NOT NULL,
  room_id varchar(3) NOT NULL,
  check_in date NOT NULL,
  check_out date,
  rate float NOT NULL,
  last_name varchar(100) NOT NULL,
  first_name varchar(100) NOT NULL,
  adults integer NOT NULL,
  children integer NOT NULL,
  UNIQUE KEY code (code),
  FOREIGN KEY (room_id) REFERENCES rooms(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
