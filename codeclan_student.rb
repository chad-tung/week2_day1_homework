class CodeClanStudents

    def initialize(name, cohort)
        @name = name
        @cohort = cohort
    end

    def get_student_name()
        return @name
    end

    def get_student_cohort()
        return @cohort
    end

    def set_name(name)
        @name = name
    end

    def set_cohort(cohort)
        @cohort = cohort
    end

    def converse()
        greeting = "My name is #{@name} and I\'m in cohort #{@cohort}, what\'s your name?"
        return greeting
    end

    def say_favourite_language(language)
        return "I am #{@name}, and I love #{language}"
    end
end
