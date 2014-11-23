LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CSU/disciplines.csv' INTO TABLE disciplines
FIELDS 
TERMINATED BY ','
ENCLOSED BY "'"
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (id, name);
