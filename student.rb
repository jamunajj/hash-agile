#Program to get and set student details (Roll Number, Name & Marks), calculate total and display the details

class Student

  @roll_num = @stud_name = ''
  @mark1 = @mark2 = @mark3 = @total_marks = 0.00
   
  def set_stud_details (roll_num, stud_name, mark1, mark2, mark3)
  	@roll_num = roll_num
  	@stud_name = stud_name
  	@mark1 = mark1
  	@mark2 = mark2
  	@mark3 = mark3
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


puts "Enter the student's roll number: "
roll_num = gets.chomp

puts "Enter the student's name: "
stud_name = gets.chomp

puts "Enter Mark 1:"
mark_1 = gets.chomp

puts "Enter Mark 2:"
mark_2 = gets.chomp

puts "Enter Mark 3:"
mark_3 = gets.chomp

my_student = Student.new()
my_student.set_stud_details(roll_num, stud_name, mark_1, mark_2, mark_3)
my_student.calculate_total()
my_student.display_stud_details()


