#Program to shift array element circularly right (The last element to the first)

puts "Enter your list of numbers with space eg 10 45 80 60:"

numbers = gets.chomp.split(" ").map(&:to_i)

def sum(n)
    sum = 0
	n.each { | v | sum += v }
	return sum
end

def product(n)
	product = 1
	n.each { |v| product *= v}
    return product
end

sum = sum(numbers)

puts "Sum of the array elements: "

puts sum

puts "Average of the array elements: "

puts sum/numbers.size.to_f

puts "Product of the array elements: "

puts product(numbers)

puts "Highest value among the array elements"

puts numbers.max

puts "Smallest value among the array elements"

puts numbers.min
