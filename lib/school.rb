class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :roster

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.map do |grade, name_array|
      sorted_roster[grade] = name_array.sort
    end
    return sorted_roster
  end


end
