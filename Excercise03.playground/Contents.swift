// Exercise 03 – Dictionaries
// SE4041 Practical 02

// Step 1 – Create a dictionary
var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marks)

// Step 2 – Retrieve a value (returns an optional)
print(marks["Amal"] as Any)             // Optional(72)

// Step 3 – Safe retrieval with nil-coalescing
print(marks["Amal"] ?? 0)               // 72
print(marks["Kasun"] ?? 0)              // 0 (key does not exist)

// Step 4 – Optional binding
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Step 5 – Add, update, remove
marks["Sanduni"] = 90       // add
marks["Amal"] = 75          // update
marks["Ruwan"] = nil        // remove
print(marks)

// Activity 3 – Phone Book
var phoneBook = [
    "Amal": "0771234567",
    "Nimali": "0712345678",
    "Ruwan": "0759876543",
    "Sanduni": "0701122334"
]

phoneBook["Kasun"] = "0781239876"       // 1. add a new contact
phoneBook["Nimali"] = "0719999999"      // 2. update a number
phoneBook["Ruwan"] = nil                // 3. remove a contact

// 4 & 5. search using if let
let searchName = "Amal"
if let number = phoneBook[searchName] {
    print("\(searchName): \(number)")
} else {
    print("Contact not found")
}

let missingName = "Dilini"
if let number = phoneBook[missingName] {
    print("\(missingName): \(number)")
} else {
    print("Contact not found")
}
