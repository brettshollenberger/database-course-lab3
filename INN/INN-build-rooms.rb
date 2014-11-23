#!/usr/bin/env ruby

`../mysql-import.rb --fields "{id: String, name: String, beds: Integer, bed_type: String, max_occupancy: Integer, base_price: Integer, decor: String}" --file ./rooms.csv --database 'inn' --table 'rooms'`
