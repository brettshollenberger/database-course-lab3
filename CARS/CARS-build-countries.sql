LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CARS/countries.csv' INTO TABLE countries
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\n'
IGNORE 1 LINES (id, name, continent_id);
