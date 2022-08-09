#Program to get and set student details (Roll Number, Name & Marks), calculate total and display the details

class Student

  @rollNum = @studName =''
  @mark1 = @mark2 = @mark3 = @totalMarks = 0.00
   
  def setStudDetails (rollNum, studName, mark1, mark2, mark3)
  	@rollNum = rollNum
  	@studName = studName
  	@mark1 = mark1
  	@mark2 = mark2
  	@mark3 = mark3
  end

  def calculateTotal()
  	@totalMarks = @mark1.to_f + @mark2.to_f + @mark3.to_f
  end

  def displayStudDetails()
  	puts "Student Roll Number: #{@rollNum}"
  	puts "Student Name : #{@studName}"
  	puts "Student Total Marks : #{@totalMarks}"
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
my_student.setStudDetails(roll_num, stud_name, mark_1, mark_2, mark_3)
my_student.calculateTotal()
my_student.displayStudDetails()


