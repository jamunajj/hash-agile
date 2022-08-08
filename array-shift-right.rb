#Program to shift array element circularly right (The last element to the first)

#puts "Enter your list of numbers with space eg 10 45 80 60:"
#numbers = gets.chomp.split(" ").map(&:to_i)

puts "Enter your list of 10 numbers:"
numbers = []

for i in 0..9 do 
   puts "Enter number #{ i+1 }: "
   numbers[i]= gets.chomp
end


shifted_array = []

shifted_array[0] = numbers[numbers.length-1]

last_before_index = numbers.length-2

for i in 0..last_before_index do 
   shifted_array.push(numbers[i]);	
end

puts "Shifted Array :"
shifted_array.each { |item| print item, " "}