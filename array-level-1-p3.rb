#Program to shift array element circularly right (The last element to the first)

=begin
puts "Enter your list of numbers with space eg 0 1 2 3 -1 10 -2:"
numbers = gets.chomp.split(" ").map(&:to_i)
=end

puts "Enter your list of 10 numbers:"
numbers = []

for i in 0..9 do 
	puts "Enter number #{ i+1 }: "
	numbers[i]= gets.chomp.to_i
end

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