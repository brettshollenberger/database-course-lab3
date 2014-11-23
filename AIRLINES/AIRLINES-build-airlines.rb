#!/usr/bin/env ruby

`../mysql-import.rb --fields "{id: Integer, name: String, abbreviation: String, country: String}" --file ./airlines.csv --database 'airlines' --table 'airlines'`
