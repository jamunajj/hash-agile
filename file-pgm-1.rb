#Progam to read a file and replace the numeric values with words and write the final text into another file

=begin

There are inbuilt functions using gems like humanize and others like in_words, but this program just demonstrates
the logic behinds such functions. Program uses recursion
	
=end

#Method that converts numbers to words. Paramter number should be an integer

def num_to_words(number)

	#If you assign the hash with least value first, the condition will always be true for any numbers that is > 0
    num_to_words_hash = {
      1_000_000_000 => "billion",
      1_000_000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
    
    in_words = ""
	num_to_words_hash.each do |num, words|
	    if number == 0 #do nothing
	      return in_words
	    elsif number.to_s.length == 1 && number/num > 0 #to check numbers between 1 to 9
	      return in_words + "#{words}"
	    elsif number < 100 && number/num > 0 #to check numbers 10 to 99
	      return in_words + "#{words}" if number%num == 0
	      return in_words + "#{words} " + num_to_words(number%num)
	    elsif number/num > 0 #Anything above 99 
	      return in_words + num_to_words(number/num) + " #{words} " + num_to_words(number%num)
	    end
    end
end 


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
			if number.to_i == 0
				replaced_file_data = replaced_file_data += 'zero '
			else
				replaced_file_data = replaced_file_data += num_to_words(number.to_i) + ' '
			end
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
