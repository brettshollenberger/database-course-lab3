#!/usr/bin/env ruby

`../ruby-parser.rb --fields "{last_name: Name, first_name: Name, classroom: Integer}" --file ./teachers.csv --database 'students' --table 'teachers'`
