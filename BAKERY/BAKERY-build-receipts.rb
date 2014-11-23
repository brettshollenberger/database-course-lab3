#!/usr/bin/env ruby

`../ruby-parser.rb --fields "{id: Integer, date: Date, customer_id: Integer}" --file .receipts.csv --database 'bakery' --table 'receipts'`
