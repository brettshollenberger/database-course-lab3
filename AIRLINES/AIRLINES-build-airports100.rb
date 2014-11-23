#!/usr/bin/env ruby

`../mysql-import.rb --fields "{city: String, code: String, name: String, country: String, country_abbreviation: String}" --file ./airports100.csv --database 'airlines' --table 'airports'`
