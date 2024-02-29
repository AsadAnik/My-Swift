// HOW TO CREATE AND USE CLOSURES..
// Closure is similar to the CallBack function of JavaScript..
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


// Making Closures more better..
let captainFirstTeam3 = team.sorted(by: { name1, name2 in 
    if name1 == "Anik" {
        return true;
    } else if name2 == "Anik" {
        return false;
    }

    return name1 < name2;
});

print(captainFirstTeam3);


// Lets making more shortern way..
let captainFirstTeam4 = team.sorted {
    if $0 == "Asad" {
        return true;
    } else if $1 == "Asad" {
        return false;
    }

    return $0 < $1;
};

print(captainFirstTeam4);


// Make reverse sorting..
let captainFirstTeam5 = team.sorted(by: { $0 > $1 });
print(captainFirstTeam5);


// Make more shortern way..
let captainFirstTeam6 = team.sorted { $0 < $1 };
print(captainFirstTeam6);


// Another way of doing sorting..
let captainFirstTeam7 = team.sorted { $0 > $1 };
print(captainFirstTeam7);


// LETS CHECK THE FILTER FUNCTION..
let tOnly = team.filter { $0.hasPrefix("T") };
print(tOnly);


// UPPERCASED CHECK THE FUNCTION WITH MAP FUNCTION..
let uppercasedTeam = team.map { $0.uppercased() };
print(uppercasedTeam);