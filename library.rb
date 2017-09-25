class LibraryLoans
    def initialize(title, student_name, date)
        @title = title
        @student_name = student_name
        @date = date
        @library = [
            {
            title: @title,
            rental_details: {student_name: @student_name, date: @date}
            }]
    end

    def book_list()
        for book in @library
            return "#{book[:title]}, #{book[:rental_details][:student_name]}, #{book[:rental_details][:date]}"
        end
    end

    def book_info(title)
        for book in @library
            if book[:title] == title
                return "#{book[:title]}, #{book[:rental_details][:student_name]}, #{book[:rental_details][:date]}"
            end
        end
    end

    def book_rental_info(title)
        for book in @library
            if book[:title] == title
                return "#{book[:rental_details][:student_name]}, #{book[:rental_details][:date]}"
            end
        end
    end

    def add_book(title)
        @library << {title: title, rental_details: {student_name: "", date: ""}}
    end

end
