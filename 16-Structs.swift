// CREATING YOUR OWN STRUCTS..
struct Album {
    let name: String;
    let artist: String;
    let year: Int;

    func printtSummary() {
        print("\(name) by \(artist) \(year)");
    }
}

let redAlbum = Album(name: "Red Album", artist: "Asad Anik", year: 2024);
let wingAlbum = Album(name: "Wing Album", artist: "Wing Merry", year: 2025);

redAlbum.printtSummary();
wingAlbum.printtSummary();


// Lets create an Employee struct to his Vacation taking..
// With the Mutating Function of Struct..
// The word Mutating for its touching and chaning the data of struct, thats why its called Mutating Function..
struct Employee {
    let name: String;
    let position: String;
    var vacationRemaining: Int;

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days;
            print("\(name) - \(position), has taken \(days) days of vacation");
            print("Vacation remaining: \(vacationRemaining) days now");
        } else {
            print("Opps there is no enough vacation for \(name) - \(position)");
        }
    }
}

var myEmployee = Employee(name: "Asad Anik", position: "Software Engineer", vacationRemaining: 10);
myEmployee.takeVacation(days: 2);

// Lets try to change the value of the Vacation Remaining..
myEmployee.vacationRemaining += 10;
print(myEmployee.vacationRemaining);


// HOW TO COMPUTE PROPERTY VALUES DYNAMICALLY..
struct Player {
    let name: String;
    let vacationAllocated = 14;
    var vacationTaken = 0;

    // Computed Property..
    var vacationRemaining: Int {
        return vacationAllocated - vacationTaken;
    }
}

var archer = Player(name: "Archer");
archer.vacationTaken = 10;
print(archer.vacationRemaining);


// Another example with a computed property..
struct Audio {
    let title: String;
    let artist: String;
    var vacationAllocated = 10;
    var vacationTaken = 0;

    // Computed Property..
    // With Setter and Getter..
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken;
        }

        set {
            vacationAllocated = vacationTaken + newValue;
        }
    }
}

var myMusic = Audio(title: "My Music", artist: "Asad Anik");
myMusic.vacationTaken = 7;
print(myMusic.vacationRemaining);

// Setting the value of the Computed Property..
myMusic.vacationRemaining = 10;
print("VACATION ALLOCATED -- ", myMusic.vacationAllocated);
