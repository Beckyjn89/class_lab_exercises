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

  def test_return_rental_details
    library = Library.new({
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
      })
      assert_equal({
        student_name: "Jeff",
        date: "01/12/16"
      },  library.get_rental_details("lord_of_the_rings"))
  end

  def test_add_book
    library = Library.new({
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
      })
      library.add_new_book("pride_and_prejudice")

    assert_equal(2, library.all_books.length)
  end

  def test_change_rental_details
    library = Library.new({
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
      })

      library.change_rental_details("lord_of_the_rings", "Becky", "04/03/2018")

      
      assert_equal({
        student_name: "Becky",
        date: "04/03/2018"
      }, library.get_rental_details("lord_of_the_rings"))

end

  end
