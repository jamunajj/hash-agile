#Program to get students details and sort them by marks with the highest at the top

students = Hash.new
for a in 1..3 do
  puts "Enter the name of the student #{a}: "
  name = gets.chomp
  puts "Enter the marks of the student #{a}: "
  marks = gets.chomp
  students[name] = marks
end

students = students.sort_by { | names, marks | marks.to_i }.reverse
students.each { |names, marks| puts "#{names} : #{marks}"}
