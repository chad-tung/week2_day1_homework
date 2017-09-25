class LibraryLoans
    def initialize(library)
        @library = library
    end


    def book_list()
        return @library
    end

    def book_info(title)
        for book in @library
            if book[:title] == title
                return book
            end
        end
    end

    def book_rental_details(title)
        for book in @library
            if book[:title] == title
                return book[:rental_details]
            end
        end
    end

    def add_book(title)
        @library << {title: title, rental_details: {student_name: "", date: ""}}
    end

    def change_rental_details(title, student_name, date)
        for book in @library
            if book[:title] == title
                book[:rental_details][:student_name] = student_name
                book[:rental_details][:date] = date
            end
        end
    end
end
