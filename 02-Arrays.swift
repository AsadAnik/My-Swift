// Array..
let ourStudents: [String] = ["Asad", "Anik", "Mac", "Hossain", "Gazi"];

for student in ourStudents {
    print(student);
}

// Store Ordered Data Array and Show them..
var numbers: [Int] = [4, 42, 8, 15, 23, 16]
print(numbers[0]);
print(numbers[1]);
print(numbers[2]);

// Lets adding new items to the array..
var myMemory: [Int] = [];
myMemory.append(12);
myMemory.append(10);
print("MY MEMORY ADDED -- ", myMemory);

// Define the Array another way..
var scores = Array<String>();
scores.append("Asad");
scores.append("MacBook");
scores.append("Pro");
print("SCORES ADDED -- ", scores);

// Define another way ..
var albums = [String]();
albums.append("FOO");
albums.append("BAR");
print("ALBUMS ADDED -- ", albums);

// Lets counts the Array Size..
let countScores = scores.count;
let countAlbums = albums.count;
print("SCORES SIZE -- ", countScores);
print("ALBUMS SIZE -- ", countAlbums);

// Remove Element from Array..
var charecters = ["Asad", "Anik", "Hossain", "Angel"];
charecters.remove(at: 2);
print("CHARECTERS AFTER REMOVE --- ", charecters);

// We can Remove All Elements..
charecters.removeAll();
print("REMOVED ALL FROM CHARECTERS LIST -- ", charecters);

// Search Element from Array..
let brands = ["Apple", "Microsoft", "Facebook", "Google", "Amazon"];
let searchedBrandEl = brands.contains("Facebook");
print("SEARCED BRAND -- ", searchedBrandEl);

// We can sorted the array..
let sortedNumbers = numbers.sorted();
print("SORTED NUMBERS -- ", sortedNumbers);

// Lets Reversed the Array..
let reversedNumbers = numbers.reversed();
print("REVERSED NUMBERS -- ", reversedNumbers);