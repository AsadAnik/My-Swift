// LETS SEE HOW TO HANDLE ERRORS ON SWIFT..
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count > 8 {
        return "OK";

    } else if password.count > 10 {
        return "Good";

    } else {
        return "Excellent";
    }
}

let myPass = "12345";

// Try the thing if there any errors to receive..
do {
    let result = try checkPassword(myPass);
    print("Password rating: \(result)");
} catch {
    print("There was an error: \(error)");
}


// ANOTHER WAY OF HANDLING ERRORS..
let myAnotherPass = "1234";

do {
    let result = try checkPassword(myAnotherPass);
    print("Password rating: \(result)");

} catch PasswordError.short {
    print("Short password");

} catch PasswordError.obvious {
    print("Obvious password");

} catch {
    print("There was an error");
}