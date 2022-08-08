#Program to split an array into 2 in the mid

#puts "Enter your list of numbers with space eg 10 45 80 60:"
#numbers = gets.chomp.split(" ").map(&:to_i)

puts "Enter your list of 10 numbers:"
numbers = []

for i in 0..9 do 
	puts "Enter number #{ i+1 }: "
	numbers[i]= gets.chomp
end


mid_index = (numbers.length/2)

array_1 = array_2 = Array.new

array_1 = numbers.each_with_index.select { |value, key| key < mid_index }

array_2 = numbers.each_with_index.select { |value, key| key >= mid_index }

puts "Array 1 :"
array_1.each { | number, index | print number, " "}

puts " "

puts "Array 2 "
array_2.each { | number, index | print number, " "}
