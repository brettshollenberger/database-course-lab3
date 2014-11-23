CREATE DATABASE csu;

USE csu;

CREATE TABLE campuses (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(150) NOT NULL,
  location varchar(150) NOT NULL,
  county varchar(150) NOT NULL,
  year integer NOT NULL,
  UNIQUE KEY name (name)
);

CREATE TABLE campus_fees (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  campus_id integer NOT NULL,
  year integer NOT NULL,
  fee integer NOT NULL,
  UNIQUE KEY campus_id_year (campus_id, year),
  FOREIGN KEY (campus_id) references campuses(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE degrees (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  campus_id integer NOT NULL,
  year integer NOT NULL,
  count integer,
  UNIQUE KEY campus_id_year (campus_id, year),
  FOREIGN KEY (campus_id) references campuses(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE disciplines (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(150),
  UNIQUE KEY name (name)
);

CREATE TABLE discipline_enrollments (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  campus_id integer NOT NULL,
  discipline_id integer NOT NULL,
  year integer NOT NULL,
  undergraduate integer NOT NULL,
  graduate integer NOT NULL,
  UNIQUE KEY campus_id_discipline_id_year (campus_id, discipline_id, year),
  FOREIGN KEY (campus_id) references campuses(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (discipline_id) references disciplines(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE enrollments (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  campus_id integer NOT NULL,
  year integer NOT NULL,
  total integer NOT NULL,
  fte integer NOT NULL,
  UNIQUE KEY campus_id_year (campus_id, year),
  FOREIGN KEY (campus_id) REFERENCES campuses(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE faculty (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  campus_id integer NOT NULL,
  year integer NOT NULL,
  faculty integer NOT NULL,
  UNIQUE KEY campus_id_year (campus_id, year),
  FOREIGN KEY (campus_id) REFERENCES campuses(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
