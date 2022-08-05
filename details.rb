print "What is your first name? "
first_name = gets.chomp

print "What is your last name? "
last_name = gets.chomp

print "Which is your city? "
city = gets.chomp

print "Which state are you from? Eg. NY for New York "
state = gets.chomp.upcase

puts "I am #{first_name} #{last_name} from #{city},#{state}"
