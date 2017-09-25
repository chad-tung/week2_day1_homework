require "minitest/autorun"
require "minitest/rg"
require_relative "./library_array"

class TestLibraryLoans < MiniTest::Test

    def setup()
        @books = [{title: "Lord of the Rings", rental_details: {student_name: "Jeff", date: "01/12/16"}},
            {title: "Harry Potter", rental_details: {student_name: "Charlie", date: "09/12/16"}},
            {title: "Facets of Ruby", rental_details: {student_name: "Chad", date: "16/12/16"}}]
    end

    def test_book_details()
        library = LibraryLoans.new(@books)
        assert_equal([{title: "Lord of the Rings", rental_details: {student_name: "Jeff", date: "01/12/16"}},
            {title: "Harry Potter", rental_details: {student_name: "Charlie", date: "09/12/16"}},
            {title: "Facets of Ruby", rental_details: {student_name: "Chad", date: "16/12/16"}}], library.book_list())
    end

    def test_book_info()
        library = LibraryLoans.new(@books)

        assert_equal(
            {title: "Lord of the Rings", rental_details: {student_name: "Jeff", date: "01/12/16"}},
            library.book_info("Lord of the Rings")
        )
    end

    def test_book_rental_details()
        library = LibraryLoans.new(@books)

        assert_equal(
            {student_name: "Charlie", date: "09/12/16"},
            library.book_rental_details("Harry Potter")
        )
    end

    def test_add_book()
        library = LibraryLoans.new(@books)

        library.add_book("To Kill a Mockingbird")

        assert_equal({title: "To Kill a Mockingbird", rental_details: {student_name: "", date: ""}}, library.book_info("To Kill a Mockingbird"))
    end

    def test_add_book_and_other()
        library = LibraryLoans.new(@books)

        library.add_book("To Kill a Mockingbird")
        library.change_rental_details("To Kill a Mockingbird", "Joe", "16/01/17")

        assert_equal({title: "To Kill a Mockingbird", rental_details: {student_name: "Joe", date: "16/01/17"}}, library.book_info("To Kill a Mockingbird"))
    end

# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
end
