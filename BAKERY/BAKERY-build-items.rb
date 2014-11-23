#!/usr/bin/env ruby

`./mysql-import.rb --fields "{receipt_id: Integer, ordinal: Integer, good_id: String}" --file ./BAKERY/items.csv --database 'bakery' --table 'receipt_items'`
