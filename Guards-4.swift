// Guards..
func validateStudent(isGateOpen: Bool = false) -> Void {
    guard isGateOpen else {
        print("GATE IS CLOSED!!")
        return;
    }

    print("----- WELCOME HERE THE GATE IS OPEN -----");
}

validateStudent(isGateOpen: true);


// Perfect Example of Guard..
func greetUser(isLoggedIn: Bool, username: String?) {
    guard isLoggedIn else {
        print("Please log in to continue.") // Print a message if the user is not logged in
        return // Exit the function if the user is not logged in
    }

    guard let username = username else {
        print("Welcome, Guest!") // Print a welcome message for guests (users without a username)
        return // Exit the function if the username is nil
    }

    // If the execution reaches here, it means the user is logged in and has a username
    print("Welcome, \(username)!") // Print a personalized welcome message for logged-in users
}

// Example usage:
greetUser(isLoggedIn: false, username: nil) // Output: Please log in to continue.
greetUser(isLoggedIn: true, username: nil) // Output: Welcome, Guest!
greetUser(isLoggedIn: true, username: "John") // Output: Welcome, John!



