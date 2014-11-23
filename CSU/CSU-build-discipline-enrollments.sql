LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/CSU/discipline-enrollments.csv' INTO TABLE discipline_enrollments
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES (campus_id, discipline_id, year, undergraduate, graduate);
