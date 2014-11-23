#!/usr/bin/env ruby

`../mysql-import.rb --fields "{id: Integer, name: String, color: String}" --file ./grapes.csv --database='wines' --table='grapes'`
