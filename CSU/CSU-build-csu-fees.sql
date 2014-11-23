LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CSU/csu-fees.csv' INTO TABLE campus_fees
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\n'
IGNORE 1 LINES (campus_id, year, fee);
