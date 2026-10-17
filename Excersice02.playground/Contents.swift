// Exercise 02 – Sets
// SE4041 Practical 02

// Step 1 – Create a set
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)                            // order may differ each run – that is normal

// Step 2 – Insert values
towns.insert("Jaffna")
towns.insert("Kandy")                   // duplicate – ignored
print(towns)
print(towns.count)                      // 4 (Kandy stored only once)

// Step 3 – Membership
print(towns.contains("Kandy"))          // true
print(towns.contains("Colombo"))        // false

// Step 4 – Remove an item
towns.remove("Galle")
print(towns)

// Step 5 – Set operations
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print(swiftClass.union(kotlinClass).sorted())               // ["Amal", "Nimali", "Ruwan", "Sanduni"]
print(swiftClass.intersection(kotlinClass).sorted())        // ["Nimali", "Ruwan"]
print(swiftClass.subtracting(kotlinClass).sorted())         // ["Amal"]
print(swiftClass.symmetricDifference(kotlinClass).sorted()) // ["Amal", "Sanduni"]

// Activity 2 – Two module sets
let mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Kasun", "Sanduni"]
let gameTechnologyStudents: Set = ["Nimali", "Ruwan", "Dilini", "Tharindu"]

print("All students: \(mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())")
print("Taking both modules: \(mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())")
print("Only Mobile Development: \(mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())")
print("Only one module: \(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())")
