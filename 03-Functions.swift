import Cocoa

// Functions..
func sayYourName(name: String) -> String {
    return "My Name is : \(name)";
}

let nameHere = sayYourName(name: "Steven Jobs");
print(nameHere);

// Example of built-in function here..
// isMultiple(of:) is a function that belongs to integers..
let number = 123;

if number.isMultiple(of: 2) {
    print("Even");
} else {
    print("Odd");
}

// Lets check one user defined function example..
func printTimeTables(number: Int, end: Int) -> Void {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)");
    }
}

printTimeTables(number: 5, end: 10);

// sqrt function.. (have to import Cocoa for sqrt)
let root = sqrt(8);
print("ROOT of 8 -> \(root)");

// Example of Roll Dice user Defined Function..
func rollDice() -> Int {
    return Int.random(in: 1...6);
}

let result = rollDice();
print("Result Int for Dice between ", result);


// Example of Function which will return Boolean..
func isIdentical(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted();
}

let identical: Bool = isIdentical(string1: "Asad", string2: "Asad");
print("IDENTICAL -- ", identical);


// Example with Pythagoras..
func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b;
    let root = sqrt(input);
    return root;
}

let c = pythagoras(a: 2, b: 4);
print("Pythagoras - \(c)");


// Example with Uppercase Checker Function..
func isUppercased(myString: String) -> Bool {
    return myString == myString.uppercased();
}

let checkUppercasedString = isUppercased(myString: "ASAD");
print("IS UPPERCASED - ", checkUppercasedString);


// Example with returning the Array of Strings..
func getUser() -> [String] {
    return ["Asad", "Anik", "MacBook"];
}

let gettingUsers = getUser();
print("USERS -> ", gettingUsers);


// Example with returning Dictionary of Strings..
func getDics() -> [String: String] {
    return [
        "name": "Asad",
        "gender": "Male"
    ];
}

let gettingDictionary = getDics();
print("USERS DICTIONARY - ", gettingDictionary);


// Example with returning Tuple..
func getTuple() -> (firstName: String, lastName: String) {
    (firstName: "Asad", lastName: "Anik")
}

let gettingTuple = getTuple();
print("USER TUPLE - FirstName -> \(gettingTuple.firstName), LastName -> \(gettingTuple.lastName)");

// 2nd Example of returning Tuple..
func getTuple2() -> (name: String, age: Int) {
    (name: "Asad Anik", age: 24)
}

let gettingTuple2 = getTuple2();
print("Name: \(gettingTuple2.0) | Age: \(gettingTuple2.1)");


// Access with different way from Tuple..
func getDifferentTuple() -> (name: String, age: Int) {
    (name: "Swift", age: 10)
}

let gettingDiffTuple = getDifferentTuple();
let nameTuple = gettingDiffTuple.name;
let ageTuple = gettingDiffTuple.age;
print("Name: \(nameTuple) and Age: \(ageTuple)");

// Getting individual values Example..
let (name, age) = getDifferentTuple();
print("Name -> \(name) | Age -> \(age)");

// We can Skipping values if needed..
// We renamed the age value also..
let (_, age: renamedAge) = getDifferentTuple();
print("AGE: \(renamedAge)");


// Example of Calling function with different Parameters..
func sendMail(name: String) -> String {
    return "Sending Email to -> \(name)";
}

func sendMail(title: String) -> String {
    return "Sending Email to Title -- \(title)";
}

func sendMail(location: String) -> String {
    return "Seding to - \(location), location";
}

let nameEmail = sendMail(name: "Asad");
let locationEmail = sendMail(location: "Dhaka");
let titleEmail = sendMail(title: "Macbook Pro")

print(nameEmail);
print(locationEmail);
print(titleEmail);


// Example of Function with for keyword's use..
func printTimeTables(for number: Int) {
    for i in 1...10 {
        print("\(i) x \(number) = \(i * number)");
    }
}

printTimeTables(for: 5);


// Example with Possitioned Arguments..
func possitionedFunc(_ a: Int, _ b: Int) -> Int {
    return a + b;
}

let sum = possitionedFunc(12, 10);
print("SUM = \(sum)");


// Example with for and end loop and function..
// There is default parameter..
func printTimesTable(for number: Int, end: Int = 10) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)");
    }
}

printTimesTable(for: 5);
printTimesTable(for: 6, end: 5);


// Built-In function to remove all array's element..
// keepingCapacity is for us to keeping existing capacity of array size but remove all elements..
var myArr = ["Asad", "Anik", "Crusial", "Part", "Here"];
print("BEFORE REMOVING COUNTS - ", myArr.count);
myArr.removeAll(keepingCapacity: true);
print("AFTER REMOVING COUNTS - ", myArr.count);