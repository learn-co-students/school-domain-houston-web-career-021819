require 'pry'
class School
  attr_accessor :roster, :add_student, :grade, :sort
  attr_reader :roster, :grade


  def initialize(hash)
    @roster ={}
    @add_student
    @grade
    @sort
  end

  def roster
    #roster is an empty Hash
    @roster
  end

  def add_student(name, grade)
    if @roster.has_key?grade
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade_to_fetch_from)
    @roster[grade_to_fetch_from]
  end

  def sort
     sorted_hash = {}
     @roster.each do |grade, names_array|
        sorted_hash[grade] = names_array.sort
      end
      sorted_hash

    
  end
end
