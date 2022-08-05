def alphabetize(arr, rev=false)
  if rev
     arr.sort! { |first_num, second_num| second_num <=> first_num }
  else
     arr.sort! { |first_num, second_num| first_num <=> second_num }
  end
end

numbers = [9, 11, 5, 4, 1, 2, 0]
puts alphabetize(numbers)
puts alphabetize(numbers, true)