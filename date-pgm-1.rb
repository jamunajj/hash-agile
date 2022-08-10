#Program to take date in string format and display in the required timezone format
require 'date'

def date_format(date, date_type)
    date_input_array = date.to_s.split("-")
    
    case date_type

   	 when 'IST' || 'GMT' then puts "#{date_input_array[2]}/#{date_input_array[1]}/#{date_input_array[0]}"

   	 when 'PST' || 'CET' || 'MST' || 'EST' || 'UTC' then puts "#{date_input_array[1]}/#{date_input_array[2]}/#{date_input_array[0]}"

   	 else
   	 	  puts "Invalid Date Type"
   	 end
end

puts "Enter your date in string format"
date_input  = gets.chomp

puts "Enter the type IST/PST/MST/EST/UTC/CET/GMT"
date_type = gets.chomp.upcase

date = Date.parse date_input

if date.is_a? Date
	date_format(date, date_type)
else
	puts "Invalid Date"
end
