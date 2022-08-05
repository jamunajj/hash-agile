print "What is your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What is your last name? "
last_name = gets.chomp
last_name.capitalize!

print "Which is your city? "
city = gets.chomp
city.capitalize!

print "Which state are you from? Eg. NY for New York "
state = gets.chomp
state.upcase!

puts "I am #{first_name} #{last_name} from #{city},#{state}"

