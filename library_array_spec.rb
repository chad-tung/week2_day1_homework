require "minitest/autorun"
require "minitest/rg"
require_relative "./library_array"

class TestLibraryLoans < MiniTest::Test
    def test_book_details()
        library = LibraryLoans.new([])
        library.add_book_loan("Lord of the Rings", "Jeff", "01/12/16")
        library.add_book_loan("Harry Potter", "Hugo", "08/01/17")

        assert_equal("Lord of the Rings, Jeff, 01/12/16", library.book_list())
    end









#     Create a method that list all the books and their corresponding details.
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (Add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
end
