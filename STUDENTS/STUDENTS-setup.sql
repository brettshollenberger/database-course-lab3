CREATE DATABASE students;

USE students;

CREATE TABLE teachers (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  last_name varchar(100) NOT NULL,
  first_name varchar(100) NOT NULL,
  classroom integer NOT NULL,
  UNIQUE KEY classroom (classroom)
);

CREATE TABLE students (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  last_name varchar(100) NOT NULL,
  first_name varchar(100) NOT NULL,
  grade integer NOT NULL,
  classroom integer,
  FOREIGN KEY classroom REFERENCES teachers(classroom)
    ON DELETE SET NULL
    ON UPDATE SET NULL
);
