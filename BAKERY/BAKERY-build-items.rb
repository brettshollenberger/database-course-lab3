#!/usr/bin/env ruby

`./ruby-parser.rb --fields "{receipt_id: Integer, ordinal: Integer, good_id: String}" --file ./BAKERY/items.csv --database 'bakery' --table 'receipt_items'`
