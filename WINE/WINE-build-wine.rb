#!/usr/bin/env ruby

`../mysql-import.rb --fields "{id: Integer, grape: String, winery: String, appelation: String, state: Ignore, name: String, year: Integer, price: Integer, score: Integer, cases: Integer}" --file ./wine.csv --database='wines' --table='wines'`
