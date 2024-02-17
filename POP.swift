

// POP - PROTOCOL ORIENTED PROGRAMMING..
protocol Vehical {
    var wheels: Int { get };
    func drive();
};

struct Car: Vehical {
    let wheels: Int = 10;

    func drive() {
        print("----- CAR STARTED HERE LET'S DRIVE -----");
    }
}

let myCar = Car();
myCar.drive();



// VALUE TYPES STRUCT..
struct Point {
    var num1: Int;
    var num2: Int;
}

var myPoints = Point(num1: 24, num2: 20);
print("POINT OF NUMBER-2 ---- \(myPoints.num2)")

myPoints.num2 = 22;
print("INCREASED THE NUMBER-2 ---- \(myPoints.num2)");



// ACCESS CONTROL..
struct Bike {
    public var name: String;
    private var price: Float;

    init(_ name: String, _ price: Float) {
        self.name = name;
        self.price = price;
    }

    func getBikePrice () -> String {
        return "\(self.name) R1M - Price = $\(self.price)";
    }
}

let myBike = Bike("YAMAHA R1M", 3400.0);
let myBikePrice = myBike.getBikePrice();
print(myBikePrice);
