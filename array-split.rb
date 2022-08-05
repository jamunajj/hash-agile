numbers = [10, 20, 8, 9, 35, 45, 18, 21]

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