class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash, key| hash[key] = [] }
    end

    def name
        return @name
    end

    def slogan
        return @slogan
    end

    def teachers
        return @teachers
    end

    def students
        return @students
    end

    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student)
        if @students.length < @student_capacity
            @students << student
            return true
        end
        false
    end

    def enrolled?(student)
        @students.each do |ele|
            if ele.downcase == student.downcase
                return true
            end
        end
        false
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student, grade)
        if enrolled?(student)
            @grades[student] << grade
            return true
        end
        false
    end

    def num_grades(student)
        # if enrolled?(student)
        #     return @grades[student].length
        # end
        @grades[student].length
    end

    def average_grade(student)
        if !enrolled?(student) || !(@grades[student].length > 0)
            return nil
        end
        @grades[student].sum / num_grades(student)
    end

end
