#Program to remove the duplicate elements from the array

puts "Enter your list of numbers with space eg 10 45 80 60:"

numbers = gets.chomp.split(" ").map(&:to_i)

numbers.uniq!

numbers.each { |n| print n," "}