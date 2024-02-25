
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

// Example with array list here..
var numbers = [1, 2, 3];
// Add a 4th
numbers.append(4);

if numbers.count > 3 {
    numbers.remove(at: 0);
}

print(numbers)

// Multiple Checking..
let temp = 10;
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// Another example..
let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game")
}

// we’re going to create an enum called TransportOption, which contains five cases: airplane, helicopter, bicycle, car, and scooter. We’ll then assign an example value to a constant, and run some checks:
// If we are going somewhere by airplane or by helicopter, we’ll print “Let’s fly!”
// If we’re going by bicycle, we’ll print “I hope there’s a bike path…”
// If we’re going by car, we’ll print “Time to get stuck in traffic.”
// Otherwise we’ll print “I’m going to hire a scooter now!”
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
};

let transport = TransportOption.airplane;

if transport == .airplane || transport == .helicopter {
    print("Let's fly!");
} else if transport == .bicycle {
    print("I hope there's a bike path..");
} else if transport == .car {
    print("Time to get stuck in traffic.");
} else {
    print("I am going to hire a scooter now!");
}

// Example with Enum and Swift Statement..
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun;

switch forecast {
case .sun:
    print("It should be a nice day.");
case .rain:
    print("Pack an umbrella.");
case .wind:
    print("Wear something warm");
case .snow:
    print("School is cancelled.");
case .unknown:
    print("Our forecast generator is broken!");
}

// Another example..
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

// With Fallthrough..
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// Ternary Conditions .....
let age = 18
let canVote = age >= 18 ? "Yes" : "No";
print(canVote);

// Example with Array..
let names = ["Jayne", "Kaylee", "Mal"];
let crewCount = names.isEmpty ? "No one" : "\(names.count) people";
print(crewCount);

// For Theme selecting Conditions example..
enum Theme {
    case light, dark
};

let theme = Theme.dark;

let background = theme == .dark ? "black" : "white";
print(background);

// If-else inside print..
let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon");