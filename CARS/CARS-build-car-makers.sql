LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CARS/car-makers.csv' INTO TABLE makers
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\n'
IGNORE 1 LINES (id, short_name, full_name, country_id)
