// Variables for swift..
let number1: Int = 10;
let number2: Int = 20;

let sum: Int = number1 + number2;
print("Result is : ", sum);


// String types..
var fName: String = "Asad";
var lName: String = "Anik";
var spacer: String = " ";

let makeAFullName = fName + spacer + lName;
print("My name is \(makeAFullName)");


// Boolean types..
let iAmAStudent: Bool = true;

if iAmAStudent == true {
    print("I am a Student");
} else {
    print("No I am not a Student");
}



// Array..
let ourStudents: [String] = ["Asad", "Anik", "Mac", "Hossain", "Gazi"];

for student in ourStudents {
    print(student);
}



// Functions..
func sayYourName(name: String) -> String {
    return "My Name is : \(name)";
}

let nameHere = sayYourName(name: ourStudents[0]);
print(nameHere);



// Guards..
func validateStudent(isGateOpen: Bool = false) -> Void {
    guard isGateOpen else {
        print("GATE IS CLOSED!!")
        return;
    }

    print("----- WELCOME HERE THE GATE IS OPEN -----");
}

validateStudent(isGateOpen: true);




// Perfect Example of Guard..
func greetUser(isLoggedIn: Bool, username: String?) {
    guard isLoggedIn else {
        print("Please log in to continue.") // Print a message if the user is not logged in
        return // Exit the function if the user is not logged in
    }

    guard let username = username else {
        print("Welcome, Guest!") // Print a welcome message for guests (users without a username)
        return // Exit the function if the username is nil
    }

    // If the execution reaches here, it means the user is logged in and has a username
    print("Welcome, \(username)!") // Print a personalized welcome message for logged-in users
}

// Example usage:
greetUser(isLoggedIn: false, username: nil) // Output: Please log in to continue.
greetUser(isLoggedIn: true, username: nil) // Output: Welcome, Guest!
greetUser(isLoggedIn: true, username: "John") // Output: Welcome, John!




// LETS CHECK THE OPTIONALS..
var optionalString: String? = "Hello";
optionalString = nil;

if let unWrappedOptional = optionalString {
    print("THAT IS OUR OPTIONAL STRING HERE -- \(unWrappedOptional)");
} else {
    print("THE OPTIONAL VALUE IS NIL");
}



// TRY THE PATTERN MATCHING..
enum Direction {
    case north
    case south
    case east
    case west
};

func printDirection(_ direction: Direction) -> Void {
    switch direction {
    case .north:
        print("NORTH SIDE");
        case .south:
            print("SOUTH SIDE");
            case .east:
                print("EAST SIDE");
                case .west:
                    print("WEST SIDE");
    }
}

let currentDirection = Direction.north;
printDirection(currentDirection);



// CLOSURES..
let numbers: [Int] = [34, 23, 11, 5, 78, 0, 1, 3, 2];
let sortedNumbers: [Int] = numbers.sorted{ $0 < $1 };
print("SORTED ARRAY -- ", sortedNumbers);



// POP - PROTOCOL ORIENTED PROGRAMMING..
protocol Vehical {
    var wheels: Int { get };
    func drive();
};

struct Car: Vehical {
    let wheels: Int = 10;

    func drive() {
        print("----- CAR STARTED HERE LET'S DRIVE -----");
    }
}

let myCar = Car();
myCar.drive();



// VALUE TYPES STRUCT..
struct Point {
    var num1: Int;
    var num2: Int;
}

var myPoints = Point(num1: 24, num2: 20);
print("POINT OF NUMBER-2 ---- \(myPoints.num2)")

myPoints.num2 = 22;
print("INCREASED THE NUMBER-2 ---- \(myPoints.num2)");



// ACCESS CONTROL..
struct Bike {
    public var name: String;
    private var price: Float;

    init(_ name: String, _ price: Float) {
        self.name = name;
        self.price = price;
    }

    func getBikePrice () -> String {
        return "\(self.name) R1M - Price = $\(self.price)";
    }
}

let myBike = Bike("YAMAHA R1M", 3400.0);
let myBikePrice = myBike.getBikePrice();
print(myBikePrice);
