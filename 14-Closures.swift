// HOW TO CREATE AND USE CLOSURES..
func greetUser () {
    print("Hi There!");
}

greetUser();

var greetCopy = greetUser;
greetCopy();


// Closure with parameters
let sayHello = { (name: String) -> String in 
    "Hi \(name)"
}

let myHello = sayHello("John");
print(myHello);


// Calling with type annotations..
var greetCopy2: () -> Void = greetUser;
greetCopy2();


// Demonstrating some more codes..
func getUserData(for id: Int) -> String {
    if id == 2000 {
        return "Taylor Swift";
    } else {
        return "Anonymous";
    }
}

let data: (Int) -> String = getUserData;
let user = data(2000);
print(user);


// Let's sorting the array again..
let team = ["John", "Anik", "Taylor", "Asad", "Swift"];
let sortedTeam = team.sorted();
print(sortedTeam);


// Checkout another example..
// That will customise that sort function..
func capitalFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Asad" {
        return true;
    } else if name2 == "Asad" {
        return false;
    }

    return name1 < name2;
}

let captainFirstTeam = team.sorted(by: capitalFirstSorted);
print(captainFirstTeam);


// Another way of doing it..
let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in 
    if name1 == "Asad" {
        return true;
    } else if name2 == "Asad" {
        return false;
    }

    return name1 < name2;
});

print(captainFirstTeam2);