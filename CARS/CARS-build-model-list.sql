LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CARS/model-list.csv' INTO TABLE models
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (id, maker, model);
