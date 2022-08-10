#Program to get and set student details (Roll Number, Name & Marks), calculate total and display the details

class Student
  
  def initialize(roll_num, stud_name, mark1, mark2, mark3)
  	@roll_num = roll_num
  	@stud_name = stud_name
  	@mark1 = mark1
  	@mark2 = mark2
  	@mark3 = mark3
    @total_marks = 0.00
  end

  def calculate_total()
  	@total_marks = @mark1.to_f + @mark2.to_f + @mark3.to_f
  end

  def display_stud_details()
  	puts "Student Roll Number: #{@roll_num}"
  	puts "Student Name : #{@stud_name}"
  	puts "Student Total Marks : #{@total_marks}"
  end

end

def is_number?(number, mark_index)
    mark = number
    if number.match(/-?\d+(?:\.\d+)?/)
        return mark        
    else
        puts "Invalid input! Enter an integer value for #{mark_index}: "
        mark = gets.chomp
        is_number?(mark, mark_index)
    end
end

puts "Enter the student's roll number: "
roll_num = gets.chomp

puts "Enter the student's name: "
stud_name = gets.chomp

puts "Enter Mark 1:"
mark_1 = gets.chomp
mark_1 = is_number?(mark_1, 'Mark 1')

puts "Enter Mark 2:"
mark_2 = gets.chomp
mark_2 = is_number?(mark_2, 'Mark 2')

puts "Enter Mark 3:"
mark_3 = gets.chomp
mark_3 = is_number?(mark_3, 'Mark 3')

my_student = Student.new(roll_num, stud_name, mark_1, mark_2, mark_3)
my_student.calculate_total()
my_student.display_stud_details()