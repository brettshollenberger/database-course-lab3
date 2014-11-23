CREATE DATABASE cars;

USE cars;

CREATE TABLE continents (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  UNIQUE KEY name (name)
);

CREATE TABLE countries (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  continent_id integer NOT NULL,
  UNIQUE KEY name (name),
  FOREIGN KEY (continent_id) REFERENCES continents(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE makers (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  short_name varchar(100) NOT NULL,
  full_name varchar(150) NOT NULL,
  country_id integer,
  UNIQUE KEY short_name (short_name),
  UNIQUE KEY full_name (full_name),
  FOREIGN KEY (country_id) REFERENCES countries(id)
    ON UPDATE SET NULL
    ON DELETE SET NULL
);

CREATE TABLE models (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  maker integer NOT NULL,
  model varchar(100) NOT NULL,
  UNIQUE KEY model (model),
  FOREIGN KEY (maker) REFERENCES makers(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE car_names (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  model varchar(100) NOT NULL,
  make varchar(100) NOT NULL,
  FOREIGN KEY (model) REFERENCES models(model)
);

CREATE TABLE cars (
  id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  mpg integer,
  cylinders integer,
  engine_displacement integer,
  horsepower integer,
  weight integer,
  acceleration_time float,
  year integer,
  FOREIGN KEY (id) REFERENCES car_names(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
