// Exercise 01 – Arrays
// SE4041 Practical 02

// Create an array
var marks = [72, 65, 48, 90, 55]
print(marks)                    // [72, 65, 48, 90, 55]

// Access elements (index starts at 0)
print(marks[0])                 // 72
print(marks[2])                 // 48
print(marks[4])                 // 55
// print(marks[10])             // Observed: crash "Index out of range" (removed)

// Useful properties
print(marks.count)              // 5
print(marks.isEmpty)            // false
print(marks.first as Any)       // Optional(72) – optional because array could be empty
print(marks.last as Any)        // Optional(55)

//  Modify an array (needs var)
marks[2] = 52
print(marks)                    // [72, 65, 52, 90, 55]

marks.append(88)
marks.insert(60, at: 1)
print(marks)                    // [72, 60, 65, 52, 90, 55, 88]

marks.removeLast()
marks.remove(at: 1)
print(marks)                    // [72, 65, 52, 90, 55]

// Useful methods (new constant name avoids redeclaring `marks`)
let examMarks = [72, 65, 48, 90, 55]
print(examMarks.max()!)         // 90
print(examMarks.min()!)         // 48
print(examMarks.contains(90))   // true
print(examMarks.sorted())       // [48, 55, 65, 72, 90]
print(examMarks.sorted(by: >))  // [90, 72, 65, 55, 48]

let total = examMarks.reduce(0, +)
print(total)                    // 330

let average = Double(total) / Double(examMarks.count)
print(average)                  // 66.0

// Activity 1 – Modules array 
var modules = ["SE4041", "Database Systems", "Software Engineering", "Computer Networks", "Web Technologies"]

print(modules)                                  // 1. entire array
print("First module: \(modules.first!)")        // 2. first module
print("Last module: \(modules.last!)")          // 3. last module

modules.append("Game Technology")               // 4. add a new module

print("Number of modules: \(modules.count)")    // 5. count
print("SE4041 exists: \(modules.contains("SE4041"))")   // 6. membership check
