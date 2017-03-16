class School
  attr_reader :name, :students

  def initialize(name)
    @name = name
    @students = []
  end

  def add_student(name, grade)
    students << Student.new(name, self, grade)
  end

  def names(students)
    students.map {|student| student.name }
  end

  def grade(grade_number)
    students_in_grade = students.select {|student| student.grade == grade_number }
    names(students_in_grade)
  end

  def roster
    students.each_with_object({}) do |student, roster|
      roster[student.grade] ||= []
      roster[student.grade] << student.name
    end
  end

  def sort
    roster.each {|grade, students| students.sort! }
  end

end
