#!/usr/bin/env ruby

require "optparse"
require "date"
require "active_support/all"

class Name
end

options = {
  :ignore_lines => 1
}

OptionParser.new do |opts|
  opts.on("-f", "--file FILE", String, "File") do |arg|
    options[:file] = arg
  end

  opts.on("-i", "--ignore-lines LINES", Integer, "Number of lines to ignore") do |arg|
    options[:ignore_lines] = arg
  end

  opts.on("-e", "--fields FIELDS", "Fields") do |arg|
    options[:fields] = eval(arg)
  end

  opts.on("-d", "--database DATABASE", "Database") do |arg|
    options[:database] = arg
  end

  opts.on("-t", "--table TABLE", "Table") do |arg|
    options[:table] = arg
  end
end.parse!

lines = File.read(options[:file]).split("\n")

options[:ignore_lines].times do |time|
  lines.shift
end

lines.map! { |line| line.split(",") }

lines.map! do |line|
  line.map! do |component|
    component.strip.gsub(/'/) { |n| }.strip
  end
end

field_names = options[:fields].keys
mappers = options[:fields].values

def map_component(component, i, mappers)
  if mappers[i] == Float
    component.to_f
  elsif mappers[i] == Integer
    component.to_i
  elsif mappers[i] == Name
    "'#{component.to_s.downcase.capitalize}'"
  elsif mappers[i] == Date
    "'#{Date.parse(component).to_s}'"
  elsif mappers[i] == Time
    "'#{Time.parse(component).to_s(:db).split("\s")[1]}'"
  elsif mappers[i] == String
    "'#{component}'"
  end
end

lines.map! do |line|
  line.each_with_index do |component, i|
    line[i] = map_component(component, i, mappers)
  end

  line
end

lines.map! do |line|
  "INSERT INTO #{options[:table]} (#{field_names.join(",")}) VALUES (#{line.join(',')});"
end

lines.each do |line|
  puts line
  `echo "use #{options[:database]}; #{line};" | mysql -u root`
end
