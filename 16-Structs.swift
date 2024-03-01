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

