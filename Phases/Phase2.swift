import Foundation


// MARK: EXTERNAL/INTERNAL NAME FUNCTION
func myFullName(of fname: String, and lname: String) -> String {
    return "I am \(fname) \(lname) for you here.";
}

print("WITH EXTERNAL NAME: \(myFullName(of: "Asad", and: "Anik"))");

// hide the external naming...
func myFullName2(_ fname: String, _ lname: String) -> String {
    return "My fullname is: \(fname) \(lname)";
}

print("WITHOUT EXTERNAL NAME: \(myFullName2("Asad", "Anik"))");


// MARK: SIMPLE CLOSURE
// It is can be use like arrow function or lamda function..
let greet = { (name: String) -> String in
    return "Hello, \(name)"
};

print("SIMPLE CLOSURE: \(greet("Asad"))");


// MARK: PASS CLOSURE AS ARGUMENTS
// Closures are often passed as arguments to functions or methods..
func calculate(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b);
}

let sum = calculate(a: 10, b: 5, operation: { (x, y) in x + y });
print("SUM by CLOSURE: \(sum)");

// If the closure is the last argument, use trailing closure syntax for readability
let sumWithTrailingClosure = calculate(a: 5, b: 5) { $0 + $1 };
print("SUM by TRAILING CLOSURE: - \(sumWithTrailingClosure)");


// MARK: CLOSURE CAPTURING VALUES
// Closures can "capture" values from their surronding scope..
func makeIncrementerCapture() -> () -> Int {
    var counter = 0;
    
    let incrementer = {
        counter += 1;
        return counter;
    };
    
    return incrementer;
}

let incrementCamptureResult = makeIncrementerCapture();
print(incrementCamptureResult());
print(incrementCamptureResult());
print(incrementCamptureResult());


// MARK: ASYNCHRONOUS TASK IN CLOSURE
// Calls the closure with the result
// Output: Fetched Data!
func fetchData(completion: (String) -> Void) -> Void {
    let data = "Fetched Data!";
    completion(data);
}

fetchData { result in print(result) };


// MARK: CLOSURE CHALLENGES
// 1. Write a function operate that takes two integers and a closure, then applies the closure to the numbers.
func operate(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b);
}

// 1st Way of Calling..
let operationCall1: Int = operate(a: 10, b: 20, operation: { (a: Int, b: Int) -> Int in
    return a + b;
});
print(operationCall1);

// 2nd Way of Calling..
let operationCall2 = operate(a: 20, b: 20) { $0 + $1 };
print(operationCall2);


// 2. Write closure that reverse items of an array only..
let myOwnArray = ["Alice", "Bob", "Charlie"];

let reverseWords = myOwnArray.map { String($0.reversed()) };
print(reverseWords);
