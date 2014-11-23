#!/usr/bin/env ruby

`../ruby-parser.rb --fields "{id: Integer, name: String, abbreviation: String, country: String}" --file ./airlines.csv --database 'airlines' --table 'airlines'`
