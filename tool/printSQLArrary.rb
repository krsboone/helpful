#!/usr/bin/env ruby 
$LOAD_PATH << './lib'
%w(rubygems tiny_tds ).each { |lib| require lib }

qry_db = TinyTds::Client.new(:username => 'UN', :timezone => :utc, :password => 'PW', :host => 'IP',:port=>1433, :timeout=>5000,:database=>'DB',:appname=>'NOMBRE')
qry = qry_db.execute("SQL Statement")

qry.to_a

printf "Field_1, Field_2, Field_3, Field_4"

qry.each do |result|
   printf "\n"
   a = result['Field_1'].to_s
   b = result['Field_2'].to_s
   c = result['Field_3'].to_s
   d = result['Field_4'].to_s
   printf "#{a},""#{b},""#{c},""#{d}"
end