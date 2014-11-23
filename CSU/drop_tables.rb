#!/usr/bin/env ruby

table_name = ARGV[0]

drop_table_statements = `echo 'select concat("DROP TABLE ", table_name, ";") as concat from information_schema.tables where table_schema="#{table_name}";' | mysql -u root`
drop_table_statements.gsub!(/concat/) { |n| "" }

`echo 'use #{table_name}; SET FOREIGN_KEY_CHECKS=0; #{drop_table_statements} SET FOREIGN_KEY_CHECKS=1;' | mysql -u root`
