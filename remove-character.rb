#Program to remove the occurence of a chacter if it appears first in the string

puts "Enter the text"
text  = gets.chomp

puts "Enter the character to be removed"
character = gets.chomp

if text[0] == character
	puts "Your text after removing the character:"
	puts text[1..-1]
else
	puts "Oops! Your text doesn't start with the specified character."
end
