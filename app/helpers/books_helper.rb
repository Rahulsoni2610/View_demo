module BooksHelper
   def format_book(book)
    if book
      "This is My. #{book.name}"
    end
  end
end
