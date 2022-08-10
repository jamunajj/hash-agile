#Progam to read a file and replace the numeric values with words and write the final text into another file using humanize

require 'humanize'

file = File.open("numbers.txt")

if file
	file_data = file.read
	file.close
	puts "Actual File Content: "
	puts file_data
	file_data_array = file_data.split(" ")
	replaced_file_data = '';
	file_data_array.each do | number |
		if number.to_i.is_a? Integer
			replaced_file_data = replaced_file_data += number.to_i.humanize + ' '
		else 
			replaced_file_data = replaced_file_data += number + ' '
		end		
	end

	#Write the updated text in the new file

	File.write("replaced_numbers_file.txt", replaced_file_data)
	#Just to show the new file has the updated content
	puts "Replaced File Content: "
	file = File.open("replaced_numbers_file.txt")
	file_data = file.read
	puts file_data
else
   puts "Error!"
end
