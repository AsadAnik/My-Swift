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

