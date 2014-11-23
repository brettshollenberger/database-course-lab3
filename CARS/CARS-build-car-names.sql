LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CARS/car-names.csv' INTO TABLE car_names
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (id, model, make);
