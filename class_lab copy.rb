class Student

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(lang)
    return ("I love #{lang}")
  end

end

class Team
  attr_reader :team_name, :players, :points
  attr_accessor :coach
  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(name)
    @players.push(name)
  end

  def check_player(name)
    @players.include?(name)
  end

  def outcome(result)
    @points += 3 if result == "win"
  end
end

class Library

  attr_accessor :book

  def initialize(book)
    @book = book
  end

  def details(title)
    if @book[:title] == title
      return @book
    end
  end
  def rental_details(title)
    if @book[:title] == title
      return @book[:rental_details]
    end
  end
  def add_book(book_details)
    @book.merge!(book_details)
  end


end
