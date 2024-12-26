var greeting = "Hello, playground";

// Function Example for Practice here
// Doing Sum here..
func doSum(firstNum: Int, lastNum: Int) -> Int {
    return firstNum + lastNum;
}

var num1: Int, num2: Int;
num1 = 5;
num2 = 10;

let result = doSum(firstNum: num1, lastNum: num2);
print("\n\nMy Sum here - ", result);


// MARK: FECTORIAL FUNCTION
// Doing Fectorial here..
func fectorial(of number: Int) -> Int {
    guard number >= 0 else {
        return -1;
    }
    return (1...max(number, 1)).reduce(1, *);
}

let result2 = fectorial(of: num1);
print("Fectorial of \(num1) is \(result2)");

// What Reduce doing here..
print([1, 2, 3].reduce(1, *));


// MARK: HIGHER ORDER FUNCTIONS
// Using map, filter and reduce to manipulate arrays in Swift..
let myArr = [1, 2, 3, 4];

// Map: Multiply each number by 2
let doubledArr = myArr.map { $0 * 2 };
print("Display the Multiplied array: \(doubledArr)");

// Filter: Keep only even numbers
let evenNumbersArr = myArr.filter { $0 % 2 == 0 };
print("Display the Even Numbers array: \(evenNumbersArr)");


// MARK: CLOSURES USING
// Write a closure to sort an array of names alphabetically in descending order..
let names = ["Alice", "Bob", "Charlie"];

// Sort: Closure using for Sorting
let sortedNames = names.sorted { $0 > $1 };
print("Sorted names array: \(sortedNames)");


// MARK: OPTIONALS BINDING
var firstName: String? = "Asad";
var lastName: String? = nil;

// Using if-let to unwrap both safely..
if let first = firstName, let last = lastName {
    print("Full name: \(first) \(last)");
} else {
    print("One of the names in nil.");
}

// MARK: GRADING SYSTEM
func getGrade(for score: Int) -> String {
    switch score {
    case 90...100:
        return "A+";
        
    case 80..<90:
        return "A";
        
    case 70..<80:
        return "A-";
        
    case 50..<70:
        return "B";
        
    default:
        return "F";
    }
}

let gradeCheck = getGrade(for: 80);
print("My Grade for \(50) is \(gradeCheck)");


// MARK: LOOPS
// For Loops, While Loops, Repeat-While Loops
let myArrForLooping = [1, 2, 3, 4, 5];

for num in myArrForLooping {
    print(num);
}

// While Loop
var counter = 0;
let myArrForLoopingSize = myArrForLooping.count;

while counter < myArrForLoopingSize {
    print("Countdown: \(myArrForLooping[counter])");
    counter += 1;
}

// Repeat-While Loops
var num = 1;

repeat {
    print("Number is \(num)");
    num += 1;
} while num <= myArrForLoopingSize;


// MARK: SUM OF EVEN NUMBERS
func sumOfEvens(upto limit: Int) -> Int {
    var sum = 0;
    
    for i in 1...limit {
        if i % 2 == 0 {
            sum += i;
        }
    }
    
    return sum as Int;
}


let result3 = sumOfEvens(upto: 5);
print("Sum of Evens here \(result3)");


// MARK: PATTERN PRINTING
let N = 5;

for i in 1...N {
    print(String(repeating: "*", count: i));
}


