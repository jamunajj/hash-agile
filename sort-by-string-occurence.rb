strings = ["no bun","bug bun bug bun bug bug","bunny bug","buggy bug bug buggy"]

puts "Enter a word from the lists of texts "
strings.each do  |s|
  puts s
end


word = gets.chomp
frequencies = Hash.new(0)

strings.each do |string|
	frequencies[string] = 0
	string.split(" ").each { |s| frequencies[string] += 1	if s == word }
end


frequencies = frequencies.sort_by{ | string, count | count }.reverse

puts "In the order of number of occurences: "

frequencies.each { | string, count | puts "#{string} : #{count}" }