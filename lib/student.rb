class Student
  attr_reader :name
  attr_accessor :grade, :gender, :school

  ALL = []

  def self.all
    ALL
  end
  #DO NOT DO - demo purposes only
  # def self.new
  #   instance = self.allocate
  #   instance.initialize
  #   instance
  # end

  def initialize(name, grade=9, school)
    ALL << self
    @name  = name
    @grade = grade
    @school = school
  end

  def school_name
    school.name
  end

end

Student.all #=> [<Student 1>]
