LOAD DATA INFILE '/Users/brett/Desktop/databases-datasets/BAKERY/goods.csv' INTO TABLE goods
FIELDS
TERMINATED BY ','
OPTIONALLY ENCLOSED BY "'"
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES (id, flavor, food, price);
