// LETS TRY WITH LOOPS IN SWIFT..
let platforms = ["MacOS", "iOS", "iPadOS", "VisionOS", "WatchOS"];

for os in platforms {
    print("Thoes are the platforms -- \(os)");
}

// Loop with Range Numbers..
for i in 1...10 {
    print("Looping with - \(i) x5 = \(i * 5)");
}

// Looping all Ranges..(with Nested Loop)..
for i in 1...5 {
    print("Iterating - \(i)");
    
    for j in 1...10 {
        print("  \(j) x\(i) = \(j * i)");
    }
}

// Less then range loop..
for i in 1..<10 {
    print("i is -> \(i)");
}

// Lets make an enjoyment with that..
var layrics = "I am gonna love";

for _ in 1..<3 {
    layrics += " love";
}
layrics += " Swift"

print(layrics);

/**
* === WHILE LOOP ===
**/
var counter = 10;

while counter > 0 {
    print("\(counter)...");
    counter -= 1;
}

// Another example here..
var roll = 0;

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

/**
* === EXAMPLE WITH FOR LOOP === (Break, Continue)
**/
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"];

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue;
    }
    print("Found pictures: \(filename)");
}

// Break example loop..
for counter in 1...10 {
    if counter == 5 {
        break;
    }
    print("Counter = \(counter)");
}

