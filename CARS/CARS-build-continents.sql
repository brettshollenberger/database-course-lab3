LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CARS/continents.csv' INTO TABLE continents
FIELDS 
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (id, name);
