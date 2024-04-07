// HOW TO CREATE YOUR OWN CLASSES.
class Game {
    var score = 0 {
        didSet {
            print("Score changed to \(score)");
        }
    };
}

var newGame = Game();
newGame.score = 10;
print("This is score here \(newGame.score)");


// THE CONSTRUCTOR METHOD IS CALLED HERE AS INITIALIZER METHOD INSIDE CLASS..
class Employee {
    let hours: Int;

    init(hours: Int) {
        self.hours = hours;
    }

    func mySummery() {
        print("I am developer here for you \(hours) hours. And that is my summery.");
    }
}

var myEmployee = Employee(hours: 10);
print("This is my employee hours \(myEmployee.hours)");
myEmployee.mySummery();


// MAKEING INHERITANCE IN SWIFT.
class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.");
    }
}

let myDeveloper = Developer(hours: 6);
print("My devleoper hours \(myDeveloper.hours)");

// Another inheritence here..
// With the Overriden Method which is mySummery() method.
class Designer: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.");
    }

    override func mySummery() {
        print("I am Designer here for you \(hours) hours. And that is my summery.");
    }
}

let myDesigner = Designer(hours: 4);
print("My designer hours \(myDesigner.hours)");
myDesigner.mySummery();


// INITIALIZER INHERITANCE, THEN SUPER INITIALIZER.
class Vehicle {
    let name: String;
    let numberOfWheels: Int;
    let isElectric: Bool;

    init(name: String, numberOfWheels: Int, isElectric: Bool) {
        self.name = name;
        self.numberOfWheels = numberOfWheels;
        self.isElectric = isElectric;
    }
}

// Let's make a car class who will inherit that vehicle class.
class Car: Vehicle {
    var numberOfSeats: Int;
    var isFourWheeler: Bool;

    init(name: String, numberOfWheels: Int, isElectric: Bool, numberOfSeats: Int, isFourWheeler: Bool) {
        self.numberOfSeats = numberOfSeats;
        self.isFourWheeler = isFourWheeler;

        super.init(name: name, numberOfWheels: numberOfWheels, isElectric: isElectric);
    }
}

let myCar = Car(name: "BMW", numberOfWheels: 4, isElectric: false, numberOfSeats: 5, isFourWheeler: true);
print("My car name \(myCar.name)");


// COPY CLASS.. (Hardly Copy)
class User {
    var username = "Asad Anik";
}

var user1 = User();
var user2 = user1;
user2.username = "Hacked User with Copy One";

print("PRIMARY USER - \(user1.username)");
print("USER - \(user2.username)");


// We can make Copy calss with method of class.. (Softly Copy)
// Now we can safely call copy() to get an object with the same starting data, 
// but any future changes won’t impact the original.
class Person {
    var name = "Annonymous";

    func copy() -> Person {
        let person = Person();
        person.name = self.name;
        return person;
    }   
}

var myPerson = Person();
var myPersonCopy = myPerson.copy();
myPersonCopy.name = "Hacked User with Copy Two";

print("My Person Name \(myPerson.name)");
print("My Person Copy Name \(myPersonCopy.name)");



// DEINITIALIZED METHOD IN SWIFT..
// deinitializer will be calling after the class is deallocated, or very end of the class.
class Laptop {
    let id: Int;
    let model: String;
    let price: Int;

    init(id: Int, model: String, price: Int) {
        self.id = id;
        self.model = model;
        self.price = price;

        print("Initialized the laptop \(model) with price $\(price)");
    }

    deinit {
        print("De-initialized the laptop \(model)");
    }
}


for i in 1...3 {
    print("=== \(i) is here ===");

    let myLaptop = Laptop(id: i, model: "MacBook Pro", price: 10000);
    print("Laptop is: \(myLaptop.model) and $\(myLaptop.price) is here");
}


// Lets appending the thing into another collection over there..
var laptopCollections = [Laptop]();

for i in 1...4 { 
    print("=== \(i) is here for iterations for pushing the new data ===");

    let myLaptop = Laptop(id: i, model: "MacBook Pro", price: 10000);
    laptopCollections.append(myLaptop);
}

print("Loop is finished - \(laptopCollections)");
laptopCollections.removeAll();
print("Array is clear - \(laptopCollections)");