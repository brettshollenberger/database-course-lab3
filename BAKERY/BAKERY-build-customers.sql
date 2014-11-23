LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/BAKERY/customers.csv' INTO TABLE customers
FIELDS
TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES (id, last_name, first_name);
