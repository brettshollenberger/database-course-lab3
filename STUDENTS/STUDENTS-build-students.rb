#!/usr/bin/env ruby

`../ruby-parser.rb --fields "{last_name: Name, first_name: Name, grade: Integer, classroom: Integer}" --file ./list.csv --database 'students' --table 'students'`
