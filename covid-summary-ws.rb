#Program to read an API URL and display the information in readable format

require 'http'
require 'time'

response = HTTP.get('https://api.covid19api.com/summary')

response_data = response.parse if response.code == 200

countries_data = {}
countries_data =  response_data['Countries']

puts "Enter country code between 0 to 194 to get the COVID19 information:"
country_code = gets.chomp.to_i

if country_code < 0 || country_code > 194
	
	puts "Invalid Country Code!"

else
	
  #Assign the each values of each key (data) to variable

  date = Time.parse(countries_data[country_code]['Date'])
	date_formatted = date.strftime('%d/%m/%y').to_s

	new_confirmed = countries_data[country_code]['NewConfirmed']
	total_deaths = countries_data[country_code]['TotalDeaths']
	new_recovered = countries_data[country_code]['NewRecovered']
	total_recovered = countries_data[country_code]['TotalRecovered']
	country_id = countries_data[country_code]['ID']
	country_name = countries_data[country_code]['Country']
	country_code = countries_data[country_code]['CountryCode']
	
	puts "Information On #{date_formatted} :"
  puts "ID : #{country_id}"
	puts "Country : #{country_name}"
	puts "Country Code : #{country_code}"
	puts "New Confirmed : #{new_confirmed}"
	puts "Total Deaths : #{total_deaths}"
	puts "New Recovered : #{new_recovered}"
  puts "Total Recovered : #{total_recovered}"

end