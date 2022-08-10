#Program to read an API URL and display the information in readable format

require 'http'
require 'json'


response = HTTP.get('https://api.covid19api.com/summary')
response_data = response.parse if response.code == 200

countries_data = {}

countries_data =  response_data['Countries']

=begin
countries_data.each  do

	| country |

	puts "ID: #{ country['ID'] } "

	puts "ID: #{ country['Country'] } "

	puts "ID: #{ country['CountryCode'] } "
	
end

=end


puts "Enter country code between 0 to 194 to get the COVID19 information:"
country_code = gets.chomp.to_i

if country_code < 0 || country_code > 194
	
	puts "Invalid Country Code!"

else
	country_id = countries_data[country_code]['ID'];
	country_name = countries_data[country_code]['Country'];
	country_code = countries_data[country_code]['CountryCode'];
	
  puts "ID : #{country_id}"
	puts "Country : #{country_name}"
	puts "Country Code : #{country_code}"
	
	
end