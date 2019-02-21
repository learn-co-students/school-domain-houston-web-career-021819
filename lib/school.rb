
class School
  attr_reader :name
  attr_writer :roster

  def initialize(name)
    @name = name
    @roster = {} #when initializing, u can ask to not take an argument, but still set the argument here
  end

  #getter for roster
  def roster
    @roster
  end

  def add_student(student_name, grade)
    if self.roster[grade] == nil
      self.roster[grade] = []
      self.roster[grade] << student_name
    else
      self.roster[grade] << student_name
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    sorted_roster = {} #output,define an empty hash
    roster.each do |grade,student_name|
      sorted_roster[grade]=student_name.sort #define the hash's values. new hash's key is grade
    end
    sorted_roster #return new hash
  end

end
