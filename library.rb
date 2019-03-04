class Library
  attr_reader :all_books

  def initialize(book_details)
    @all_books = [] << book_details
  end

  def get_book_details(title)
    for book in @all_books
      if book[:title] == title
        return book
      end
    end
  end

end
