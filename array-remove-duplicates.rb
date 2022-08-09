#Program to remove the duplicate elements from the array

puts "Enter your list of numbers with space eg 10 45 80 60:"

numbers = gets.chomp.split(" ").map(&:to_i)

#numbers.uniq!

numbers_unique = []

numbers.each { |n| numbers_unique.push(n) if !numbers_unique.include? n }

puts "Unique array values: "
numbers_unique.each { |n| print n," " }