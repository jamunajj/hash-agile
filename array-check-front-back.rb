#Program to check whether the array elements read the same from the front and back

#puts "Enter your list of numbers with space eg 10 45 80 60:"
#numbers = gets.chomp.split(" ").map(&:to_i)
#numbers_reverse = numbers.reverse

puts "Enter your list of 10 numbers:"
numbers = numbers_reverse = []

for i in 0..9 do 
	puts "Enter number #{ i+1 }: "
	numbers[i]= gets.chomp
end

i = numbers.length-1 #This can be assigned as 9 directly as we take only 10 numbers

until i >= 0 do 
  numbers_reverse.push(numbers[i])
  i -= 1
end

if numbers_reverse == numbers
	puts "The array elements read the same from the front and the back"
else
	puts "The array elements do not read the same."
end 
