import Foundation

class Book {
    let store: [Int: String]
    
    init(books: [Int: String]) {
        self.store = books;
    }
    
    // THE TRAVERSING AREA HERE..
    func traversingBook() -> Void {
        for i in self.store {
            print("BOOK = \(i)");
        }
    }
    
    // GETTING SPECIFIC BOOK..
    func findBookById(bookId: Int) -> String? {
        return self.store[bookId];
    }
    
    // BOOK VIEW METHOD..
    func viewBook (bookToView: String?, bookId: Int) -> Void {
        if let book = bookToView {
            print("Well that is your book here I found it - \(book) - ID - \(bookId)");
            
        } else {
            print("With that book ID we didn't found any book here, Sorry for that - ID - \(bookId)");
        }
    }
    
    // UPDATE THE BOOK..
    func updateBook(bookId: Int, newBook: String) -> Void {
        // Guard check for conditional checking..
        guard var bookToUpdate = self.store[bookId] else {
            print("Book with ID - \(bookId) not found for update!");
            return;
        }
        
        // Update..
        bookToUpdate = newBook;
        print("Updated book ID: \(bookId), Title: \(bookToUpdate)");
    }
}


// There is an array for the application and this app will be our store of books..
let bookStore: [Int: String] = [
    0: "T-Mobile in Risk",
    1: "MacBook is getting wierd",
    2: "Wierd JavaScript"
];

// MAKING THE OBJECT..
let myBook = Book(books: bookStore);

//myBook.traversingBook();
let bookId: Int = 0;
let foundBook = myBook.findBookById(bookId: bookId);
myBook.viewBook(bookToView: foundBook, bookId: bookId);
