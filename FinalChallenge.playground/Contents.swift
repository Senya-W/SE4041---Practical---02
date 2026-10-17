// Final Challenge – Student Performance Manager
// SE4041 Practical 02

// Store student marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

var passedStudents: [String] = []           // Part D
var gradesAwarded: Set<String> = []         // Part E
var passCount = 0                           // Additional challenge
var failCount = 0
let passMark = 50

print("==================================")
print("STUDENT PERFORMANCE")
print("==================================")

//  display every student (sorted) with grade
for name in studentMarks.keys.sorted() {
    let mark = studentMarks[name] ?? 0
    var grade: String

    switch mark {
    case 80...100: grade = "A"
    case 75..<80:  grade = "A-"
    case 70..<75:  grade = "B+"
    case 65..<70:  grade = "B"
    case 60..<65:  grade = "B-"
    case 55..<60:  grade = "C+"
    case 45..<55:  grade = "C"
    case 40..<45:  grade = "C-"
    case 0..<40:   grade = "F"
    default:       grade = "Invalid"
    }

    print("\(name) - \(mark) - \(grade)")

    gradesAwarded.insert(grade)             // Part E

    if mark >= passMark {                   // Part D
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }
}

// passed students
print("----------------------------------")
print("Passed Students:")
for name in passedStudents {
    print(name)
}

//  unique grades
print("----------------------------------")
print("Grades Awarded:")
for grade in gradesAwarded.sorted() {
    print(grade)
}

//  average, highest, lowest
print("----------------------------------")
let allMarks = Array(studentMarks.values)
let total = allMarks.reduce(0, +)
let average = Double(total) / Double(allMarks.count)

print("Class Average: \(average)")
print("Highest Mark: \(allMarks.max()!)")
print("Lowest Mark: \(allMarks.min()!)")

//  pass/fail counts
print("----------------------------------")
print("Passed: \(passCount)")
print("Failed: \(failCount)")

// search for a student
let searchName = "Amal"
if let mark = studentMarks[searchName] {
    print("\(searchName)'s mark is \(mark)")
} else {
    print("Student not found")
}
