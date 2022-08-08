#Program to remove all occurences of a chacter if it appears first in the string

puts "Enter the text"
text  = gets.chomp

puts "Enter the character to be removed"
character = gets.chomp
new_text = []

if text[0] == character
	#puts "Your text after removing the character:"
	#puts text.tr!(character,'')
	for i in 1..text.length-1 do 
		new_text.push(text[i]) if text[i] != character 
	end

	puts "Your text after removing the character:"
	new_text.each { |i| print i,""}

else
	puts "Oops! Your text doesn't start with the specified character."
end
