#Program to shift array element circularly right (The last element to the first)

puts "Enter your list of numbers with space eg 10 45 80 60:"

numbers = gets.chomp.split(" ").map(&:to_i)

shifted_array = []

shifted_array[0] = numbers[numbers.length-1]

for i in 0..(numbers.length-2) do 
   shifted_array.push(numbers[i]);	
end

puts "Shifted Array :"

shifted_array.each { |item| print item, " "}