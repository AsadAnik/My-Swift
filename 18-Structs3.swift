// HOW TO CREATE CUSTOM INITIALIZERS..
// This is kind of constructor method of OOP world..
struct Person {
    let name: String;
    let age: Int;
    let profession: String;

    init(name: String, age: Int, profession: String) {
        self.name = name;
        self.age = age;
        self.profession = profession; 
    }
}

let person = Person(name: "Asad", age: 23, profession: "Engineer");
print("Name: \(person.name), Age: \(person.age), Profession: \(person.profession)");    

// With Another Example..
struct Player {
    let name: String;
    let number: Int;

    init(name: String) {
        self.name = name;
        number = Int.random(in: 1...20)
    }
}

let player = Player(name: "Messi");
print("Name: \(player.name), Number: \(player.number)");