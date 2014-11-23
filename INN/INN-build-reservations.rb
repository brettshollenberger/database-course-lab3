#!/usr/bin/env ruby

`../mysql-import.rb --fields "{code: Integer, room_id: String, check_in: Date, check_out: Date, rate: Float, last_name: Name, first_name: Name, adults: Integer, children: Integer}" --file ./reservations.csv --database 'inn' --table 'reservations'`
