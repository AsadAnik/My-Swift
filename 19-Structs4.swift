// HOW TO LIMIT ACCESS TO INTERNAL DATA USING ACCESS CONTROL..
// We can demostrate the problem with an example struct:
// If a method modifies properties of its struct, it must be mutating.
struct BankAccount {
    private var funds = 0;

    mutating func deposit(amount: Int) {
        funds += amount;
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount;
            return true;
        } else {
            return false;
        }
    }
}

// That has method to deposit and withdraw funds money from a bank account, and shuld be used like this:
// And we can't directly access the funds variable, because it's private.
var account = BankAccount();
account.deposit(amount: 100);
let success = account.withdraw(amount: 200);

if success {
    print("Withdrawal was successful!");
} else {
    print("Failed to get the money");
}



// Lets try with the Static Properties..
/**
* Notice the keyword static in there, which means both the studentCount property and add() method belong to the School struct itself, 
* rather than to individual instances of the struct.
*/
struct School {
    static var studentsCount = 0;

    static func add(student: String) {
        print("\(student) joined the school");
        studentsCount += 1;
    }
}

// Then we can call the add() method like this: as for static..
// Also studentsCount we called directly from struct because it's static..
School.add(student: "Asad");
print(School.studentsCount);



/**
* First, I use static properties to organize common data in my apps. For example, 
* I might have a struct like AppData to store lots of shared values I use in many places:
*/
struct AppData {
    static let version = "1.0";
    static let name = "My App";
    static let companyName = "My Company";
}


/**
* SwiftUI works best when it can show previews of your app as you develop, 
* and those previews often require sample data. For example, 
* if you’re showing a screen that displays data on one employee, 
* you’ll want to be able to show an example employee in the preview screen so you can check it all looks correct as you work.
*/
struct Employee {
    let username: String;
    let password: String;

    static let example = Employee(username: "Asad", password: "password123");
}

// And now whenever you need an Employee instance to work with in your design previews, 
// you can use Employee.example and you’re done.
print(Employee.example);
