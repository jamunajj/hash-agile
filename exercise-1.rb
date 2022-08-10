#Program to get students details and sort them by marks with the highest at the top

def is_number?(number, stud_name)
    mark = number
    if number.match(/-?\d+(?:\.\d+)?/)
        return mark        
    else
        puts "Invalid input! Enter the marks for #{stud_name}: "
        mark = gets.chomp
        is_number?(mark, stud_name)
    end
end


students = Hash.new
for a in 1..10 do
  puts "Enter the name of the student #{a}: "
  name = gets.chomp
  puts "Enter the marks of the student #{name}: "
  marks = gets.chomp
  marks = is_number?(marks, name)
  students[name] = marks
end

students = students.sort_by { | names, marks | -marks.to_i }
students.each { |names, marks| puts "#{names} : #{marks}"}
