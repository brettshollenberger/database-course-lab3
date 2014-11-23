#!/usr/bin/env ruby

`../mysql-import.rb --fields "{id: Integer, name: String, county: -> (c) { c == 'N/A' ? \"\\\N\" : \"'#{c}'\" }, state: String, area: -> (a) { a == 'N/A' ? \"\\\N\" : \"'#{a}'\" }, isAVA: -> (b) { b == 'Yes' }}" --file ./appellations.csv --database='wines' --table='appelations'`
