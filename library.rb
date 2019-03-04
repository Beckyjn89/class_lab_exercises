


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
