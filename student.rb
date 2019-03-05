class Student

  attr_accessor :name, :cohort

  def initialize(name, cohort, fave_language)
    @name = name
    @cohort = cohort
    @fave_language = fave_language
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language
    return ("I love #{@fave_language}")
  end

end
