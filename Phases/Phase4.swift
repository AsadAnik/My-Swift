// MARK: Phase 5 (WarmingUp Swift)
// Protocols (Interfaces) in Swift
// Classes, Structs, or Enums conform Protocols to provide actual implementations.
protocol Vehicle {
    var speed: Int { get }; // A read-only property by { get }
    func decription(); // A method without implementation
}

struct Car: Vehicle {
    var speed: Int;
    var brand: String;
    
    func decription() {
        print("This car is a \(self.brand) moving at \(self.speed) km/h");
    }
}

let myCar = Car(speed: 150, brand: "Toyota");
myCar.decription();


// MARK: PROTOCOL INHERITANCE
// Protocols can inherit other protocols
protocol EnginePowered {
    var horsepower: Int { get };
}

protocol Bike: EnginePowered {
    var speed: Int { get set }; // A read and write only property by { get get }
    func description();
}

struct Motorbike: Bike {
    var speed: Int;
    var horsepower: Int
    
    func description() {
        print("This motorbike has \(self.horsepower) HP and moves at \(self.speed) km/h.");
    }
}

var myBike = Motorbike(speed: 230, horsepower: 999);
myBike.description();


// MARK: PROTOCOL COMPOSITION
// We can combine multiple protocols using the & operator..
protocol Insurable {
    func insuranceCost() -> Double;
}

protocol Rentable {
    func rentalPrice() -> Double;
}

struct House: Insurable, Rentable {
    var area: Int;
    
    func insuranceCost() -> Double {
        return Double(area) * 1.2;
    }
    
    func rentalPrice() -> Double {
        return Double(area) * 0.8;
    }
}

func evaluate(property: Insurable & Rentable) {
    print("Insurance Cost: \(property.insuranceCost())");
    print("Rental Price: \(property.rentalPrice())");
}

let house = House(area: 100);
evaluate(property: house);


// MARK: PROTOCOL AS A BLUEPRINT
protocol Shape {
    var firstName: String { get set };
    var lastName: String { get set };
    var email: String { get };
    var fullName: String { get };
    mutating func setName(firstName: String, lastName: String) -> Void;
}

struct ShapeStruct: Shape {
    var firstName: String;
    var lastName: String;
    var email: String;
    
    var fullName: String {
        return "\(self.firstName) \(self.lastName)";
    }
    
    mutating func setName(firstName: String, lastName: String) -> Void {
        self.firstName = firstName;
        self.lastName = lastName;
    }
}

var shapedMyStuff = ShapeStruct(firstName: "Tim", lastName: "Cook", email: "engr.asadanik@gmail.com");
shapedMyStuff.setName(firstName: "Asad", lastName: "Anik");
print("Fullname: \(shapedMyStuff.fullName)");


// MARK: PROTOCOL WITH CLASSES
// Create a Drivable protocol. Conform a Car class and a Bike class to it..
protocol Drivable {
    var type: String { get };
    var engineCC: Int { get };
    var vehicleNumber: String { get set };
    func drive() -> Void;
    func updateVehicleNumber(newVehicleNumber: String) -> Void;
}

class AnotherDrivableCar: Drivable {
    var type: String;
    var engineCC: Int;
    var vehicleNumber: String;
    
    init(type: String, engineCC: Int, vehicleNumber: String) {
        self.type = type;
        self.engineCC = engineCC;
        self.vehicleNumber = vehicleNumber;
    }
    
    func drive() -> Void {
        print("I am running with \(self.engineCC)CC, and plat No.\(self.vehicleNumber)");
    }
    
    func updateVehicleNumber(newVehicleNumber: String) -> Void {
        self.vehicleNumber = newVehicleNumber;
    }
}
