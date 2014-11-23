LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CSU/Campuses.csv'
  INTO TABLE campuses
  FIELDS
  TERMINATED BY ','
  OPTIONALLY ENCLOSED BY "'"
  IGNORE 1 LINES;
