#Program to shift array element circularly right (The last element to the first)

puts "Enter your list of numbers with space eg 0 1 2 3 -1 10 -2:"

numbers = gets.chomp.split(" ").map(&:to_i)

puts "Positive Numbers: "
puts numbers.each.select { |value| value > 0 }

puts "Negative Numbers: "
puts numbers.each.select { |value| value < 0 }


puts "Even Numbers: "
puts numbers.each.select { |value| value % 2 == 0 }


puts "Odd Numbers: "
puts numbers.each.select { |value| value % 2 != 0 }


puts "Count of Zeros: "
puts numbers.each.select { |value| value == 0 }.length