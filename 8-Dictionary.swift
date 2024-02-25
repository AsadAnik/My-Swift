// Dictionaries on Swift..
let myDics = ["name": "Tayloar", "job": "Software Engineer", "age": "27"];
print("MY DICS -- ", myDics);

// Creating the empty Dictionary..
let myEmptyDics: [String: Int] = [:];
print("THIS IS MY EMPTY DISC -- ", myEmptyDics);

// Different with Value and keys..
let myDiffDics: [String: Int] = ["Age": 24, "Roll": 170977];
print("MY DIFFERENT DICS -- ", myDiffDics);

// Getting Dictionary value with indexing..
let employee: [String: String] = [
    "name": "Asad Anik", 
    "profession": "Software Engineer"
];
print("EMPLOYEE WITH INDEXING -- ", employee["name", default: "Unknown"]);
print("EMPLOYEE WITH 2ND INDEXING -- ", employee["profession", default: "Unknown"]);


// More practice..
let hasGraduated = [
    "Asad": false,
    "Anik": true,
    "Sumaiya": true,
];

print(hasGraduated["Sumaiya", default: false]);

// LifeStyles..
let lifeStyles = [
    2009: "Jeddah",
    2013: "Feni",
    2023: "Dhaka",
];

print("I WAS AT -- ", lifeStyles[2009, default: "Unknown"], " -- 2009");

// STORE VALUE FOR EMPTY DICTIONARY..
var heights = [String: Int]();

heights["Asad Anik"] = 230;
heights["Sumaiya Akter"] = 200;

print(heights);

// more about storing to dictionary..
var engineer = [String: String]();

engineer["name"] = "Asad Anik";
engineer["profession"] = "Software Engineer";
engineer["company"] = "Apple";

print("I AM - \(engineer["name", default: "Unknown"]) - AND I AM WORKNIG AT - \(engineer["company", default: "Unknown"])");