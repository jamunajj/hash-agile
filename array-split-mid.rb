#Program to split an array into in the mid

puts "Enter your list of numbers with space eg 10 45 80 60:"

numbers = gets.chomp.split(" ").map(&:to_i)

mid_index = (numbers.length/2)

array_1 = array_2 = Array.new

array_1 = numbers.each_with_index.select { |value, key| key < mid_index }

array_2 = numbers.each_with_index.select { |value, key| key >= mid_index }

puts "Array 1 :"
array_1.each { | number, index | print number, " "}

puts " "

puts "Array 2 "
array_2.each { | number, index | print number, " "}
