// MARK: Phase 4 (WarmingUp Swift)
// Struct Example with Person Struct..
struct Person {
    var name: String;
    var age: Int;
    
    func greet() -> Void {
        print("Hello, my name is \(self.name)!");
    }
    
    // Mutating method (Allows modifying properties)
    mutating func celebrateBrithday() -> Void {
        self.age += 1;
        print("\(self.name) is now \(self.age) years old!");
    }
}


// Using the struct with that way..
var myPerson = Person(name: "Jenny", age: 19);
myPerson.greet();
myPerson.celebrateBrithday();


// MARK: CLASS ON SWIFT
class Animal {
    private var name: String;
    private var gender: String;
    
    init(name: String, gender: String) {
        self.name = name;
        self.gender = gender;
    }
    
    // GET: getting sound
    func makeSound() {
        print("A \(self.gender) - \(self.name) is making sounds!");
    }
    
    // SET: switch gender
    func setGender(gender: String) {
        self.gender = gender;
    }
}

// Using Class by taking Object Instance of the Class..
var myAnimal = Animal(name: "Lion King", gender: "Male");
myAnimal.makeSound();
myAnimal.setGender(gender: "Female");
myAnimal.makeSound();


// MARK: VALUE vs REFERENCES (STRUCT/CLASS)
// Test how value vs. reference types behave..
// Struct Example (Value Type)
struct Rectangle {
    var width: Double;
    var height: Double;
    
    func area() -> Double {
        return self.width * self.height;
    }
}

var rect1 = Rectangle(width: 20, height: 10);
var rect2 = rect1; // Copied the value..
rect2.width = 10;
// Outputs: 10 for rect2 (Remains Unchanged).
print("rect1: \(rect1.width) \n rect2: \(rect2.width)");

// Class Example (Reference Type)
class Circle {
    private let PI: Double = 3.1416;
    var radius: Double;
    
    init(radius: Double) {
        self.radius = radius;
    }
    
    func circumference() -> Double {
        return 2 * self.PI * self.radius;
    }
}

let circle1 = Circle(radius: 30);
let circle2 = circle1; // Shares the same instance
circle2.radius = 10;
// Outputs: 10 for both (Both are Updated)
print("circle1: \(circle1.radius) \n circle2: \(circle2.radius)");


// MARK: STRUCT COMPUTED PROPERTY
// Create a Square Struct that automatically calculates its area..
struct Square {
    var sideLength: Double;
    
    // Computed Property..
    var area: Double {
        return sideLength * sideLength;
    }
}

let mySquare = Square(sideLength: 4);
print("COMPUTED PROPERTY: Area of square: \(mySquare.area)");


// MARK: INHERITENCE AND OVERRIDING CLASS
// Define a base class for a Vehicle and inherit it to create specific vehicle like Car and Jeep
class Vehicle {
    var speed: Int;
    
    init(speed: Int) {
        self.speed = speed;
    }
    
    func describe() {
        print("This is vehicle moves at: \(self.speed) km/h");
    }
}

// Inherited Vehicle Class One Level..
class Car: Vehicle {
    private var brand: String;
    
    init(speed: Int, brand: String) {
        self.brand = brand;
        super.init(speed: speed);
    }
    
    override func describe() {
        print("This car is a \(self.brand) moving at \(self.speed) km/h.");
    }
}

let myCar = Car(speed: 120, brand: "BMW");
myCar.describe();

// Inherited Vehicle Class One Level..
class Jeep: Vehicle {
    var brand: String;
    
    init(speed: Int, brand: String) {
        self.brand = brand;
        super.init(speed: speed);
    }
    
    override func describe() {
        print("This jeep is a \(self.brand) moving at \(self.speed) km/h.");
    }
}

let myJeep = Jeep(speed: 220, brand: "Land-Cruiser");
myJeep.describe();


// MARK: OVERRIDING CONSTRUCTOR (INITIALIZER)
// Inherited Multiple Level..
class Suv: Jeep {
    override init(speed: Int, brand: String) {
        super.init(speed: speed, brand: brand);
    }
    
    override func describe() {
        print("This SUV is a \(self.brand) moving at \(self.speed) km/h.");
    }
}

let mySUV = Suv(speed: 250, brand: "Mercedes-Banz");
mySUV.describe();


