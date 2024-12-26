// MARK: Phase 6 (WarmingUp Swift)
// Extensions on Swift
// Use protocol extensions to provide default implementations.
protocol Greetable {
    func greet()
}

extension Greetable {
    func greet() {
        print("Hello from greetable!");
    }
}

struct User: Greetable {}

let myUser = User();
myUser.greet();


// MARK: EXTENSION MORE EXAMPLES
protocol Vehicle {
    var brand: String { get set };
    var engineCC: String { get };
    func startEngine() -> Void;
    mutating func setBrand(newBrand: String) -> Void;
    func getBrand() -> Void;
}

extension Vehicle {
    func startEngine() -> Void {
        print("Started Engine now.. (from Extension) \(brand) \(engineCC)");
    }
    
    mutating func setBrand(newBrand: String) -> Void {
        brand = newBrand;
    }
    
    func getBrand() -> Void {
        print("This brand is (from Extension) \(brand)");
    }
}

struct Truck: Vehicle {
    var brand: String;
    var engineCC: String;
}

var myTruck = Truck(brand: "TOYOTA", engineCC: "1200cc");
myTruck.getBrand();
myTruck.setBrand(newBrand: "Ferrari");
myTruck.startEngine();
myTruck.getBrand();


// MARK: ASSOCIATED TYPES WITH PROTOCOLS
// Define flexible and generic requirements
protocol Container {
    associatedtype Item
    mutating func add(item: Item) -> Void;
    var items: [Item] { get }
}

struct IntContainer: Container {
    var items: [Int] = [Int]();
    
    mutating func add(item: Int) -> Void {
        self.items.append(item);
    }
}

var myIntCotainer = IntContainer(items: [Int]());
myIntCotainer.add(item: 12);
myIntCotainer.add(item: 22);
print(myIntCotainer.items);
