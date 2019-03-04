require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < Minitest::Test
  def test_return_book_details
    library = Library.new({
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  })

  assert_equal({
  title: "lord_of_the_rings",
  rental_details: {
   student_name: "Jeff",
   date: "01/12/16"
  }
}, library.get_book_details("lord_of_the_rings"))

  end

end
