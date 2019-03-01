class School

    attr_accessor :name, :roster

    @@all =[]

    def initialize(name)
        @name = name
        @roster = {}
        @@all << self
    end

    def add_student(student_name, grade)
        if @roster[grade] == nil ##<=------|(If there's nothing)
        @roster[grade] = []#<--------------|--This ensures we can add multiple new students to the roster hash.
        @roster[grade] << student_name #<--|
        else 
        @roster[grade] << student_name #<---if it were only this object then we would only receive one student and NOT multiples. The new student would keep getting overwritten.
        end
    end

    def grade(student_grade) 
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
        sorted[grade] = students.sort     
    end
    sorted
end
end