#!/usr/bin/env ruby

`../mysql-import.rb --fields "{last_name: Name, first_name: Name, grade: Integer, classroom: Integer}" --file ./list.csv --database 'students' --table 'students'`
