// HOW TO CREATE AND USE EXTENSIONS..
import Cocoa;

// Lets say I have a function for doing something..
let quote = "  Hello World   ";

// FUNCTIONS WAY..
func trimText(_ text: String) -> String {
    text.trimmingCharacters(in: .whitespacesAndNewlines);
}

let timmedText = trimText(quote);
print("TRIMMED BY FUNCTION - ", timmedText);


// Lets doing the same thing but using an extension..
// EXTENSIONS WAY..
extension String {
    func trimmedText() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines);
    }
}

let trimmedTextByExtension = quote.trimmedText();
print("TRIMMED BY EXTESNION - ", trimmedTextByExtension);


// Lets making Custom Initializer with Extension..
struct Book {
    let title: String;
    let author: String;
    let price: Double;

    init(title: String, author: String, price: Double) {
        self.title = title;
        self.author = author;
        self.price = price;
    }
}

/**
 So, if we wanted our Book struct to have the default memberwise initializer as well as our custom initializer, 
 we’d place the custom one in an extension, like this:
**/
extension Book {
    init(title: String, author: String, price: Double) {
        self.title = title;
        self.author = author;
        self.price = price;
    }
}