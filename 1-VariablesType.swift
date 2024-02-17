// Variables for swift..
let number1: Int = 10;
let number2: Int = 20;

let sum: Int = number1 + number2;
print("Result is : ", sum);


// String types..
var fName: String = "Asad";
var lName: String = "Anik";
var spacer: String = " ";

let makeAFullName = fName + spacer + lName;
print("My name is \(makeAFullName)");


// Boolean types..
let iAmAStudent: Bool = true;

if iAmAStudent == true {
    print("I am a Student");
} else {
    print("No I am not a Student");
}

// Multiline Strings..
let multiLineHere = """
                    Hello I am here
                    and what about you multiLineHere
                    so we are here for you right now
                    """;
print("MULTILINE -- ", multiLineHere)

// Uppercased string..
let myName: String = "asad anik";
let myNameUppercased = myName.uppercased();
print(myNameUppercased);

// Suffix and Preffix..
let myImage: String = "asad.jpg";
let getPrefix = myImage.hasPrefix("asad");
let getSuffix = myImage.hasSuffix(".jpg");
print("PREFIX -- ", getPrefix);
print("SUFFIX -- ", getSuffix);

// Big Integers here..
let reallyBig: Int = 100_000_000;
print("REALLY BIG -- ", reallyBig);

// Swift not worry and cares the underscores..
let reallyBigButUnderscore: Int = 10____00____00;
print("REALLY BIG BUT UNDERSCORED -- ", reallyBigButUnderscore);

// Arithmetic Operaions..
let num1: Int = 12;
let num2: Int = num1 + 10;
let num3: Int = num2 - num1;
let num4: Int = num3 * num2;
let num5: Int = num4 / num3;
let num6: Int = num5 % num4;
print("END MATH -- ", num6)