// HOW TO CREATE AND USE PROTOCOLS..
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50;
    }

    func travel(distance: Int) {
        print("Car traveling \(distance) miles")
    }

    func openSunRoof() {
        print("Car sunroof is opening now");
    }
}

// To finish off, 
// let’s update the commute() function from earlier so that it uses the new methods we added to Car:
func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Car is taking a long time to travel \(distance) miles");
    } else {
        print("Travelling...")
        vehicle.travel(distance: distance);
    }
}

let car = Car();
commute(distance: 1000, using: car);


// Lets making another struct with same Protocol..
struct Bike: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 100;
    }

    func travel(distance: Int) {
        print("Bike traveling \(distance) miles")
    }
}

let bike = Bike();
commute(distance: 500, using: bike);


// Making another Protocol..
// This protocol is used to define the behavior of a vehicle that can fly.
protocol FlyableVehicle: Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
}

struct AirPlane: FlyableVehicle {
    var name: String = "Airplane";
    var currentPassengers: Int = 0;

    func estimateTime(for distance: Int) -> Int {
        distance / 10;
    }

    func travel(distance: Int) {
        print("Airplane traveling \(distance) miles");
    }
}

var airplane = AirPlane();
commute(distance: 1000, using: airplane);

airplane.name = "Boing 555";
airplane.currentPassengers = 5000;
print("Name of the Airplane is = \(airplane.name) and current passengers are = \(airplane.currentPassengers)");