#Program to count the number of occurences of a character

puts "Enter your text"
text = gets.chomp

puts "Enter the character to be counted"
character = gets.chomp

#puts "Number of occurences of character #{character}: "
#puts text.count character

text_length = text.length-1
count = 0

for i in 0..text_length do
	count +=1 if text[i] == character 
end

puts "Number of occurences of character #{character}: "
puts count