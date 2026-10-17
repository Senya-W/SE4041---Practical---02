// Exercise 05 – switch and Ranges
// SE4041 Practical 02

// Basic switch
let grade = "B"
switch grade {
case "A":
    print("Excellent")
case "B", "C":
    print("Good")
case "D":
    print("Needs Work")
default:
    print("Unknown Grade")
}
// Output: Good

// switch with ranges
// 75...100 includes both ends; 50..<75 includes 50 but stops before 75
let mark = 68
switch mark {
case 75...100:
    print("Distinction")
case 50..<75:
    print("Pass")
case 0..<50:
    print("Fail")
default:
    print("Invalid Mark")
}
// Output: Pass

// Activity 5 – Temperature description
let temperature = 27      // also tested with -5, 10, 20, 40

switch temperature {
case ..<0:
    print("Freezing")
case 0...15:
    print("Cold")
case 16...25:
    print("Moderate")
case 26...35:
    print("Warm")
default:
    print("Hot")          // anything above 35
}
// temperature = 27 -> Warm
