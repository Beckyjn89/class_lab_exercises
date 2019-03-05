class Library
  attr_reader :all_books

  def initialize(book_details)
    @all_books = [] << book_details
  end

  ##alternative way to initialize - tells it to look for books or empty array if no books are there
  # def initialize(books = [])
  #  @books = all_books
  # end

  def get_book_details(title)
    for book in @all_books
      return book if book[:title] == title
    end
  end

  def get_rental_details(title)
    for book in @all_books
      return book[:rental_details] if book[:title] == title
    end
  end

  def add_new_book(title)
    @all_books << {title: title, rental_details: {student_name: "", date: ""}}
  end

  def change_rental_details(title, lendee, date)
    for book in @all_books
      if book[:title] == title
        book[:rental_details] = {student_name: lendee, date: date}
      end
    end
  end

end
