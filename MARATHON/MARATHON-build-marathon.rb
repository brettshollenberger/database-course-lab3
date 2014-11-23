#!/usr/bin/env ruby

`../ruby-parser.rb --fields "{place: Integer, time: Time, pace: Time, group_place: Integer, group_name: String, age: Integer, sex: String, bib_number: Integer, first_name: Name, last_name: Name, town: String, state: String}" --file ./marathon.csv --database 'marathon' --table 'runners'`
