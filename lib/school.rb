class School
  attr_reader :name
  attr_accessor :location

  def initialize(name, location="No Location Yet - Coming Soon!")
    @name = name
    @location = location
  end

  def add_student(student_name, grade)
    Student.new(student_name, grade, self)
  end

  def students
    Student.all.select { |student| student.school == self }
  end

  def roster
    students.each_with_object({}) do |student, roster|
      roster[student.grade] ||= []
      roster[student.grade] << student.name
    end
  end

  def grade(grade_number)
    roster[grade_number]
  end

  def sort
    roster.each_with_object({}) do |(grade, students), sorted_roster|
      sorted_roster[grade] = students.sort
    end
  end

end
