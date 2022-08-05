#Program to check whether the array elements read the same from the front and back

puts "Enter your list of numbers with space eg 10 45 80 60:"

numbers = gets.chomp.split(" ").map(&:to_i)

numbers_reverse = numbers.reverse

if numbers_reverse == numbers
	puts "The array elements read the same from the front and the back"
else
	puts "The array elements do not read the same."
end 
