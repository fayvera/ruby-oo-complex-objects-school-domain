# code here!
require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        self.roster[grade] ||= []
        self.roster[grade] << student_name 
    end
   
    def grade(student_grade)
        self.roster[student_grade]
    end

    def sort
        sorted = {}
        self.roster.each do |grade, students| 
            sorted[grade] = students.sort
        end
        sorted
    end


end