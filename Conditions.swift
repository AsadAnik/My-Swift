
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
