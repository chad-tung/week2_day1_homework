require "minitest/autorun"
require "minitest/rg"
require_relative "./codeclan_student"

class TestCodeClanStudents < MiniTest::Test

    def test_get_student_name()
        student = CodeClanStudents.new("Chad", 3)

        assert_equal("Chad", student.get_student_name())
    end

    def test_get_student_cohort()
        student = CodeClanStudents.new("Chad", 3)

        assert_equal(3, student.get_student_cohort())
    end

    def test_set_name()
        student = CodeClanStudents.new("Chad", 3)

        student.set_name("Ben")

        assert_equal("Ben", student.get_student_name())
    end

    def test_set_cohort()
        student = CodeClanStudents.new("Chad", 3)

        student.set_cohort(4)

        assert_equal(4, student.get_student_cohort())
    end

    def test_student_dialogue()
        student = CodeClanStudents.new("Chad", 3)
        student2 = CodeClanStudents.new("Alex", 3)
        assert_equal("My name is Chad and I'm in cohort 3, what\'s your name?", student.converse())
        assert_equal("My name is Alex and I'm in cohort 3, what\'s your name?", student2.converse())
    end

    def test_student_favourite_language()
        student = CodeClanStudents.new("Chad", 3)
        student2 = CodeClanStudents.new("John", 3)

        assert_equal("I am Chad, and I love Ruby", student.say_favourite_language("Ruby"))
        assert_equal("I am John, and I love Python", student2.say_favourite_language("Python"))
    end


end
