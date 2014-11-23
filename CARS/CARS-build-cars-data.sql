LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CARS/cars-data.csv' INTO TABLE cars
FIELDS
TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
