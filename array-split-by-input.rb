#Program to replace the highest value with next highest value and difference

#puts "Enter your list of numbers with space eg 10 45 80 60:"
#numbers = gets.chomp.split(" ").map(&:to_i)

puts "Enter your list of 10 numbers:"
numbers = []

for i in 0..9 do 
	puts "Enter number #{ i+1 }: "
	numbers[i]= gets.chomp
end

first_highest = numbers.max()

second_highest = numbers.max(2)[1]

highest_val_index = numbers.rindex(first_highest)

split_array = []

numbers.each_index do | index | 
	
	if index == highest_val_index
		split_array.push(second_highest)
		split_array.push(first_highest.to_i - second_highest.to_i)
    else
    	split_array.push(numbers[index])    
    end
	
end 

puts split_array