# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @roster = {}
        @name = name
    end
    
    def add_student(name, grade)
        if self.roster[grade] == nil
            self.roster[grade] = []
            self.roster[grade] << name
        else
            self.roster[grade] << name
        end
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each do |grade, students|
            students.sort!
        end
    end

end

school = School.new("Bayside High School")
