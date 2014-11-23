LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CSU/faculty.csv' INTO TABLE faculty
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 2 LINES (campus_id, year, faculty);
