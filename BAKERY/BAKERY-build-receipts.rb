#!/usr/bin/env ruby

`../mysql-import.rb --fields "{id: Integer, date: Date, customer_id: Integer}" --file .receipts.csv --database 'bakery' --table 'receipts'`
