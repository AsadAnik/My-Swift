// HOW TO ACCEPT FUNCTIONS AS PARAMETERS..
// Trailing Closures..
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]();

    for _ in 0..<size {
        let newNumber = generator();
        numbers.append(newNumber);
    }

    return numbers;
}

func generateNumber() -> Int {
    Int.random(in: 1...20);
}

let newRolls = makeArray(size: 10, using: generateNumber);
print(newRolls);


// THE WAY OF DOING SWIFTYYY FEELS..
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) -> Void {
    print("First thing to do");
    first();

    print("Second thing to do");
    second();

    print("Third thing to do");
    third();
}

// calling with swiftyy way..
doImportantWork {
    print("The First Calling Ended...");

} second: {
    print("The Second Calling Ended...");

} third: {
    print("The Third Calling Ended...");
}