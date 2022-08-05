word = "MISSIPPI"

frequencies = Hash.new(0)

word.split("").each { |letter| frequencies[letter] +=1 }

frequencies = frequencies.sort_by { |letter, count | count.to_i }.reverse

frequencies.each { |letter, count | puts "#{letter} : #{count}" }


