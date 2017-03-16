class Student
  attr_reader :school, :grade, :name

  ALL = []

  def self.all
    ALL
  end

  def initialize(name, school, grade)
    @name = name
    @grade = grade
    @school = school
    ALL << self
  end

end
