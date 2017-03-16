class School
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def add_student(name, grade)
    Student.new(name, self, grade)
  end

  def students
    Student.all.select {|student| student.school == self }
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
