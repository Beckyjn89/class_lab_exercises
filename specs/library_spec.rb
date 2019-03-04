require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < Minitest::Test
  def test_check_book
    book = Library.new(   {
        title: "Tropic of Cancer",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      })
    assert_equal({
        title: "Tropic of Cancer",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }, book.details("Tropic of Cancer"))
  end
  def test_rental_details
    book = Library.new(   {
        title: "Tropic of Cancer",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      })
    assert_equal({
     student_name: "Jeff",
     date: "01/12/16"
    }, book.rental_details("Tropic of Cancer"))
  end
  def test_add_book
    book = Library.new(   {
        title: "Tropic of Cancer",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      })
    book.add_book( {
        title: "Pride and Prejudice",
        rental_details: {
         student_name: "",
         date: ""
        }
      })
    assert_equal(2, book.length)
  end

end
