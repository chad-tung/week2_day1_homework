require "minitest/autorun"
require "minitest/rg"
require_relative "./library"

class TestLibraryLoans < MiniTest::Test
    def test_book_details()

        #library = [{:title=>"Lord of the Rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}]

        library = LibraryLoans.new("Lord of the Rings", "Jeff", "01/12/16")
        assert_equal("Lord of the Rings, Jeff, 01/12/16", library.book_list())
    end

    def test_book_info()
        library = LibraryLoans.new("Lord of the Rings", "Jeff", "01/12/16")
        assert_equal("Lord of the Rings, Jeff, 01/12/16", library.book_info("Lord of the Rings"))
    end

    def test_book_rental_info()
        library = LibraryLoans.new("Lord of the Rings", "Jeff", "01/12/16")
        assert_equal("Jeff, 01/12/16", library.book_rental_info("Lord of the Rings"))
    end

    def test_add_book()
        library = LibraryLoans.new("Lord of the Rings", "Jeff", "01/12/16")
        library.add_book("Harry Potter")
        assert_equal("Lord of the Rings, Jeff, 01/12/16/", library.book_list())
    end
# Create a method that takes in a book title and adds it to our book list (Add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.



end
