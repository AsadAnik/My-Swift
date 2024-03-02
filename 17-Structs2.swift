// HOW TO TAKE ACTION WHEN A PROPERTY CHANGES..
// THATS CALL OBSERVER PROPERTY..
// Thoes are runs when properties changes..
struct Game {
    var score = 0
}

var game = Game()
game.score += 10
print("Score is now \(game.score)")

game.score += 3
print("Score updated now \(game.score)")


/* With property observers we can solve this problem by 
    attaching the print() call directly to the property using didSet, 
    so that whenever it changes – wherever it changes – we will always run some code.
 */

struct App {
    var loggedIn = 0 {
        didSet {
            print("loggedIn now \(loggedIn)")
        }
    }
}

var app = App()
app.loggedIn += 5;
app.loggedIn += 3;
app.loggedIn += 1;


// Another Interesting Example of Obversers..
struct Book {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value is: \(newValue)")
        }

        didSet {
            print("Current value is: \(contacts)")
            print("Old value was: \(oldValue)")
            print("\n")
        }
    }
}

var myBook = Book()
myBook.contacts.append("Asad");
myBook.contacts.append("Anik");
myBook.contacts.append("Mohammad");