require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestCodeclanStudent < Minitest::Test
  student = Student.new("Stephen", "E28", "Ruby")
  student = student
  def test_student_name
    student = Student.new("Stephen", "E28", "Ruby")
    assert_equal("Stephen", student.name)
  end
  def test_change_student_name
    student = Student.new("Stephen", "E28", "Ruby")
    student.name = "Rory"
    assert_equal("Rory", student.name)
  end
  def test_student_talk
    student = Student.new("Stephen", "E28", "Ruby")
    assert_equal("I can talk!", student.talk)
  end
  def test_student_favourite_language
    student = Student.new("Stephen", "E28", "Ruby")
    assert_equal("I love Ruby", student.say_favourite_language)
  end
end
