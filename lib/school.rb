# code here!
require 'pry'
class School
  attr_reader :name
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
 
  
  
  def add_student(name, grade)
    if @roster["#{grade}".to_i]
      @roster["#{grade}".to_i] << "#{name}"
    else
      @roster["#{grade}".to_i] = []
      @roster["#{grade}".to_i] << "#{name}"
    end
  end
  
  def grade(grade)
    @roster.each do |grades, students|
      if grades == grade
        return students
      end
    end
  end
  
  def sort
    newhash ={}
    @roster.each do |grades, students|
     newhash[grades] = students.sort
   end
   newhash
end

end