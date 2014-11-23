LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CSU/enrollments.csv' INTO TABLE enrollments
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES (campus_id, year, total, fte);
