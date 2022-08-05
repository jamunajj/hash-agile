#Program to print the antonyms from the given list of words

antonyms = {
	"Right" => "Left",
	"Up" => "Down",
	"Correct" => "Wrong",
	"North" => "South",
	"East" => "West",
	"Positive" => "Negative",
}

puts "Enter a word from the given list: "
antonyms.each { | word, antonym| print word," " }
puts ": "
word = gets.chomp

if antonyms[word].nil?
    puts "Your choice of word is not available in our list." 
else 
    puts "Antonym for the word #{word} is #{antonyms[word]}."
end


