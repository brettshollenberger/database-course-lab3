LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CSU/degrees.csv' INTO TABLE degrees
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\n'
IGNORE 2 LINES (year, campus_id, count);
